object FrmCalcCalorias: TFrmCalcCalorias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calculadora de calorias'
  ClientHeight = 406
  ClientWidth = 615
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
  object Label1: TLabel
    Left = 144
    Top = 16
    Width = 338
    Height = 25
    Caption = 'C'#225'lculo de calorias dos produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblProduto: TLabel
    Left = 40
    Top = 72
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
  object lblCarboidrato: TLabel
    Left = 40
    Top = 136
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
    Left = 40
    Top = 200
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
    Left = 40
    Top = 261
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
    Left = 365
    Top = 72
    Width = 135
    Height = 18
    Caption = 'Tabela nutricional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmbProduto: TComboBox
    Left = 40
    Top = 96
    Width = 247
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'Caf'#233' simples'
      'Caf'#233' com leite'
      'Iogurte natural desnatado'
      'P'#227'o franc'#234's'
      'P'#227'o de forma'
      'Suco de laranja'
      '')
  end
  object edtCarboidratos: TEdit
    Left = 40
    Top = 160
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
    Left = 40
    Top = 219
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
    Left = 40
    Top = 280
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
  object mmTabela: TMemo
    Left = 320
    Top = 96
    Width = 265
    Height = 210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object btnCalcular: TButton
    Left = 40
    Top = 328
    Width = 121
    Height = 57
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnCalcularClick
  end
  object btnLimpar: TButton
    Left = 248
    Top = 328
    Width = 121
    Height = 57
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnLimparClick
  end
  object Button1: TButton
    Left = 461
    Top = 328
    Width = 124
    Height = 57
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
end
