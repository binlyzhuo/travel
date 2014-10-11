/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2014/10/11 14:27:50                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('T_Account')
            and   type = 'U')
   drop table T_Account
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_AccountLog')
            and   type = 'U')
   drop table T_AccountLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_City')
            and   type = 'U')
   drop table T_City
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_CityAreaInfo')
            and   type = 'U')
   drop table T_CityAreaInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_Country')
            and   type = 'U')
   drop table T_Country
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelBookingOrder')
            and   type = 'U')
   drop table T_HotelBookingOrder
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelBrand')
            and   type = 'U')
   drop table T_HotelBrand
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelDescription')
            and   type = 'U')
   drop table T_HotelDescription
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelHotCityInfo')
            and   type = 'U')
   drop table T_HotelHotCityInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelPrice')
            and   type = 'U')
   drop table T_HotelPrice
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelRefPointInfo')
            and   type = 'U')
   drop table T_HotelRefPointInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelRoomInfo')
            and   type = 'U')
   drop table T_HotelRoomInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelRoomRatePlan')
            and   type = 'U')
   drop table T_HotelRoomRatePlan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelTheme')
            and   type = 'U')
   drop table T_HotelTheme
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_Location')
            and   type = 'U')
   drop table T_Location
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_Province')
            and   type = 'U')
   drop table T_Province
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_RefPointInfo')
            and   type = 'U')
   drop table T_RefPointInfo
go

/*==============================================================*/
/* Table: T_Account                                             */
/*==============================================================*/
create table T_Account (
   ID                   int                  identity,
   Name                 nvarchar(50)         not null default '',
   Email                nvarchar(50)         not null default '',
   Password             nvarchar(50)         not null default '',
   State                int                  not null default 1,
   CreateTime           datetime             not null default getdate(),
   UpdateTime           datetime             not null default '1900-1-1',
   constraint PK_T_ACCOUNT primary key (ID),
   constraint AK_UNIQUENAME_T_ACCOUN unique (Name)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_Account') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_Account' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '管理员信息表', 
   'user', @CurrentUser, 'table', 'T_Account'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Account')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Account')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户名',
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Account')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Email')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'Email'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户Email',
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'Email'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Account')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Password')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'Password'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '密码',
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'Password'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Account')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户状态,0-无效,1-有效,2-锁定',
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Account')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '创建时间',
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Account')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '上次修改时间',
   'user', @CurrentUser, 'table', 'T_Account', 'column', 'UpdateTime'
go

/*==============================================================*/
/* Table: T_AccountLog                                          */
/*==============================================================*/
create table T_AccountLog (
   ID                   numeric              identity,
   AccountId            int                  not null default 0,
   Content              nvarchar(4000)       not null default '',
   CreateTime           datetime             not null default getdate(),
   Creator              nvarchar(50)         not null,
   Type                 int                  not null,
   constraint PK_T_ACCOUNTLOG primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_AccountLog') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_AccountLog' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '管理员日志', 
   'user', @CurrentUser, 'table', 'T_AccountLog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_AccountLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_AccountLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AccountId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'AccountId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作人ID',
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'AccountId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_AccountLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Content')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'Content'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '日志内容',
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'Content'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_AccountLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CreateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'CreateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '创建时间',
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'CreateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_AccountLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Creator')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'Creator'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '创建人',
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'Creator'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_AccountLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '日志类型',
   'user', @CurrentUser, 'table', 'T_AccountLog', 'column', 'Type'
go

