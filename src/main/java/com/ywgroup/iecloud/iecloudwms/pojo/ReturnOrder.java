package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class ReturnOrder {
    private Integer id;

    private String ordernum;

    private Integer returntype;

    private Integer producttype;

    private String storagenum;

    private String cusnum;

    private String cusname;

    private String contact;

    private String phone;

    private String address;

    private String contractorder;

    private Double num;

    private Double amount;

    private Double weight;

    private Integer status;

    private Integer isdelete;

    private Date createtime;

    private String createuser;

    private String audituser;

    private Date auditetime;

    private String printuser;

    private Date printtime;

    private String reason;

    private Integer operatetype;

    private String equipmentnum;

    private String equipmentcode;

    private String remark;

    public ReturnOrder(Integer id, String ordernum, Integer returntype, Integer producttype, String storagenum, String cusnum, String cusname, String contact, String phone, String address, String contractorder, Double num, Double amount, Double weight, Integer status, Integer isdelete, Date createtime, String createuser, String audituser, Date auditetime, String printuser, Date printtime, String reason, Integer operatetype, String equipmentnum, String equipmentcode, String remark) {
        this.id = id;
        this.ordernum = ordernum;
        this.returntype = returntype;
        this.producttype = producttype;
        this.storagenum = storagenum;
        this.cusnum = cusnum;
        this.cusname = cusname;
        this.contact = contact;
        this.phone = phone;
        this.address = address;
        this.contractorder = contractorder;
        this.num = num;
        this.amount = amount;
        this.weight = weight;
        this.status = status;
        this.isdelete = isdelete;
        this.createtime = createtime;
        this.createuser = createuser;
        this.audituser = audituser;
        this.auditetime = auditetime;
        this.printuser = printuser;
        this.printtime = printtime;
        this.reason = reason;
        this.operatetype = operatetype;
        this.equipmentnum = equipmentnum;
        this.equipmentcode = equipmentcode;
        this.remark = remark;
    }

    public ReturnOrder() {
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

    public Integer getReturntype() {
        return returntype;
    }

    public void setReturntype(Integer returntype) {
        this.returntype = returntype;
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

    public String getCusnum() {
        return cusnum;
    }

    public void setCusnum(String cusnum) {
        this.cusnum = cusnum == null ? null : cusnum.trim();
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname == null ? null : cusname.trim();
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
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

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
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