Public Class FreqAnalizer
    Dim hComm As Integer                'COM�|�[�g�p�n���h��
    Dim stDCB As DCB                    'DCB�C���X�^���X
    Dim timeOut As COMMTIMEOUTS         '�^�C���A�E�g�p�C���X�^���X
    Dim wDATA As String                 'COM���M�o�b�t�@
    Dim rDATA(100) As Byte              'COM��M�o�b�t�@
    Dim dLen, wLen, rLen As Int32       'COM�p�p�����[�^
    Dim bRet As Boolean                 '�֐��߂�l
    Dim CommName As String              'COM�|�[�g�ԍ�
    Dim Frequency As Integer            '���g���f�[�^
    Dim FreqLow, FreqHigh, FreqStep, OutData, OldData As Long
    Dim Index As Integer
    Dim N As Integer
    Dim OutFreq(10000), Data0(10000), Data1(10000) As Single
    Dim Xd, Yd, Xdif, Ydif, Flag As Integer
    Dim G As Graphics = Graph1.FreqChart.CreateGraphics()
    Dim W As Integer = Graph1.FreqChart.Width
    Dim H As Integer = Graph1.FreqChart.Height

    'COM�p�^�C���A�E�g�֐�
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
        '******* �O���t�̍��W�ݒ�
        G.ScaleTransform(1, -1)                     'Y���W�̋ɐ����]
        Xd = W / 6                                  'X,Y���W�X�e�b�v�̐ݒ�
        Yd = H / 8
        Xdif = W / 60
        Ydif = H / 80
        G.TranslateTransform(1, -2 * Yd)            '���_���W�̐ݒ�
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        '********* USB�ڑ��m�F����
        CommName = TextBox1.Text            'COM�|�[�g�ԍ��擾
        bRet = CloseHandle(hComm)
        '******** COM�|�[�g�I�[�v��
        hComm = CreateFile(CommName, &HC0000000, 0, IntPtr.Zero, &H3, &H80, IntPtr.Zero)
        If hComm <> -1 Then
            '******** DCB�\���̃f�[�^�ݒ�
            stDCB.BaudRate = 115200
            stDCB.fBitFields = &H1
            stDCB.ByteSize = 8
            stDCB.Parity = 0
            stDCB.StopBits = 0
            bRet = SetCommState(hComm, stDCB)
            TimeOutSet()
            '******** �f�o�C�X�ڑ��m�F �R�}���h�u0�v�̉����uOK�v���`�F�b�N
            If bRet = True Then
                Application.DoEvents()
                wDATA = Chr(&H30)           '�R�}���h0�@OK���ԐM
                dLen = 1
                '***** �R�}���h���M��@�܂�Ԃ���M
                bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
                bRet = ReadFile(hComm, rDATA, 30, rLen, IntPtr.Zero)
                If bRet = True And rLen = 3 Then
                    '****** �ԐM�f�[�^�@"OK"�@���m�F
                    If rDATA(0) = &H4F And rDATA(1) = &H4B Then
                        TextBox2.Text = "Connect"       '����ڑ�����
                        Flag = 0
                    Else
                        TextBox2.Text = "False"         '�ڑ��ُ�
                    End If
                Else
                    TextBox2.Text = "NoAns"             '�����Ȃ�
                End If
            Else
                TextBox2.Text = "Fault"                 '�ڑ��s��
            End If
        Else
            TextBox2.Text = "NoExist"                   '�f�o�C�X�����炸
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        '******** �蓮�o�͎��g���ݒ萧��
        wDATA = Chr(&H31) & TextBox3.Text & Chr(0)
        dLen = Len(wDATA)
        bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        '********** �蓮�f�V�x���l���͕\������i�Q�`���l�����j
        wDATA = Chr(&H32)           '�R�}���h
        dLen = Len(wDATA)
        '********* �R�}���h���M��A�f�V�x���f�[�^��M
        bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
        bRet = ReadFile(hComm, rDATA, 22, rLen, IntPtr.Zero)
        If bRet = True Then
            '***** �f�V�x���f�[�^�\��
            TextBox4.Text = ""
            TextBox5.Text = ""
            For N = 4 To 8 Step 1                   '�`���l��0�̃f�[�^�擾
                TextBox4.Text = TextBox4.Text & Chr(rDATA(N))
            Next
            For N = 15 To 19 Step 1                 '�`���l���P�̃f�[�^�擾
                TextBox5.Text = TextBox5.Text & Chr(rDATA(N))
            Next
        End If
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        '********** �I������
        CloseHandle(hComm)
        Close()
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        '********* ���g���͈͂̐ݒ�
        If TextBox2.Text <> "Connect" Then
            MsgBox("USB���ڑ��ł��B�ڑ����ĉ������B", vbExclamation, "Attention")
        Else
            If SweepLow.Text = "" Or SweepHigh.Text = "" Then
                MsgBox("�X�C�[�v�͈͂��w�肵�ĉ�����", vbExclamation, "Attension")
            Else
                Graph1.Show()                               '�O���t�\��
                Graph1.Refresh()
                Flag = 0                                    '���W�\���p�t���O���Z�b�g
                '******** �X�C�[�v�͈͂̓���
                FreqLow = Val(SweepLow.Text)                '�J�n���g��
                FreqHigh = Val(SweepHigh.Text)              '��~���g��
                FreqStep = Val(SweepStep.Text)              '����\
                If FreqLow > FreqHigh Or FreqLow < 5 Or FreqHigh > 30000000 Or FreqStep > 10000 Then
                    MsgBox("�������X�C�[�v�͈͂��w�肵�ĉ�����", vbExclamation, "Attention")
                Else
                    '********** �����l�ݒ�
                    OutData = FreqLow                       '�o�͎��g��������
                    OldData = FreqLow                       '�O��l�̏�����
                    Index = -1                              '�i�[�C���f�b�N�X������
                    OutFreq(0) = FreqLow                    '�ŏ��̃f�[�^
                    Data0(0) = 0
                    Data1(0) = 0
                    '********** �ŏ��̏o�͎��g���ݒ萧��
                    wDATA = Chr(&H31) & Str(OutData) & Chr(0)
                    dLen = Len(wDATA)
                    bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
                    '*********** �����^�C�}�X�^�[�g�i50msec)
                    Timer1.Interval = 50
                    Timer1.Enabled = True
                End If
            End If
        End If
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        '********** �^�C�}1�C�x���g�����A�X�C�[�v���� ***************
        If OutData > FreqHigh Then                      '�o�͎��g������ȉ����H
            Timer1.Enabled = False                      '����I�[�o�[�Ȃ��~
        Else
            '********** ���g�������̑���l���͂ƕ\��
            Index = Index + 1                           '�i�[�C���f�b�N�X�X�V
            '********** �f�V�x���l���͕\������i�Q�`���l�����j
            wDATA = Chr(&H32)                           '�R�}���h
            dLen = Len(wDATA)
            '********** �R�}���h���M��A�f�V�x���f�[�^��M
            bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
            bRet = ReadFile(hComm, rDATA, 22, rLen, IntPtr.Zero)
            If bRet = True Then
                '************ �f�V�x���f�[�^�\��
                TextBox4.Text = ""                      '�\�����N���A
                TextBox5.Text = ""
                For N = 4 To 8 Step 1                   '��M�f�[�^����`���l��0�擾
                    TextBox4.Text = TextBox4.Text & Chr(rDATA(N))
                Next
                For N = 15 To 19 Step 1                 '��M�f�[�^����`���l���P�擾
                    TextBox5.Text = TextBox5.Text & Chr(rDATA(N))
                Next
                '********* �f�V�x���f�[�^�ɂ��Ċi�[
                OutFreq(Index) = OutData
                Data0(Index) = Val(TextBox4.Text & Chr(0))
                Data1(Index) = Val(TextBox5.Text & Chr(0))
            End If
            '*********** ��M�f�[�^�O���t�\��
            If Index > 0 Then
                G.DrawLine(Pens.Blue, Conv(OldData), Data0(Index - 1) * Ydif, Conv(OutData), Data0(Index) * Ydif)
                G.DrawLine(Pens.Red, Conv(OldData), Data1(Index - 1) * Ydif, Conv(OutData), Data1(Index) * Ydif)
            End If
            '********** ���̎��g���o�͍X�V
            OldData = OutData
            OutData = OutData + getDiff(FreqStep)       '����\���Ƃɑ�����
            '********** �o�͎��g���ݒ萧��
            TextBox3.Text = Str(OutData)
            wDATA = Chr(&H31) & Str(OutData) & Chr(0)
            dLen = Len(wDATA)
            bRet = WriteFile(hComm, wDATA, dLen, wLen, IntPtr.Zero)
        End If
    End Sub

    Private Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        '********** �v����~����
        Timer1.Enabled = False
    End Sub

    Private Function Conv(ByVal data) As Integer
        Return (CType((Math.Log10(data) - 1) * Xd, Integer))
    End Function

    '����\�ɉ��������g�������������߂�T�u�֐�
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

        SaveFileDialog1.Filter = "csv�t�@�C��(*.csv)|*.csv"
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
            '***** �f�[�^�O���t�ĕ\��
            Graph1.Show()                                 '�O���t�\��
            Graph1.Refresh()
            For i = 1 To Item - 2
                G.DrawLine(Pens.Blue, Conv(OutFreq(i - 1)), Data0(i - 1) * Ydif, Conv(OutFreq(i)), Data0(i) * Ydif)
                G.DrawLine(Pens.Red, Conv(OutFreq(i - 1)), Data1(i - 1) * Ydif, Conv(OutFreq(i)), Data1(i) * Ydif)
            Next
        End If
    End Sub
End Class
