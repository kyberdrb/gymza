object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 74
  ClientWidth = 391
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
    Left = 336
    Top = 29
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 232
    Top = 8
    Width = 39
    Height = 13
    Caption = 'Mocnina'
  end
  object Label3: TLabel
    Left = 136
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Cislo'
  end
  object Button1: TButton
    Left = 32
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Mocnina'
    TabOrder = 0
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 136
    Top = 26
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 232
    Top = 26
    Width = 57
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
end
