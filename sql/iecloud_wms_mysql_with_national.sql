/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/16 15:44:07                           */
/*==============================================================*/


drop table if exists administrator;

drop table if exists bad_report;

drop table if exists bad_report_detail;

drop table if exists check_data;

drop table if exists check_stock;

drop table if exists check_stock_information;

drop table if exists clone_history;

drop table if exists clone_temp;

drop table if exists customer;

drop table if exists customer_address;

drop table if exists equipment;

drop table if exists in_storage;

drop table if exists in_storage_detail;

drop table if exists inventory_book;

drop table if exists local_product;

drop table if exists location;

drop table if exists measure;

drop table if exists measure_relation;

drop table if exists move_order;

drop table if exists move_order_detail;

drop table if exists out_storage;

drop table if exists out_storage_detail;

drop table if exists product;

drop table if exists product_category;

drop table if exists report_params;

drop table if exists reports;

drop table if exists return_detail;

drop table if exists return_order;

drop table if exists sequence_num;

drop table if exists serial_number;

drop table if exists storage;

drop table if exists supplier;

drop table if exists system_department;

drop table if exists system_resource;

drop table if exists system_role;

drop table if exists system_role_resource_relation;

/*==============================================================*/
/* Table: administrator                                         */
/*==============================================================*/
create table administrator
(
   ID                   int(11) not null auto_increment comment '主键编号',
   UserName             national varchar(20) not null comment '登录用户名',
   PassWord             national varchar(50) not null comment '登录密码',
   UserCode             national varchar(40) not null comment '用户编号',
   RealName             national varchar(20) not null comment '真实姓名',
   Email                national varchar(30) comment '用户邮件',
   Mobile               national varchar(11) comment '手机号码',
   Phone                national varchar(20) comment '固定电话',
   CreateTime           datetime not null comment '创建时间',
   CreateIp             national varchar(20) comment '创建IP',
   CreateUser           national varchar(15) comment '创建人',
   LoginCount           int(11) not null default 0 comment '登录次数',
   Picture              national varchar(30) comment '头像',
   UpdateTime           datetime not null comment '最后修改时间',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Status               int(11) not null default 0 comment '状态 0',
   DepartNum            national varchar(20) comment '部门编号',
   ParentCode           national varchar(40) not null comment '所属员工编号',
   RoleNum              national varchar(20) not null comment '角色编号',
   Remark               national varchar(20) comment '备注',
   primary key (ID)
);

alter table administrator comment '系统管理账户';

/*==============================================================*/
/* Table: bad_report                                            */
/*==============================================================*/
create table bad_report
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '入库单编号--唯一',
   BadType              int(11) not null default 0 comment '报损类型 1  损坏报损 2 丢失报损 ',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           national varchar(50) not null comment '仓库编号',
   ContractOrder        national varchar(50) not null comment '关联单号',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   Num                  double default 0 comment '总数量',
   Amount               double default 0 comment '涉及总金额',
   Weight               double default 0 comment '涉及总重量',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(20) comment '创建人',
   AuditUser            national varchar(20) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            national varchar(20) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               national varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         national varchar(20) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        national varchar(20) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               national varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table bad_report comment '报损管理';

/*==============================================================*/
/* Table: bad_report_detail                                     */
/*==============================================================*/
create table bad_report_detail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(50) not null comment '唯一编号',
   OrderNum             national varchar(50) not null comment '入库单编号 --移库单',
   ProductName          national varchar(100) comment '产品名称',
   BarCode              national varchar(50) not null comment '条码编号',
   ProductNum           national varchar(50) not null comment '产品唯一编码',
   BatchNum             national varchar(50) comment '生产批次',
   Num                  double not null default 0 comment '入库数量',
   InPrice              double default 0 comment '单品价格',
   Amount               double default 0 comment '涉及总价',
   CreateTime           datetime not null comment '创建时间',
   StorageNum           national varchar(20) comment '仓库编号',
   FromLocalNum         national varchar(20) comment '被转移库位编号',
   ToLocalNum           national varchar(20) comment '转移目标库位编号',
   primary key (ID)
);

alter table bad_report_detail comment '报损单详细';

