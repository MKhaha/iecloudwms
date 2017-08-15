/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/14 20:09:54                           */
/*==============================================================*/

drop table if exists administrator;

drop table if exists badreport;

drop table if exists badreportdetail;

drop table if exists checkdata;

drop table if exists checkstock;

drop table if exists checkstockinfo;

drop table if exists clonehistory;

drop table if exists clonetemp;

drop table if exists cusaddress;

drop table if exists customer;

drop table if exists equipment;

drop table if exists instorage;

drop table if exists instordetail;

drop table if exists inventorybook;

drop table if exists localproduct;

drop table if exists location;

drop table if exists measure;

drop table if exists measurerel;

drop table if exists moveorder;

drop table if exists moveorderdetail;

drop table if exists outstodetail;

drop table if exists outstorage;

drop table if exists product;

drop table if exists productcategory;

drop table if exists reportparams;

drop table if exists reports;

drop table if exists returndetail;

drop table if exists returnorder;

drop table if exists sequencenum;

drop table if exists storage;

drop table if exists supplier;

drop table if exists sysdepart;

drop table if exists sysrelation;

drop table if exists sysresource;

drop table if exists sysrole;

drop table if exists tnum;


/*==============================================================*/
/* Table: administrator                                         */
/*==============================================================*/
create table administrator
(
   ID                   int(11) not null auto_increment comment '主键编号',
   UserName             varchar(20) not null comment '登录用户名',
   PassWord             varchar(50) not null comment '登录密码',
   UserCode             varchar(40) not null comment '用户编号',
   RealName             varchar(20) not null comment '真实姓名',
   Email                varchar(30) comment '用户邮件',
   Mobile               varchar(11) comment '手机号码',
   Phone                varchar(20) comment '固定电话',
   CreateTime           datetime not null comment '创建时间',
   CreateIp             varchar(20) comment '创建IP',
   CreateUser           varchar(15) comment '创建人',
   LoginCount           int(11) not null default 0 comment '登录次数',
   Picture              varchar(30) comment '头像',
   UpdateTime           datetime not null comment '最后修改时间',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Status               int(11) not null default 0 comment '状态 0',
   DepartNum            varchar(20) comment '部门编号',
   ParentCode           varchar(40) not null comment '所属员工编号',
   RoleNum              varchar(20) not null comment '角色编号',
   Remark               varchar(20) comment '备注',
   primary key (ID)
);

alter table administrator comment '系统管理账户';

/*==============================================================*/
/* Table: badreport                                             */
/*==============================================================*/
create table badreport
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '入库单编号--唯一',
   BadType              int(11) not null default 0 comment '报损类型 1  损坏报损 2 丢失报损 ',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           varchar(50) not null comment '仓库编号',
   ContractOrder        varchar(50) not null comment '关联单号',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   Num                  double default 0 comment '总数量',
   Amount               double default 0 comment '涉及总金额',
   Weight               double default 0 comment '涉及总重量',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(20) comment '创建人',
   AuditUser            varchar(20) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            varchar(20) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         varchar(20) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        varchar(20) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table badreport comment '报损管理';

/*==============================================================*/
/* Table: badreportdetail                                       */
/*==============================================================*/
create table badreportdetail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(50) not null comment '唯一编号',
   OrderNum             varchar(50) not null comment '入库单编号 --移库单',
   ProductName          varchar(100) comment '产品名称',
   BarCode              varchar(50) not null comment '条码编号',
   ProductNum           varchar(50) not null comment '产品唯一编码',
   BatchNum             varchar(50) comment '生产批次',
   Num                  double not null default 0 comment '入库数量',
   InPrice              double default 0 comment '单品价格',
   Amount               double default 0 comment '涉及总价',
   CreateTime           datetime not null comment '创建时间',
   StorageNum           varchar(20) comment '仓库编号',
   FromLocalNum         varchar(20) comment '被转移库位编号',
   ToLocalNum           varchar(20) comment '转移目标库位编号',
   primary key (ID)
);