/*==============================================================*/
/* Table: T_City                                                */
/*==============================================================*/
create table T_City (
   CityID               int                  not null,
   CityCode             nvarchar(100)        not null default '',
   CityName             nvarchar(100)        not null default '',
   CityEName            nvarchar(100)        not null default '',
   ProvinceID           int                  not null default 0,
   CountryID            int                  not null default 0,
   Airport              nvarchar(500)        null default '',
   constraint PK_T_CITY primary key (CityID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_City') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_City' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '中国城市信息', 
   'user', @CurrentUser, 'table', 'T_City'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市编码',
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市名称',
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityEName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityEName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市英文名称',
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CityEName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_City', 'column', 'ProvinceID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '省份ID',
   'user', @CurrentUser, 'table', 'T_City', 'column', 'ProvinceID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountryID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CountryID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '国家ID',
   'user', @CurrentUser, 'table', 'T_City', 'column', 'CountryID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_City')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Airport')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_City', 'column', 'Airport'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市附近机场',
   'user', @CurrentUser, 'table', 'T_City', 'column', 'Airport'
go

/*==============================================================*/
/* Table: T_CityAreaInfo                                        */
/*==============================================================*/
create table T_CityAreaInfo (
   ID                   int                  identity,
   Distance             decimal(18,6)        not null default 0,
   UnitOfMeasureCode    int                  not null default 2,
   Name                 nvarchar(100)        not null default '',
   AddDate              datetime             not null default getdate(),
   TypeCode             int                  not null default 0,
   HotelID              int                  not null default 0,
   CityID               int                  not null default 0,
   AreaID               int                  not null default 0,
   constraint PK_T_CITYAREAINFO primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_CityAreaInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_CityAreaInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '城市热点信息', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   ' 主键',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Distance')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'Distance'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'Distance'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UnitOfMeasureCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'UnitOfMeasureCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离单位,km',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'UnitOfMeasureCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '名字',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'TypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '类型',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'TypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'CityID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_CityAreaInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AreaID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'AreaID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '区域ID',
   'user', @CurrentUser, 'table', 'T_CityAreaInfo', 'column', 'AreaID'
go

/*==============================================================*/
/* Table: T_Country                                             */
/*==============================================================*/
create table T_Country (
   CountryID            int                  not null,
   CountryName          nvarchar(100)        not null default '',
   CountryEName         nvarchar(100)        not null default '',
   constraint PK_T_COUNTRY primary key (CountryID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_Country') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_Country' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   ' 国家信息', 
   'user', @CurrentUser, 'table', 'T_Country'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Country')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountryID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Country', 'column', 'CountryID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_Country', 'column', 'CountryID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Country')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountryName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Country', 'column', 'CountryName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '国家名称',
   'user', @CurrentUser, 'table', 'T_Country', 'column', 'CountryName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Country')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountryEName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Country', 'column', 'CountryEName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '国家英文名称',
   'user', @CurrentUser, 'table', 'T_Country', 'column', 'CountryEName'
go

/*==============================================================*/
/* Table: T_HotelBookingOrder                                   */
/*==============================================================*/
create table T_HotelBookingOrder (
   ID                   int                  identity,
   HotelID              int                  not null default 0,
   RoomTypeCode         int                  not null default 0,
   SerialNo             nvarchar(50)         not null default '',
   AddDate              datetime             not null default getdate(),
   Channel              int                  not null default 0,
   Flag                 int                  not null default 0,
   Amount               decimal(18,4)        not null default 0,
   UserID               int                  not null default 0,
   ContactPerson        nvarchar(100)        not null,
   ContactPhone         nvarchar(100)        not null,
   ContactEmail         nvarchar(100)        not null,
   constraint PK_T_HOTELBOOKINGORDER primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelBookingOrder') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店预定记录', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'RoomTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房型编码',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'RoomTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SerialNo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'SerialNo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '订单号',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'SerialNo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Channel')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'Channel'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '渠道0-携程',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'Channel'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Flag')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'Flag'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '订单状态',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'Flag'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Amount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'Amount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '订单金额',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'Amount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBookingOrder')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UserID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'UserID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户ID',
   'user', @CurrentUser, 'table', 'T_HotelBookingOrder', 'column', 'UserID'
go

/*==============================================================*/
/* Table: T_HotelBrand                                          */
/*==============================================================*/
create table T_HotelBrand (
   BrandID              int                  not null,
   BrandName            nvarchar(100)        not null default '',
   BrandEName           nvarchar(100)        not null default '',
   Description          nvarchar(Max)        not null default '',
   AddDate              datetime             not null default getdate(),
   constraint PK_T_HOTELBRAND primary key (BrandID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelBrand') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelBrand' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店品牌', 
   'user', @CurrentUser, 'table', 'T_HotelBrand'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBrand')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BrandID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'BrandID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '品牌ID',
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'BrandID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBrand')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BrandName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'BrandName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '品牌中文名称',
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'BrandName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBrand')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BrandEName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'BrandEName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '品牌英文名称',
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'BrandEName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBrand')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Description')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'Description'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '描述信息',
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'Description'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelBrand')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelBrand', 'column', 'AddDate'
go