/*==============================================================*/
/* Table: check_data                                            */
/*==============================================================*/
create table check_data
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '入库单编号',
   LocalNum             national varchar(50) comment '库位编号',
   LocalName            national varchar(50) comment '库位名称',
   StorageNum           national varchar(50) comment '仓库编号',
   ProductNum           national varchar(50) comment '产品唯一编号',
   BarCode              national varchar(50) comment '产品条码',
   ProductName          national varchar(50) comment '产品名称',
   BatchNum             national varchar(50) comment '管理批次',
   LocalQty             double default 0 comment '账面库存数',
   FirstQty             double default 0 comment '初盘数量',
   SecondQty            double default 0 comment '复盘数量',
   DifQty               double default 0 comment '盘差值',
   FirstUser            national varchar(50) comment '初盘人',
   SecondUser           national varchar(50) comment '复盘人',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table check_data comment '盘点差异表';

/*==============================================================*/
/* Table: check_stock                                           */
/*==============================================================*/
create table check_stock
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(20) not null comment '入库单编号',
   CheckType            int(11) not null default 0 comment '1 库位盘点 2 产品盘点',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           national varchar(50) not null comment '仓库编号',
   ContractOrder        national varchar(50) not null comment '关联单号',
   Status               int(11) not null default 0 comment '盘点单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   LocalQty             double not null default 0 comment '账面总数',
   CheckQty             double not null default 0 comment '盘点总数',
   IsDelete             int(11) not null default 0 comment '是否删除',
   IsComplete           int(11) not null default 0 comment '是否完成',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(20) comment '创建人',
   AuditUser            national varchar(20) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            national varchar(20) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               national varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         national varchar(20) comment '设备编号[所使用的设备编号]',
   EquipmentCode        national varchar(20) comment '设备条码[如果没有就直接设备编号]',
   Remark               national varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table check_stock comment '盘点管理';

/*==============================================================*/
/* Table: check_stock_information                               */
/*==============================================================*/
create table check_stock_information
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '入库单编号',
   StorageNum           national varchar(50) not null comment '仓库编号',
   TargetNum            national varchar(50) not null comment '目标对象编号(库位编号或者产品编号)',
   CreateTime           datetime comment '创建时间',
   primary key (ID)
);

alter table check_stock_information comment '盘点单与库位或者产品之间的关系';

/*==============================================================*/
/* Table: clone_history                                         */
/*==============================================================*/
create table clone_history
(
   CloneID              int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '入库单编号',
   ID                   int(11) not null default 0 comment '库存编号',
   Sn                   national varchar(50) not null comment '唯一编号',
   StorageNum           national varchar(50) comment '仓库编号',
   StorageName          national varchar(50) comment '仓库名称',
   LocalNum             national varchar(50) comment '库位编号',
   LocalName            national varchar(50) comment '库位名称',
   LocalType            int(11) default 0 comment '库位类型',
   ProductNum           national varchar(50) comment '产品唯一编号',
   BarCode              national varchar(50) comment '产品条码',
   ProductName          national varchar(200) comment '产品名称',
   BatchNum             national varchar(50) comment '管理批次',
   Num                  double not null default 0 comment '库存数量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(50) comment '创建用户编号',
   CreateName           national varchar(50) comment '创建人姓名',
   Remark               national varchar(200) comment '备注',
   primary key (CloneID)
);

alter table clone_history comment '盘点克隆历史表';

/*==============================================================*/
/* Table: clone_temp                                            */
/*==============================================================*/
create table clone_temp
(
   CloneID              int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '入库单编号',
   ID                   int(11) not null default 0 comment '库存编号',
   Sn                   national varchar(50) not null comment '唯一编号',
   StorageNum           national varchar(50) comment '仓库编号',
   StorageName          national varchar(50) comment '仓库名称',
   LocalNum             national varchar(50) comment '库位编号',
   LocalName            national varchar(50) comment '库位名称',
   LocalType            int(11) default 0 comment '库位类型',
   ProductNum           national varchar(50) comment '产品唯一编号',
   BarCode              national varchar(50) comment '产品条码',
   ProductName          national varchar(200) comment '产品名称',
   BatchNum             national varchar(50) comment '管理批次',
   Num                  double not null default 0 comment '库存数量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(50) comment '创建用户编号',
   CreateName           national varchar(50) comment '创建人姓名',
   Remark               national varchar(200) comment '备注',
   primary key (CloneID)
);

