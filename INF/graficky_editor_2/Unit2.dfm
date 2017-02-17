object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 611
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 104
    Width = 950
    Height = 499
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Label1: TLabel
    Left = 152
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Farba Ciary'
  end
  object Label2: TLabel
    Left = 368
    Top = 8
    Width = 62
    Height = 13
    Caption = 'Hrubka Ciary'
  end
  object Label3: TLabel
    Left = 657
    Top = 8
    Width = 136
    Height = 13
    Caption = 'Po'#269'et s'#250'streden'#253'ch '#250'tvarov'
  end
  object Label4: TLabel
    Left = 488
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Tvar'
  end
  object ColorBox1: TColorBox
    Left = 152
    Top = 27
    Width = 105
    Height = 22
    TabOrder = 0
    OnChange = ColorBox1Change
  end
  object SpinEdit1: TSpinEdit
    Left = 368
    Top = 27
    Width = 62
    Height = 22
    MaxValue = 255
    MinValue = 1
    TabOrder = 1
    Value = 1
  end
  object Button1: TButton
    Left = 279
    Top = 24
    Width = 75
    Height = 25
    Caption = #270'al'#353'ie farby'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 488
    Top = 27
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'Ciara'
    Items.Strings = (
      'Ciara'
      'Stvorec'
      'Oval'
      'Sustredene Stvorce'
      'Sustredene Kruhy')
  end
  object SpinEdit2: TSpinEdit
    Left = 688
    Top = 27
    Width = 58
    Height = 22
    MaxValue = 20
    MinValue = 1
    TabOrder = 4
    Value = 5
  end
  object Button2: TButton
    Left = 823
    Top = 24
    Width = 81
    Height = 25
    Caption = 'Zmaza'#357' plochu'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ComboBox2: TComboBox
    Left = 16
    Top = 26
    Width = 113
    Height = 21
    TabOrder = 6
    Text = 'ComboBox2'
  end
  object ColorDialog1: TColorDialog
    Left = 504
    Top = 296
  end
end