alter table badreportdetail comment '报损单详细';

/*==============================================================*/
/* Table: checkdata                                             */
/*==============================================================*/
create table checkdata
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '入库单编号',
   LocalNum             varchar(50) comment '库位编号',
   LocalName            varchar(50) comment '库位名称',
   StorageNum           varchar(50) comment '仓库编号',
   ProductNum           varchar(50) comment '产品唯一编号',
   BarCode              varchar(50) comment '产品条码',
   ProductName          varchar(50) comment '产品名称',
   BatchNum             varchar(50) comment '管理批次',
   LocalQty             double default 0 comment '账面库存数',
   FirstQty             double default 0 comment '初盘数量',
   SecondQty            double default 0 comment '复盘数量',
   DifQty               double default 0 comment '盘差值',
   FirstUser            varchar(50) comment '初盘人',
   SecondUser           varchar(50) comment '复盘人',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table checkdata comment '盘点差异表';

/*==============================================================*/
/* Table: checkstock                                            */
/*==============================================================*/
create table checkstock
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(20) not null comment '入库单编号',
   CheckType            int(11) not null default 0 comment '1 库位盘点 2 产品盘点',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           varchar(50) not null comment '仓库编号',
   ContractOrder        varchar(50) not null comment '关联单号',
   Status               int(11) not null default 0 comment '盘点单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   LocalQty             double not null default 0 comment '账面总数',
   CheckQty             double not null default 0 comment '盘点总数',
   IsDelete             int(11) not null default 0 comment '是否删除',
   IsComplete           int(11) not null default 0 comment '是否完成',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(20) comment '创建人',
   AuditUser            varchar(20) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            varchar(20) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         varchar(20) comment '设备编号[所使用的设备编号]',
   EquipmentCode        varchar(20) comment '设备条码[如果没有就直接设备编号]',
   Remark               varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table checkstock comment '盘点管理';

/*==============================================================*/
/* Table: checkstockinfo                                        */
/*==============================================================*/
create table checkstockinfo
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '入库单编号',
   StorageNum           varchar(50) not null comment '仓库编号',
   TargetNum            varchar(50) not null comment '目标对象编号(库位编号或者产品编号)',
   CreateTime           datetime comment '创建时间',
   primary key (ID)
);

alter table checkstockinfo comment '盘点单与库位或者产品之间的关系';

/*==============================================================*/
/* Table: clonehistory                                          */
/*==============================================================*/
create table clonehistory
(
   CloneID              int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '入库单编号',
   ID                   int(11) not null default 0 comment '库存编号',
   Sn                   varchar(50) not null comment '唯一编号',
   StorageNum           varchar(50) comment '仓库编号',
   StorageName          varchar(50) comment '仓库名称',
   LocalNum             varchar(50) comment '库位编号',
   LocalName            varchar(50) comment '库位名称',
   LocalType            int(11) default 0 comment '库位类型',
   ProductNum           varchar(50) comment '产品唯一编号',
   BarCode              varchar(50) comment '产品条码',
   ProductName          varchar(200) comment '产品名称',
   BatchNum             varchar(50) comment '管理批次',
   Num                  double not null default 0 comment '库存数量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(50) comment '创建用户编号',
   CreateName           varchar(50) comment '创建人姓名',
   Remark               varchar(200) comment '备注',
   primary key (CloneID)
);

alter table clonehistory comment '盘点克隆历史表';

/*==============================================================*/
/* Table: clonetemp                                             */
/*==============================================================*/
create table clonetemp
(
   CloneID              int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '入库单编号',
   ID                   int(11) not null default 0 comment '库存编号',
   Sn                   varchar(50) not null comment '唯一编号',
   StorageNum           varchar(50) comment '仓库编号',
   StorageName          varchar(50) comment '仓库名称',
   LocalNum             varchar(50) comment '库位编号',
   LocalName            varchar(50) comment '库位名称',
   LocalType            int(11) default 0 comment '库位类型',
   ProductNum           varchar(50) comment '产品唯一编号',
   BarCode              varchar(50) comment '产品条码',
   ProductName          varchar(200) comment '产品名称',
   BatchNum             varchar(50) comment '管理批次',
   Num                  double not null default 0 comment '库存数量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(50) comment '创建用户编号',
   CreateName           varchar(50) comment '创建人姓名',
   Remark               varchar(200) comment '备注',
   primary key (CloneID)
);