/*==============================================================*/
/* Table: T_HotelDescription                                    */
/*==============================================================*/
create table T_HotelDescription (
   HotelID              int                  not null,
   AreaID               int                  not null default 0,
   BrandCode            int                  not null default 0,
   HotelCode            int                  not null default 0,
   HotelCityCode        int                  not null default 0,
   HotelName            nvarchar(100)        not null default '',
   WhenBuild            datetime             not null default '1900-1-1',
   LastUpdated          datetime             not null default '1900-1-1',
   Latitude             nvarchar(100)        not null default '',
   Longitude            nvarchar(100)        not null default '',
   PositionTypeCode     int                  not null default 0,
   HotelStarRate        decimal(18,4)        not null default 0,
   CtripStarRate        decimal(18,4)        not null default 0,
   CtripUserRate        decimal(18,4)        not null default 0,
   CtripCommRate        decimal(18,4)        not null default 0,
   CommSurroundingRate  decimal(18,4)        not null default 0,
   CommFacilityRate     decimal(18,4)        not null,
   CommCleanRate        decimal(18,4)        not null default 0,
   CommServiceRate      decimal(18,4)        not null default 0,
   SegmentCategory      nvarchar(100)        not null default '',
   AddressLine          nvarchar(200)        not null default '',
   PostCode             nvarchar(20)         not null default '',
   CityName             nvarchar(100)        not null default '',
   AddDate              datetime             not null default getdate(),
   Description          nvarchar(200)        not null,
   PolicyInfo           text                 not null default '',
   Services             text                 not null default '',
   TextItems            text                 not null default '',
   MediaItems           text                 not null default '',
   AreaName             nvarchar(100)        not null default '',
   BrandName            nvarchar(100)        not null default '',
   ZoneId               int                  not null default 0,
   ZoneName             nvarchar(100)        not null default '',
   ShortDescription     nvarchar(500)        not null default '',
   Summary              text                 not null default '',
   PageOnOffice         nvarchar(200)        not null default '',
   SyncState            int                  not null default 0,
   HotelImg             nvarchar(200)        not null default '',
   ListAmount           int                  not null default 0,
   TrueAmount           int                  not null default 0,
   constraint PK_T_HOTELDESCRIPTION primary key (HotelID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelDescription') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelDescription' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '携程酒店静态信息', 
   'user', @CurrentUser, 'table', 'T_HotelDescription'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AreaID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AreaID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店行政区域ID',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AreaID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BrandCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'BrandCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店品牌',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'BrandCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店编码',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelCityCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelCityCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店所在城市ID',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelCityCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店名称',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WhenBuild')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'WhenBuild'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '创建时间',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'WhenBuild'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LastUpdated')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'LastUpdated'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '修改时间',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'LastUpdated'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Latitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Latitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '纬度',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Latitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Longitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Longitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '经度',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Longitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PositionTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PositionTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '地图类型',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PositionTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelStarRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelStarRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店星级',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelStarRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CtripStarRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CtripStarRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '携程星级',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CtripStarRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CtripUserRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CtripUserRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户推荐级别',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CtripUserRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CtripCommRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CtripCommRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－综合评分',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CtripCommRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommSurroundingRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommSurroundingRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－周边环境分类评分',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommSurroundingRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommFacilityRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommFacilityRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店设施评分',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommFacilityRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommCleanRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommCleanRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－房间卫生分类评分',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommCleanRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommServiceRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommServiceRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－酒店服务分类评分',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CommServiceRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SegmentCategory')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'SegmentCategory'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店常用的酒店标签和分类',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'SegmentCategory'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddressLine')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AddressLine'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店地址',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AddressLine'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PostCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PostCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '邮编',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PostCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市名称',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Description')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Description'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店描述信息',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Description'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PolicyInfo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PolicyInfo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '预定规则',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PolicyInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Services')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Services'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店服务信息',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Services'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TextItems')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'TextItems'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '  酒店简介和预定地址',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'TextItems'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MediaItems')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'MediaItems'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店媒体信息',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'MediaItems'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AreaName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AreaName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '行政区域名称',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'AreaName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BrandName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'BrandName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店品牌名称',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'BrandName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZoneId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ZoneId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '行政区域ID',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ZoneId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZoneName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ZoneName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '行政区域名称',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ZoneName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ShortDescription')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ShortDescription'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '一句话介绍',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ShortDescription'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Summary')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Summary'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '简介',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'Summary'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PageOnOffice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PageOnOffice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '官网页面',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'PageOnOffice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'SyncState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelImg')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelImg'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店图片',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'HotelImg'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ListAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ListAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门市价格',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'ListAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TrueAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'TrueAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '实际价格',
   'user', @CurrentUser, 'table', 'T_HotelDescription', 'column', 'TrueAmount'
