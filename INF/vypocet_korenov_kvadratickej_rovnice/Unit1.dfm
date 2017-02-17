object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 148
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 7
    Width = 78
    Height = 13
    Caption = 'Kvadraticky clen'
  end
  object Label2: TLabel
    Left = 120
    Top = 7
    Width = 63
    Height = 13
    Caption = 'Linearny clen'
  end
  object Label3: TLabel
    Left = 216
    Top = 7
    Width = 70
    Height = 13
    Caption = 'Absolutny clen'
  end
  object Label4: TLabel
    Left = 16
    Top = 92
    Width = 57
    Height = 13
  end
  object Label5: TLabel
    Left = 16
    Top = 119
    Width = 57
    Height = 13
  end
  object Label6: TLabel
    Left = 16
    Top = 62
    Width = 231
    Height = 13
    Caption = 'Pocet desatinnych miest (0=neobmedzene vela)'
  end
  object Button1: TButton
    Left = 288
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Korene'
    TabOrder = 0
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 16
    Top = 26
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 2
  end
  object SpinEdit2: TSpinEdit
    Left = 120
    Top = 26
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = -5
  end
  object SpinEdit3: TSpinEdit
    Left = 216
    Top = 26
    Width = 57
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 2
  end
  object SpinEdit4: TSpinEdit
    Left = 253
    Top = 59
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 2
  end
end