alter table clonetemp comment '盘点克隆临时表';

/*==============================================================*/
/* Table: cusaddress                                            */
/*==============================================================*/
create table cusaddress
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(200) not null comment '收货单位编号',
   CusNum               varchar(20) not null comment '客户编号',
   Contact              varchar(200) comment '收货联系人',
   Phone                varchar(20) comment '联系电话',
   Address              varchar(200) not null comment '联系地址',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(20) comment '创建人',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table cusaddress comment '客户收货单位';

/*==============================================================*/
/* Table: customer                                              */
/*==============================================================*/
create table customer
(
   ID                   int(11) not null auto_increment comment '主键编号',
   CusNum               varchar(20) not null comment '客户编号',
   CusName              varchar(20) not null comment '客户名称',
   Phone                varchar(20) comment '电话',
   Email                varchar(30) comment '邮件',
   Fax                  varchar(30) comment '传真',
   Address              varchar(200) comment '地址',
   CusType              int(11) default 0 comment '客户类型',
   IsDelete             int(11) default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(20) comment '创建人',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table customer comment '客户管理';

/*==============================================================*/
/* Table: equipment                                             */
/*==============================================================*/
create table equipment
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(20) not null comment '设备编号',
   EquipmentName        varchar(50) not null comment '设备名称',
   EquipmentNum         varchar(20) not null comment '设备条码',
   IsImpower            bool not null default 0 comment '是否授权（是、否）',
   Flag                 varchar(20) comment '授权标识符',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Status               int(11) not null default 0 comment '1 闲置 2 正在使用 3 报修 4 报损 5 遗失',
   CreateUser           varchar(200) not null comment '操作人',
   CreateTime           datetime not null comment '创建时间',
   Remark               varchar(400) comment '备注',
   primary key (ID)
);

alter table equipment comment '设备授权';

/*==============================================================*/
/* Table: instorage                                             */
/*==============================================================*/
create table instorage
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '入库单编号',
   InType               int(11) not null default 0 comment '入库类型 1  采购收货入库 2 销售退货入库 3 生产产品入库 4 领用退还入库 5 借货入库 6 借出还入',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           varchar(50) not null comment '仓库编号',
   SupNum               varchar(50) not null comment '供应商编号',
   SupName              varchar(100) not null comment '供应商名称',
   ContactName          varchar(100) comment '供应商联系人',
   Phone                varchar(50) comment '供应商联系电话',
   Address              varchar(100) comment '供应商地址',
   ContractOrder        varchar(50) comment '关联单号',
   ContractType         int(11) not null default 0 comment '关联单号类型 0 无关联 1 采购 2 出库 3退货',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Num                  double default 0 comment '总数量',
   Amount               double not null default 0 comment '订单金额',
   NetWeight            double not null default 0 comment '净重',
   GrossWeight          double not null default 0 comment '毛重',
   OrderTime            datetime comment '制单时间',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(50) comment '创建人',
   AuditUser            varchar(50) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            varchar(50) comment '打印人',
   PrintTime            datetime comment '打印时间',
   StoreKeeper          varchar(50) comment '库管员',
   Reason               varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         varchar(50) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        varchar(50) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table instorage comment '入库单管理';