alter table clone_temp comment '盘点克隆临时表';

/*==============================================================*/
/* Table: customer                                              */
/*==============================================================*/
create table customer
(
   ID                   int(11) not null auto_increment comment '主键编号',
   CusNum               national varchar(20) not null comment '客户编号',
   CusName              national varchar(20) not null comment '客户名称',
   Phone                national varchar(20) comment '电话',
   Email                national varchar(30) comment '邮件',
   Fax                  national varchar(30) comment '传真',
   Address              national varchar(200) comment '地址',
   CusType              int(11) default 0 comment '客户类型',
   IsDelete             int(11) default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(20) comment '创建人',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table customer comment '客户管理';

/*==============================================================*/
/* Table: customer_address                                      */
/*==============================================================*/
create table customer_address
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(200) not null comment '收货单位编号',
   CusNum               national varchar(20) not null comment '客户编号',
   Contact              national varchar(200) comment '收货联系人',
   Phone                national varchar(20) comment '联系电话',
   Address              national varchar(200) not null comment '联系地址',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(20) comment '创建人',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table customer_address comment '客户收货单位';

/*==============================================================*/
/* Table: equipment                                             */
/*==============================================================*/
create table equipment
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(20) not null comment '设备编号',
   EquipmentName        national varchar(50) not null comment '设备名称',
   EquipmentNum         national varchar(20) not null comment '设备条码',
   IsImpower            bool not null default 0 comment '是否授权（是、否）',
   Flag                 national varchar(20) comment '授权标识符',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Status               int(11) not null default 0 comment '1 闲置 2 正在使用 3 报修 4 报损 5 遗失',
   CreateUser           national varchar(200) not null comment '操作人',
   CreateTime           datetime not null comment '创建时间',
   Remark               national varchar(400) comment '备注',
   primary key (ID)
);

alter table equipment comment '设备授权';

/*==============================================================*/
/* Table: in_storage                                            */
/*==============================================================*/
create table in_storage
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '入库单编号',
   InType               int(11) not null default 0 comment '入库类型 1  采购收货入库 2 销售退货入库 3 生产产品入库 4 领用退还入库 5 借货入库 6 借出还入',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           national varchar(50) not null comment '仓库编号',
   SupNum               national varchar(50) not null comment '供应商编号',
   SupName              national varchar(100) not null comment '供应商名称',
   ContactName          national varchar(100) comment '供应商联系人',
   Phone                national varchar(50) comment '供应商联系电话',
   Address              national varchar(100) comment '供应商地址',
   ContractOrder        national varchar(50) comment '关联单号',
   ContractType         int(11) not null default 0 comment '关联单号类型 0 无关联 1 采购 2 出库 3退货',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Num                  double default 0 comment '总数量',
   Amount               double not null default 0 comment '订单金额',
   NetWeight            double not null default 0 comment '净重',
   GrossWeight          double not null default 0 comment '毛重',
   OrderTime            datetime comment '制单时间',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(50) comment '创建人',
   AuditUser            national varchar(50) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            national varchar(50) comment '打印人',
   PrintTime            datetime comment '打印时间',
   StoreKeeper          national varchar(50) comment '库管员',
   Reason               national varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         national varchar(50) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        national varchar(50) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               national varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table in_storage comment '入库单管理';

/*==============================================================*/
/* Table: in_storage_detail                                     */
/*==============================================================*/
create table in_storage_detail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(50) not null comment '唯一编号',
   OrderNum             national varchar(50) not null comment '入库单编号',
   ProductName          national varchar(100) comment '产品名称',
   BarCode              national varchar(50) not null comment '条码编号',
   ProductNum           national varchar(50) not null comment '产品唯一编码',
   BatchNum             national varchar(50) comment '生产批次',
   Num                  double not null default 0 comment '入库数量',
   IsPick               int(11) not null default 0 comment '是否审核',
   RealNum              double not null default 0 comment '实际数量',
   InPrice              double not null default 0 comment '入库单价',
   Amount               double not null default 0 comment '金额',
   ContractOrder        national varchar(50) comment '关联单号',
   CreateTime           datetime not null comment '创建时间',
   LocalNum             national varchar(50) comment '库位编号',
   StorageNum           national varchar(50) comment '仓库编号',
   primary key (ID)
);

