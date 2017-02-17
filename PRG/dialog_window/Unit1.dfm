object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sprava'
  ClientHeight = 488
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Sprava'
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 72
    Width = 97
    Height = 17
    Caption = 'Ano'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 112
    Width = 97
    Height = 17
    Caption = 'Nie'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 152
    Width = 97
    Height = 17
    Caption = 'Zrusit'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 152
    Top = 26
    Width = 473
    Height = 21
    TabOrder = 4
    Text = 'Sprava'
  end
  object RadioGroup1: TRadioGroup
    Left = 168
    Top = 64
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    ItemIndex = 0
    Items.Strings = (
      'Inform'#225'cia'
      'Varovanie'
      'Chyba')
    TabOrder = 5
  end
end