/*==============================================================*/
/* Table: instordetail                                          */
/*==============================================================*/
create table instordetail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(50) not null comment '唯一编号',
   OrderNum             varchar(50) not null comment '入库单编号',
   ProductName          varchar(100) comment '产品名称',
   BarCode              varchar(50) not null comment '条码编号',
   ProductNum           varchar(50) not null comment '产品唯一编码',
   BatchNum             varchar(50) comment '生产批次',
   Num                  double not null default 0 comment '入库数量',
   IsPick               int(11) not null default 0 comment '是否审核',
   RealNum              double not null default 0 comment '实际数量',
   InPrice              double not null default 0 comment '入库单价',
   Amount               double not null default 0 comment '金额',
   ContractOrder        varchar(50) comment '关联单号',
   CreateTime           datetime not null comment '创建时间',
   LocalNum             varchar(50) comment '库位编号',
   StorageNum           varchar(50) comment '仓库编号',
   primary key (ID)
);

alter table instordetail comment '入库单产品详细管理';

/*==============================================================*/
/* Table: inventorybook                                         */
/*==============================================================*/
create table inventorybook
(
   ID                   int(11) not null auto_increment comment '主键编号',
   ProductNum           varchar(50) not null comment '产品唯一编号',
   BarCode              varchar(50) not null comment '产品条码',
   ProductName          varchar(50) not null comment '产品名称',
   BatchNum             varchar(50) comment '批次',
   Num                  double not null default 0 comment '数量变化数量',
   InventoryType        int(11) not null default 0 comment '1 入库 2 出库 -3 移出 3 移入 -4 报损(移出) 4 报损(移入) 5 盘盈 6 盘亏  7退货',
   ContactOrder         varchar(50) not null comment '关联订单号',
   FromLocalNum         varchar(50) comment '原库位',
   ToLocalNum           varchar(50) comment '目标库位',
   StoreNum             varchar(50) comment '仓库编号',
   CreateTime           datetime comment '创建时间',
   CreateUser           varchar(50) comment '操作人',
   primary key (ID)
);

alter table inventorybook comment '仓库库存记录变化台账：1 入库，2 出库，3 移库(移除) -3 移库(移入)，4 报损(移除) -4 报损(移入)，5';

/*==============================================================*/
/* Table: localproduct                                          */
/*==============================================================*/
create table localproduct
(
   ID                   int(11) not null auto_increment comment '主键编号',
   Sn                   varchar(50) not null comment '唯一编号',
   StorageNum           varchar(50) comment '仓库编号',
   StorageName          varchar(50) comment '仓库名称',
   LocalNum             varchar(50) comment '库位编号',
   LocalName            varchar(50) comment '库位名称',
   LocalType            int(11) default 0 comment '库位类型',
   ProductNum           varchar(50) comment '产品唯一编号',
   BarCode              varchar(50) comment '产品条码',
   ProductName          varchar(200) comment '产品名称',
   BatchNum             varchar(50) comment '批次',
   Num                  double not null default 0 comment '库存数量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(50) comment '创建用户编号',
   CreateName           varchar(50) comment '创建人姓名',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table localproduct comment '库存管理';

/*==============================================================*/
/* Table: location                                              */
/*==============================================================*/
create table location
(
   ID                   int(11) not null auto_increment comment '主键编号',
   LocalNum             varchar(20) not null comment '库位编号 唯一自动生成编号',
   LocalBarCode         varchar(20) not null comment '库位条码',
   LocalName            varchar(30) not null comment '库位名称',
   StorageNum           varchar(20) not null comment '仓库编号',
   StorageType          int(11) not null default 0 comment '仓库类型 (1 原料仓库 2 成品仓库)',
   LocalType            int(11) not null default 0 comment '1 正式库区 2 待入库区 3 待检库区 4 待发库区 5 报损库区',
   Rack                 varchar(100) comment '货架',
   RackLength           double not null default 0 comment '长度',
   Width                double not null default 0 comment '宽度',
   Height               double not null default 0 comment '高度',
   X                    double not null default 0 comment '坐标',
   Y                    double not null default 0 comment '坐标',
   Z                    double not null default 0 comment '坐标',
   UnitNum              varchar(20) not null comment '单位编号',
   UnitName             varchar(20) not null comment '单位名称',
   Remark               varchar(4000) comment '描述',
   IsForbid             bool not null default 0 comment '禁用 启用',
   IsDefault            int(11) not null default 0 comment '是否为默认值',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table location comment '库位管理';

/*==============================================================*/
/* Table: measure                                               */
/*==============================================================*/
create table measure
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SN                   varchar(50) not null comment '唯一编号',
   MeasureNum           varchar(50) comment '单位编号',
   MeasureName          varchar(50) comment '单位名称',
   primary key (ID)
);

alter table measure comment '单位管理';

/*==============================================================*/
/* Table: measurerel                                            */
/*==============================================================*/
create table measurerel
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SN                   varchar(50) not null comment '唯一编号',
   MeasureSource        varchar(50) comment '原单位',
   MeasureTarget        varchar(50) comment '目标单位',
   Rate                 double default 0 comment '换算比例',
   primary key (ID)
);

