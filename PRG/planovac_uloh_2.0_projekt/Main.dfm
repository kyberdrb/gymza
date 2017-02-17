object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 479
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl_Ulohy: TPageControl
    Left = 0
    Top = 0
    Width = 647
    Height = 479
    ActivePage = TabSheet_Ulohy
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 160
    ExplicitWidth = 289
    ExplicitHeight = 193
    object TabSheet_Ulohy: TTabSheet
      Caption = #218'lohy'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Splitter1: TSplitter
        Left = 0
        Top = 205
        Width = 639
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 0
        ExplicitWidth = 208
      end
      object ListBox1: TListBox
        Left = 0
        Top = 208
        Width = 639
        Height = 243
        Style = lbOwnerDrawFixed
        Align = alBottom
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 0
        Top = 0
        Width = 639
        Height = 21
        Align = alTop
        TabOrder = 1
        ExplicitLeft = 40
        ExplicitTop = 48
        ExplicitWidth = 257
      end
      object Button1: TButton
        Left = 0
        Top = 21
        Width = 639
        Height = 25
        Align = alTop
        Caption = 'Pridaj'
        TabOrder = 2
        OnClick = Button1Click
        ExplicitLeft = 256
        ExplicitTop = 46
        ExplicitWidth = 75
      end
    end
  end
end
