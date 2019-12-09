object frmMain: TfrmMain
  Left = 196
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #25968#25454#25509#25910#26381#21153
  ClientHeight = 400
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 70
    Top = 180
    Width = 448
    Height = 13
    Caption = '1     2    3     4     5     6    7     8     9    10    11   12'
  end
  object Label2: TLabel
    Left = 70
    Top = 376
    Width = 448
    Height = 13
    Caption = '1     2    3     4     5     6    7     8     9    10    11   12'
  end
  object Label3: TLabel
    Left = 38
    Top = 202
    Width = 7
    Height = 13
    Caption = '1'
  end
  object Label4: TLabel
    Left = 38
    Top = 224
    Width = 7
    Height = 13
    Caption = '2'
  end
  object Label5: TLabel
    Left = 38
    Top = 245
    Width = 7
    Height = 13
    Caption = '3'
  end
  object Label6: TLabel
    Left = 38
    Top = 266
    Width = 7
    Height = 13
    Caption = '4'
  end
  object Label7: TLabel
    Left = 38
    Top = 288
    Width = 7
    Height = 13
    Caption = '5'
  end
  object Label8: TLabel
    Left = 38
    Top = 310
    Width = 7
    Height = 13
    Caption = '6'
  end
  object Label9: TLabel
    Left = 38
    Top = 331
    Width = 7
    Height = 13
    Caption = '7'
  end
  object Label10: TLabel
    Left = 38
    Top = 352
    Width = 7
    Height = 13
    Caption = '8'
  end
  object Label11: TLabel
    Left = 536
    Top = 202
    Width = 7
    Height = 13
    Caption = '1'
  end
  object Label12: TLabel
    Left = 536
    Top = 224
    Width = 7
    Height = 13
    Caption = '2'
  end
  object Label13: TLabel
    Left = 536
    Top = 245
    Width = 7
    Height = 13
    Caption = '3'
  end
  object Label14: TLabel
    Left = 536
    Top = 266
    Width = 7
    Height = 13
    Caption = '4'
  end
  object Label15: TLabel
    Left = 536
    Top = 288
    Width = 7
    Height = 13
    Caption = '5'
  end
  object Label16: TLabel
    Left = 536
    Top = 310
    Width = 7
    Height = 13
    Caption = '6'
  end
  object Label17: TLabel
    Left = 536
    Top = 331
    Width = 7
    Height = 13
    Caption = '7'
  end
  object Label18: TLabel
    Left = 536
    Top = 352
    Width = 7
    Height = 13
    Caption = '8'
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 577
    Height = 25
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 21
        Width = 573
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 281
      Height = 21
      Align = alNone
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 72
      Caption = 'ToolBar1'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton7: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = #36830#25509#25968#25454#24211
        ImageIndex = 5
        OnClick = ToolButton7Click
      end
      object ToolButton8: TToolButton
        Left = 76
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 84
        Top = 0
        Caption = #21442#25968#35774#32622
        ImageIndex = 5
        OnClick = ToolButton2Click
      end
      object ToolButton9: TToolButton
        Left = 156
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 164
        Top = 0
        Caption = #27880#20876
        ImageIndex = 3
        OnClick = ToolButton5Click
      end
      object ToolButton4: TToolButton
        Left = 236
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 244
        Top = 0
        AutoSize = True
        Caption = #36864#20986
        ImageIndex = 2
        OnClick = N3Click
      end
    end
  end
  object Memo1: TMemo
    Left = 16
    Top = 40
    Width = 425
    Height = 129
    ImeName = #20013#25991'('#31616#20307') - '#19975#33021#20116#31508#36755#20837#27861
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 456
    Top = 48
    Width = 75
    Height = 25
    Caption = #20445#23384
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 456
    Top = 80
    Width = 75
    Height = 25
    Caption = #28165#31354
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Button1: TButton
    Left = 456
    Top = 112
    Width = 75
    Height = 25
    Caption = #27979#35797
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Tag = 1
    Left = 52
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 5
  end
  object Edit2: TEdit
    Tag = 2
    Left = 92
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 6
  end
  object Edit3: TEdit
    Tag = 3
    Left = 132
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 7
  end
  object Edit4: TEdit
    Tag = 4
    Left = 172
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 8
  end
  object Edit5: TEdit
    Tag = 5
    Left = 212
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 9
  end
  object Edit6: TEdit
    Tag = 6
    Left = 252
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 10
  end
  object Edit7: TEdit
    Tag = 7
    Left = 292
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 11
  end
  object Edit8: TEdit
    Tag = 8
    Left = 332
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 12
  end
  object Edit9: TEdit
    Tag = 9
    Left = 372
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 13
  end
  object Edit10: TEdit
    Tag = 10
    Left = 412
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 14
  end
  object Edit11: TEdit
    Tag = 11
    Left = 452
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 15
  end
  object Edit12: TEdit
    Tag = 12
    Left = 492
    Top = 198
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 16
  end
  object Edit13: TEdit
    Tag = 13
    Left = 52
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 17
  end
  object Edit14: TEdit
    Tag = 14
    Left = 92
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 18
  end
  object Edit15: TEdit
    Tag = 15
    Left = 132
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 19
  end
  object Edit16: TEdit
    Tag = 16
    Left = 172
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 20
  end
  object Edit17: TEdit
    Tag = 17
    Left = 212
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 21
  end
  object Edit18: TEdit
    Tag = 18
    Left = 252
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 22
  end
  object Edit19: TEdit
    Tag = 19
    Left = 292
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 23
  end
  object Edit20: TEdit
    Tag = 20
    Left = 332
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 24
  end
  object Edit21: TEdit
    Tag = 21
    Left = 372
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 25
  end
  object Edit22: TEdit
    Tag = 22
    Left = 412
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 26
  end
  object Edit23: TEdit
    Tag = 23
    Left = 452
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 27
  end
  object Edit24: TEdit
    Tag = 24
    Left = 492
    Top = 220
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 28
  end
  object Edit25: TEdit
    Tag = 25
    Left = 52
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 29
  end
  object Edit26: TEdit
    Tag = 26
    Left = 92
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 30
  end
  object Edit27: TEdit
    Tag = 27
    Left = 132
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 31
  end
  object Edit28: TEdit
    Tag = 28
    Left = 172
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 32
  end
  object Edit29: TEdit
    Tag = 29
    Left = 212
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 33
  end
  object Edit30: TEdit
    Tag = 30
    Left = 252
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 34
  end
  object Edit31: TEdit
    Tag = 31
    Left = 292
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 35
  end
  object Edit32: TEdit
    Tag = 32
    Left = 332
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 36
  end
  object Edit33: TEdit
    Tag = 33
    Left = 372
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 37
  end
  object Edit34: TEdit
    Tag = 34
    Left = 412
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 38
  end
  object Edit35: TEdit
    Tag = 35
    Left = 452
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 39
  end
  object Edit36: TEdit
    Tag = 36
    Left = 492
    Top = 241
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 40
  end
  object Edit37: TEdit
    Tag = 37
    Left = 52
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 41
  end
  object Edit38: TEdit
    Tag = 38
    Left = 92
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 42
  end
  object Edit39: TEdit
    Tag = 39
    Left = 132
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 43
  end
  object Edit40: TEdit
    Tag = 40
    Left = 172
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 44
  end
  object Edit41: TEdit
    Tag = 41
    Left = 212
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 45
  end
  object Edit42: TEdit
    Tag = 42
    Left = 252
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 46
  end
  object Edit43: TEdit
    Tag = 43
    Left = 292
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 47
  end
  object Edit44: TEdit
    Tag = 44
    Left = 332
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 48
  end
  object Edit45: TEdit
    Tag = 45
    Left = 372
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 49
  end
  object Edit46: TEdit
    Tag = 46
    Left = 412
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 50
  end
  object Edit47: TEdit
    Tag = 47
    Left = 452
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 51
  end
  object Edit48: TEdit
    Tag = 48
    Left = 492
    Top = 262
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 52
  end
  object Edit49: TEdit
    Tag = 49
    Left = 52
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 53
  end
  object Edit50: TEdit
    Tag = 50
    Left = 92
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 54
  end
  object Edit51: TEdit
    Tag = 51
    Left = 132
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 55
  end
  object Edit52: TEdit
    Tag = 52
    Left = 172
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 56
  end
  object Edit53: TEdit
    Tag = 53
    Left = 212
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 57
  end
  object Edit54: TEdit
    Tag = 54
    Left = 252
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 58
  end
  object Edit55: TEdit
    Tag = 55
    Left = 292
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 59
  end
  object Edit56: TEdit
    Tag = 56
    Left = 332
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 60
  end
  object Edit57: TEdit
    Tag = 57
    Left = 372
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 61
  end
  object Edit58: TEdit
    Tag = 58
    Left = 412
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 62
  end
  object Edit59: TEdit
    Tag = 59
    Left = 452
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 63
  end
  object Edit60: TEdit
    Tag = 60
    Left = 492
    Top = 284
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 64
  end
  object Edit61: TEdit
    Tag = 61
    Left = 52
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 65
  end
  object Edit62: TEdit
    Tag = 62
    Left = 92
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 66
  end
  object Edit63: TEdit
    Tag = 63
    Left = 132
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 67
  end
  object Edit64: TEdit
    Tag = 64
    Left = 172
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 68
  end
  object Edit65: TEdit
    Tag = 65
    Left = 212
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 69
  end
  object Edit66: TEdit
    Tag = 66
    Left = 252
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 70
  end
  object Edit67: TEdit
    Tag = 67
    Left = 292
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 71
  end
  object Edit68: TEdit
    Tag = 68
    Left = 332
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 72
  end
  object Edit69: TEdit
    Tag = 69
    Left = 372
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 73
  end
  object Edit70: TEdit
    Tag = 70
    Left = 412
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 74
  end
  object Edit71: TEdit
    Tag = 71
    Left = 452
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 75
  end
  object Edit72: TEdit
    Tag = 72
    Left = 492
    Top = 306
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 76
  end
  object Edit73: TEdit
    Tag = 73
    Left = 52
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 77
  end
  object Edit74: TEdit
    Tag = 74
    Left = 92
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 78
  end
  object Edit75: TEdit
    Tag = 75
    Left = 132
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 79
  end
  object Edit76: TEdit
    Tag = 76
    Left = 172
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 80
  end
  object Edit77: TEdit
    Tag = 77
    Left = 212
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 81
  end
  object Edit78: TEdit
    Tag = 78
    Left = 252
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 82
  end
  object Edit79: TEdit
    Tag = 79
    Left = 292
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 83
  end
  object Edit80: TEdit
    Tag = 80
    Left = 332
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 84
  end
  object Edit81: TEdit
    Tag = 81
    Left = 372
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 85
  end
  object Edit82: TEdit
    Tag = 82
    Left = 412
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 86
  end
  object Edit83: TEdit
    Tag = 83
    Left = 452
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 87
  end
  object Edit84: TEdit
    Tag = 84
    Left = 492
    Top = 327
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 88
  end
  object Edit85: TEdit
    Tag = 85
    Left = 52
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 89
  end
  object Edit86: TEdit
    Tag = 86
    Left = 92
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 90
  end
  object Edit87: TEdit
    Tag = 87
    Left = 132
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 91
  end
  object Edit88: TEdit
    Tag = 88
    Left = 172
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 92
  end
  object Edit89: TEdit
    Tag = 89
    Left = 212
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 93
  end
  object Edit90: TEdit
    Tag = 90
    Left = 252
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 94
  end
  object Edit91: TEdit
    Tag = 91
    Left = 292
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 95
  end
  object Edit92: TEdit
    Tag = 92
    Left = 332
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 96
  end
  object Edit93: TEdit
    Tag = 93
    Left = 372
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 97
  end
  object Edit94: TEdit
    Tag = 94
    Left = 412
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 98
  end
  object Edit95: TEdit
    Tag = 95
    Left = 452
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 99
  end
  object Edit96: TEdit
    Tag = 96
    Left = 492
    Top = 349
    Width = 40
    Height = 21
    Color = clMoneyGreen
    TabOrder = 100
  end
  object LYTray1: TLYTray
    Icon.Data = {
      0000010002002020000000000000A80800002600000010100000000000006805
      0000CE0800002800000020000000400000000100080000000000000400000000
      0000000000000001000000000000557FFF00555FAA00555F2A00559F0000AA9F
      000000BF550055BFAA00AA3F2A0055BF5500009F020000BFFF00007FFF00FF9F
      0000003FFF00FFFFFF00C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000101010101010101010101010101010101010
      1010101010101010101010101010101010101010101010101010101010101010
      1010101010101010101010101010101010101010101010101010101010101010
      1010101010101010101010101010101010101010101010101010101010100808
      0810101010101010101010101010101010101010101010101010101010080808
      08101010100A0A0A101010101010101010101010101010101010101008080808
      081010100A0A0A0A0A1010101010101010101010101010101010100808080808
      08100A0A0A0A0A0A0A1010101010101010101010101010101010080808080808
      08060A0A0A0A0A0A0A0A10101010101010101010101010101008080808080808
      02010A0A0A0A0A0A0A0A0A101010101010101010101010101008050909050808
      07010A0A0A0A0A0A0A0A0A101010101010101010101010100909090909090907
      07010A0A0A0A0A0A0A0A0A0A10101010101010101010100C0909090909090207
      07000B0B0B0B0B0B0B0A0A0A101010101010101010100C0C0909090909090707
      070B0B0B0B0B0B0B0B0B0A0A1010101010101010100C0C0C0909090909020707
      070B0B0B0B0B0B0B0B0B0B0A10101010101010100C0C0C0C0309090909070707
      010B0B0B0B0B0B0B0B0B0B0A101010101010100C0C0C0C0C0409090909070707
      0B0B0B0B0B0B0B0B0B0B0B001010101010100C0C0C0C0C0C0C03090902070701
      0B0B0B0B0B0B0B0B0B0B0B0D1010101010100C0C0C0C0C0C0C0C030902070700
      0B0B0B0B0B0B0B0B0B0B0D0D10101010100C0C0C0C0C0C0C0C0C0C040707010B
      0B0B0B0B0B0B0B000B0D0D0D0D1010100C0C0C0C0C0C0C0C0C0C0C0C07070D0D
      0000000000000D0D0D0D0D0D0D1010100C0C0C0C0C0C0C0C0C0C0C10070D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D10100C0C0C0C0C0C0C0C0C0C0C101010100D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D10100C0C0C0C0C0C0C0C0C0C10101010100D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D10100C0C0C0C0C0C0C0C10101010101010100D
      0D0D0D0D0D0D0D0D0D0D0D0D0D10100C0C0C0C0C0C1010101010101010101010
      0D0D0D0D0D0D0D0D0D0D0D0D0D1010100C0C1010101010101010101010101010
      100D0D0D0D0D0D0D0D0D0D0D0D10101010101010101010101010101010101010
      10100D0D0D0D0D0D0D0D0D0D0D10101010101010101010101010101010101010
      1010100D0D0D0D0D0D0D0D0D1010101010101010101010101010101010101010
      10101010100D0D0D0D0D0D0D1010101010101010101010101010101010101010
      101010101010100D0D0D0D101010101010101010101010101010101010101010
      1010101010101010101010101010101010101010101010101010101010101010
      1010101010101010101010101010FFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFE
      1E3FFFFC1C1FFFF8101FFFF0000FFFE00007FFE00007FFC00003FF800003FF00
      0003FE000003FC000003F8000003F0000003F0000003E0000001C0000001C004
      0001800F0001801F0001807F800181FFC001CFFFE001FFFFF001FFFFF803FFFF
      FE03FFFFFF87FFFFFFFFFFFFFFFF280000001000000020000000010008000000
      0000400100000000000000000000000000000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000404
      0400080808000C0C0C0011111100161616001C1C1C0022222200292929005555
      55004D4D4D004242420039393900807CFF005050FF009300D600FFECCC00C6D6
      EF00D6E7E70090A9AD000000330000006600000099000000CC00003300000033
      330000336600003399000033CC000033FF000066000000663300006666000066
      99000066CC000066FF00009900000099330000996600009999000099CC000099
      FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF660000FF
      990000FFCC00330000003300330033006600330099003300CC003300FF003333
      00003333330033336600333399003333CC003333FF0033660000336633003366
      6600336699003366CC003366FF00339900003399330033996600339999003399
      CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CCFF0033FF
      330033FF660033FF990033FFCC0033FFFF006600000066003300660066006600
      99006600CC006600FF00663300006633330066336600663399006633CC006633
      FF00666600006666330066666600666699006666CC0066990000669933006699
      6600669999006699CC006699FF0066CC000066CC330066CC990066CCCC0066CC
      FF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC00999900009933
      9900990099009900CC009900000099333300990066009933CC009900FF009966
      00009966330099336600996699009966CC009933FF0099993300999966009999
      99009999CC009999FF0099CC000099CC330066CC660099CC990099CCCC0099CC
      FF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC0000009900
      3300CC006600CC009900CC00CC0099330000CC333300CC336600CC339900CC33
      CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966FF00CC99
      0000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC3300CCCC
      6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF9900CCFF
      CC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF336600FF33
      9900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66CC00CC66
      FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC0000FFCC
      3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFF
      CC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100A5005F5F
      5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDDDD00E3E3
      E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
      0000000000000000000000000000970000000000000000000000000000979797
      0038380000000000000000009797979738383800000000000000009797979786
      38383838000000000000002D2D2D868638383838380000000000D32D2D2D862C
      2C2C2C383800000000D3D32D2D86862C2C2C2C2C38000000D3D3D32D2D866E2C
      2C2C2C2C260000D3D3D3D3D32D862C2C2C2C2C26260000D3D3D3D3D300262626
      26262626260000D3D3D3D3000000262626262626260000D3D300000000000026
      2626262626000000000000000000000026262626260000000000000000000000
      00002626000000000000000000000000000000000000FFFF0000FF7F0000FE27
      0000FC070000F8030000F8010000F0010000E0010000C0010000800100008201
      0000870100009F810000FFC10000FFF30000FFFF0000}
    Hint = #25968#25454#25509#25910#26381#21153
    PopupMenu = PopupMenu1
    ActButton = abRightButton
    Left = 102
    Top = 26
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 138
    Top = 26
    object N1: TMenuItem
      Caption = #35774#32622
      ImageIndex = 1
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #36864#20986
      ImageIndex = 0
      OnClick = N3Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnActivate = ApplicationEvents1Activate
    Left = 174
    Top = 26
  end
  object OpenDialog1: TOpenDialog
    Left = 240
    Top = 26
  end
  object ComPort1: TComPort
    BaudRate = br1200
    Port = 'COM1'
    Parity.Bits = prEven
    StopBits = sbOneStopBit
    DataBits = dbSeven
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    OnAfterOpen = ComPort1AfterOpen
    OnRxChar = ComPort1RxChar
    Left = 72
    Top = 104
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 144
    Top = 104
  end
  object SaveDialog1: TSaveDialog
    Left = 272
    Top = 26
  end
end
