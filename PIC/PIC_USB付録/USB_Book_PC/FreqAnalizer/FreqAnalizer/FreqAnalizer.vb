Public Class FreqAnalizer
    Dim hComm As Integer                'COMポート用ハンドル
    Dim stDCB As DCB                    'DCBインスタンス
    Dim timeOut As COMMTIMEOUTS         'タイムアウト用インスタンス
    Dim wDATA As String                 'COM送信バッファ
    Dim rDATA(100) As Byte              'COM受信バッファ
    Dim dLen, wLen, rLen As Int32       'COM用パラメータ
    Dim bRet As Boolean                 '関数戻り値
    Dim CommName As String              'COMポート番号
    Dim Frequency As Integer            '周波数データ
    Dim FreqLow, FreqHigh, FreqStep, OutData, OldData As Long
    Dim Index As Integer
    Dim N As Integer
    Dim OutFreq(10000), Data0(10000), Data1(10000) As Single
    Dim Xd, Yd, Xdif, Ydif, Flag As Integer
    Dim G As Graphics = Graph1.FreqChart.CreateGraphics()
    Dim W As Integer = Graph1.FreqChart.Width
    Dim H As Integer = Graph1.FreqChart.Height

    'COM用タイムアウト関数
    Private Sub TimeOutSet()
        timeOut.ReadIntervalTimeout = 20
        timeOut.ReadTotalTimeoutConstant = 50
        timeOut.ReadTotalTimeoutMultiplier = 10
        timeOut.WriteTotalTimeoutMultiplier = 10
        timeOut.WriteTotalTimeoutConstant = 10
        bRet = SetCommTimeouts(hComm, timeOut)
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        TextBox2.Text = ""
        Timer1.Enabled = False
        '******* グラフの座標設定
        G.ScaleTransform(1, -1)                     'Y座標の極性反転
        Xd = W / 6                                  'X,Y座標ステップの設定
        Yd = H / 8
        Xdif = W / 60
        Ydif = H / 80
        G.TranslateTransform(1, -2 * Yd)            '原点座標の設定
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        '********* USB接続確認制御
        CommName = TextBox1.Text            'COMポート番号取得
        bRet = CloseHandle(hComm)
        '******** COMポートオープン
        hComm = CreateFile(CommName, &HC0000000, 0, IntPtr.Zero, &H3, &H80, IntPtr.Zero)
        If hComm <> -1 Then
            '******** DCB構造体データ設定
            stDCB.BaudRate = 115200
            stDCB.fBitFields = &H1
            stDCB.ByteSize = 8
            stDCB.Parity = 0
            stDCB.StopBits = 0
            bRet = SetCommState(hComm, stDCB)
            TimeOutSet()
            '******** デバイス接続確認 コマンド「0」の応答「OK」をチェック
            If bRet = True Then
                Application.DoEvents()
                wDATA = Chr(&H30)           'コマンド0　OKが返信
                dLen = 1
                '***** コマンド送信後　折り返し受信
                bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
                bRet = ReadFile(hComm, rDATA, 30, rLen, IntPtr.Zero)
                If bRet = True And rLen = 3 Then
                    '****** 返信データ　"OK"　を確認
                    If rDATA(0) = &H4F And rDATA(1) = &H4B Then
                        TextBox2.Text = "Connect"       '正常接続完了
                        Flag = 0
                    Else
                        TextBox2.Text = "False"         '接続異常
                    End If
                Else
                    TextBox2.Text = "NoAns"             '応答なし
                End If
            Else
                TextBox2.Text = "Fault"                 '接続不可
            End If
        Else
            TextBox2.Text = "NoExist"                   'デバイス見つからず
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        '******** 手動出力周波数設定制御
        wDATA = Chr(&H31) & TextBox3.Text & Chr(0)
        dLen = Len(wDATA)
        bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        '********** 手動デシベル値入力表示制御（２チャネル分）
        wDATA = Chr(&H32)           'コマンド
        dLen = Len(wDATA)
        '********* コマンド送信後、デシベルデータ受信
        bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
        bRet = ReadFile(hComm, rDATA, 22, rLen, IntPtr.Zero)
        If bRet = True Then
            '***** デシベルデータ表示
            TextBox4.Text = ""
            TextBox5.Text = ""
            For N = 4 To 8 Step 1                   'チャネル0のデータ取得
                TextBox4.Text = TextBox4.Text & Chr(rDATA(N))
            Next
            For N = 15 To 19 Step 1                 'チャネル１のデータ取得
                TextBox5.Text = TextBox5.Text & Chr(rDATA(N))
            Next
        End If
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        '********** 終了処理
        CloseHandle(hComm)
        Close()
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        '********* 周波数範囲の設定
        If TextBox2.Text <> "Connect" Then
            MsgBox("USB未接続です。接続して下さい。", vbExclamation, "Attention")
        Else
            If SweepLow.Text = "" Or SweepHigh.Text = "" Then
                MsgBox("スイープ範囲を指定して下さい", vbExclamation, "Attension")
            Else
                Graph1.Show()                               'グラフ表示
                Graph1.Refresh()
                Flag = 0                                    '座標表示用フラグリセット
                '******** スイープ範囲の入力
                FreqLow = Val(SweepLow.Text)                '開始周波数
                FreqHigh = Val(SweepHigh.Text)              '停止周波数
                FreqStep = Val(SweepStep.Text)              '分解能
                If FreqLow > FreqHigh Or FreqLow < 5 Or FreqHigh > 30000000 Or FreqStep > 10000 Then
                    MsgBox("正しいスイープ範囲を指定して下さい", vbExclamation, "Attention")
                Else
                    '********** 初期値設定
                    OutData = FreqLow                       '出力周波数初期化
                    OldData = FreqLow                       '前回値の初期化
                    Index = -1                              '格納インデックス初期化
                    OutFreq(0) = FreqLow                    '最初のデータ
                    Data0(0) = 0
                    Data1(0) = 0
                    '********** 最初の出力周波数設定制御
                    wDATA = Chr(&H31) & Str(OutData) & Chr(0)
                    dLen = Len(wDATA)
                    bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
                    '*********** 周期タイマスタート（50msec)
                    Timer1.Interval = 50
                    Timer1.Enabled = True
                End If
            End If
        End If
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        '********** タイマ1イベント処理、スイープ処理 ***************
        If OutData > FreqHigh Then                      '出力周波数上限以下か？
            Timer1.Enabled = False                      '上限オーバーなら停止
        Else
            '********** 周波数特性の測定値入力と表示
            Index = Index + 1                           '格納インデックス更新
            '********** デシベル値入力表示制御（２チャネル分）
            wDATA = Chr(&H32)                           'コマンド
            dLen = Len(wDATA)
            '********** コマンド送信後、デシベルデータ受信
            bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
            bRet = ReadFile(hComm, rDATA, 22, rLen, IntPtr.Zero)
            If bRet = True Then
                '************ デシベルデータ表示
                TextBox4.Text = ""                      '表示欄クリア
                TextBox5.Text = ""
                For N = 4 To 8 Step 1                   '受信データからチャネル0取得
                    TextBox4.Text = TextBox4.Text & Chr(rDATA(N))
                Next
                For N = 15 To 19 Step 1                 '受信データからチャネル１取得
                    TextBox5.Text = TextBox5.Text & Chr(rDATA(N))
                Next
                '********* デシベルデータにして格納
                OutFreq(Index) = OutData
                Data0(Index) = Val(TextBox4.Text & Chr(0))
                Data1(Index) = Val(TextBox5.Text & Chr(0))
            End If
            '*********** 受信データグラフ表示
            If Index > 0 Then
                G.DrawLine(Pens.Blue, Conv(OldData), Data0(Index - 1) * Ydif, Conv(OutData), Data0(Index) * Ydif)
                G.DrawLine(Pens.Red, Conv(OldData), Data1(Index - 1) * Ydif, Conv(OutData), Data1(Index) * Ydif)
            End If
            '********** 次の周波数出力更新
            OldData = OutData
            OutData = OutData + getDiff(FreqStep)       '分解能ごとに増し分
            '********** 出力周波数設定制御
            TextBox3.Text = Str(OutData)
            wDATA = Chr(&H31) & Str(OutData) & Chr(0)
            dLen = Len(wDATA)
            bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
        End If
    End Sub

    Private Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        '********** 計測停止制御
        Timer1.Enabled = False
    End Sub

    Private Function Conv(ByVal data) As Integer
        Return (CType((Math.Log10(data) - 1) * Xd, Integer))
    End Function

    '分解能に応じた周波数増し分を求めるサブ関数
    Private Function getDiff(ByVal FreqStep As Long) As Long
        If OutData < 100 Then
            Return (5)
        Else
            If OutData < 1000 Then
                If FreqStep < 500 Then
                    Return (1000 / FreqStep)
                Else
                    Return (10)
                End If
            Else
                If OutData < 10000 Then
                    Return (10000 / FreqStep)
                Else
                    If OutData < 100000 Then
                        Return (100000 / FreqStep)
                    Else
                        If OutData < 1000000 Then
                            Return (1000000 / FreqStep)
                        Else
                            If OutData < 20000000 Then
                                Return (10000000 / FreqStep)
                            End If
                        End If
                    End If
                End If
            End If
            End If
        If FreqStep < 1 Then
            Return (1)
        End If
    End Function

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim myFile As String = ""
        Dim i As Integer
        Dim tw As System.IO.TextWriter

        SaveFileDialog1.Filter = "csvファイル(*.csv)|*.csv"
        If SaveFileDialog1.ShowDialog() = Windows.Forms.DialogResult.OK Then
            myFile = SaveFileDialog1.FileName
        End If
        If myFile <> "" Then
            Try

                tw = My.Computer.FileSystem.OpenTextFileWriter(myFile, False, System.Text.Encoding.Default)
                For i = 0 To Index - 1
                    tw.WriteLine(Str(OutFreq(i)))
                    tw.WriteLine(Str(Data0(i)))
                    tw.WriteLine(Str(Data1(i)))
                Next
                tw.Close()
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End If

    End Sub
 

    Private Sub Button8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        Dim myFile As String = ""
        Dim tr As System.IO.TextReader
        Dim Item, i As Integer
        Dim sa, ss As String

        If OpenFileDialog1.ShowDialog() = Windows.Forms.DialogResult.OK Then
            myFile = OpenFileDialog1.FileName
            Try
                tr = My.Computer.FileSystem.OpenTextFileReader(myFile, System.Text.Encoding.Default)
                Item = 0
                Do
                    sa = tr.ReadLine()
                    OutFreq(Item) = Val(sa)
                    ss = tr.ReadLine()
                    Data0(Item) = Val(ss)
                    ss = tr.ReadLine()
                    Data1(Item) = Val(ss)
                    Item = Item + 1
                Loop While sa IsNot Nothing
                tr.Close()
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            '***** データグラフ再表示
            Graph1.Show()                                 'グラフ表示
            Graph1.Refresh()
            For i = 1 To Item - 2
                G.DrawLine(Pens.Blue, Conv(OutFreq(i - 1)), Data0(i - 1) * Ydif, Conv(OutFreq(i)), Data0(i) * Ydif)
                G.DrawLine(Pens.Red, Conv(OutFreq(i - 1)), Data1(i - 1) * Ydif, Conv(OutFreq(i)), Data1(i) * Ydif)
            Next
        End If
    End Sub
End Class
