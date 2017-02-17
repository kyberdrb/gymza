object Edit: TEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Edit'
  ClientHeight = 426
  ClientWidth = 291
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
    Left = 24
    Top = 35
    Width = 23
    Height = 13
    Caption = #352#237'rka'
  end
  object Label2: TLabel
    Left = 24
    Top = 79
    Width = 28
    Height = 13
    Caption = 'V'#253#353'ka'
  end
  object Label3: TLabel
    Left = 24
    Top = 173
    Width = 56
    Height = 13
    Caption = 'Farba '#268'iary'
  end
  object Label4: TLabel
    Left = 24
    Top = 208
    Width = 63
    Height = 13
    Caption = 'Farba v'#253'plne'
  end
  object Label5: TLabel
    Left = 24
    Top = 128
    Width = 60
    Height = 13
    Caption = 'Hr'#250'bka '#269'iary'
  end
  object Label6: TLabel
    Left = 24
    Top = 261
    Width = 25
    Height = 13
    Caption = #352#237'pka'
  end
  object Label7: TLabel
    Left = 24
    Top = 288
    Width = 52
    Height = 13
    Caption = 'D'#314#382'ka '#353'pice'
  end
  object Label8: TLabel
    Left = 24
    Top = 320
    Width = 61
    Height = 13
    Caption = 'Hr'#250'bka '#353'pice'
  end
  object SpinEdit1: TSpinEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 100
  end
  object SpinEdit2: TSpinEdit
    Left = 136
    Top = 76
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 100
  end
  object Button1: TButton
    Left = 32
    Top = 378
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 182
    Top = 378
    Width = 75
    Height = 25
    Caption = 'Zru'#353'i'#357
    ModalResult = 2
    TabOrder = 6
  end
  object SpinEdit3: TSpinEdit
    Left = 136
    Top = 125
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 5
  end
  object ColorBox1: TColorBox
    Left = 136
    Top = 170
    Width = 121
    Height = 22
    TabOrder = 3
  end
  object ColorBox2: TColorBox
    Left = 136
    Top = 205
    Width = 121
    Height = 22
    Selected = clWhite
    TabOrder = 4
  end
  object SpinEdit4: TSpinEdit
    Left = 136
    Top = 285
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 50
  end
  object SpinEdit5: TSpinEdit
    Left = 136
    Top = 317
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 20
  end
end
