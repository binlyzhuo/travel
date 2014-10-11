/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2014/10/11 14:27:01                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelAreaSyncInfo')
            and   type = 'U')
   drop table T_HotelAreaSyncInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelCitySyncInfo')
            and   type = 'U')
   drop table T_HotelCitySyncInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelPriceSyncInfo')
            and   type = 'U')
   drop table T_HotelPriceSyncInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelRefPointSyncInfo')
            and   type = 'U')
   drop table T_HotelRefPointSyncInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelRoomRatePlanSyncLog')
            and   type = 'U')
   drop table T_HotelRoomRatePlanSyncLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelSyncDescription')
            and   type = 'U')
   drop table T_HotelSyncDescription
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelSyncInfo')
            and   type = 'U')
   drop table T_HotelSyncInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelSyncLog')
            and   type = 'U')
   drop table T_HotelSyncLog
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelSyncRoomInfo')
            and   type = 'U')
   drop table T_HotelSyncRoomInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_HotelSyncRoomRatePlan')
            and   type = 'U')
   drop table T_HotelSyncRoomRatePlan
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_JobScheduler')
            and   type = 'U')
   drop table T_JobScheduler
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_JobSchedulerLog')
            and   type = 'U')
   drop table T_JobSchedulerLog
go

