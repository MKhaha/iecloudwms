package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class ReturnDetail {
    private Integer id;

    private String snnum;

    private String ordernum;

    private String contractorder;

    private String productname;

    private String barcode;

    private String productnum;

    private String batchnum;

    private String localnum;

    private String storagenum;

    private Double num;

    private Double outprice;

    private Double amount;

    private Double backnum;

    private Double backamount;

    private Date createtime;

    public ReturnDetail(Integer id, String snnum, String ordernum, String contractorder, String productname, String barcode, String productnum, String batchnum, String localnum, String storagenum, Double num, Double outprice, Double amount, Double backnum, Double backamount, Date createtime) {
        this.id = id;
        this.snnum = snnum;
        this.ordernum = ordernum;
        this.contractorder = contractorder;
        this.productname = productname;
        this.barcode = barcode;
        this.productnum = productnum;
        this.batchnum = batchnum;
        this.localnum = localnum;
        this.storagenum = storagenum;
        this.num = num;
        this.outprice = outprice;
        this.amount = amount;
        this.backnum = backnum;
        this.backamount = backamount;
        this.createtime = createtime;
    }

    public ReturnDetail() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSnnum() {
        return snnum;
    }

    public void setSnnum(String snnum) {
        this.snnum = snnum == null ? null : snnum.trim();
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum == null ? null : ordernum.trim();
    }

    public String getContractorder() {
        return contractorder;
    }

    public void setContractorder(String contractorder) {
        this.contractorder = contractorder == null ? null : contractorder.trim();
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode == null ? null : barcode.trim();
    }

    public String getProductnum() {
        return productnum;
    }

    public void setProductnum(String productnum) {
        this.productnum = productnum == null ? null : productnum.trim();
    }

    public String getBatchnum() {
        return batchnum;
    }

    public void setBatchnum(String batchnum) {
        this.batchnum = batchnum == null ? null : batchnum.trim();
    }

    public String getLocalnum() {
        return localnum;
    }

    public void setLocalnum(String localnum) {
        this.localnum = localnum == null ? null : localnum.trim();
    }

    public String getStoragenum() {
        return storagenum;
    }

    public void setStoragenum(String storagenum) {
        this.storagenum = storagenum == null ? null : storagenum.trim();
    }

    public Double getNum() {
        return num;
    }

    public void setNum(Double num) {
        this.num = num;
    }

    public Double getOutprice() {
        return outprice;
    }

    public void setOutprice(Double outprice) {
        this.outprice = outprice;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getBacknum() {
        return backnum;
    }

    public void setBacknum(Double backnum) {
        this.backnum = backnum;
    }

    public Double getBackamount() {
        return backamount;
    }

    public void setBackamount(Double backamount) {
        this.backamount = backamount;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}