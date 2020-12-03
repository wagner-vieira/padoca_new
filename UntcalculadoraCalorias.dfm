object FrmCalculadoraCalorias: TFrmCalculadoraCalorias
  Left = 0
  Top = 0
  Caption = 'Calculadora de calorias de produtos'
  ClientHeight = 396
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 32
    Top = 16
    Width = 561
    Height = 29
    Caption = 'Calculadora de calorias - Valores por refer'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblProdutos: TLabel
    Left = 48
    Top = 64
    Width = 132
    Height = 18
    Caption = 'Selecione o produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblCarboidratos: TLabel
    Left = 48
    Top = 128
    Width = 247
    Height = 18
    Caption = 'Informe a quantidade de carboidratos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblProteinas: TLabel
    Left = 48
    Top = 184
    Width = 227
    Height = 18
    Caption = 'Informe a quantidade de prote'#237'nas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblGorduras: TLabel
    Left = 48
    Top = 235
    Width = 225
    Height = 18
    Caption = 'Informe a quantidade de gorduras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTabela: TLabel
    Left = 320
    Top = 59
    Width = 158
    Height = 18
    Caption = 'Informa'#231#245'es nutricionais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cmbProdutos: TComboBox
    Left = 48
    Top = 88
    Width = 217
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'P'#227'o franc'#234's'
      'Suco de laranja'
      'Caf'#233' expresso'
      'Caf'#233' com leite'
      'Cappuccino')
  end
  object edtCarboidratos: TEdit
    Left = 48
    Top = 147
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtProteinas: TEdit
    Left = 48
    Top = 203
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtGorduras: TEdit
    Left = 48
    Top = 259
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object meTabela: TMemo
    Left = 320
    Top = 83
    Width = 273
    Height = 197
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object btnExibir: TButton
    Left = 48
    Top = 312
    Width = 121
    Height = 57
    Caption = 'Exibir valores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object btnLimpar: TButton
    Left = 264
    Top = 312
    Width = 121
    Height = 57
    Caption = 'Limpar campos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnLimparClick
  end
  object btnFechar: TButton
    Left = 472
    Top = 312
    Width = 121
    Height = 57
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnFecharClick
  end
end