alter table in_storage_detail comment '入库单产品详细管理';

/*==============================================================*/
/* Table: inventory_book                                        */
/*==============================================================*/
create table inventory_book
(
   ID                   int(11) not null auto_increment comment '主键编号',
   ProductNum           national varchar(50) not null comment '产品唯一编号',
   BarCode              national varchar(50) not null comment '产品条码',
   ProductName          national varchar(50) not null comment '产品名称',
   BatchNum             national varchar(50) comment '批次',
   Num                  double not null default 0 comment '数量变化数量',
   InventoryType        int(11) not null default 0 comment '1 入库 2 出库 -3 移出 3 移入 -4 报损(移出) 4 报损(移入) 5 盘盈 6 盘亏  7退货',
   ContactOrder         national varchar(50) not null comment '关联订单号',
   FromLocalNum         national varchar(50) comment '原库位',
   ToLocalNum           national varchar(50) comment '目标库位',
   StoreNum             national varchar(50) comment '仓库编号',
   CreateTime           datetime comment '创建时间',
   CreateUser           national varchar(50) comment '操作人',
   primary key (ID)
);

alter table inventory_book comment '仓库库存记录变化台账：1 入库，2 出库，3 移库(移除) -3 移库(移入)，4 报损(移除) -4 报损(移入)，5';

/*==============================================================*/
/* Table: local_product                                         */
/*==============================================================*/
create table local_product
(
   ID                   int(11) not null auto_increment comment '主键编号',
   Sn                   national varchar(50) not null comment '唯一编号',
   StorageNum           national varchar(50) comment '仓库编号',
   StorageName          national varchar(50) comment '仓库名称',
   LocalNum             national varchar(50) comment '库位编号',
   LocalName            national varchar(50) comment '库位名称',
   LocalType            int(11) default 0 comment '库位类型',
   ProductNum           national varchar(50) comment '产品唯一编号',
   BarCode              national varchar(50) comment '产品条码',
   ProductName          national varchar(200) comment '产品名称',
   BatchNum             national varchar(50) comment '批次',
   Num                  double not null default 0 comment '库存数量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(50) comment '创建用户编号',
   CreateName           national varchar(50) comment '创建人姓名',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table local_product comment '库存管理';

/*==============================================================*/
/* Table: location                                              */
/*==============================================================*/
create table location
(
   ID                   int(11) not null auto_increment comment '主键编号',
   LocalNum             national varchar(20) not null comment '库位编号 唯一自动生成编号',
   LocalBarCode         national varchar(20) not null comment '库位条码',
   LocalName            national varchar(30) not null comment '库位名称',
   StorageNum           national varchar(20) not null comment '仓库编号',
   StorageType          int(11) not null default 0 comment '仓库类型 (1 原料仓库 2 成品仓库)',
   LocalType            int(11) not null default 0 comment '1 正式库区 2 待入库区 3 待检库区 4 待发库区 5 报损库区',
   Rack                 national varchar(100) comment '货架',
   RackLength           double not null default 0 comment '长度',
   Width                double not null default 0 comment '宽度',
   Height               double not null default 0 comment '高度',
   X                    double not null default 0 comment '坐标',
   Y                    double not null default 0 comment '坐标',
   Z                    double not null default 0 comment '坐标',
   UnitNum              national varchar(20) not null comment '单位编号',
   UnitName             national varchar(20) not null comment '单位名称',
   Remark               national varchar(4000) comment '描述',
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
   SN                   national varchar(50) not null comment '唯一编号',
   MeasureNum           national varchar(50) comment '单位编号',
   MeasureName          national varchar(50) comment '单位名称',
   primary key (ID)
);

alter table measure comment '单位管理';

/*==============================================================*/
/* Table: measure_relation                                      */
/*==============================================================*/
create table measure_relation
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SN                   national varchar(50) not null comment '唯一编号',
   MeasureSource        national varchar(50) comment '原单位',
   MeasureTarget        national varchar(50) comment '目标单位',
   Rate                 double default 0 comment '换算比例',
   primary key (ID)
);

alter table measure_relation comment '单位换算关系';