go

/*==============================================================*/
/* Table: T_HotelHotCityInfo                                    */
/*==============================================================*/
create table T_HotelHotCityInfo (
   CityID               int                  not null,
   CityName             nvarchar(100)        not null default '',
   State                int                  not null default 0,
   OrderNum             int                  not null default 0,
   AddDate              datetime             not null default getdate(),
   constraint PK_T_HOTELHOTCITYINFO primary key (CityID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelHotCityInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   ' 酒店热门城市推荐', 
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelHotCityInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'CityID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelHotCityInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市名称',
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelHotCityInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '有效状态',
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelHotCityInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OrderNum')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'OrderNum'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '排列顺序',
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'OrderNum'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelHotCityInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelHotCityInfo', 'column', 'AddDate'
go

/*==============================================================*/
/* Table: T_HotelPrice                                          */
/*==============================================================*/
create table T_HotelPrice (
   HotelID              int                  not null,
   ListAmount           decimal(18,4)        not null default 0,
   AmountBeforeTax      decimal(18,4)        not null default 0,
   RoomTypeCode         int                  not null,
   AddDate              datetime             not null default getdate(),
   constraint PK_T_HOTELPRICE primary key (HotelID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelPrice') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelPrice' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店最低价格信息', 
   'user', @CurrentUser, 'table', 'T_HotelPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPrice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPrice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ListAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'ListAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门市价格',
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'ListAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPrice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AmountBeforeTax')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'AmountBeforeTax'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '实际价格',
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'AmountBeforeTax'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPrice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'RoomTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间编码',
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'RoomTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPrice')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelPrice', 'column', 'AddDate'
go

/*==============================================================*/
/* Table: T_HotelRefPointInfo                                   */
/*==============================================================*/
create table T_HotelRefPointInfo (
   ID                   int                  identity,
   HotelID              int                  not null default 0,
   Name                 nvarchar(200)        not null default '',
   RefPointName         nvarchar(200)        not null default '',
   DescriptiveText      nvarchar(1000)       not null default '',
   Distance             decimal(18,6)        not null default 0,
   UnitOfMeasureCode    int                  not null default 2,
   RefPointCategoryCode int                  not null default 0,
   Latitude             nvarchar(200)        not null default '',
   Longitude            nvarchar(200)        not null default '',
   AddDate              datetime             not null default getdate(),
   SyncState            int                  not null default 0,
   constraint PK_T_HOTELREFPOINTINFO primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelRefPointInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '附近热点信息', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点名称',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RefPointName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'RefPointName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点类型名称',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'RefPointName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DescriptiveText')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'DescriptiveText'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '描述信息',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'DescriptiveText'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Distance')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Distance'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Distance'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UnitOfMeasureCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'UnitOfMeasureCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离单位',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'UnitOfMeasureCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RefPointCategoryCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'RefPointCategoryCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点类型',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'RefPointCategoryCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Latitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Latitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '维度',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Latitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Longitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Longitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '经度',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'Longitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelRefPointInfo', 'column', 'SyncState'
go

/*==============================================================*/
/* Table: T_HotelRoomInfo                                       */
/*==============================================================*/
create table T_HotelRoomInfo (
   ID                   int                  identity,
   HotelId              int                  not null default 0,
   RoomTypeName         nvarchar(200)        not null default '',
   StandardOccupancy    int                  not null,
   Size                 nvarchar(50)         not null default '',
   RoomTypeCode         int                  not null default 0,
   Floor                nvarchar(50)         not null default '',
   BedTypeCode          nvarchar(50)         not null default '',
   Quantity             int                  not null default 0,
   DescriptiveText      nvarchar(200)        not null default '',
   EnableBooking        int                  not null default 0,
   AddDate              datetime             not null default getdate(),
   Facility             text                 not null default '',
   InvBlockCode         int                  not null default 0,
   RoomSize             int                  not null default 0,
   NonSmoking           int                  not null default 0,
   SyncState            int                  not null default 0,
   constraint PK_T_HOTELROOMINFO primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelRoomInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店房间信息', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'HotelId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'HotelId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomTypeName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'RoomTypeName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间类型名称',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'RoomTypeName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StandardOccupancy')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'StandardOccupancy'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '标准入住人数',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'StandardOccupancy'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Size')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Size'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '床的尺寸',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Size'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'RoomTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房型代码，对应Ctrip基础房型',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'RoomTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Floor')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Floor'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '楼层',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Floor'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BedTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'BedTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '床型代码，参考CodeList(BED)',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'BedTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Quantity')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Quantity'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间数量',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Quantity'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DescriptiveText')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'DescriptiveText'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房型描述信息',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'DescriptiveText'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EnableBooking')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'EnableBooking'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否可预定',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'EnableBooking'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Facility')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Facility'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间设施',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'Facility'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomSize')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'RoomSize'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间大小',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'RoomSize'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NonSmoking')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'NonSmoking'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '禁止吸烟',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'NonSmoking'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelRoomInfo', 'column', 'SyncState'
