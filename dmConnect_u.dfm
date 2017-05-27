object dmConnect: TdmConnect
  OldCreateOrder = False
  Height = 150
  Width = 215
  object dbConnect: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Z:\Projects\PAT 201' +
      '7\Phase 3\Cinema-Bookings\CinemaBookings.mdb;Mode=ReadWrite;Exte' +
      'nded Properties="";Persist Security Info=False;Jet OLEDB:System ' +
      'database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Passwo' +
      'rd="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;' +
      'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transa' +
      'ctions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Sys' +
      'tem Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Do' +
      'n'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Repli' +
      'ca Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 24
  end
  object tblUsers: TADOTable
    Active = True
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
end
