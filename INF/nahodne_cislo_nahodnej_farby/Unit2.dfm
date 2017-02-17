object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 559
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 0
    Width = 564
    Height = 551
  end
  object Button1: TButton
    Left = 704
    Top = 8
    Width = 75
    Height = 25
    Caption = 'losuj'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 704
    Top = 32
    Width = 75
    Height = 25
    Caption = 'stop'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 704
    Top = 112
    Width = 75
    Height = 25
    Caption = 'cif. sucet'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 728
    Top = 56
  end
end