go

/*==============================================================*/
/* Table: T_HotelRoomRatePlan                                   */
/*==============================================================*/
create table T_HotelRoomRatePlan (
   ID                   int                  identity,
   HotelId              int                  not null,
   RoomTypeCode         int                  not null,
   AmountBeforeTax      decimal(18,4)        not null default 0,
   ListPrice            decimal(18,4)        not null default 0,
   BackAmount           decimal(18,4)        not null default 0,
   BackCode             nvarchar(100)        not null default '0',
   BackCurrencyCode     nvarchar(10)         not null default '',
   BackDescription      nvarchar(200)        not null default '',
   Breakfast            int                  not null default 0,
   NumberOfBreakfast    int                  not null default 0,
   CancelAmount         decimal(18,4)        null default 0,
   CancelCurrencyCode   nvarchar(10)         null default '',
   CancelPenaltyEndTime datetime             null default '1900-1-1',
   CancelPenaltyStartTime datetime             null default '1900-1-1',
   CurrencyCode         nvarchar(10)         not null default '',
   EndPeriod            datetime             not null default '1900-1-1',
   EndTime              datetime             not null default '1900-1-1',
   GuaranteeCode        nvarchar(10)         not null default '',
   HoldTime             datetime             not null default '1900-1-1',
   NumberOfGuests       int                  not null default 0,
   ProgramName          nvarchar(100)        not null,
   StartPeriod          datetime             not null default '1900-1-1',
   StartTime            datetime             not null default '1900-1-1',
   Status               nvarchar(10)         not null default '',
   AddDate              datetime             not null default getdate(),
   UpdateTime           datetime             not null default '1900-1-1',
   RatePlanCategory     int                  not null default 0,
   MarketCode           int                  not null default 0,
   IsInstantConfirm     int                  not null default 1,
   Pertain              text                 not null default '',
   SyncState            int                  not null default 0,
   constraint PK_T_HOTELROOMRATEPLAN primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelRoomRatePlan') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店房间价格', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AmountBeforeTax')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'AmountBeforeTax'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '价格不含税价',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'AmountBeforeTax'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ListPrice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'ListPrice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门市价格',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'ListPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返券/返利金额',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '活动代码，比如返利/反现等(RBP)',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackCurrencyCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackCurrencyCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返券/返利币种',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackCurrencyCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackDescription')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackDescription'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '活动描述',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'BackDescription'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Breakfast')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'Breakfast'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否含早餐',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'Breakfast'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NumberOfBreakfast')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'NumberOfBreakfast'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '早餐份数',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'NumberOfBreakfast'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消金额',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelCurrencyCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelCurrencyCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消金额币种',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelCurrencyCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelPenaltyEndTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelPenaltyEndTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消截止时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelPenaltyEndTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelPenaltyStartTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelPenaltyStartTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消开始时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CancelPenaltyStartTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CurrencyCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CurrencyCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '币种',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'CurrencyCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndPeriod')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'EndPeriod'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返现活动结束时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'EndPeriod'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'EndTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '截至时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'EndTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuaranteeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'GuaranteeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '担保类型代码，参考CodeList(RGC)',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'GuaranteeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HoldTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'HoldTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '在此时间之前不需要担保',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'HoldTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NumberOfGuests')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'NumberOfGuests'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '此价格使用与几个客人/房间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'NumberOfGuests'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProgramName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'ProgramName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返现活动名称',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'ProgramName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartPeriod')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'StartPeriod'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返现活动开始时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'StartPeriod'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'StartTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '价格开始时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'StartTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Status')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'Status'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'open可售状态，onrequest 房源紧张,close表示不可售',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'Status'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '修改时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RatePlanCategory')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'RatePlanCategory'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '价格计划类型代码',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'RatePlanCategory'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MarketCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'MarketCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '市场代码',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'MarketCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsInstantConfirm')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'IsInstantConfirm'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否立刻确认',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'IsInstantConfirm'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Pertain')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'Pertain'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间附属信息',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'Pertain'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlan', 'column', 'SyncState'
