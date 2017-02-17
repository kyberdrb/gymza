object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 187
  ClientWidth = 430
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
    Left = 271
    Top = 46
    Width = 123
    Height = 25
    Caption = 'nahrad slovo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 48
    Width = 257
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 257
    Height = 21
    TabOrder = 2
    Text = 'Zadaj text'
  end
  object Edit2: TEdit
    Left = 271
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Zadaj nahradzane slovo'
  end
end
