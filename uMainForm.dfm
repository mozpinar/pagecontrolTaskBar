object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 595
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 595
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
  end
  object MainMenu1: TMainMenu
    Left = 560
    Top = 16
    object mnuStoklar: TMenuItem
      Caption = 'Stoklar'
      OnClick = mnuStoklarClick
    end
    object mnuHareketler: TMenuItem
      Caption = 'Hareketler'
      OnClick = mnuHareketlerClick
    end
    object mnuMusteriler: TMenuItem
      Caption = 'M'#252#351'teriler'
    end
    object mnuSaticilar: TMenuItem
      Caption = 'Sat'#305'c'#305'lar'
    end
  end
end
