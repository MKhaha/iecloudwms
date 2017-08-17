package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class CheckData {
    private Integer id;

    private String ordernum;

    private String localnum;

    private String localname;

    private String storagenum;

    private String productnum;

    private String barcode;

    private String productname;

    private String batchnum;

    private Double localqty;

    private Double firstqty;

    private Double secondqty;

    private Double difqty;

    private String firstuser;

    private String seconduser;

    private Date createtime;

    public CheckData(Integer id, String ordernum, String localnum, String localname, String storagenum, String productnum, String barcode, String productname, String batchnum, Double localqty, Double firstqty, Double secondqty, Double difqty, String firstuser, String seconduser, Date createtime) {
        this.id = id;
        this.ordernum = ordernum;
        this.localnum = localnum;
        this.localname = localname;
        this.storagenum = storagenum;
        this.productnum = productnum;
        this.barcode = barcode;
        this.productname = productname;
        this.batchnum = batchnum;
        this.localqty = localqty;
        this.firstqty = firstqty;
        this.secondqty = secondqty;
        this.difqty = difqty;
        this.firstuser = firstuser;
        this.seconduser = seconduser;
        this.createtime = createtime;
    }

    public CheckData() {
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

    public String getStoragenum() {
        return storagenum;
    }

    public void setStoragenum(String storagenum) {
        this.storagenum = storagenum == null ? null : storagenum.trim();
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

    public Double getLocalqty() {
        return localqty;
    }

    public void setLocalqty(Double localqty) {
        this.localqty = localqty;
    }

    public Double getFirstqty() {
        return firstqty;
    }

    public void setFirstqty(Double firstqty) {
        this.firstqty = firstqty;
    }

    public Double getSecondqty() {
        return secondqty;
    }

    public void setSecondqty(Double secondqty) {
        this.secondqty = secondqty;
    }

    public Double getDifqty() {
        return difqty;
    }

    public void setDifqty(Double difqty) {
        this.difqty = difqty;
    }

    public String getFirstuser() {
        return firstuser;
    }

    public void setFirstuser(String firstuser) {
        this.firstuser = firstuser == null ? null : firstuser.trim();
    }

    public String getSeconduser() {
        return seconduser;
    }

    public void setSeconduser(String seconduser) {
        this.seconduser = seconduser == null ? null : seconduser.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}