object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 350
  ClientWidth = 600
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
    Left = 43
    Top = 44
    Width = 172
    Height = 13
    Caption = 'Poradove cislo nahradzaneho znaku'
  end
  object Label2: TLabel
    Left = 43
    Top = 117
    Width = 42
    Height = 13
    Caption = 'Vysledok'
  end
  object Label3: TLabel
    Left = 184
    Top = 72
    Width = 23
    Height = 13
    Caption = 'Znak'
  end
  object Label4: TLabel
    Left = 43
    Top = 224
    Width = 87
    Height = 13
    Caption = 'Vyhladaj a nahrad'
  end
  object Label5: TLabel
    Left = 43
    Top = 243
    Width = 31
    Height = 13
    Caption = 'Hladat'
  end
  object Label6: TLabel
    Left = 184
    Top = 243
    Width = 41
    Height = 13
    Caption = 'Nahradit'
  end
  object Edit1: TEdit
    Left = 43
    Top = 8
    Width = 329
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 378
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 251
    Top = 35
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 1
  end
  object Edit2: TEdit
    Left = 43
    Top = 136
    Width = 410
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 251
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 43
    Top = 259
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'a'
  end
  object Edit5: TEdit
    Left = 184
    Top = 259
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'x'
  end
  object Button2: TButton
    Left = 328
    Top = 257
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 7
    OnClick = Button2Click
  end
end
