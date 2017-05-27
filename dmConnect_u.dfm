object dmConnect: TdmConnect
  OldCreateOrder = False
  Height = 431
  Width = 695
  object dbConnect: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\Projects\PAT 201' +
      '7\Phase 3\Cinema-Bookings\CinemaBookings.mdb;Mode=ReadWrite;Pers' +
      'ist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:R' +
      'egistry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine ' +
      'Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partia' +
      'l Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New ' +
      'Database Password="";Jet OLEDB:Create System Database=False;Jet ' +
      'OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Comp' +
      'act=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLE' +
      'DB:SFP=False;'
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 24
  end
  object tblUsers: TADOTable
    Connection = dbConnect
    CursorType = ctStatic
    TableName = 'Users'
    Left = 24
    Top = 88
  end
  object dsUsers: TDataSource
    DataSet = tblUsers
    Left = 112
    Top = 32
  end
  object dsMovies: TDataSource
    DataSet = tblMovies
    Left = 112
    Top = 96
  end
  object dsFeatured: TDataSource
    Left = 176
    Top = 96
  end
  object tblMovies: TADOTable
    Connection = dbConnect
    CursorType = ctStatic
    TableName = 'Movies'
    Left = 192
    Top = 40
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
  end
end
