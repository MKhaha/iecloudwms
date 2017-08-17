package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class InStorageDetail {
    private Integer id;

    private String snnum;

    private String ordernum;

    private String productname;

    private String barcode;

    private String productnum;

    private String batchnum;

    private Double num;

    private Integer ispick;

    private Double realnum;

    private Double inprice;

    private Double amount;

    private String contractorder;

    private Date createtime;

    private String localnum;

    private String storagenum;

    public InStorageDetail(Integer id, String snnum, String ordernum, String productname, String barcode, String productnum, String batchnum, Double num, Integer ispick, Double realnum, Double inprice, Double amount, String contractorder, Date createtime, String localnum, String storagenum) {
        this.id = id;
        this.snnum = snnum;
        this.ordernum = ordernum;
        this.productname = productname;
        this.barcode = barcode;
        this.productnum = productnum;
        this.batchnum = batchnum;
        this.num = num;
        this.ispick = ispick;
        this.realnum = realnum;
        this.inprice = inprice;
        this.amount = amount;
        this.contractorder = contractorder;
        this.createtime = createtime;
        this.localnum = localnum;
        this.storagenum = storagenum;
    }

    public InStorageDetail() {
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

    public Double getNum() {
        return num;
    }

    public void setNum(Double num) {
        this.num = num;
    }

    public Integer getIspick() {
        return ispick;
    }

    public void setIspick(Integer ispick) {
        this.ispick = ispick;
    }

    public Double getRealnum() {
        return realnum;
    }

    public void setRealnum(Double realnum) {
        this.realnum = realnum;
    }

    public Double getInprice() {
        return inprice;
    }

    public void setInprice(Double inprice) {
        this.inprice = inprice;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getContractorder() {
        return contractorder;
    }

    public void setContractorder(String contractorder) {
        this.contractorder = contractorder == null ? null : contractorder.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
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
}