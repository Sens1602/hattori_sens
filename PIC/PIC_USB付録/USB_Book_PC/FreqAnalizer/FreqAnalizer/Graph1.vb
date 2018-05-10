

Public Class Graph1
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        '***********�\�����B���A�v�����s����~
        FreqAnalizer.Timer1.Enabled = False
        Me.Hide()

    End Sub

    Private Sub FreqChart_Paint(ByVal sender As Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles FreqChart.Paint
        '**************�O���t��ʗp�ϐ���`
        Dim W As Integer = Me.FreqChart.Width
        Dim H As Integer = Me.FreqChart.Height
        Dim Xd, Yd As Integer
        Dim i, j As Integer

        '**********�O���t�̍��W�ݒ�
        e.Graphics.ScaleTransform(1, -1)                     'Y���W�̋ɐ����]
        Xd = W / 6                                  'X,Y���W�X�e�b�v�̐ݒ�
        Yd = H / 8
        e.Graphics.TranslateTransform(1, -2 * Yd)            '���_���W�̐ݒ�
        '***********�O���t�`��
        e.Graphics.Clear(Color.White)                        '�w�i�F�@���N���A
        '�����@dB���W�\��
        For i = 0 To 8
            e.Graphics.DrawLine(Pens.Gray, 1, (i - 6) * Yd, W, (i - 6) * Yd)
        Next
        e.Graphics.DrawLine(Pens.BlueViolet, 1, 0, W, 0)     '0�f�V�x�����C���̕\��
        '*************�c���@���g���\�� LOG�\��
        For i = 0 To 6
            For j = 1 To 9
                e.Graphics.DrawLine(Pens.Gray, CType(Math.Log10(j * 10 ^ i) * Xd, Integer), 2 * Yd, CType(Math.Log10(j * 10 ^ i) * Xd, Integer), -6 * Yd)
            Next
        Next
        '*********�\��̕\��
        Me.lblName.Text = FreqAnalizer.TextBox9.Text
        Me.lblCh0.Text = FreqAnalizer.TextBox10.Text
        Me.lblCh1.Text = FreqAnalizer.TextBox11.Text
    End Sub

End Class