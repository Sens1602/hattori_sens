<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Graph1
    Inherits System.Windows.Forms.Form

    'フォームがコンポーネントの一覧をクリーンアップするために dispose をオーバーライドします。
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Windows フォーム デザイナで必要です。
    Private components As System.ComponentModel.IContainer

    'メモ: 以下のプロシージャは Windows フォーム デザイナで必要です。
    'Windows フォーム デザイナを使用して変更できます。  
    'コード エディタを使って変更しないでください。
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.FreqChart = New System.Windows.Forms.PictureBox()
        Me.lblName = New System.Windows.Forms.Label()
        Me.lblCh1 = New System.Windows.Forms.Label()
        Me.lblCh0 = New System.Windows.Forms.Label()
        Me.Line2 = New System.Windows.Forms.Label()
        Me.Line1 = New System.Windows.Forms.Label()
        Me.lblFreq10 = New System.Windows.Forms.Label()
        Me.lblFreq100 = New System.Windows.Forms.Label()
        Me.lblFreq1k = New System.Windows.Forms.Label()
        Me.lblFreq10k = New System.Windows.Forms.Label()
        Me.lblFreq100k = New System.Windows.Forms.Label()
        Me.lblFreq1m = New System.Windows.Forms.Label()
        Me.lblFreq10m = New System.Windows.Forms.Label()
        Me.lbldB0 = New System.Windows.Forms.Label()
        Me.lbldB10 = New System.Windows.Forms.Label()
        Me.lbldB20 = New System.Windows.Forms.Label()
        Me.lblm10 = New System.Windows.Forms.Label()
        Me.lbldBm20 = New System.Windows.Forms.Label()
        Me.lbldBm30 = New System.Windows.Forms.Label()
        Me.lbldBm40 = New System.Windows.Forms.Label()
        Me.lbldBm50 = New System.Windows.Forms.Label()
        Me.lbldBm60 = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        CType(Me.FreqChart, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'FreqChart
        '
        Me.FreqChart.BackColor = System.Drawing.Color.White
        Me.FreqChart.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.FreqChart.Cursor = System.Windows.Forms.Cursors.Default
        Me.FreqChart.ForeColor = System.Drawing.SystemColors.ControlText
        Me.FreqChart.Location = New System.Drawing.Point(53, 40)
        Me.FreqChart.Name = "FreqChart"
        Me.FreqChart.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.FreqChart.Size = New System.Drawing.Size(615, 308)
        Me.FreqChart.TabIndex = 49
        Me.FreqChart.TabStop = False
        '
        'lblName
        '
        Me.lblName.BackColor = System.Drawing.SystemColors.Control
        Me.lblName.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblName.Font = New System.Drawing.Font("ＭＳ Ｐゴシック", 14.26415!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(128, Byte))
        Me.lblName.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblName.Location = New System.Drawing.Point(188, 8)
        Me.lblName.Name = "lblName"
        Me.lblName.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblName.Size = New System.Drawing.Size(322, 21)
        Me.lblName.TabIndex = 69
        Me.lblName.Text = "周波数特性グラフ"
        Me.lblName.TextAlign = System.Drawing.ContentAlignment.TopCenter
        '
        'lblCh1
        '
        Me.lblCh1.BackColor = System.Drawing.SystemColors.Control
        Me.lblCh1.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblCh1.Font = New System.Drawing.Font("ＭＳ Ｐゴシック", 10.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(128, Byte))
        Me.lblCh1.ForeColor = System.Drawing.Color.Red
        Me.lblCh1.Location = New System.Drawing.Point(111, 399)
        Me.lblCh1.Name = "lblCh1"
        Me.lblCh1.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblCh1.Size = New System.Drawing.Size(318, 16)
        Me.lblCh1.TabIndex = 67
        Me.lblCh1.Text = "チャネル１"
        '
        'lblCh0
        '
        Me.lblCh0.BackColor = System.Drawing.SystemColors.Control
        Me.lblCh0.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblCh0.Font = New System.Drawing.Font("ＭＳ Ｐゴシック", 10.8!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(128, Byte))
        Me.lblCh0.ForeColor = System.Drawing.Color.Blue
        Me.lblCh0.Location = New System.Drawing.Point(111, 383)
        Me.lblCh0.Name = "lblCh0"
        Me.lblCh0.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblCh0.Size = New System.Drawing.Size(318, 16)
        Me.lblCh0.TabIndex = 66
        Me.lblCh0.Text = "チャネル０"
        '
        'Line2
        '
        Me.Line2.BackColor = System.Drawing.Color.Red
        Me.Line2.Location = New System.Drawing.Point(62, 407)
        Me.Line2.Name = "Line2"
        Me.Line2.Size = New System.Drawing.Size(33, 1)
        Me.Line2.TabIndex = 70
        '
        'Line1
        '
        Me.Line1.BackColor = System.Drawing.Color.Blue
        Me.Line1.Location = New System.Drawing.Point(62, 391)
        Me.Line1.Name = "Line1"
        Me.Line1.Size = New System.Drawing.Size(33, 1)
        Me.Line1.TabIndex = 71
        '
        'lblFreq10
        '
        Me.lblFreq10.BackColor = System.Drawing.SystemColors.Control
        Me.lblFreq10.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblFreq10.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblFreq10.Location = New System.Drawing.Point(53, 352)
        Me.lblFreq10.Name = "lblFreq10"
        Me.lblFreq10.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblFreq10.Size = New System.Drawing.Size(18, 16)
        Me.lblFreq10.TabIndex = 65
        Me.lblFreq10.Text = "10"
        '
        'lblFreq100
        '
        Me.lblFreq100.BackColor = System.Drawing.SystemColors.Control
        Me.lblFreq100.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblFreq100.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblFreq100.Location = New System.Drawing.Point(144, 352)
        Me.lblFreq100.Name = "lblFreq100"
        Me.lblFreq100.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblFreq100.Size = New System.Drawing.Size(26, 16)
        Me.lblFreq100.TabIndex = 64
        Me.lblFreq100.Text = "100"
        '
        'lblFreq1k
        '
        Me.lblFreq1k.BackColor = System.Drawing.SystemColors.Control
        Me.lblFreq1k.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblFreq1k.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblFreq1k.Location = New System.Drawing.Point(251, 352)
        Me.lblFreq1k.Name = "lblFreq1k"
        Me.lblFreq1k.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblFreq1k.Size = New System.Drawing.Size(17, 16)
        Me.lblFreq1k.TabIndex = 63
        Me.lblFreq1k.Text = "1k"
        '
        'lblFreq10k
        '
        Me.lblFreq10k.BackColor = System.Drawing.SystemColors.Control
        Me.lblFreq10k.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblFreq10k.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblFreq10k.Location = New System.Drawing.Point(350, 352)
        Me.lblFreq10k.Name = "lblFreq10k"
        Me.lblFreq10k.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblFreq10k.Size = New System.Drawing.Size(26, 16)
        Me.lblFreq10k.TabIndex = 62
        Me.lblFreq10k.Text = "10k"
        '
        'lblFreq100k
        '
        Me.lblFreq100k.BackColor = System.Drawing.SystemColors.Control
        Me.lblFreq100k.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblFreq100k.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblFreq100k.Location = New System.Drawing.Point(457, 352)
        Me.lblFreq100k.Name = "lblFreq100k"
        Me.lblFreq100k.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblFreq100k.Size = New System.Drawing.Size(33, 16)
        Me.lblFreq100k.TabIndex = 61
        Me.lblFreq100k.Text = "100k"
        '
        'lblFreq1m
        '
        Me.lblFreq1m.BackColor = System.Drawing.SystemColors.Control
        Me.lblFreq1m.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblFreq1m.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblFreq1m.Location = New System.Drawing.Point(555, 352)
        Me.lblFreq1m.Name = "lblFreq1m"
        Me.lblFreq1m.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblFreq1m.Size = New System.Drawing.Size(26, 16)
        Me.lblFreq1m.TabIndex = 60
        Me.lblFreq1m.Text = "1M"
        '
        'lblFreq10m
        '
        Me.lblFreq10m.BackColor = System.Drawing.SystemColors.Control
        Me.lblFreq10m.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblFreq10m.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblFreq10m.Location = New System.Drawing.Point(654, 352)
        Me.lblFreq10m.Name = "lblFreq10m"
        Me.lblFreq10m.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblFreq10m.Size = New System.Drawing.Size(33, 16)
        Me.lblFreq10m.TabIndex = 59
        Me.lblFreq10m.Text = "10M"
        '
        'lbldB0
        '
        Me.lbldB0.BackColor = System.Drawing.SystemColors.Control
        Me.lbldB0.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldB0.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldB0.Location = New System.Drawing.Point(12, 112)
        Me.lbldB0.Name = "lbldB0"
        Me.lbldB0.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldB0.Size = New System.Drawing.Size(41, 15)
        Me.lbldB0.TabIndex = 58
        Me.lbldB0.Text = "0dB"
        Me.lbldB0.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lbldB10
        '
        Me.lbldB10.BackColor = System.Drawing.SystemColors.Control
        Me.lbldB10.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldB10.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldB10.Location = New System.Drawing.Point(21, 76)
        Me.lbldB10.Name = "lbldB10"
        Me.lbldB10.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldB10.Size = New System.Drawing.Size(33, 16)
        Me.lbldB10.TabIndex = 57
        Me.lbldB10.Text = "10dB"
        Me.lbldB10.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lbldB20
        '
        Me.lbldB20.BackColor = System.Drawing.SystemColors.Control
        Me.lbldB20.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldB20.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldB20.Location = New System.Drawing.Point(21, 40)
        Me.lbldB20.Name = "lbldB20"
        Me.lbldB20.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldB20.Size = New System.Drawing.Size(33, 16)
        Me.lbldB20.TabIndex = 56
        Me.lbldB20.Text = "20dB"
        Me.lbldB20.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lblm10
        '
        Me.lblm10.BackColor = System.Drawing.SystemColors.Control
        Me.lblm10.Cursor = System.Windows.Forms.Cursors.Default
        Me.lblm10.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lblm10.Location = New System.Drawing.Point(12, 151)
        Me.lblm10.Name = "lblm10"
        Me.lblm10.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lblm10.Size = New System.Drawing.Size(41, 15)
        Me.lblm10.TabIndex = 55
        Me.lblm10.Text = "-10dB"
        Me.lblm10.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lbldBm20
        '
        Me.lbldBm20.BackColor = System.Drawing.SystemColors.Control
        Me.lbldBm20.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldBm20.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldBm20.Location = New System.Drawing.Point(12, 191)
        Me.lbldBm20.Name = "lbldBm20"
        Me.lbldBm20.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldBm20.Size = New System.Drawing.Size(41, 16)
        Me.lbldBm20.TabIndex = 54
        Me.lbldBm20.Text = "-20dB"
        Me.lbldBm20.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lbldBm30
        '
        Me.lbldBm30.BackColor = System.Drawing.SystemColors.Control
        Me.lbldBm30.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldBm30.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldBm30.Location = New System.Drawing.Point(12, 228)
        Me.lbldBm30.Name = "lbldBm30"
        Me.lbldBm30.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldBm30.Size = New System.Drawing.Size(41, 15)
        Me.lbldBm30.TabIndex = 53
        Me.lbldBm30.Text = "-30dB"
        Me.lbldBm30.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lbldBm40
        '
        Me.lbldBm40.BackColor = System.Drawing.SystemColors.Control
        Me.lbldBm40.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldBm40.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldBm40.Location = New System.Drawing.Point(12, 267)
        Me.lbldBm40.Name = "lbldBm40"
        Me.lbldBm40.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldBm40.Size = New System.Drawing.Size(41, 17)
        Me.lbldBm40.TabIndex = 52
        Me.lbldBm40.Text = "-40dB"
        Me.lbldBm40.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lbldBm50
        '
        Me.lbldBm50.BackColor = System.Drawing.SystemColors.Control
        Me.lbldBm50.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldBm50.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldBm50.Location = New System.Drawing.Point(12, 303)
        Me.lbldBm50.Name = "lbldBm50"
        Me.lbldBm50.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldBm50.Size = New System.Drawing.Size(41, 16)
        Me.lbldBm50.TabIndex = 51
        Me.lbldBm50.Text = "-50dB"
        Me.lbldBm50.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'lbldBm60
        '
        Me.lbldBm60.BackColor = System.Drawing.SystemColors.Control
        Me.lbldBm60.Cursor = System.Windows.Forms.Cursors.Default
        Me.lbldBm60.ForeColor = System.Drawing.SystemColors.ControlText
        Me.lbldBm60.Location = New System.Drawing.Point(11, 335)
        Me.lbldBm60.Name = "lbldBm60"
        Me.lbldBm60.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lbldBm60.Size = New System.Drawing.Size(42, 17)
        Me.lbldBm60.TabIndex = 50
        Me.lbldBm60.Text = "-60dB"
        Me.lbldBm60.TextAlign = System.Drawing.ContentAlignment.TopRight
        '
        'Button2
        '
        Me.Button2.Font = New System.Drawing.Font("ＭＳ 明朝", 10.86792!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(128, Byte))
        Me.Button2.Location = New System.Drawing.Point(555, 383)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(97, 35)
        Me.Button2.TabIndex = 73
        Me.Button2.Text = "グラフ消去"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Graph1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 12.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(708, 429)
        Me.ControlBox = False
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.FreqChart)
        Me.Controls.Add(Me.lblName)
        Me.Controls.Add(Me.lblCh1)
        Me.Controls.Add(Me.lblCh0)
        Me.Controls.Add(Me.Line2)
        Me.Controls.Add(Me.Line1)
        Me.Controls.Add(Me.lblFreq10)
        Me.Controls.Add(Me.lblFreq100)
        Me.Controls.Add(Me.lblFreq1k)
        Me.Controls.Add(Me.lblFreq10k)
        Me.Controls.Add(Me.lblFreq100k)
        Me.Controls.Add(Me.lblFreq1m)
        Me.Controls.Add(Me.lblFreq10m)
        Me.Controls.Add(Me.lbldB0)
        Me.Controls.Add(Me.lbldB10)
        Me.Controls.Add(Me.lbldB20)
        Me.Controls.Add(Me.lblm10)
        Me.Controls.Add(Me.lbldBm20)
        Me.Controls.Add(Me.lbldBm30)
        Me.Controls.Add(Me.lbldBm40)
        Me.Controls.Add(Me.lbldBm50)
        Me.Controls.Add(Me.lbldBm60)
        Me.Name = "Graph1"
        Me.Text = "周波数特性グラフ"
        CType(Me.FreqChart, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Public WithEvents FreqChart As System.Windows.Forms.PictureBox
    Public WithEvents lblName As System.Windows.Forms.Label
    Public WithEvents lblCh1 As System.Windows.Forms.Label
    Public WithEvents lblCh0 As System.Windows.Forms.Label
    Public WithEvents Line2 As System.Windows.Forms.Label
    Public WithEvents Line1 As System.Windows.Forms.Label
    Public WithEvents lblFreq10 As System.Windows.Forms.Label
    Public WithEvents lblFreq100 As System.Windows.Forms.Label
    Public WithEvents lblFreq1k As System.Windows.Forms.Label
    Public WithEvents lblFreq10k As System.Windows.Forms.Label
    Public WithEvents lblFreq100k As System.Windows.Forms.Label
    Public WithEvents lblFreq1m As System.Windows.Forms.Label
    Public WithEvents lblFreq10m As System.Windows.Forms.Label
    Public WithEvents lbldB0 As System.Windows.Forms.Label
    Public WithEvents lbldB10 As System.Windows.Forms.Label
    Public WithEvents lbldB20 As System.Windows.Forms.Label
    Public WithEvents lblm10 As System.Windows.Forms.Label
    Public WithEvents lbldBm20 As System.Windows.Forms.Label
    Public WithEvents lbldBm30 As System.Windows.Forms.Label
    Public WithEvents lbldBm40 As System.Windows.Forms.Label
    Public WithEvents lbldBm50 As System.Windows.Forms.Label
    Public WithEvents lbldBm60 As System.Windows.Forms.Label
    Friend WithEvents Button2 As System.Windows.Forms.Button
End Class
