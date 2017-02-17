object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 219
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpinEdit1: TSpinEdit
    Left = 33
    Top = 24
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 10
  end
  object SpinEdit2: TSpinEdit
    Left = 160
    Top = 24
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 5
  end
  object Button1: TButton
    Left = 312
    Top = 22
    Width = 75
    Height = 25
    Caption = 'NSD'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 33
    Top = 64
    Width = 112
    Height = 57
    TabOrder = 3
  end
end
