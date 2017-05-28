object frmCinemaBookings: TfrmCinemaBookings
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cinema Bookings'
  ClientHeight = 246
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object pcMainView: TPageControl
    Left = 0
    Top = 0
    Width = 606
    Height = 246
    ActivePage = tsUpcoming
    Align = alClient
    TabOrder = 0
    object tsDashboard: TTabSheet
      Caption = 'Dashboard'
      object lblWelcome: TLabel
        Left = 3
        Top = 3
        Width = 140
        Height = 39
        Caption = 'Welcome!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object gbMenu: TGroupBox
        Left = 3
        Top = 48
        Width = 185
        Height = 177
        Caption = 'Menu'
        TabOrder = 0
        DesignSize = (
          185
          177)
        object lblWhatToDo: TLabel
          Left = 16
          Top = 24
          Width = 154
          Height = 16
          Caption = 'What would you like to do?'
        end
        object btnMenuViewMovies: TButton
          Left = 3
          Top = 46
          Width = 179
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'View Upcoming Movies'
          TabOrder = 0
          OnClick = btnMenuViewMoviesClick
        end
        object btnMenuViewTickets: TButton
          Left = 3
          Top = 77
          Width = 179
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'View Your Tickets'
          TabOrder = 1
        end
        object btnMenuDocumentation: TButton
          Left = 3
          Top = 139
          Width = 179
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'View Documentation'
          TabOrder = 2
        end
        object btnMenuViewCinemas: TButton
          Left = 3
          Top = 108
          Width = 179
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'View Our Cinemas'
          TabOrder = 3
        end
      end
      object gbFeaturedMovie: TGroupBox
        Left = 194
        Top = 48
        Width = 402
        Height = 177
        Caption = 'Featured Movie:'
        TabOrder = 1
        object lblFeaturedMovie: TLabel
          Left = 119
          Top = 16
          Width = 85
          Height = 27
          Caption = 'FMTITLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -22
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object imgFeatured: TImage
          Left = 8
          Top = 16
          Width = 105
          Height = 158
          Constraints.MaxHeight = 158
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 158
          Constraints.MinWidth = 105
          Stretch = True
        end
        object lblFeaturedRating: TLabel
          Left = 354
          Top = 143
          Width = 30
          Height = 30
          Caption = 'F'
          Color = clWindow
          Constraints.MaxHeight = 30
          Constraints.MaxWidth = 30
          Constraints.MinHeight = 30
          Constraints.MinWidth = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -22
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object imgFeaturedStar: TImage
          Left = 369
          Top = 144
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
            001E08060000003B30AEA20000000467414D410000B18F0BFC61050000000662
            4B474400FF00FF00FFA0BDA7930000000774494D4507E1051B0A122B87EB312C
            000003434944415478DAB5964968144114865FCF4CC6442F519028289E141D17
            820B0806D4434E2EE8410F4A3C18F1E27272411046C9455041898A18BD8822DE
            5C6FA2B85CD48B88D183208A060FE282E092647ACAFF4DBF375D33A99A740753
            F0CD52DD55FF7B7FBDAAEE8052B4BFAFD7DB7F83CAA7291B0A32959FCD855B89
            E70AC620CC630C980DA681C78095CBE32D9C0325B0177480CD200B428EA7B970
            FBFF0A5B368B08B1C20A301D0CAA1349B34E2BAC364F05FDF2DD09EE6940E325
            ACD9B2BDD7E5D219B087740902D83D6F74BB13093B6CBE0AB648DF5BB030ADDD
            6984D5E656F086A28A0E259895E0511ABBD3086BB6FCE726280B6CF109B05FED
            4E248C49593C93403F27765E02DB29DA5219810BAD5D02C988338D9A499AB1DA
            3C496C9E5927C2D79783A7EC0C320E93643C17DF05F055267205C3FDBFC03270
            DA12238AD7B94F68953E571B0693C137166EC38FF360839545439B3CC1F9FAB5
            E9DCAF407760D9C8EBD60B268221C9C297BD6F62570B650CCF770A1CE0CC5598
            3B4B6239EFD176AA2D9EB13423A25C94BC8CDD14ED06D632817538E8E19F0727
            C16EC9C2C8CD699ABDD5EE836D6040FE87F5C26A63201737828B600A255B7B3B
            535DBE625390EF193643BA65AB45575943C7035EAD9F012E83D509C555F403E8
            A2E8599DB31CA8343E60AAC533D8BF0EF9D7D4525626E2017CEAAFA578EBF8EC
            E5C03E81C5E08B6DAD2D5ACDD86E0EEB79D073B06494AC35DB3F60017827F796
            6DC11AAB3DE23A68A908BB844C5D2025C992DF4E7AA9C1D9DD4858ABBC088E58
            9312C57B530B316BF5F36F7E31E84C95719DD5DC9E517454962D210EE023F80E
            1651BCE703E137980FDE93E745D027AC91F203FE05C55BC1882857EB56F0199C
            053B29DEF32459735F9FCF6E9FB0DA7C101CA3E8719897FB7BF05114050D6813
            B840D10382EF9D00EE52B4139C76070E51ED37925987F4F136E113E801C57B53
            4F350E7216B862DDFF83A2EA1E20C72B914B58239C035E4AF437C00E8ACEDCEA
            DE0CB325CA8639B5560BEE2838247D5D12CC08BB5DC26AF33E701CEC02E7A8B6
            8A5D4D1F283C7615B8031E8235E478171B215C3619CA049525E1A2B9069E90E7
            D8AB5B1E9D4FAD6F93FA38AC76638CF10A4B6B022DE0A7E500D58B7AC6DAD6B7
            50FCF65233EE1F27A53568978412B20000002574455874646174653A63726561
            746500323031372D30352D32375431303A31383A34332D30343A3030AB209AE8
            0000002574455874646174653A6D6F6469667900323031372D30352D32375431
            303A31383A34332D30343A3030DA7D22540000000049454E44AE426082}
        end
        object redFeaturedMovie: TRichEdit
          Left = 119
          Top = 46
          Width = 280
          Height = 95
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Zoom = 100
        end
      end
    end
    object tsAccount: TTabSheet
      Caption = 'My Account'
      ImageIndex = 1
      object gbAccountDetails: TGroupBox
        Left = 0
        Top = 3
        Width = 201
        Height = 213
        Caption = 'Account Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblAccountName: TLabel
          Left = 35
          Top = 32
          Width = 38
          Height = 16
          Alignment = taRightJustify
          Caption = 'Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAccountSurname: TLabel
          Left = 16
          Top = 54
          Width = 57
          Height = 16
          Alignment = taRightJustify
          Caption = 'Surname:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAccountEmail: TLabel
          Left = 37
          Top = 76
          Width = 36
          Height = 16
          Alignment = taRightJustify
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAccountPassword: TLabel
          Left = 13
          Top = 98
          Width = 60
          Height = 16
          Alignment = taRightJustify
          Caption = 'Password:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtAccountName: TEdit
          Left = 79
          Top = 32
          Width = 110
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtAccountSurname: TEdit
          Left = 79
          Top = 54
          Width = 110
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtAccountEmail: TEdit
          Left = 79
          Top = 76
          Width = 110
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtAccountPassword: TEdit
          Left = 79
          Top = 98
          Width = 110
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object btnAccountUpdate: TButton
          Left = 79
          Top = 120
          Width = 110
          Height = 25
          Caption = 'Update'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object gbTickets: TGroupBox
        Left = 207
        Top = 3
        Width = 388
        Height = 213
        Caption = 'Your Tickets'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object redTickets: TRichEdit
          Left = 3
          Top = 25
          Width = 382
          Height = 185
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HideScrollBars = False
          Lines.Strings = (
            'redTickets')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
          Zoom = 100
        end
      end
    end
    object tsUpcoming: TTabSheet
      Caption = 'Upcomming'
      ImageIndex = 2
      object gbMovies: TGroupBox
        Left = 3
        Top = 3
        Width = 398
        Height = 217
        Caption = 'Upcoming Movies'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object imgCoverImage: TImage
          Left = 3
          Top = 24
          Width = 134
          Height = 190
          Stretch = True
        end
        object lblMovieTitle: TLabel
          Left = 143
          Top = 24
          Width = 85
          Height = 27
          Caption = 'FMTITLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -22
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblMovieRating: TLabel
          Left = 143
          Top = 184
          Width = 30
          Height = 30
          Caption = 'F'
          Color = clWindow
          Constraints.MaxHeight = 30
          Constraints.MaxWidth = 30
          Constraints.MinHeight = 30
          Constraints.MinWidth = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -22
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object imgMovieStar: TImage
          Left = 158
          Top = 185
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
            001E08060000003B30AEA20000000467414D410000B18F0BFC61050000000662
            4B474400FF00FF00FFA0BDA7930000000774494D4507E1051B0A122B87EB312C
            000003434944415478DAB5964968144114865FCF4CC6442F519028289E141D17
            820B0806D4434E2EE8410F4A3C18F1E27272411046C9455041898A18BD8822DE
            5C6FA2B85CD48B88D183208A060FE282E092647ACAFF4DBF375D33A99A740753
            F0CD52DD55FF7B7FBDAAEE8052B4BFAFD7DB7F83CAA7291B0A32959FCD855B89
            E70AC620CC630C980DA681C78095CBE32D9C0325B0177480CD200B428EA7B970
            FBFF0A5B368B08B1C20A301D0CAA1349B34E2BAC364F05FDF2DD09EE6940E325
            ACD9B2BDD7E5D219B087740902D83D6F74BB13093B6CBE0AB648DF5BB030ADDD
            6984D5E656F086A28A0E259895E0511ABBD3086BB6FCE726280B6CF109B05FED
            4E248C49593C93403F27765E02DB29DA5219810BAD5D02C988338D9A499AB1DA
            3C496C9E5927C2D79783A7EC0C320E93643C17DF05F055267205C3FDBFC03270
            DA12238AD7B94F68953E571B0693C137166EC38FF360839545439B3CC1F9FAB5
            E9DCAF407760D9C8EBD60B268221C9C297BD6F62570B650CCF770A1CE0CC5598
            3B4B6239EFD176AA2D9EB13423A25C94BC8CDD14ED06D632817538E8E19F0727
            C16EC9C2C8CD699ABDD5EE836D6040FE87F5C26A63201737828B600A255B7B3B
            535DBE625390EF193643BA65AB45575943C7035EAD9F012E83D509C555F403E8
            A2E8599DB31CA8343E60AAC533D8BF0EF9D7D4525626E2017CEAAFA578EBF8EC
            E5C03E81C5E08B6DAD2D5ACDD86E0EEB79D073B06494AC35DB3F60017827F796
            6DC11AAB3DE23A68A908BB844C5D2025C992DF4E7AA9C1D9DD4858ABBC088E58
            9312C57B530B316BF5F36F7E31E84C95719DD5DC9E517454962D210EE023F80E
            1651BCE703E137980FDE93E745D027AC91F203FE05C55BC1882857EB56F0199C
            053B29DEF32459735F9FCF6E9FB0DA7C101CA3E8719897FB7BF05114050D6813
            B840D10382EF9D00EE52B4139C76070E51ED37925987F4F136E113E801C57B53
            4F350E7216B862DDFF83A2EA1E20C72B914B58239C035E4AF437C00E8ACEDCEA
            DE0CB325CA8639B5560BEE2838247D5D12CC08BB5DC26AF33E701CEC02E7A8B6
            8A5D4D1F283C7615B8031E8235E478171B215C3619CA049525E1A2B9069E90E7
            D8AB5B1E9D4FAD6F93FA38AC76638CF10A4B6B022DE0A7E500D58B7AC6DAD6B7
            50FCF65233EE1F27A53568978412B20000002574455874646174653A63726561
            746500323031372D30352D32375431303A31383A34332D30343A3030AB209AE8
            0000002574455874646174653A6D6F6469667900323031372D30352D32375431
            303A31383A34332D30343A3030DA7D22540000000049454E44AE426082}
        end
        object redMovieDescription: TRichEdit
          Left = 140
          Top = 57
          Width = 245
          Height = 123
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Zoom = 100
        end
        object btnLeft: TButton
          Left = 201
          Top = 184
          Width = 94
          Height = 32
          Caption = '<'
          TabOrder = 1
          OnClick = btnLeftClick
        end
        object btnRight: TButton
          Left = 293
          Top = 184
          Width = 94
          Height = 32
          Caption = '>'
          TabOrder = 2
          OnClick = btnRightClick
        end
      end
      object gbBookings: TGroupBox
        Left = 407
        Top = 3
        Width = 185
        Height = 217
        Caption = 'Book Now:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lblError: TLabel
          Left = 19
          Top = 131
          Width = 146
          Height = 12
          Caption = 'Please enter a date and time.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Visible = False
        end
        object lblNumSeats: TLabel
          Left = 4
          Top = 95
          Width = 128
          Height = 21
          Caption = 'Number of seats:'
        end
        object cbDate: TComboBox
          Left = 3
          Top = 22
          Width = 179
          Height = 29
          TabOrder = 0
          Text = 'Date'
          OnChange = cbDateChange
        end
        object cbTime: TComboBox
          Left = 3
          Top = 57
          Width = 179
          Height = 29
          TabOrder = 1
          Text = 'Time'
          OnChange = cbTimeChange
        end
        object btnBook: TButton
          Left = 3
          Top = 160
          Width = 179
          Height = 54
          Caption = 'Proceed to bookings'
          TabOrder = 2
          OnClick = btnBookClick
        end
        object edtNumSeats: TEdit
          Left = 136
          Top = 92
          Width = 27
          Height = 29
          ReadOnly = True
          TabOrder = 3
          Text = '1'
        end
        object udNumSeats: TUpDown
          Left = 163
          Top = 92
          Width = 20
          Height = 29
          Associate = edtNumSeats
          Min = 1
          Max = 6
          Position = 1
          TabOrder = 4
        end
      end
      object gbSeats: TGroupBox
        Left = 3
        Top = 3
        Width = 398
        Height = 217
        Caption = 'Choose your seats:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        object sgSeats: TStringGrid
          Left = 3
          Top = 24
          Width = 170
          Height = 187
          BevelInner = bvNone
          BorderStyle = bsNone
          ColCount = 7
          DefaultColWidth = 22
          DefaultRowHeight = 22
          RowCount = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Small Fonts'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnSelectCell = sgSeatsSelectCell
          ColWidths = (
            22
            22
            22
            22
            22
            22
            22)
          RowHeights = (
            22
            22
            22
            22
            22
            22
            22
            22)
        end
        object redDisplay: TRichEdit
          Left = 168
          Top = 26
          Width = 227
          Height = 188
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            'Your Tickets:')
          ParentFont = False
          TabOrder = 1
          Zoom = 100
        end
      end
    end
  end
  object btnLogOut: TButton
    Left = 493
    Top = -2
    Width = 113
    Height = 24
    Caption = 'Logout'
    TabOrder = 1
  end
  object dbConnect: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\Projects\PAT 201' +
      '7\Phase 3\Cinema-Bookings\Win32\Debug\CinemaBookings.mdb;Mode=Re' +
      'adWrite;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 404
    Top = 299
  end
  object tblMovies: TADOTable
    Connection = dbConnect
    CursorType = ctStatic
    TableName = 'Movies'
    Left = 356
    Top = 291
    object tblMoviesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblMoviesName: TWideStringField
      FieldName = 'Name'
      Size = 32
    end
    object tblMoviesDescription: TWideMemoField
      FieldName = 'Description'
      BlobType = ftWideMemo
    end
    object tblMoviesCoverImage: TWideStringField
      FieldName = 'CoverImage'
      Size = 255
    end
    object tblMoviesRating: TFloatField
      FieldName = 'Rating'
    end
    object tblMoviesTimes: TWideStringField
      FieldName = 'Times'
      Size = 255
    end
    object tblMoviesDates: TWideStringField
      FieldName = 'Dates'
      Size = 255
    end
  end
  object tblUsers: TADOTable
    Connection = dbConnect
    TableName = 'Users'
    Left = 468
    Top = 307
  end
  object tblTickets: TADOTable
    Connection = dbConnect
    CursorType = ctStatic
    TableName = 'Tickets'
    Left = 308
    Top = 291
    object tblTicketsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblTicketsUserID: TWideStringField
      FieldName = 'UserID'
      Size = 255
    end
    object tblTicketsMovieID: TIntegerField
      FieldName = 'MovieID'
    end
    object tblTicketsTime: TWideStringField
      FieldName = 'Time'
      Size = 255
    end
    object tblTicketsDate: TWideStringField
      FieldName = 'Date'
      Size = 255
    end
    object tblTicketsSeats: TWideStringField
      FieldName = 'Seats'
      Size = 255
    end
  end
  object qryTickets: TADOQuery
    Connection = dbConnect
    CursorType = ctStatic
    Parameters = <>
    Left = 220
    Top = 339
    object qryTicketsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryTicketsUserID: TWideStringField
      FieldName = 'UserID'
      Size = 255
    end
    object qryTicketsMovieID: TIntegerField
      FieldName = 'MovieID'
    end
    object qryTicketsTime: TWideStringField
      FieldName = 'Time'
      Size = 255
    end
    object qryTicketsDate: TWideStringField
      FieldName = 'Date'
      Size = 255
    end
    object qryTicketsSeats: TWideStringField
      FieldName = 'Seats'
      Size = 255
    end
  end
end