/*==============================================================*/
/* Table: move_order                                            */
/*==============================================================*/
create table move_order
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '入库单编号--唯一',
   MoveType             int(11) not null default 0 comment '移库类型 1  移库上架 2 仓库移货 3 报损移库',
   ProductType          int(11) not null default 0 comment '入库产品类型 1 原料 2 成品',
   StorageNum           national varchar(50) not null comment '仓库编号',
   ContractOrder        national varchar(50) not null comment '关联单号',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Num                  double not null default 0 comment '总数量',
   Amout                double default 0 comment '涉及金额',
   Weight               double default 0 comment '涉及总重量',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(20) comment '创建人',
   AuditUser            national varchar(20) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            national varchar(20) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               national varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         national varchar(20) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        national varchar(20) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               national varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table move_order comment '移库管理';

/*==============================================================*/
/* Table: move_order_detail                                     */
/*==============================================================*/
create table move_order_detail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(50) not null comment '唯一编号',
   OrderNum             national varchar(50) not null comment '入库单编号 --移库单',
   ProductName          national varchar(100) comment '产品名称',
   BarCode              national varchar(50) not null comment '条码编号',
   ProductNum           national varchar(50) not null comment '产品唯一编码',
   BatchNum             national varchar(50) comment '生产批次',
   Num                  double not null default 0 comment '移库数量',
   InPrice              double default 0 comment '单品价格',
   Amout                double default 0 comment '涉及总价',
   IsPick               int(11) not null default 0 comment '是否审核 Yes No	',
   RealNum              double not null default 0 comment '实际数量',
   CreateTime           datetime not null comment '创建时间',
   StorageNum           national varchar(50) comment '仓库编号',
   FromLocalNum         national varchar(50) comment '被转移库位编号',
   ToLocalNum           national varchar(50) comment '转移目标库位编号',
   primary key (ID)
);

alter table move_order_detail comment '移库单详细';

/*==============================================================*/
/* Table: out_storage                                           */
/*==============================================================*/
create table out_storage
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '出库单编号',
   OutType              int(11) not null default 0 comment '出库类型 1  采购退货出库 2 销售提货出库 3 领用出库 4 借货出库 5 借入还出 ',
   ProductType          int(11) not null default 0 comment '出库产品类型 1 原料 2 成品',
   StorageNum           national varchar(50) not null comment '仓库编号',
   CusNum               national varchar(50) not null comment '供应商编号',
   CusName              national varchar(100) not null comment '供应商名称',
   Contact              national varchar(50) comment '联系人',
   Phone                national varchar(50) comment '电话',
   Address              national varchar(100) comment '地址',
   ContractOrder        national varchar(50) not null comment '关联单号',
   Num                  double default 0 comment '总数量',
   Amount               double default 0 comment '涉及总金额',
   Weight               double default 0 comment '涉及总重量',
   SendDate             datetime not null comment '发货日期',
   Status               int(11) not null default 0 comment '出库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(50) comment '创建人',
   AuditUser            national varchar(50) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            national varchar(50) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               national varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         national varchar(50) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        national varchar(50) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               national varchar(400) comment '入库单描述',
   primary key (ID)
);

alter table out_storage comment '出库管理';

