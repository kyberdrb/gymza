object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 486
  ClientWidth = 785
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 105
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Pen color'
  end
  object Label2: TLabel
    Left = 212
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Fill color'
  end
  object Label3: TLabel
    Left = 335
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Pen thickness'
  end
  object Label4: TLabel
    Left = 422
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Direction'
  end
  object Label5: TLabel
    Left = 573
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Width'
  end
  object Label6: TLabel
    Left = 664
    Top = 8
    Width = 31
    Height = 13
    Align = alCustom
    Caption = 'Height'
    Color = clInfoBk
    ParentColor = False
  end
  object Sipka1: TSipka
    Left = 80
    Top = 152
    Width = 100
    Height = 41
    DruhTvaru = tvSipkaDoprava
  end
  object Button1: TButton
    Left = 56
    Top = 27
    Width = 25
    Height = 25
    TabOrder = 0
    OnClick = Button1Click
  end
  object ColorBox1: TColorBox
    Left = 105
    Top = 25
    Width = 88
    Height = 22
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeDefault, cbPrettyNames]
    TabOrder = 1
    OnChange = ColorBox1Change
  end
  object ColorBox2: TColorBox
    Left = 212
    Top = 25
    Width = 93
    Height = 22
    Selected = clWhite
    Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbPrettyNames]
    TabOrder = 2
    OnChange = ColorBox2Change
  end
  object ComboBox1: TComboBox
    Left = 406
    Top = 26
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'Sipka doprava'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Sipka doprava'
      'Sipka dolava'
      'Sipka hore'
      'Sipka dole')
  end
  object SpinEdit2: TSpinEdit
    Left = 573
    Top = 25
    Width = 60
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 150
    OnChange = SpinEdit2Change
  end
  object SpinEdit3: TSpinEdit
    Left = 664
    Top = 25
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 150
    OnChange = SpinEdit3Change
  end
  object Button2: TButton
    Left = 8
    Top = 27
    Width = 25
    Height = 25
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 3
    Width = 25
    Height = 25
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 27
    Width = 25
    Height = 25
    TabOrder = 8
    OnClick = Button4Click
  end
  object SpinEdit1: TSpinEdit
    Left = 335
    Top = 25
    Width = 57
    Height = 22
    MaxValue = 100
    MinValue = 0
    TabOrder = 9
    Value = 1
    OnChange = SpinEdit1Change
  end
end
