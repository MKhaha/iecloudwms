package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class InStorage {
    private Integer id;

    private String ordernum;

    private Integer intype;

    private Integer producttype;

    private String storagenum;

    private String supnum;

    private String supname;

    private String contactname;

    private String phone;

    private String address;

    private String contractorder;

    private Integer contracttype;

    private Integer status;

    private Integer isdelete;

    private Double num;

    private Double amount;

    private Double netweight;

    private Double grossweight;

    private Date ordertime;

    private Date createtime;

    private String createuser;

    private String audituser;

    private Date auditetime;

    private String printuser;

    private Date printtime;

    private String storekeeper;

    private String reason;

    private Integer operatetype;

    private String equipmentnum;

    private String equipmentcode;

    private String remark;

    public InStorage(Integer id, String ordernum, Integer intype, Integer producttype, String storagenum, String supnum, String supname, String contactname, String phone, String address, String contractorder, Integer contracttype, Integer status, Integer isdelete, Double num, Double amount, Double netweight, Double grossweight, Date ordertime, Date createtime, String createuser, String audituser, Date auditetime, String printuser, Date printtime, String storekeeper, String reason, Integer operatetype, String equipmentnum, String equipmentcode, String remark) {
        this.id = id;
        this.ordernum = ordernum;
        this.intype = intype;
        this.producttype = producttype;
        this.storagenum = storagenum;
        this.supnum = supnum;
        this.supname = supname;
        this.contactname = contactname;
        this.phone = phone;
        this.address = address;
        this.contractorder = contractorder;
        this.contracttype = contracttype;
        this.status = status;
        this.isdelete = isdelete;
        this.num = num;
        this.amount = amount;
        this.netweight = netweight;
        this.grossweight = grossweight;
        this.ordertime = ordertime;
        this.createtime = createtime;
        this.createuser = createuser;
        this.audituser = audituser;
        this.auditetime = auditetime;
        this.printuser = printuser;
        this.printtime = printtime;
        this.storekeeper = storekeeper;
        this.reason = reason;
        this.operatetype = operatetype;
        this.equipmentnum = equipmentnum;
        this.equipmentcode = equipmentcode;
        this.remark = remark;
    }

    public InStorage() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum == null ? null : ordernum.trim();
    }

    public Integer getIntype() {
        return intype;
    }

    public void setIntype(Integer intype) {
        this.intype = intype;
    }

    public Integer getProducttype() {
        return producttype;
    }

    public void setProducttype(Integer producttype) {
        this.producttype = producttype;
    }

    public String getStoragenum() {
        return storagenum;
    }

    public void setStoragenum(String storagenum) {
        this.storagenum = storagenum == null ? null : storagenum.trim();
    }

    public String getSupnum() {
        return supnum;
    }

    public void setSupnum(String supnum) {
        this.supnum = supnum == null ? null : supnum.trim();
    }

    public String getSupname() {
        return supname;
    }

    public void setSupname(String supname) {
        this.supname = supname == null ? null : supname.trim();
    }

    public String getContactname() {
        return contactname;
    }

    public void setContactname(String contactname) {
        this.contactname = contactname == null ? null : contactname.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getContractorder() {
        return contractorder;
    }

    public void setContractorder(String contractorder) {
        this.contractorder = contractorder == null ? null : contractorder.trim();
    }

    public Integer getContracttype() {
        return contracttype;
    }

    public void setContracttype(Integer contracttype) {
        this.contracttype = contracttype;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public Double getNum() {
        return num;
    }

    public void setNum(Double num) {
        this.num = num;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getNetweight() {
        return netweight;
    }

    public void setNetweight(Double netweight) {
        this.netweight = netweight;
    }

    public Double getGrossweight() {
        return grossweight;
    }

    public void setGrossweight(Double grossweight) {
        this.grossweight = grossweight;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser == null ? null : createuser.trim();
    }

    public String getAudituser() {
        return audituser;
    }

    public void setAudituser(String audituser) {
        this.audituser = audituser == null ? null : audituser.trim();
    }

    public Date getAuditetime() {
        return auditetime;
    }

    public void setAuditetime(Date auditetime) {
        this.auditetime = auditetime;
    }

    public String getPrintuser() {
        return printuser;
    }

    public void setPrintuser(String printuser) {
        this.printuser = printuser == null ? null : printuser.trim();
    }

    public Date getPrinttime() {
        return printtime;
    }

    public void setPrinttime(Date printtime) {
        this.printtime = printtime;
    }

    public String getStorekeeper() {
        return storekeeper;
    }

    public void setStorekeeper(String storekeeper) {
        this.storekeeper = storekeeper == null ? null : storekeeper.trim();
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public Integer getOperatetype() {
        return operatetype;
    }

    public void setOperatetype(Integer operatetype) {
        this.operatetype = operatetype;
    }

    public String getEquipmentnum() {
        return equipmentnum;
    }

    public void setEquipmentnum(String equipmentnum) {
        this.equipmentnum = equipmentnum == null ? null : equipmentnum.trim();
    }

    public String getEquipmentcode() {
        return equipmentcode;
    }

    public void setEquipmentcode(String equipmentcode) {
        this.equipmentcode = equipmentcode == null ? null : equipmentcode.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}