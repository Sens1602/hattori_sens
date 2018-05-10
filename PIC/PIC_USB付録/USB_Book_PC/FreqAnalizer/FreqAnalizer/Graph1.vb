

Public Class Graph1
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        '***********表示を隠す、計測実行も停止
        FreqAnalizer.Timer1.Enabled = False
        Me.Hide()

    End Sub

    Private Sub FreqChart_Paint(ByVal sender As Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles FreqChart.Paint
        '**************グラフ画面用変数定義
        Dim W As Integer = Me.FreqChart.Width
        Dim H As Integer = Me.FreqChart.Height
        Dim Xd, Yd As Integer
        Dim i, j As Integer

        '**********グラフの座標設定
        e.Graphics.ScaleTransform(1, -1)                     'Y座標の極性反転
        Xd = W / 6                                  'X,Y座標ステップの設定
        Yd = H / 8
        e.Graphics.TranslateTransform(1, -2 * Yd)            '原点座標の設定
        '***********グラフ描画
        e.Graphics.Clear(Color.White)                        '背景色　白クリア
        '横軸　dB座標表示
        For i = 0 To 8
            e.Graphics.DrawLine(Pens.Gray, 1, (i - 6) * Yd, W, (i - 6) * Yd)
        Next
        e.Graphics.DrawLine(Pens.BlueViolet, 1, 0, W, 0)     '0デシベルラインの表示
        '*************縦軸　周波数表示 LOG表示
        For i = 0 To 6
            For j = 1 To 9
                e.Graphics.DrawLine(Pens.Gray, CType(Math.Log10(j * 10 ^ i) * Xd, Integer), 2 * Yd, CType(Math.Log10(j * 10 ^ i) * Xd, Integer), -6 * Yd)
            Next
        Next
        '*********表題の表示
        Me.lblName.Text = FreqAnalizer.TextBox9.Text
        Me.lblCh0.Text = FreqAnalizer.TextBox10.Text
        Me.lblCh1.Text = FreqAnalizer.TextBox11.Text
    End Sub

End Class