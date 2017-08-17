package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class OutStorageDetail {
    private Integer id;

    private String snnum;

    private String ordernum;

    private String productname;

    private String barcode;

    private String productnum;

    private String batchnum;

    private String localnum;

    private String storagenum;

    private Double num;

    private Integer ispick;

    private Double realnum;

    private Double outprice;

    private Double amount;

    private String contractorder;

    private String contractsn;

    private Date createtime;

    public OutStorageDetail(Integer id, String snnum, String ordernum, String productname, String barcode, String productnum, String batchnum, String localnum, String storagenum, Double num, Integer ispick, Double realnum, Double outprice, Double amount, String contractorder, String contractsn, Date createtime) {
        this.id = id;
        this.snnum = snnum;
        this.ordernum = ordernum;
        this.productname = productname;
        this.barcode = barcode;
        this.productnum = productnum;
        this.batchnum = batchnum;
        this.localnum = localnum;
        this.storagenum = storagenum;
        this.num = num;
        this.ispick = ispick;
        this.realnum = realnum;
        this.outprice = outprice;
        this.amount = amount;
        this.contractorder = contractorder;
        this.contractsn = contractsn;
        this.createtime = createtime;
    }

    public OutStorageDetail() {
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

    public String getContractorder() {
        return contractorder;
    }

    public void setContractorder(String contractorder) {
        this.contractorder = contractorder == null ? null : contractorder.trim();
    }

    public String getContractsn() {
        return contractsn;
    }

    public void setContractsn(String contractsn) {
        this.contractsn = contractsn == null ? null : contractsn.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}