alter table measurerel comment '单位换算关系';

/*==============================================================*/
/* Table: moveorder                                             */
/*==============================================================*/
create table moveorder
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '入库单编号--唯一',
   MoveType             int(11) not null default 0 comment '移库类型 1  移库上架 2 仓库移货 3 报损移库',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           varchar(50) not null comment '仓库编号',
   ContractOrder        varchar(50) not null comment '关联单号',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Num                  double not null default 0 comment '总数量',
   Amout                double default 0 comment '涉及金额',
   Weight               double default 0 comment '涉及总重量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(20) comment '创建人',
   AuditUser            varchar(20) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            varchar(20) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         varchar(20) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        varchar(20) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table moveorder comment '移库管理';

/*==============================================================*/
/* Table: moveorderdetail                                       */
/*==============================================================*/
create table moveorderdetail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(50) not null comment '唯一编号',
   OrderNum             varchar(50) not null comment '入库单编号 --移库单',
   ProductName          varchar(100) comment '产品名称',
   BarCode              varchar(50) not null comment '条码编号',
   ProductNum           varchar(50) not null comment '产品唯一编码',
   BatchNum             varchar(50) comment '生产批次',
   Num                  double not null default 0 comment '移库数量',
   InPrice              double default 0 comment '单品价格',
   Amout                double default 0 comment '涉及总价',
   IsPick               int(11) not null default 0 comment '是否审核 Yes No	',
   RealNum              double not null default 0 comment '实际数量',
   CreateTime           datetime not null comment '创建时间',
   StorageNum           varchar(50) comment '仓库编号',
   FromLocalNum         varchar(50) comment '被转移库位编号',
   ToLocalNum           varchar(50) comment '转移目标库位编号',
   primary key (ID)
);

alter table moveorderdetail comment '移库单详细';

/*==============================================================*/
/* Table: outstodetail                                          */
/*==============================================================*/
create table outstodetail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(50) not null comment '唯一编号',
   OrderNum             varchar(50) not null comment '出库单编号',
   ProductName          varchar(100) comment '产品名称',
   BarCode              varchar(50) not null comment '条码编号',
   ProductNum           varchar(50) not null comment '产品唯一编号',
   BatchNum             varchar(50) comment '生产批次',
   LocalNum             varchar(50) not null comment '库位编号',
   StorageNum           varchar(50) comment '仓库编号',
   Num                  double not null default 0 comment '入库数量',
   IsPick               int(11) not null default 0 comment '是否审核 Yes No',
   RealNum              double not null default 0 comment '实际数量',
   OutPrice             double default 0 comment '单价',
   Amount               double default 0 comment '总价',
   ContractOrder        varchar(50) comment '关联单号',
   ContractSn           varchar(50) comment '关联单号子项',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table outstodetail comment '出库商品详细管理';

