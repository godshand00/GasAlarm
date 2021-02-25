object Dm: TDm
  OldCreateOrder = False
  Height = 486
  Width = 414
  object Adoc: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\'#30331#35760'.' +
      'mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:S' +
      'ystem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database ' +
      'Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking M' +
      'ode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk ' +
      'Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Crea' +
      'te System Database=False;Jet OLEDB:Encrypt Database=False;Jet OL' +
      'EDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without' +
      ' Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 74
    Top = 85
  end
  object ProjectTm: TADOTable
    Connection = Adoc
    CursorType = ctStatic
    TableName = #39033#30446#30331#35760#34920#22836
    Left = 266
    Top = 141
    object ProjectTmID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ProjectTm工程编号: TWideStringField
      FieldName = #24037#31243#32534#21495
      Size = 64
    end
    object ProjectTm报警编号: TWideStringField
      FieldName = #25253#35686#32534#21495
      Size = 32
    end
    object ProjectTm合同号: TWideStringField
      FieldName = #21512#21516#21495
      Size = 32
    end
    object ProjectTm区域: TWideStringField
      FieldName = #21306#22495
      Size = 16
    end
    object ProjectTm接卡日期: TDateTimeField
      FieldName = #25509#21345#26085#26399
    end
    object ProjectTm名称: TWideStringField
      FieldName = #21517#31216
      Size = 255
    end
    object ProjectTm地址: TWideStringField
      FieldName = #22320#22336
      Size = 255
    end
    object ProjectTm业务员: TWideStringField
      FieldName = #19994#21153#21592
      Size = 32
    end
    object ProjectTm联系人及电话: TWideStringField
      FieldName = #32852#31995#20154#21450#30005#35805
      Size = 64
    end
    object ProjectTm总金额: TBCDField
      FieldName = #24635#37329#39069
      Precision = 19
    end
    object ProjectTm切断阀金额: TBCDField
      FieldName = #20999#26029#38400#37329#39069
      Precision = 19
    end
    object ProjectTm设计金额: TBCDField
      FieldName = #35774#35745#37329#39069
      Precision = 19
    end
    object ProjectTm市场部单位负责人: TWideStringField
      FieldName = #24066#22330#37096#21333#20301#36127#36131#20154
      Size = 16
    end
    object ProjectTm用气性质: TWideStringField
      FieldName = #29992#27668#24615#36136
      Size = 32
    end
    object ProjectTm供气压力: TWideStringField
      FieldName = #20379#27668#21387#21147
      Size = 8
    end
    object ProjectTm报警种类: TWideStringField
      FieldName = #25253#35686#31181#31867
      Size = 16
    end
    object ProjectTm燃气种类: TWideStringField
      FieldName = #29123#27668#31181#31867
      Size = 16
    end
    object ProjectTm设计号: TWideStringField
      FieldName = #35774#35745#21495
      Size = 32
    end
    object ProjectTm备注: TWideStringField
      FieldName = #22791#27880
      Size = 255
    end
    object ProjectTm开工日期: TDateTimeField
      FieldName = #24320#24037#26085#26399
    end
    object ProjectTm竣工日期: TDateTimeField
      FieldName = #31459#24037#26085#26399
    end
    object ProjectTm验收日期: TDateTimeField
      FieldName = #39564#25910#26085#26399
    end
    object ProjectTm工程状态: TWideStringField
      FieldName = #24037#31243#29366#24577
      Size = 32
    end
    object ProjectTm保养生效日期: TDateTimeField
      FieldName = #20445#20859#29983#25928#26085#26399
    end
    object ProjectTm结账状态: TWideStringField
      FieldName = #32467#36134#29366#24577
      Size = 32
    end
    object ProjectTm检测状态: TWideStringField
      FieldName = #26816#27979#29366#24577
      Size = 32
    end
    object ProjectTm探测器数量: TIntegerField
      FieldName = #25506#27979#22120#25968#37327
    end
    object ProjectTm切断阀: TWideStringField
      FieldName = #20999#26029#38400
      Size = 64
    end
    object ProjectTm完结标志: TBooleanField
      FieldName = #23436#32467#26631#24535
    end
    object ProjectTm登记日期: TDateTimeField
      FieldName = #30331#35760#26085#26399
    end
  end
  object ProjectTmDs: TDataSource
    DataSet = ProjectTm
    Left = 250
    Top = 69
  end
  object ProjectTs: TADOTable
    Connection = Adoc
    CursorType = ctStatic
    IndexFieldNames = #39033#30446#30331#35760#34920#22836'ID'
    MasterFields = 'ID'
    MasterSource = ProjectTmDs
    TableName = #39033#30446#30331#35760#34920#26448#26009#34920#20307
    Left = 178
    Top = 117
    object ProjectTsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ProjectTs项目登记表头ID: TIntegerField
      FieldName = #39033#30446#30331#35760#34920#22836'ID'
    end
    object ProjectTs编号: TWideStringField
      FieldName = #32534#21495
      Size = 16
    end
    object ProjectTs名称: TWideStringField
      FieldName = #21517#31216
      Size = 32
    end
    object ProjectTs规格: TWideStringField
      FieldName = #35268#26684
      Size = 32
    end
    object ProjectTs单位: TWideStringField
      FieldName = #21333#20301
      Size = 8
    end
    object ProjectTs数量: TIntegerField
      FieldName = #25968#37327
    end
    object ProjectTs备注: TWideStringField
      FieldName = #22791#27880
      Size = 255
    end
    object ProjectTs单价: TIntegerField
      FieldName = #21333#20215
    end
    object ProjectTs金额: TIntegerField
      FieldName = #37329#39069
    end
  end
  object ProjectTsDs: TDataSource
    DataSet = ProjectTs
    Left = 178
    Top = 53
  end
  object TAutoList: TADOTable
    Connection = Adoc
    CursorType = ctStatic
    TableName = #33258#21160#22635#20889#20869#23481
    Left = 162
    Top = 229
    object TAutoListID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object TAutoList类别: TWideStringField
      FieldName = #31867#21035
      Size = 16
    end
    object TAutoList内容: TWideStringField
      FieldName = #20869#23481
      Size = 16
    end
  end
  object MySQL: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=GasAl' +
      'arm'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Left = 82
    Top = 341
  end
  object ProjectsT: TADOTable
    Connection = MySQL
    CursorType = ctStatic
    TableName = 'projects'
    Left = 160
    Top = 344
    object ProjectsTid: TAutoIncField
      FieldName = 'id'
    end
    object ProjectsTProjectNo: TWideStringField
      FieldName = 'ProjectNo'
      Size = 32
    end
    object ProjectsTAlarmNo: TWideStringField
      FieldName = 'AlarmNo'
      Size = 32
    end
    object ProjectsTContractNo: TWideStringField
      FieldName = 'ContractNo'
      Size = 32
    end
    object ProjectsTArea: TWideStringField
      FieldName = 'Area'
      Size = 8
    end
    object ProjectsTReceiveDate: TDateField
      FieldName = 'ReceiveDate'
    end
    object ProjectsTDesignNo: TWideStringField
      FieldName = 'DesignNo'
      Size = 32
    end
    object ProjectsTProjectName: TWideStringField
      FieldName = 'ProjectName'
      Size = 64
    end
    object ProjectsTAddress: TWideStringField
      FieldName = 'Address'
      Size = 64
    end
    object ProjectsTProjectContact: TWideStringField
      FieldName = 'ProjectContact'
      Size = 32
    end
    object ProjectsTProjectContactPhone: TWideStringField
      FieldName = 'ProjectContactPhone'
      Size = 32
    end
    object ProjectsTBoroughs: TWideStringField
      FieldName = 'Boroughs'
      Size = 8
    end
    object ProjectsTTradeArea: TWideStringField
      FieldName = 'TradeArea'
      Size = 8
    end
    object ProjectsTSalesman: TWideStringField
      FieldName = 'Salesman'
      Size = 32
    end
    object ProjectsTHeadofMarketing: TWideStringField
      FieldName = 'HeadofMarketing'
      Size = 8
    end
    object ProjectsTAmount: TFloatField
      FieldName = 'Amount'
    end
    object ProjectsTAmoutValve: TFloatField
      FieldName = 'AmoutValve'
    end
    object ProjectsTAmoutDesign: TFloatField
      FieldName = 'AmoutDesign'
    end
    object ProjectsTDetectorNum: TIntegerField
      FieldName = 'DetectorNum'
    end
    object ProjectsTValveModel: TWideStringField
      FieldName = 'ValveModel'
      Size = 64
    end
    object ProjectsTRemark: TWideStringField
      FieldName = 'Remark'
      Size = 256
    end
    object ProjectsTAttribute: TWideStringField
      FieldName = 'Attribute'
      Size = 16
    end
    object ProjectsTAlarmGrade: TWideStringField
      FieldName = 'AlarmGrade'
      Size = 16
    end
    object ProjectsTGasSource: TWideStringField
      FieldName = 'GasSource'
      Size = 16
    end
    object ProjectsTGasPressure: TWideStringField
      FieldName = 'GasPressure'
      Size = 16
    end
    object ProjectsTProjectStatus: TWideStringField
      FieldName = 'ProjectStatus'
      Size = 8
    end
    object ProjectsTAccountsStatus: TWideStringField
      FieldName = 'AccountsStatus'
      Size = 8
    end
    object ProjectsTCheckStatus: TWideStringField
      FieldName = 'CheckStatus'
      Size = 8
    end
    object ProjectsTCommencementDate: TDateField
      FieldName = 'CommencementDate'
    end
    object ProjectsTCompletionDate: TDateField
      FieldName = 'CompletionDate'
    end
    object ProjectsTAcceptanceDate: TDateField
      FieldName = 'AcceptanceDate'
    end
    object ProjectsTMaintenanceStartDate: TDateField
      FieldName = 'MaintenanceStartDate'
    end
    object ProjectsTBuilders: TWideStringField
      FieldName = 'Builders'
      Size = 64
    end
    object ProjectsTEndSign: TSmallintField
      FieldName = 'EndSign'
    end
    object ProjectsTRegDate: TDateField
      FieldName = 'RegDate'
    end
  end
  object PlanM: TADOTable
    Connection = MySQL
    CursorType = ctStatic
    TableName = 'plannedmaterials'
    Left = 160
    Top = 400
    object PlanMid: TAutoIncField
      FieldName = 'id'
    end
    object PlanMProjectsID: TIntegerField
      FieldName = 'ProjectsID'
    end
    object PlanMProductNo: TWideStringField
      FieldName = 'ProductNo'
      Size = 16
    end
    object PlanMProductName: TWideStringField
      FieldName = 'ProductName'
      Size = 32
    end
    object PlanMProductModel: TWideStringField
      FieldName = 'ProductModel'
      Size = 32
    end
    object PlanMUnit: TWideStringField
      FieldName = 'Unit'
      Size = 4
    end
    object PlanMQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object PlanMPrice: TFloatField
      FieldName = 'Price'
    end
    object PlanMAmount: TFloatField
      FieldName = 'Amount'
    end
    object PlanMRemark: TWideStringField
      FieldName = 'Remark'
      Size = 64
    end
  end
end
