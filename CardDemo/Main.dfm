object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Card Demo'
  ClientHeight = 280
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CardProviders: TRadioGroup
    Left = 16
    Top = 8
    Width = 185
    Height = 105
    Caption = 'Card providers'
    Items.Strings = (
      'Quickpay'
      'Dibs')
    TabOrder = 0
    OnClick = CardProvidersClick
  end
  object EditAmount: TEdit
    Left = 16
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0.00'
  end
  object BtnCollect: TButton
    Left = 143
    Top = 142
    Width = 58
    Height = 25
    Caption = 'Collect'
    Enabled = False
    TabOrder = 2
    OnClick = BtnCollectClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 261
    Width = 335
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitLeft = 296
    ExplicitTop = 192
    ExplicitWidth = 0
  end
end
