object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 677
  ClientWidth = 737
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
    Left = 24
    Top = 88
    Width = 705
    Height = 569
  end
  object Button1: TButton
    Left = 456
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Right'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Left'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 352
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Up'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 352
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Down'
    TabOrder = 3
    OnClick = Button4Click
  end
end