/*==============================================================*/
/* Table: T_HotelAreaSyncInfo                                   */
/*==============================================================*/
create table T_HotelAreaSyncInfo (
   ID                   int                  identity,
   Distance             decimal(18,6)        not null default 0,
   UnitOfMeasureCode    int                  not null default 2,
   Name                 nvarchar(100)        not null default '',
   AddDate              datetime             not null default getdate(),
   TypeCode             int                  not null default 0,
   HotelID              int                  not null default 0,
   CityID               int                  not null default 0,
   SyncState            int                  not null default 0,
   AreaID               int                  not null default 0,
   constraint PK_T_HOTELAREASYNCINFO primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelAreaSyncInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '热点信息', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   ' 主键',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Distance')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'Distance'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'Distance'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UnitOfMeasureCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'UnitOfMeasureCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离单位,km',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'UnitOfMeasureCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '名字',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'TypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '类型',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'TypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'CityID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'SyncState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelAreaSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AreaID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'AreaID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '区域ID',
   'user', @CurrentUser, 'table', 'T_HotelAreaSyncInfo', 'column', 'AreaID'
go

/*==============================================================*/
/* Table: T_HotelCitySyncInfo                                   */
/*==============================================================*/
create table T_HotelCitySyncInfo (
   CityID               int                  not null,
   SyncState            int                  not null default 0,
   LastSyncDate         datetime             not null default '1900-1-1',
   HotelCount           int                  not null default 0,
   CityName             nvarchar(100)        not null default '',
   constraint PK_T_HOTELCITYSYNCINFO primary key (CityID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelCitySyncInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店信息同步记录表', 
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelCitySyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'CityID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelCitySyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'SyncState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelCitySyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LastSyncDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'LastSyncDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '上次同步时间',
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'LastSyncDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelCitySyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelCount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'HotelCount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店个数',
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'HotelCount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelCitySyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市名称',
   'user', @CurrentUser, 'table', 'T_HotelCitySyncInfo', 'column', 'CityName'
go

/*==============================================================*/
/* Table: T_HotelPriceSyncInfo                                  */
/*==============================================================*/
create table T_HotelPriceSyncInfo (
   HotelID              int                  not null,
   ListAmount           decimal(18,4)        not null default 0,
   AmountBeforeTax      decimal(18,4)        not null default 0,
   RoomTypeCode         int                  not null,
   AddDate              datetime             not null default getdate(),
   constraint PK_T_HOTELPRICESYNCINFO primary key (HotelID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelPriceSyncInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店最低价格信息', 
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPriceSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPriceSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ListAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'ListAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门市价格',
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'ListAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPriceSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AmountBeforeTax')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'AmountBeforeTax'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '实际价格',
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'AmountBeforeTax'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPriceSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'RoomTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间编码',
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'RoomTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelPriceSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelPriceSyncInfo', 'column', 'AddDate'
go

/*==============================================================*/
/* Table: T_HotelRefPointSyncInfo                               */
/*==============================================================*/
create table T_HotelRefPointSyncInfo (
   ID                   int                  identity,
   HotelID              int                  not null default 0,
   Name                 nvarchar(100)        not null default '',
   RefPointName         nvarchar(100)        not null default '',
   DescriptiveText      nvarchar(500)        not null default '',
   Distance             decimal(18,4)        not null default 0,
   UnitOfMeasureCode    int                  not null default 2,
   RefPointCategoryCode int                  not null default 0,
   Latitude             nvarchar(100)        not null default '',
   Longitude            nvarchar(100)        not null default '',
   AddDate              datetime             not null default getdate(),
   SyncState            int                  not null default 0,
   CityID               int                  not null default 0,
   constraint PK_T_HOTELREFPOINTSYNCINFO primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelRefPointSyncInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '附近热点信息', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Name')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Name'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点名称',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Name'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RefPointName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'RefPointName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点类型名称',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'RefPointName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DescriptiveText')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'DescriptiveText'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '描述信息',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'DescriptiveText'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Distance')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Distance'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Distance'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UnitOfMeasureCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'UnitOfMeasureCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '距离单位',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'UnitOfMeasureCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RefPointCategoryCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'RefPointCategoryCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '热点类型',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'RefPointCategoryCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Latitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Latitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '维度',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Latitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Longitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Longitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '经度',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'Longitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'SyncState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRefPointSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_HotelRefPointSyncInfo', 'column', 'CityID'
go

/*==============================================================*/
/* Table: T_HotelRoomRatePlanSyncLog                            */
/*==============================================================*/
create table T_HotelRoomRatePlanSyncLog (
   ID                   int                  identity,
   StartDate            datetime             not null default '1900-1-1',
   EndDate              datetime             not null default '1900-1-1',
   IsComplete           int                  not null default 0,
   AddDate              datetime             not null default getdate(),
   State                int                  not null default 1,
   ImportState          int                  not null default 0,
   constraint PK_T_HOTELROOMRATEPLANSYNCLOG primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelRoomRatePlanSyncLog') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店价格价格同步日志', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlanSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlanSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'StartDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '开始时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'StartDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlanSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'EndDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '结束时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'EndDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlanSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsComplete')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'IsComplete'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否同步完成',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'IsComplete'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlanSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlanSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否有效',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'State'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelRoomRatePlanSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ImportState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'ImportState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '导入类型',
   'user', @CurrentUser, 'table', 'T_HotelRoomRatePlanSyncLog', 'column', 'ImportState'
go

/*==============================================================*/
/* Table: T_HotelSyncDescription                                */
/*==============================================================*/
create table T_HotelSyncDescription (
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
   ListAmount           int                  not null,
   TrueAmount           int                  not null,
   IsIndex              int                  not null default 0,
   constraint PK_T_HOTELSYNCDESCRIPTION primary key (HotelID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelSyncDescription') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '携程酒店静态信息', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AreaID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AreaID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店行政区域ID',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AreaID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BrandCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'BrandCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店品牌',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'BrandCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店编码',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelCityCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelCityCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店所在城市ID',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelCityCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店名称',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WhenBuild')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'WhenBuild'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '创建时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'WhenBuild'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LastUpdated')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'LastUpdated'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '修改时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'LastUpdated'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Latitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Latitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '纬度',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Latitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Longitude')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Longitude'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '经度',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Longitude'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PositionTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PositionTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '地图类型',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PositionTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelStarRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelStarRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店星级',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelStarRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CtripStarRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CtripStarRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '携程星级',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CtripStarRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CtripUserRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CtripUserRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户推荐级别',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CtripUserRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CtripCommRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CtripCommRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－综合评分',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CtripCommRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommSurroundingRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommSurroundingRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－周边环境分类评分',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommSurroundingRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommFacilityRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommFacilityRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店设施评分',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommFacilityRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommCleanRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommCleanRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－房间卫生分类评分',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommCleanRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommServiceRate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommServiceRate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店点评－酒店服务分类评分',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CommServiceRate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SegmentCategory')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'SegmentCategory'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店常用的酒店标签和分类',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'SegmentCategory'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddressLine')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AddressLine'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店地址',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AddressLine'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PostCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PostCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '邮编',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PostCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市名称',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Description')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Description'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店描述信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Description'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PolicyInfo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PolicyInfo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '预定规则',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PolicyInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Services')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Services'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店服务信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Services'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TextItems')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'TextItems'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '  酒店简介和预定地址',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'TextItems'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MediaItems')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'MediaItems'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店媒体信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'MediaItems'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AreaName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AreaName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '行政区域名称',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'AreaName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BrandName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'BrandName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店品牌名称',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'BrandName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZoneId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'ZoneId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '行政区域ID',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'ZoneId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZoneName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'ZoneName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '行政区域名称',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'ZoneName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ShortDescription')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'ShortDescription'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '一句话介绍',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'ShortDescription'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Summary')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Summary'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '简介',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'Summary'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PageOnOffice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PageOnOffice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '官网页面',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'PageOnOffice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'SyncState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelImg')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelImg'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店图片',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'HotelImg'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncDescription')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsIndex')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'IsIndex'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '数据是否已创建索引',
   'user', @CurrentUser, 'table', 'T_HotelSyncDescription', 'column', 'IsIndex'
go

/*==============================================================*/
/* Table: T_HotelSyncInfo                                       */
/*==============================================================*/
create table T_HotelSyncInfo (
   HotelID              int                  not null,
   HotelName            nvarchar(100)        not null,
   SyncDate             datetime             not null default '1900-1-1',
   AddDate              datetime             not null default getdate(),
   SyncSate             int                  not null default 0,
   PriceSyncState       int                  not null default 0,
   CityID               int                  not null default 0,
   constraint PK_T_HOTELSYNCINFO primary key (HotelID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelSyncInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店查询信息', 
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'SyncDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'SyncDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncSate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'SyncSate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'SyncSate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PriceSyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'PriceSyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '价格同步状态',
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'PriceSyncState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'CityID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '城市ID',
   'user', @CurrentUser, 'table', 'T_HotelSyncInfo', 'column', 'CityID'
go

/*==============================================================*/
/* Table: T_HotelSyncLog                                        */
/*==============================================================*/
create table T_HotelSyncLog (
   ID                   int                  identity,
   Type                 int                  not null default 0,
   Description          nvarchar(500)        not null default '',
   ReturnCode           int                  not null default 0,
   AddDate              datetime             not null default getdate(),
   RequestContent       text                 not null default '',
   constraint PK_T_HOTELSYNCLOG primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelSyncLog') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelSyncLog' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '同步日志', 
   'user', @CurrentUser, 'table', 'T_HotelSyncLog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Type')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'Type'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '类型',
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'Type'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Description')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'Description'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '描述信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'Description'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ReturnCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'ReturnCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返回信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'ReturnCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RequestContent')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'RequestContent'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '请求信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncLog', 'column', 'RequestContent'
go

/*==============================================================*/
/* Table: T_HotelSyncRoomInfo                                   */
/*==============================================================*/
create table T_HotelSyncRoomInfo (
   ID                   int                  identity,
   HotelId              int                  not null default 0,
   RoomTypeName         nvarchar(100)        not null default '',
   StandardOccupancy    int                  not null,
   Size                 nvarchar(50)         not null default '',
   RoomTypeCode         int                  not null default 0,
   Floor                nvarchar(50)         not null default '',
   BedTypeCode          nvarchar(50)         not null default '',
   Quantity             int                  not null default 0,
   DescriptiveText      nvarchar(1000)       not null default '',
   EnableBooking        int                  not null default 0,
   AddDate              datetime             not null default getdate(),
   Facility             text                 not null default '',
   InvBlockCode         int                  not null default 0,
   RoomSize             int                  not null default 0,
   NonSmoking           int                  not null default 0,
   SyncState            int                  not null default 0,
   constraint PK_T_HOTELSYNCROOMINFO primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelSyncRoomInfo') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店房间信息', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HotelId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'HotelId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '酒店ID',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'HotelId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomTypeName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'RoomTypeName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间类型名称',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'RoomTypeName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StandardOccupancy')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'StandardOccupancy'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '标准入住人数',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'StandardOccupancy'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Size')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Size'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '床的尺寸',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Size'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'RoomTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房型代码，对应Ctrip基础房型',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'RoomTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Floor')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Floor'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '楼层',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Floor'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BedTypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'BedTypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '床型代码，参考CodeList(BED)',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'BedTypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Quantity')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Quantity'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间数量',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Quantity'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DescriptiveText')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'DescriptiveText'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房型描述信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'DescriptiveText'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EnableBooking')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'EnableBooking'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否可预定',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'EnableBooking'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Facility')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Facility'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间设施',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'Facility'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RoomSize')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'RoomSize'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间大小',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'RoomSize'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NonSmoking')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'NonSmoking'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '禁止吸烟',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'NonSmoking'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomInfo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomInfo', 'column', 'SyncState'
go

/*==============================================================*/
/* Table: T_HotelSyncRoomRatePlan                               */
/*==============================================================*/
create table T_HotelSyncRoomRatePlan (
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
   constraint PK_T_HOTELSYNCROOMRATEPLAN primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_HotelSyncRoomRatePlan') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '酒店房间价格', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AmountBeforeTax')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'AmountBeforeTax'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '价格不含税价',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'AmountBeforeTax'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ListPrice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'ListPrice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '门市价格',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'ListPrice'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返券/返利金额',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '活动代码，比如返利/反现等(RBP)',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackCurrencyCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackCurrencyCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返券/返利币种',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackCurrencyCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BackDescription')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackDescription'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '活动描述',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'BackDescription'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Breakfast')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'Breakfast'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否含早餐',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'Breakfast'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NumberOfBreakfast')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'NumberOfBreakfast'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '早餐份数',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'NumberOfBreakfast'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelAmount')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelAmount'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消金额',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelAmount'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelCurrencyCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelCurrencyCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消金额币种',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelCurrencyCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelPenaltyEndTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelPenaltyEndTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消截止时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelPenaltyEndTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CancelPenaltyStartTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelPenaltyStartTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '取消开始时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CancelPenaltyStartTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CurrencyCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CurrencyCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '币种',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'CurrencyCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndPeriod')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'EndPeriod'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返现活动结束时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'EndPeriod'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EndTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'EndTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '截至时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'EndTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GuaranteeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'GuaranteeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '担保类型代码，参考CodeList(RGC)',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'GuaranteeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HoldTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'HoldTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '在此时间之前不需要担保',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'HoldTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NumberOfGuests')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'NumberOfGuests'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '此价格使用与几个客人/房间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'NumberOfGuests'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ProgramName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'ProgramName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返现活动名称',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'ProgramName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartPeriod')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'StartPeriod'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '返现活动开始时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'StartPeriod'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'StartTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'StartTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '价格开始时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'StartTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Status')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'Status'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'open可售状态，onrequest 房源紧张,close表示不可售',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'Status'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UpdateTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'UpdateTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '修改时间',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'UpdateTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RatePlanCategory')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'RatePlanCategory'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '价格计划类型代码',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'RatePlanCategory'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MarketCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'MarketCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '市场代码',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'MarketCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsInstantConfirm')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'IsInstantConfirm'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否立刻确认',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'IsInstantConfirm'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Pertain')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'Pertain'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '房间附属信息',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'Pertain'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_HotelSyncRoomRatePlan')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SyncState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'SyncState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '同步状态',
   'user', @CurrentUser, 'table', 'T_HotelSyncRoomRatePlan', 'column', 'SyncState'
