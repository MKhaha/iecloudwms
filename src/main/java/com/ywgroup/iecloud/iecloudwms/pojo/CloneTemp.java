package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class CloneTemp {
    private Integer cloneid;

    private String ordernum;

    private Integer id;

    private String sn;

    private String storagenum;

    private String storagename;

    private String localnum;

    private String localname;

    private Integer localtype;

    private String productnum;

    private String barcode;

    private String productname;

    private String batchnum;

    private Double num;

    private Date createtime;

    private String createuser;

    private String createname;

    private String remark;

    public CloneTemp(Integer cloneid, String ordernum, Integer id, String sn, String storagenum, String storagename, String localnum, String localname, Integer localtype, String productnum, String barcode, String productname, String batchnum, Double num, Date createtime, String createuser, String createname, String remark) {
        this.cloneid = cloneid;
        this.ordernum = ordernum;
        this.id = id;
        this.sn = sn;
        this.storagenum = storagenum;
        this.storagename = storagename;
        this.localnum = localnum;
        this.localname = localname;
        this.localtype = localtype;
        this.productnum = productnum;
        this.barcode = barcode;
        this.productname = productname;
        this.batchnum = batchnum;
        this.num = num;
        this.createtime = createtime;
        this.createuser = createuser;
        this.createname = createname;
        this.remark = remark;
    }

    public CloneTemp() {
        super();
    }

    public Integer getCloneid() {
        return cloneid;
    }

    public void setCloneid(Integer cloneid) {
        this.cloneid = cloneid;
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum == null ? null : ordernum.trim();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn == null ? null : sn.trim();
    }

    public String getStoragenum() {
        return storagenum;
    }

    public void setStoragenum(String storagenum) {
        this.storagenum = storagenum == null ? null : storagenum.trim();
    }

    public String getStoragename() {
        return storagename;
    }

    public void setStoragename(String storagename) {
        this.storagename = storagename == null ? null : storagename.trim();
    }

    public String getLocalnum() {
        return localnum;
    }

    public void setLocalnum(String localnum) {
        this.localnum = localnum == null ? null : localnum.trim();
    }

    public String getLocalname() {
        return localname;
    }

    public void setLocalname(String localname) {
        this.localname = localname == null ? null : localname.trim();
    }

    public Integer getLocaltype() {
        return localtype;
    }

    public void setLocaltype(Integer localtype) {
        this.localtype = localtype;
    }

    public String getProductnum() {
        return productnum;
    }

    public void setProductnum(String productnum) {
        this.productnum = productnum == null ? null : productnum.trim();
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode == null ? null : barcode.trim();
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getBatchnum() {
        return batchnum;
    }

    public void setBatchnum(String batchnum) {
        this.batchnum = batchnum == null ? null : batchnum.trim();
    }

    public Double getNum() {
        return num;
    }

    public void setNum(Double num) {
        this.num = num;
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

    public String getCreatename() {
        return createname;
    }

    public void setCreatename(String createname) {
        this.createname = createname == null ? null : createname.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}