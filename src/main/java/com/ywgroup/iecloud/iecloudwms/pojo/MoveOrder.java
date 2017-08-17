package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class MoveOrder {
    private Integer id;

    private String ordernum;

    private Integer movetype;

    private Integer producttype;

    private String storagenum;

    private String contractorder;

    private Integer status;

    private Integer isdelete;

    private Double num;

    private Double amout;

    private Double weight;

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

    public MoveOrder(Integer id, String ordernum, Integer movetype, Integer producttype, String storagenum, String contractorder, Integer status, Integer isdelete, Double num, Double amout, Double weight, Date createtime, String createuser, String audituser, Date auditetime, String printuser, Date printtime, String reason, Integer operatetype, String equipmentnum, String equipmentcode, String remark) {
        this.id = id;
        this.ordernum = ordernum;
        this.movetype = movetype;
        this.producttype = producttype;
        this.storagenum = storagenum;
        this.contractorder = contractorder;
        this.status = status;
        this.isdelete = isdelete;
        this.num = num;
        this.amout = amout;
        this.weight = weight;
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

    public MoveOrder() {
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

    public Integer getMovetype() {
        return movetype;
    }

    public void setMovetype(Integer movetype) {
        this.movetype = movetype;
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

    public String getContractorder() {
        return contractorder;
    }

    public void setContractorder(String contractorder) {
        this.contractorder = contractorder == null ? null : contractorder.trim();
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

    public Double getAmout() {
        return amout;
    }

    public void setAmout(Double amout) {
        this.amout = amout;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
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