/*==============================================================*/
/* Table: outstorage                                            */
/*==============================================================*/
create table outstorage
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '出库单编号',
   OutType              int(11) not null default 0 comment '出库类型 1  采购退货出库 2 销售提货出库 3 领用出库 4 借货出库 5 借入还出 ',
   ProductType          int(11) not null default 0 comment '出库产品类型 1 原料 2 成品',
   StorageNum           varchar(50) not null comment '仓库编号',
   CusNum               varchar(50) not null comment '供应商编号',
   CusName              varchar(100) not null comment '供应商名称',
   Contact              varchar(50) comment '联系人',
   Phone                varchar(50) comment '电话',
   Address              varchar(100) comment '地址',
   ContractOrder        varchar(50) not null comment '关联单号',
   Num                  double default 0 comment '总数量',
   Amount               double default 0 comment '涉及总金额',
   Weight               double default 0 comment '涉及总重量',
   SendDate             datetime not null comment '发货日期',
   Status               int(11) not null default 0 comment '出库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(50) comment '创建人',
   AuditUser            varchar(50) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            varchar(50) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         varchar(50) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        varchar(50) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table outstorage comment '出库管理';

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(50) not null comment '唯一编号',
   BarCode              varchar(50) not null comment '条码编号',
   ProductName          varchar(100) not null comment '产品名称',
   Num                  double not null default 0 comment '产品剩余数量',
   MinNum               double not null default 0 comment '预警值 下线',
   MaxNum               double not null default 0 comment '预警值 上线',
   UnitNum              varchar(50) not null comment '单位枚举值',
   UnitName             varchar(50) not null comment '数量单位',
   CateNum              varchar(50) not null comment '原料类型编号',
   CateName             varchar(50) comment '原料类型名称',
   ProductSize          varchar(400) comment '产品规格',
   Color                varchar(200) comment '颜色',
   InPrice              double not null default 0 comment '单件进价',
   OutPrice             double not null default 0 comment '单件出价',
   AvgPrice             double not null default 0 comment '平均价',
   NetWeight            double not null default 0 comment '单件净重',
   GrossWeight          double not null default 0 comment '单件毛重',
   Description          text comment '产品描述',
   PicUrl               varchar(200) comment '图片链接地址',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(20) comment '创建人',
   StorageNum           varchar(20) comment '存储仓库',
   DefaultLocal         varchar(20) comment '默认库位',
   CusNum               varchar(20) comment '供应商编号',
   CusName              varchar(30) comment '供应商名称',
   Display              varchar(50) comment '显示名称',
   Remark               text comment '备注',
   primary key (ID)
);

alter table product comment '成品管理';

