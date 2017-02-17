object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 508
  ClientWidth = 772
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
    Left = 8
    Top = 8
    Width = 101
    Height = 13
    Caption = 'Pocet neparnych ciar'
  end
  object Image1: TImage
    Left = 8
    Top = 36
    Width = 761
    Height = 469
  end
  object Label2: TLabel
    Left = 433
    Top = 8
    Width = 89
    Height = 13
    Caption = 'Pocet parnych ciar'
  end
  object SpinEdit1: TSpinEdit
    Left = 115
    Top = 5
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 1
  end
  object Button1: TButton
    Left = 242
    Top = 5
    Width = 75
    Height = 22
    Caption = 'Kresli'
    TabOrder = 1
    OnClick = Button1Click
  end
  object SpinEdit2: TSpinEdit
    Left = 528
    Top = 5
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 1
  end
  object Button2: TButton
    Left = 655
    Top = 5
    Width = 75
    Height = 22
    Caption = 'Kresli'
    TabOrder = 3
    OnClick = Button2Click
  end
end