go

/*==============================================================*/
/* Table: T_JobScheduler                                        */
/*==============================================================*/
create table T_JobScheduler (
   ID                   int                  identity,
   Method               nvarchar(200)        not null default '',
   Cron                 nvarchar(100)        not null default '',
   AddDate              datetime             not null default getdate(),
   State                int                  not null default 1,
   constraint PK_T_JOBSCHEDULER primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_JobScheduler') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_JobScheduler' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   ' 计划任务', 
   'user', @CurrentUser, 'table', 'T_JobScheduler'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_JobScheduler')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_JobScheduler')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Method')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'Method'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '方法',
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'Method'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_JobScheduler')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Cron')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'Cron'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Cron表达式',
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'Cron'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_JobScheduler')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AddDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'AddDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '添加时间',
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'AddDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_JobScheduler')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '状态',
   'user', @CurrentUser, 'table', 'T_JobScheduler', 'column', 'State'
go

/*==============================================================*/
/* Table: T_JobSchedulerLog                                     */
/*==============================================================*/
create table T_JobSchedulerLog (
   ID                   int                  not null,
   constraint PK_T_JOBSCHEDULERLOG primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_JobSchedulerLog') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_JobSchedulerLog' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '定时任务日志', 
   'user', @CurrentUser, 'table', 'T_JobSchedulerLog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('T_JobSchedulerLog')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'T_JobSchedulerLog', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '主键',
   'user', @CurrentUser, 'table', 'T_JobSchedulerLog', 'column', 'ID'
go