/*==============================================================*/
/* Table: productcategory                                       */
/*==============================================================*/
create table productcategory
(
   ID                   int(11) not null auto_increment comment '主键编号',
   CateNum              varchar(15) not null comment '原料类型编号',
   CateName             varchar(50) comment '原料类型名称',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(20) comment '创建人',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table productcategory comment '成品类别管理';

/*==============================================================*/
/* Table: reportparams                                          */
/*==============================================================*/
create table reportparams
(
   ID                   int(11) not null auto_increment,
   ParamNum             varchar(50) not null,
   ReportNum            varchar(50) not null,
   InputNo              varchar(50),
   ParamName            varchar(50),
   ShowName             varchar(50),
   ParamType            varchar(50),
   ParamData            varchar(1000),
   DefaultValue         varchar(100),
   ParamElement         varchar(200),
   Remark               varchar(200),
   primary key (ID)
);

alter table reportparams comment 'reportparams';

/*==============================================================*/
/* Table: reports                                               */
/*==============================================================*/
create table reports
(
   ID                   int(11) not null auto_increment,
   ReportNum            varchar(50) not null,
   ReportName           varchar(50),
   ReportType           int(11) default 0,
   Remark               varchar(200),
   DataSource           varchar(4000),
   DsType               int(11) default 0,
   FileName             varchar(200),
   IsDelete             int(11) default 0,
   Status               int(11) default 0,
   CreateTime           datetime,
   primary key (ID)
);

alter table reports comment 'reports';

/*==============================================================*/
/* Table: returndetail                                          */
/*==============================================================*/
create table returndetail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                varchar(50) not null comment '唯一编号',
   OrderNum             varchar(50) not null comment '单据编号',
   ContractOrder        varchar(50) not null comment '关联单号',
   ProductName          varchar(100) comment '产品名称',
   BarCode              varchar(50) not null comment '条码编号',
   ProductNum           varchar(50) not null comment '产品唯一编号',
   BatchNum             varchar(50) comment '生产批次',
   LocalNum             varchar(50) not null comment '库位编号',
   StorageNum           varchar(50) comment '仓库编号',
   Num                  double not null default 0 comment '原出库数量或者进货数量',
   OutPrice             double default 0 comment '单价',
   Amount               double default 0 comment '总价',
   BackNum              double not null default 0 comment '退货数量',
   BackAmount           double not null default 0 comment '退货价格',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table returndetail comment '退货商品详细管理';

/*==============================================================*/
/* Table: returnorder                                           */
/*==============================================================*/
create table returnorder
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             varchar(50) not null comment '退货单编号',
   ReturnType           int(11) not null default 0 comment '退货类型 1  销售退货 2 采购退货',
   ProductType          int(11) not null default 0 comment '产品类型 1 原料 2 成品',
   StorageNum           varchar(50) not null comment '仓库编号',
   CusNum               varchar(50) not null comment '客户编号',
   CusName              varchar(100) not null comment '客户名',
   Contact              varchar(50) comment '联系人',
   Phone                varchar(50) comment '电话',
   Address              varchar(100) comment '地址',
   ContractOrder        varchar(50) not null comment '关联单号',
   Num                  double default 0 comment '退货总数量',
   Amount               double default 0 comment '退货涉及总金额',
   Weight               double default 0 comment '涉及总重量',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           varchar(50) comment '创建人',
   AuditUser            varchar(50) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            varchar(50) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         varchar(50) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        varchar(50) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               varchar(400) comment '退货单描述',
   primary key (ID)
);

alter table returnorder comment '退货管理';

/*==============================================================*/
/* Table: sequencenum                                           */
/*==============================================================*/
create table sequencenum
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SN                   varchar(50) comment '唯一编号',
   TabName              varchar(50) not null comment '表名',
   FirstType            int(11) not null default 0 comment '前缀类型',
   FirstRule            varchar(100) comment '前缀规则',
   FirstLength          int(11) default 0 comment '前缀长度',
   SecondType           int(11) default 0,
   SecondRule           varchar(100),
   SecondLength         int(11) default 0,
   ThirdType            int(11) default 0,
   ThirdRule            varchar(100),
   ThirdLength          int(11) default 0,
   FourType             int(11) default 0,
   FourRule             varchar(100),
   FourLength           int(11) default 0,
   JoinChar             varchar(10) comment '链接符',
   Sample               varchar(100) comment '样例',
   CurrentValue         varchar(100) comment '当前值',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table sequencenum comment 'sequencenum';