go

/*==============================================================*/
/* Table: T_HotelTheme                                          */
/*==============================================================*/
create table T_HotelTheme (
   ThemeID              int                  not null,
   ThemeName            nvarchar(50)         not null default '',
   constraint PK_T_HOTELTHEME primary key (ThemeID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelTheme') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelTheme' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店主题', 
   'user', @CurrentUser, 'table', 'T_HotelTheme'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelTheme')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ThemeID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelTheme', 'column', 'ThemeID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelTheme', 'column', 'ThemeID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelTheme')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ThemeName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelTheme', 'column', 'ThemeName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主题名称',
   'user', @CurrentUser, 'table', 'T_HotelTheme', 'column', 'ThemeName'
go

/*==============================================================*/
/* Table: T_Location                                            */
/*==============================================================*/
create table T_Location (
   LocationID           int                  not null,
   LocationName         nvarchar(100)        not null default '',
   LocationEName        nvarchar(100)        not null default '',
   LocationCityID       int                  not null default 0,
   State                int                  not null default 0,
   constraint PK_T_LOCATION primary key (LocationID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_Location') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_Location' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '中国行政区域', 
   'user', @CurrentUser, 'table', 'T_Location'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Location')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LocationID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Location')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LocationName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '名称',
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Location')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LocationEName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationEName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '英文名称',
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationEName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Location')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LocationCityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationCityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'LocationCityID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Location')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否同步过酒店的数据',
   'user', @CurrentUser, 'table', 'T_Location', 'column', 'State'
go

/*==============================================================*/
/* Table: T_Province                                            */
/*==============================================================*/
create table T_Province (
   ProvinceID           int                  not null,
   ProvinceName         nvarchar(100)        not null default '',
   ProvinceEName        nvarchar(100)        not null default '',
   CountryID            int                  not null default 0,
   constraint PK_T_PROVINCE primary key (ProvinceID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_Province') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_Province' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '中国省市信息', 
   'user', @CurrentUser, 'table', 'T_Province'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Province')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'ProvinceID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'ProvinceID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Province')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'ProvinceName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '省市名称',
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'ProvinceName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Province')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProvinceEName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'ProvinceEName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   ' 省市英文名称',
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'ProvinceEName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_Province')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CountryID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'CountryID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '国家ID',
   'user', @CurrentUser, 'table', 'T_Province', 'column', 'CountryID'
go

/*==============================================================*/
/* Table: T_RefPointInfo                                        */
/*==============================================================*/
create table T_RefPointInfo (
   ID                   int                  identity,
   CityID               int                  not null default 0,
   CityName             nvarchar(200)        not null default '',
   Name                 nvarchar(200)        not null default '',
   RefPointName         nvarchar(200)        not null default '',
   CategoryCode         int                  not null default 0,
   AddDate              datetime             not null default getdate(),
   constraint PK_T_REFPOINTINFO primary key (ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_RefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_RefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'CityID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_RefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市名称',
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_RefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点名称',
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_RefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RefPointName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'RefPointName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点类型名称',
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'RefPointName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_RefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CategoryCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'CategoryCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点类型',
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'CategoryCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_RefPointInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加日期',
   'user', @CurrentUser, 'table', 'T_RefPointInfo', 'column', 'AddDate'
go