/*==============================================================*/
/* Table: out_storage_detail                                    */
/*==============================================================*/
create table out_storage_detail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(50) not null comment '唯一编号',
   OrderNum             national varchar(50) not null comment '出库单编号',
   ProductName          national varchar(100) comment '产品名称',
   BarCode              national varchar(50) not null comment '条码编号',
   ProductNum           national varchar(50) not null comment '产品唯一编号',
   BatchNum             national varchar(50) comment '生产批次',
   LocalNum             national varchar(50) not null comment '库位编号',
   StorageNum           national varchar(50) comment '仓库编号',
   Num                  double not null default 0 comment '入库数量',
   IsPick               int(11) not null default 0 comment '是否审核 Yes No',
   RealNum              double not null default 0 comment '实际数量',
   OutPrice             double default 0 comment '单价',
   Amount               double default 0 comment '总价',
   ContractOrder        national varchar(50) comment '关联单号',
   ContractSn           national varchar(50) comment '关联单号子项',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table out_storage_detail comment '出库商品详细管理';

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(50) not null comment '唯一编号',
   BarCode              national varchar(50) not null comment '条码编号',
   ProductName          national varchar(100) not null comment '产品名称',
   Num                  double not null default 0 comment '产品剩余数量',
   MinNum               double not null default 0 comment '预警值 下线',
   MaxNum               double not null default 0 comment '预警值 上线',
   UnitNum              national varchar(50) not null comment '单位枚举值',
   UnitName             national varchar(50) not null comment '数量单位',
   CateNum              national varchar(50) not null comment '原料类型编号',
   CateName             national varchar(50) comment '原料类型名称',
   ProductSize          national varchar(400) comment '产品规格',
   Color                national varchar(200) comment '颜色',
   InPrice              double not null default 0 comment '单件进价',
   OutPrice             double not null default 0 comment '单件出价',
   AvgPrice             double not null default 0 comment '平均价',
   NetWeight            double not null default 0 comment '单件净重',
   GrossWeight          double not null default 0 comment '单件毛重',
   Description          text comment '产品描述',
   PicUrl               national varchar(200) comment '图片链接地址',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(20) comment '创建人',
   StorageNum           national varchar(20) comment '存储仓库',
   DefaultLocal         national varchar(20) comment '默认库位',
   CusNum               national varchar(20) comment '供应商编号',
   CusName              national varchar(30) comment '供应商名称',
   Display              national varchar(50) comment '显示名称',
   Remark               text comment '备注',
   primary key (ID)
);

alter table product comment '成品管理';