/*==============================================================*/
/* Table: storage                                               */
/*==============================================================*/
create table storage
(
   ID                   int(11) not null auto_increment comment '主键编号',
   StorageNum           varchar(20) not null comment '仓库编号',
   StorageName          varchar(50) comment '仓库名称',
   StorageType          int(11) not null default 0 comment '仓库类型 (1 原料仓库 2 成品仓库)',
   StorageLength        double not null default 0 comment '长度',
   Width                double not null default 0 comment '宽度',
   Height               double not null default 0 comment '高度',
   Action               varchar(200) comment '作用',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Status               int(11) not null default 0 comment '1 清空 2 半饱和 3 饱和',
   IsForbid             bool not null default 0 comment '禁用 启动 Bool值',
   IsDefault            int(11) not null default 0 comment '是否为默认值',
   CreateTime           datetime not null comment '创建时间',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table storage comment '仓库信息管理';

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
create table supplier
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SupNum               varchar(50) not null comment '供应商编号',
   SupName              varchar(50) not null comment '供应商名称',
   SupType              int(11) default 0 comment '供应商类型',
   Phone                varchar(50) comment '联系电话',
   Fax                  varchar(50) comment '传真',
   Email                varchar(30) comment '联系邮件',
   ContactName          varchar(20) comment '联系人名称',
   Address              varchar(100) comment '地址',
   CreateUser           varchar(50) comment '创建人',
   Description          text comment '供应商描述',
   ContractNum          varchar(50) comment '关联号',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table supplier comment '供应商管理';

/*==============================================================*/
/* Table: sysdepart                                             */
/*==============================================================*/
create table sysdepart
(
   ID                   int(11) not null auto_increment comment '主键编号',
   DepartNum            varchar(20) not null comment '部门编号',
   DepartName           varchar(20) not null comment '部门名称',
   ChildCount           int(11) not null default 0 comment '子部门数',
   ParentNum            varchar(20) comment '父级部门编号',
   DepartmentDepth      int(11) not null default 0 comment '深度',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '角色创建时间',
   primary key (ID)
);

alter table sysdepart comment '系统管理部门';

/*==============================================================*/
/* Table: sysrelation                                           */
/*==============================================================*/
create table sysrelation
(
   ID                   int(11) not null auto_increment comment '主键编号',
   RoleNum              varchar(20) not null comment '角色编号',
   ResNum               varchar(20) not null comment '资源名称',
   ResType              int(11) not null default 0 comment '资源类型',
   primary key (ID)
);

alter table sysrelation comment 'sysrelation';

/*==============================================================*/
/* Table: sysresource                                           */
/*==============================================================*/
create table sysresource
(
   ID                   int(11) not null auto_increment comment '主键编号',
   ResNum               varchar(20) not null comment '资源编号',
   ResName              varchar(20) not null comment '资源名称',
   ParentNum            varchar(20) comment '父类编号',
   ResourceDepth        int(11) not null default 0 comment '深度',
   ParentPath           varchar(100) comment '父亲路径',
   ChildCount           int(11) not null default 0 comment '子类个数',
   Sort                 int(11) not null default 0 comment '排序',
   IsHide               int(11) not null default 0 comment '是否隐藏',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Url                  varchar(200) not null comment '链接地址',
   CssName              varchar(15) not null comment '样式名称',
   CreateTime           datetime not null comment '创建时间',
   Depart               int(11) not null default 0 comment '资源位置[左侧公用资源,右侧权限资源,其他操作]',
   ResType              int(11) not null default 0 comment '资源类型[请求视图,对话框视图,ajax异步请求,操作请求]',
   UpdateTime           datetime not null comment '修改时间',
   CreateUser           varchar(20) comment '创建用户',
   UpdateUser           varchar(20) comment '修改用户',
   CreateIp             varchar(20) comment '创建IP',
   UpdateIp             varchar(20) comment '修改IP',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table sysresource comment 'sysresource';

/*==============================================================*/
/* Table: sysrole                                               */
/*==============================================================*/
create table sysrole
(
   ID                   int(11) not null auto_increment comment '主键编号',
   RoleNum              varchar(20) not null comment '角色编号',
   RoleName             varchar(20) not null comment '角色名称',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '角色创建时间',
   Remark               varchar(200) comment '备注',
   primary key (ID)
);

alter table sysrole comment '系统管理角色';

/*==============================================================*/
/* Table: tnum                                                  */
/*==============================================================*/
create table tnum
(
   ID                   int(11) not null auto_increment comment '主键编号',
   Num                  int(11) not null default 0 comment '流水号',
   MinNum               int(11) not null default 0 comment '最小值',
   MaxNum               int(11) not null default 0 comment '最大值',
   CreateDay            varchar(20) comment '日期',
   TabName              varchar(50) not null comment '表名',
   primary key (ID)
);

alter table tnum comment 'tnum';

