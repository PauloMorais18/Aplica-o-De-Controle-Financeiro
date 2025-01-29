object FrmPrincipal: TFrmPrincipal
  Left = -87
  Top = 59
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'LP Financeiro'
  ClientHeight = 485
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesigned
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 485
    Align = alClient
    TabOrder = 0
    object PnlConteudo: TPanel
      Left = 362
      Top = 1
      Width = 1007
      Height = 483
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      OnClick = pnlCadastrosPrincipalClick
      object PnlCabecalho: TPanel
        Left = 0
        Top = 0
        Width = 1007
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1005
        object ImgLogo150_80: TImage
          Left = 0
          Top = 0
          Width = 89
          Height = 50
          Align = alLeft
        end
        object Image2: TImage
          Left = 765
          Top = 0
          Width = 55
          Height = 50
          Align = alRight
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
            003208060000001E3F88B1000000097048597300000B1300000B1301009A9C18
            0000018B4944415478DAED96B94A044110866B44C1483053D05441038FC440C5
            C05013AF6770C5C827508C7C02511F411815343213448C4403178C45CCC4D54C
            F1F88BEE856161986B75AB76ABE06367BA7B9AFAB6E9EE0AA8492268740226D2
            2A223F8D4E286FFE2622244C445A9888B430913C71E97FA7348B7C8031F0056E
            41A756914DB01D79DED2285206E3E0D3BF77801B30A449E41BCC90DB1F253FEF
            3E980057A04D8BC82E5807BDE4568613E79578F27D6B1A449E7DD2AFE0082CF8
            767E5E025DE01EF44917E1C44FC03C38ADE95B04C7600E9C491609C132C5FFEB
            D1D50ABD983891374AB70FAAFBA787DCFEE99626B20A0E28F9648A9E68FCCD9E
            24916B3009DAC9DD15C309E31FC008B99BFF024CD75BA46864B9BDA3B77EE1A8
            A7C800B8A3F4F554B50E2BFFB588D4923E48DD6822266222B945820C631FC106
            38F7EFB360070C169CF75F45586214BCD4B47339C24774BF16112E1CC398B12B
            E0508B0857BFEF3163B9AFA24524A962483BDE445A46246D6415293CB7899888
            899888898813511526222D9A46E417D8547F33F50011430000000049454E44AE
            426082}
          OnClick = Image2Click
          ExplicitLeft = 1032
        end
        object Image3: TImage
          Left = 710
          Top = 0
          Width = 55
          Height = 50
          Align = alRight
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
            003008060000005702F987000000097048597300000B1300000B1301009A9C18
            0000014C4944415478DAED984D0E014114847BC2865310E10C62ED14E21C62E3
            7725AE216EC1924B90700B16849A4C269958D066AA553ABA92DA8DF7FA333FAF
            F222E3B922F5010280FA0001407D00D700557808F7E01A5C7A73ED1D3EC36B78
            015F1CD6B202881B6EE1768E3F660F77338D99B5AC01E6F02847C3545378E6A0
            9635C0116E14681AFFBEE9A09635C0CDBC7F4E3F297E8ECB0E6A59033C0A347C
            ADCFACF53F00CCDB2E0128FAE21DE0961220FE6C8D0B349C98E4F32903A8C01B
            B893A3D9CE24C3E7AA04482106701FAE9BCFE3FF04AFE065E6F052009602405E
            00568294003013A404809920BD1C64D904290973CCA6CCA96E0DC0BCEDCCA92E
            01604E7509400AC198EA3200270A005FD4FFF95E880920D90B3101247B212680
            642FC404087B2113F642DF4BBE5A642648491A652648491A652648491A4D1BB3
            12E4CFD3A8170A006A0500B5BC0778024F508C316130E2CD0000000049454E44
            AE426082}
          ExplicitLeft = 927
        end
        object Panel4: TPanel
          Left = 89
          Top = 0
          Width = 313
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          Color = clGray
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 140
          object LBLNomeEmp: TLabel
            Left = 0
            Top = 0
            Width = 313
            Height = 15
            Align = alTop
            Caption = 'Empresa e coisas importantes blaaaaaaaaaaaaaaaaaa'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 284
          end
          object LblCNPJ: TLabel
            Left = 0
            Top = 15
            Width = 313
            Height = 15
            Align = alTop
            Caption = 'CNPJ: 00.000.000/0001-00  |  Joa'#231'aba - SC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 215
          end
        end
        object Panel5: TPanel
          Left = 957
          Top = 0
          Width = 50
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          Color = clGray
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 955
          object ImgUserClara: TImage
            Left = 0
            Top = 0
            Width = 50
            Height = 50
            Cursor = crHandPoint
            Align = alClient
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F987000000017352474200AECE1CE90000050F49444154
              78DAED996B6C544514C7F7767763A58A0B263408C6B64A847ED11805213C5C0C
              ACB676B78FB524AD44AB51BE58538A18B55F0D0D024A0224428C24962A29DDB6
              5B5B5291B09467F86262A2A18A8851D42A269B45A14DEDC3DF84DB08EC7DCCDC
              DD6525E12427736F66EEFF9CFF9933CFABB96E72D1B2EDC02D02D976E07F43A0
              A3A3E36E8A15E863131313459AA615F05C88DEA537F9198DA1FD6EB7BB2F140A
              FD9A750291486426453DCE3E4DF9B0E2E7037CD73B3E3EBEA5AAAAEAB71B4A40
              389E9393F31691AE4F2500BA0C4164434545C53B378400A9D248B1250D8E5F2F
              67D0972B2B2BFB334680C8EF265A2F64C0F9FF1CD2B46DF4C66B6925D0D3D333
              6D6464A497C7859974FE2AF9222F2FAF2210085C4A0B01D2E630C5320507F630
              3EA2636363C7C40BB3CE62221BE2F139058C5ED2E999940990363B31FE8AA4D1
              41B416C3874C0221A6D916345F126F23586F3A26D0D9D9F92A91DC261B3288FA
              C9DFC336984F827950169369B6341C0EEF5726D0D5D5752F1FFF246B08A77631
              9FAF91694B4F7C445127097D3E9148CCA9ABAB1B5622A0983A22524F11A9CF25
              0988DCFE4C21384D04678334013DFAE77874CB1A191D1DF55557572764DA46A3
              D17B18E0BFC8622371F067813F2445803CDD0CEB750A0684E433E0FE9024900F
              81411570B2A19EF1B55D8A005D2CA25FA06820808103326D49CF52DAF72806E8
              2B0294B4DF4A2240FA14933EDF28828B3C8D90A76199B6F4701FED03AA36205D
              48907EB42440F4C5BCDBAC0AAE93580E8998551BF0C582D6E5041F799E5EF8D8
              8E401BC5B30E0D0C426235240CE77922BF927AB190CD70024E0F6CA507D6DA11
              384AB1D82181496945F7A127D976DFC6807D14E355BCD7A6020AC67E0894DA11
              384B519422814CC96952A8D88EC03F149E6C7B6A220908F8EC08FC457147B63D
              3591BF2170A71D81EF28E6A468E832FA253AA6BF8B15FD11744A8AB803109867
              47401CE9962A020F33C0C4DEBF9F3524C62C74DCA8116BCC12EAFDAE2B678BE5
              0E08C42070CD77490498EAF632D5AD920414516E02B4CF4938F54DDD46B458F2
              93566C5D732832EA81F514EFDA000D41722D91DEE9C471039B626E7F4FA26923
              04DEB724D0DEDE3E97B9FBB405C845D260015BE78174383F29F4FC7C8272CAAA
              8DC7E3290A0683E72C09E81131DDCC91EBAB594CF6A4D3F9496193B70EFCCD26
              D5DF12FDB949FE981010F73E8D4675ECCB67B02FBF900902DDDDDD85E0FF6052
              BD09026F48112012B3898400F2267DA06935F4C0A7992080DD1AF05B0DAAC471
              F23EA3F386E991925E100379BD419558E81601F6753A9DC7DE4314622A365A44
              4D6F274C09B4B5B54D67D088B130F5FA3A06DB25067AA5EC01C64E887C90C8EF
              E5F17683EA786E6E6E414949C94525023AF02A1DD8502052CB54FA498ACEAFC1
              C60766F5D4850954C4B4DECE005DBB89E2758B26AD5EAFB7A1ACACEC4F15C7C5
              C19E01BB0307CB2D02D44C80DEB6C291BD5A14A7AC272C9A0C63EC43D22A2271
              B1B59275A41AC75FB2744CD30E82B5C2CE3795CBDD288F4B64DA2362913B8B13
              6720266C3C88DEEF92DF241EA1778232D734D2D7EBB158CC138FC777B9E46FD4
              1C09A45B7C3EDF8B7EBF7F54AABDAA01FDBE74AB4BE1D24B5284C30D4C973B94
              083BB1C4007C802E6E225AE28CEB758271958813608BDBED6E0E8542DFAB7E9C
              EA4FBED90CDC067AA486D7998A9F8BAB45F11F613B33CD79A73EA4ED372B8795
              45CC2EE262EB71743A2ACEAE93FF017E47E342E9B513E8BEF2F2F2530E4D6586
              40B6E416816CCB4D4FE05F684AFC4096CAADAB0000000049454E44AE426082}
            ExplicitLeft = 16
            ExplicitTop = 16
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
          object ImgUserEscura: TImage
            Left = 0
            Top = 0
            Width = 50
            Height = 50
            Cursor = crHandPoint
            Align = alClient
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F987000000017352474200AECE1CE90000050A49444154
              78DAED996968545714C76732333196B663150CB695262EA8D99369D22A5A534B
              D412D1AA51212AB58AF58B11136BA9E6AB18DCAAA04295D24293565102953692
              5631135B0DF3212B8AA9D605B7BA41A256236492F477C90BC4E62DF7BE997114
              3C70B977E69DF73FE77FCEDD9FD3F1828B33DA0EBC24106D079E1B02393939C3
              3A3B3BF368663B9DCE513D3D3D09B413295E4DE51AA586524BA96E6C6CBC1975
              023E9F6F4477777711CD8F29198AAFB752AA62626276D4D7D7FFF34C09688E6F
              A059144A0034E9A06C26239B9E0981CCCCCC12AA1D6170FCFF7281B21222B511
              23909595F53D7D7B59049CEF2FBB21B126AC04525353DF70BBDD55342746D8F9
              3E39D6D5D535B7A5A5E5515808D06DFC545365AD93A50A66A22390FE53FC0E06
              8393F96F0EFF2D91C540B7AAA1A16156C804323232F601F6B9A4DD5BE82EC6F0
              0903AC3C9E97D38C97C4DB4277FACA3601FAFC6A22B75B366AE87ED8D4D4E437
              D3219B1F511D57C0CC07F3A83281ECECEC91A4FEAA82A1FD185A25A34B26BE23
              139F49425FF77ABD63FD7EFF1325028A5D47F4D999749DDF6474C9EC2C08FFA2
              109C5282B3599A8016FDCB345DB246585187B0A2DE97D1A51BBD497543161B69
              8B8B8B7BABAEAEAE438A0006B653AD5330E060DA8B67DABB23A39B929212EFF1
              786EA9E093E12232BC479680887E828A01B616339A9B9B7F97D1A57BE6E3D0AF
              2AF8483333D280FDD60002389F447556115C4825060A6414B1514D3543D50063
              2191B170C58A809877CB6C1010599846166ACC7488BE58D07EB6838F7C4A907E
              B02270886A814D03A25F2FC588EE3C9F9E9E3E9DC12E16B2E176C0C9C02E3250
              6C4A8008FD418426DB24D00BEA74FE48360E53EA06210CF077F97B3E0E2C0E05
              17394A70F2AD085C1427AA100D454ACE4120C994005DA893CA1D6D4F0DE43E04
              8658117848F56AB43D35907F21F09A1581F354634334F498FEDE4057EC123F68
              BB6867D17C2544DC56084CB022208E741F28028B8D96D8FBD7E26C0D33C5293D
              25F64053C48ED5D17BB698A6EA3D41A861357EEA3D3D0207A91649628A289702
              5A6D279CDAA66E0BCD24197D31BB61EBA94391DE2CB41EC5AD16581DE81403B6
              CF8EE33A448A21F2B50481126CEE3425E0F3F9C6337F9F33C179C062F41E3BCF
              D67038DF272C7239E006CC74584F46B161BC6C4A4088D9668E282C250A15E174
              BE9F5DB103DE6E60F72FEC8E1FF0BF0190B8F72931B0339C99E06E2408A4A5A5
              25BA5CAE4B0604B641E04B290200BDAD0179741E1742E040240830FE0AC540D5
              79F484EEF38EDE79C3F048C9C0DACAC05AAF1389879CD6260176269CCE93F574
              47EF54ACB7881ADE4E1812484E4E1E1A1B1B2BC6C2EB3A8F1F31D0E7C91E6024
              9C9F4D25A6EFC13A8FDBF0232110083C502220842C2C220B078D9E8BDD258BD6
              4FA1388F8D55E07C63A25240F42B8D1E5A5E6C61601B06BE3004A0CF52D632AD
              DE53715C1CEC796F2FD89F98A895E1FC46331CD9AB4571CACA3551115B896F71
              A6D2EA624B3BD42CA4B9C2C2EC719CCFB3F24DE572F708CD2932FA482BD1BDC8
              38B980B34E888DE3BFD10EF94DE249DE9B2D734D237DBD9E9B9BEB6E6F6FDFAF
              70A36657CABD5EEF72BFDF1F945156FEC0A1DD97EE72285C7A494A508C2516AB
              BD2A2FD9FAC404893154A5DA19D76307A39F88136039CE97E1FCDFAA2F87F491
              4F5BB1D7D22CA48C507C5D5C2D56B0C2EE6151BC6ED787B07D66651B3089AA80
              48BE4F194A76C4D9B5EF3BC06D4A9B564E33400F334003766D458440B4E42581
              68CB0B4FE03F2244FF405DBCCFAE0000000049454E44AE426082}
            ExplicitLeft = -6
          end
        end
        object Panel9: TPanel
          Left = 839
          Top = 0
          Width = 118
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          Color = clGray
          ParentBackground = False
          TabOrder = 2
          ExplicitLeft = 837
          object LblNomeUsuario: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 31
            Width = 109
            Height = 16
            Margins.Top = 0
            Margins.Right = 6
            Align = alClient
            Alignment = taRightJustify
            Caption = 'Administrador'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 36
            ExplicitWidth = 76
            ExplicitHeight = 17
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 8
            Width = 109
            Height = 20
            Margins.Top = 8
            Margins.Right = 6
            Align = alTop
            Alignment = taRightJustify
            Caption = 'Paulo'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 73
            ExplicitWidth = 39
          end
        end
        object Panel11: TPanel
          Left = 820
          Top = 0
          Width = 16
          Height = 50
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alRight
          BevelOuter = bvNone
          Color = clGray
          Padding.Top = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 3
          ExplicitLeft = 818
        end
        object Panel12: TPanel
          Left = 836
          Top = 0
          Width = 3
          Height = 50
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alRight
          BevelOuter = bvNone
          Color = clLime
          Padding.Top = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 4
          ExplicitLeft = 834
        end
      end
      object PnlCad: TPanel
        Left = 239
        Top = 133
        Width = 146
        Height = 124
        Color = clGray
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object PnlDespesasFixas: TPanel
          Left = 1
          Top = 83
          Width = 144
          Height = 41
          Align = alTop
          Caption = 'Despesas Fixas'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = PnlDespesasFixasClick
        end
        object PnlGanhos: TPanel
          Left = 1
          Top = 42
          Width = 144
          Height = 41
          Align = alTop
          Caption = 'Ganhos'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnClick = PnlGanhosClick
        end
        object Panel19: TPanel
          Left = 1
          Top = 1
          Width = 144
          Height = 41
          Align = alTop
          Caption = 'Pessoa'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          OnClick = PnlPessoaCadClick
        end
      end
      object PnlControle: TPanel
        Left = 390
        Top = 133
        Width = 129
        Height = 124
        Color = clGray
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object PnlContas: TPanel
          Left = 1
          Top = 1
          Width = 127
          Height = 41
          Align = alTop
          Caption = 'Tabelas Contas'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = PnlContasClick
        end
        object Panel15: TPanel
          Left = 1
          Top = 42
          Width = 127
          Height = 41
          Align = alTop
          Caption = 'Assinaturas'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnClick = PnlContasClick
        end
        object Panel17: TPanel
          Left = 1
          Top = 83
          Width = 127
          Height = 41
          Align = alTop
          Caption = 'Divisao de contas'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          OnClick = PnlContasClick
        end
      end
    end
    object pnlMenuLateralPrincipal: TPanel
      Left = 1
      Top = 1
      Width = 361
      Height = 483
      Align = alLeft
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 1
      object Panel8: TPanel
        Left = 0
        Top = 82
        Width = 361
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        ParentBackground = False
        TabOrder = 0
        Visible = False
        OnClick = Panel8Click
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 361
          Height = 41
          Align = alClient
          Alignment = taCenter
          Caption = 'Controle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          OnClick = Panel8Click
          ExplicitWidth = 48
          ExplicitHeight = 15
        end
      end
      object pnlCadastrosPrincipal: TPanel
        Left = 0
        Top = 41
        Width = 361
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        Font.Charset = GB2312_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = pnlCadastrosPrincipalClick
        object lblCadMenu: TLabel
          Left = 0
          Top = 0
          Width = 361
          Height = 41
          Align = alClient
          Alignment = taCenter
          Caption = 'Cadastro'
          Layout = tlCenter
          OnClick = pnlCadastrosPrincipalClick
          ExplicitWidth = 48
          ExplicitHeight = 15
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 361
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        ParentBackground = False
        TabOrder = 2
        object Image1: TImage
          Left = 317
          Top = 0
          Width = 44
          Height = 41
          Cursor = crHandPoint
          Align = alRight
          Center = True
          Picture.Data = {
            055449636F6E0000010001002020000001002000A81000001600000028000000
            2000000040000000010020000000000080100000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000028000000B0000000F3000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000F3000000B000000028
            0000000000000028000000EF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000EF
            00000028000000B0000000FF000000B000000017000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000017000000AF000000FF
            000000B0000000F3000000FF0000001700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000017000000FF
            000000F3000000F3000000FF0000001700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000017000000FF
            000000F3000000B0000000FF000000B000000017000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000017000000B0000000FF
            000000B000000028000000EF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000EF
            000000280000000000000028000000B0000000F3000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000F3000000B000000028
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000028000000B0000000F3000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000F3000000B000000028
            0000000000000028000000EF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000EF
            00000028000000B0000000FF000000B000000017000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000017000000AF000000FF
            000000B0000000F3000000FF0000001700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000017000000FF
            000000F3000000F3000000FF0000001700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000017000000FF
            000000F3000000B0000000FF000000B000000017000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000017000000B0000000FF
            000000B000000028000000EF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000EF
            000000280000000000000028000000B0000000F3000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000F3000000B000000028
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000028000000B0000000F3000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000F3000000B000000028
            0000000000000028000000EF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000EF
            00000028000000B0000000FF000000B000000017000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000017000000AF000000FF
            000000B0000000F3000000FF0000001700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000017000000FF
            000000F3000000F3000000FF0000001700000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000000017000000FF
            000000F3000000B0000000FF000000B000000017000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000017000000B0000000FF
            000000B000000028000000EF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000EF
            000000280000000000000028000000B0000000F3000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
            000000FF000000FF000000FF000000FF000000FF000000F3000000B000000028
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FFFFFFFFFFFFFFFF80000001000000000FFFFFF01FFFFFF81FFFFFF8
            0FFFFFF00000000080000001FFFFFFFFFFFFFFFF80000001000000000FFFFFF0
            1FFFFFF81FFFFFF80FFFFFF00000000080000001FFFFFFFFFFFFFFFF80000001
            000000000FFFFFF01FFFFFF81FFFFFF80FFFFFF00000000080000001FFFFFFFF
            FFFFFFFF}
          OnClick = Image1Click
          ExplicitLeft = 96
        end
      end
      object PnlAnalise: TPanel
        Left = 0
        Top = 123
        Width = 361
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        Visible = False
        object LblAnalise: TLabel
          Left = 0
          Top = 0
          Width = 361
          Height = 41
          Align = alClient
          Alignment = taCenter
          Caption = 'An'#225'lise'
          Layout = tlCenter
          OnClick = LblAnaliseClick
          ExplicitWidth = 39
          ExplicitHeight = 15
        end
      end
      object PnlConfig: TPanel
        Left = 0
        Top = 401
        Width = 361
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clGray
        ParentBackground = False
        TabOrder = 4
        Visible = False
        ExplicitLeft = 16
        ExplicitTop = 338
        object LblConfiguracoes: TLabel
          Left = 0
          Top = 0
          Width = 361
          Height = 41
          Align = alClient
          Alignment = taCenter
          Caption = 'Configura'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          OnClick = LblConfiguracoesClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 442
        Width = 361
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clGray
        ParentBackground = False
        TabOrder = 5
        ExplicitLeft = 128
        ExplicitTop = 272
        ExplicitWidth = 185
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 609
    Top = 337
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cadastros2: TMenuItem
        Caption = 'Pessoas'
      end
      object Empresas1: TMenuItem
        Caption = 'Empresas'
      end
      object Empresas2: TMenuItem
        Caption = 'Despesas'
      end
    end
    object Controle1: TMenuItem
      Caption = 'Controle'
      object Controle2: TMenuItem
        Caption = 'Tabela de Contas'
      end
      object Assinaturas1: TMenuItem
        Caption = 'Assinaturas'
      end
      object Assinaturas2: TMenuItem
        Caption = 'Divis'#227'o de Contas'
      end
    end
    object Anlise1: TMenuItem
      Caption = 'An'#225'lise'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\paulo\Desktop\SISTEMAS\DADOS\DADOS.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'DriverID=FB')
    Left = 440
    Top = 339
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clifor'
      ''
      '')
    Left = 520
    Top = 339
    object FDQuery1CHAVE: TIntegerField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQuery1VLRCOMPRA: TIntegerField
      FieldName = 'VLRCOMPRA'
      Origin = 'VLRCOMPRA'
      Required = True
    end
    object FDQuery1VLRVENDA: TIntegerField
      FieldName = 'VLRVENDA'
      Origin = 'VLRVENDA'
      Required = True
    end
    object FDQuery1QTDESTOQUE: TIntegerField
      FieldName = 'QTDESTOQUE'
      Origin = 'QTDESTOQUE'
    end
    object FDQuery1ATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 352
    Top = 339
  end
end