/*==============================================================*/
/* Table: product_category                                      */
/*==============================================================*/
create table product_category
(
   ID                   int(11) not null auto_increment comment '主键编号',
   CateNum              national varchar(15) not null comment '原料类型编号',
   CateName             national varchar(50) comment '原料类型名称',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(20) comment '创建人',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table product_category comment '成品类别管理';

/*==============================================================*/
/* Table: report_params                                         */
/*==============================================================*/
create table report_params
(
   ID                   int(11) not null auto_increment comment '主键编号',
   ParamNum             national varchar(50) not null comment '参数编号',
   ReportNum            national varchar(50) not null comment '报表主键 唯一编号',
   InputNo              national varchar(50) comment '输入序号',
   ParamName            national varchar(50) comment '参数名称',
   ShowName             national varchar(50) comment '参数显示名称',
   ParamType            national varchar(50) comment '参数类型',
   ParamData            national varchar(1000) comment '参数可选值 JSON格式',
   DefaultValue         national varchar(100) comment '参数默认值',
   ParamElement         national varchar(200) comment '输入框元素',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table report_params comment 'report_params';

/*==============================================================*/
/* Table: reports                                               */
/*==============================================================*/
create table reports
(
   ID                   int(11) not null auto_increment comment '主键编号',
   ReportNum            national varchar(50) not null comment '报表主键 唯一编号',
   ReportName           national varchar(50) comment '报表名称',
   ReportType           int(11) default 0 comment '报表类型 1 单据 2 报表',
   Remark               national varchar(200) comment '备注',
   DataSource           national varchar(4000) comment '数据源',
   DsType               int(11) default 0 comment '数据源类型 --1 SQL语句 2 存储过程',
   FileName             national varchar(200) comment '报表格式文件',
   IsDelete             int(11) default 0 comment '是否删除',
   Status               int(11) default 0 comment '禁用启用',
   CreateTime           datetime comment '创建时间',
   primary key (ID)
);

alter table reports comment 'reports';

/*==============================================================*/
/* Table: return_detail                                         */
/*==============================================================*/
create table return_detail
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SnNum                national varchar(50) not null comment '唯一编号',
   OrderNum             national varchar(50) not null comment '单据编号',
   ContractOrder        national varchar(50) not null comment '关联单号',
   ProductName          national varchar(100) comment '产品名称',
   BarCode              national varchar(50) not null comment '条码编号',
   ProductNum           national varchar(50) not null comment '产品唯一编号',
   BatchNum             national varchar(50) comment '生产批次',
   LocalNum             national varchar(50) not null comment '库位编号',
   StorageNum           national varchar(50) comment '仓库编号',
   Num                  double not null default 0 comment '原出库数量或者进货数量',
   OutPrice             double default 0 comment '单价',
   Amount               double default 0 comment '总价',
   BackNum              double not null default 0 comment '退货数量',
   BackAmount           double not null default 0 comment '退货价格',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table return_detail comment '退货商品详细管理';

/*==============================================================*/
/* Table: return_order                                          */
/*==============================================================*/
create table return_order
(
   ID                   int(11) not null auto_increment comment '主键编号',
   OrderNum             national varchar(50) not null comment '退货单编号',
   ReturnType           int(11) not null default 0 comment '退货类型 1  销售退货 2 采购退货',
   ProductType          int(11) not null default 0 comment '产品类型 1 原料 2 成品',
   StorageNum           national varchar(50) not null comment '仓库编号',
   CusNum               national varchar(50) not null comment '客户编号',
   CusName              national varchar(100) not null comment '客户名',
   Contact              national varchar(50) comment '联系人',
   Phone                national varchar(50) comment '电话',
   Address              national varchar(100) comment '地址',
   ContractOrder        national varchar(50) not null comment '关联单号',
   Num                  double default 0 comment '退货总数量',
   Amount               double default 0 comment '退货涉及总金额',
   Weight               double default 0 comment '涉及总重量',
   Status               int(11) not null default 0 comment '入库单当前状态 1 待审核 2 审核通过 3 审核失败 ',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   CreateUser           national varchar(50) comment '创建人',
   AuditUser            national varchar(50) comment '审核人',
   AuditeTime           datetime comment '审核时间',
   PrintUser            national varchar(50) comment '打印人',
   PrintTime            datetime comment '打印时间',
   Reason               national varchar(400) comment '审核成功或者失败的原因',
   OperateType          int(11) not null default 0 comment '操作方式 1 电脑 2 PDA',
   EquipmentNum         national varchar(50) not null comment '设备编号[所使用的设备编号]',
   EquipmentCode        national varchar(50) not null comment '设备条码[如果没有就直接设备编号]',
   Remark               national varchar(400) comment '退货单描述',
   primary key (ID)
);

alter table return_order comment '退货管理';

/*==============================================================*/
/* Table: sequence_num                                          */
/*==============================================================*/
create table sequence_num
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SN                   national varchar(50) comment '唯一编号',
   TabName              national varchar(50) not null comment '表名',
   FirstType            int(11) not null default 0 comment '第一部分类型',
   FirstRule            national varchar(100) comment '第一部分规则',
   FirstLength          int(11) default 0 comment '第一部分长度',
   SecondType           int(11) default 0 comment '第二部分类型',
   SecondRule           national varchar(100) comment '第二部分规则',
   SecondLength         int(11) default 0 comment '第二部分长度',
   ThirdType            int(11) default 0 comment '第三部分类型',
   ThirdRule            national varchar(100) comment '第三部分规则',
   ThirdLength          int(11) default 0 comment '第三部分长度',
   FourType             int(11) default 0 comment '第四部分类型',
   FourRule             national varchar(100) comment '第四部分规则',
   FourLength           int(11) default 0 comment '第四部分长度',
   JoinChar             national varchar(10) comment '链接符',
   Sample               national varchar(100) comment '样例',
   CurrentValue         national varchar(100) comment '当前值',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table sequence_num comment '单号管理';

/*==============================================================*/
/* Table: serial_number                                         */
/*==============================================================*/
create table serial_number
(
   ID                   int(11) not null auto_increment comment '主键编号',
   Num                  int(11) not null default 0 comment '流水号',
   MinNum               int(11) not null default 0 comment '最小值',
   MaxNum               int(11) not null default 0 comment '最大值',
   CreateDay            national varchar(20) comment '日期',
   TabName              national varchar(50) not null comment '表名',
   primary key (ID)
);

alter table serial_number comment '流水号管理';

/*==============================================================*/
/* Table: storage                                               */
/*==============================================================*/
create table storage
(
   ID                   int(11) not null auto_increment comment '主键编号',
   StorageNum           national varchar(20) not null comment '仓库编号',
   StorageName          national varchar(50) comment '仓库名称',
   StorageType          int(11) not null default 0 comment '仓库类型 (1 原料仓库 2 成品仓库)',
   StorageLength        double not null default 0 comment '长度',
   Width                double not null default 0 comment '宽度',
   Height               double not null default 0 comment '高度',
   Action               national varchar(200) comment '作用',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Status               int(11) not null default 0 comment '1 清空 2 半饱和 3 饱和',
   IsForbid             bool not null default 0 comment '禁用 启动 Bool值',
   IsDefault            int(11) not null default 0 comment '是否为默认值',
   CreateTime           datetime not null comment '创建时间',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table storage comment '仓库信息管理';

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
create table supplier
(
   ID                   int(11) not null auto_increment comment '主键编号',
   SupNum               national varchar(50) not null comment '供应商编号',
   SupName              national varchar(50) not null comment '供应商名称',
   SupType              int(11) default 0 comment '供应商类型',
   Phone                national varchar(50) comment '联系电话',
   Fax                  national varchar(50) comment '传真',
   Email                national varchar(30) comment '联系邮件',
   ContactName          national varchar(20) comment '联系人名称',
   Address              national varchar(100) comment '地址',
   CreateUser           national varchar(50) comment '创建人',
   Description          text comment '供应商描述',
   ContractNum          national varchar(50) comment '关联号',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '创建时间',
   primary key (ID)
);

alter table supplier comment '供应商管理';

/*==============================================================*/
/* Table: system_department                                     */
/*==============================================================*/
create table system_department
(
   ID                   int(11) not null auto_increment comment '主键编号',
   DepartNum            national varchar(20) not null comment '部门编号',
   DepartName           national varchar(20) not null comment '部门名称',
   ChildCount           int(11) not null default 0 comment '子部门数',
   ParentNum            national varchar(20) comment '父级部门编号',
   DepartmentDepth      int(11) not null default 0 comment '深度',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '角色创建时间',
   primary key (ID)
);

alter table system_department comment '系统管理部门';

/*==============================================================*/
/* Table: system_resource                                       */
/*==============================================================*/
create table system_resource
(
   ID                   int(11) not null auto_increment comment '主键编号',
   ResNum               national varchar(20) not null comment '资源编号',
   ResName              national varchar(20) not null comment '资源名称',
   ParentNum            national varchar(20) comment '父类编号',
   ResourceDepth        int(11) not null default 0 comment '深度',
   ParentPath           national varchar(100) comment '父亲路径',
   ChildCount           int(11) not null default 0 comment '子类个数',
   Sort                 int(11) not null default 0 comment '排序',
   IsHide               int(11) not null default 0 comment '是否隐藏',
   IsDelete             int(11) not null default 0 comment '是否删除',
   Url                  national varchar(200) not null comment '链接地址',
   CssName              national varchar(15) not null comment '样式名称',
   CreateTime           datetime not null comment '创建时间',
   Depart               int(11) not null default 0 comment '资源位置[左侧公用资源,右侧权限资源,其他操作]',
   ResType              int(11) not null default 0 comment '资源类型[请求视图,对话框视图,ajax异步请求,操作请求]',
   UpdateTime           datetime not null comment '修改时间',
   CreateUser           national varchar(20) comment '创建用户',
   UpdateUser           national varchar(20) comment '修改用户',
   CreateIp             national varchar(20) comment '创建IP',
   UpdateIp             national varchar(20) comment '修改IP',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table system_resource comment 'system_resource';

/*==============================================================*/
/* Table: system_role                                           */
/*==============================================================*/
create table system_role
(
   ID                   int(11) not null auto_increment comment '主键编号',
   RoleNum              national varchar(20) not null comment '角色编号',
   RoleName             national varchar(20) not null comment '角色名称',
   IsDelete             int(11) not null default 0 comment '是否删除',
   CreateTime           datetime not null comment '角色创建时间',
   Remark               national varchar(200) comment '备注',
   primary key (ID)
);

alter table system_role comment '系统管理角色';

/*==============================================================*/
/* Table: system_role_resource_relation                         */
/*==============================================================*/
create table system_role_resource_relation
(
   ID                   int(11) not null auto_increment comment '主键编号',
   RoleNum              national varchar(20) not null comment '角色编号',
   ResNum               national varchar(20) not null comment '资源名称',
   ResType              int(11) not null default 0 comment '资源类型',
   primary key (ID)
);

alter table system_role_resource_relation comment 'system_role_resource_relation';

