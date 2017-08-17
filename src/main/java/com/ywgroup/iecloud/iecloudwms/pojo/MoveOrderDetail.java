package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class MoveOrderDetail {
    private Integer id;

    private String snnum;

    private String ordernum;

    private String productname;

    private String barcode;

    private String productnum;

    private String batchnum;

    private Double num;

    private Double inprice;

    private Double amout;

    private Integer ispick;

    private Double realnum;

    private Date createtime;

    private String storagenum;

    private String fromlocalnum;

    private String tolocalnum;

    public MoveOrderDetail(Integer id, String snnum, String ordernum, String productname, String barcode, String productnum, String batchnum, Double num, Double inprice, Double amout, Integer ispick, Double realnum, Date createtime, String storagenum, String fromlocalnum, String tolocalnum) {
        this.id = id;
        this.snnum = snnum;
        this.ordernum = ordernum;
        this.productname = productname;
        this.barcode = barcode;
        this.productnum = productnum;
        this.batchnum = batchnum;
        this.num = num;
        this.inprice = inprice;
        this.amout = amout;
        this.ispick = ispick;
        this.realnum = realnum;
        this.createtime = createtime;
        this.storagenum = storagenum;
        this.fromlocalnum = fromlocalnum;
        this.tolocalnum = tolocalnum;
    }

    public MoveOrderDetail() {
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

    public Double getInprice() {
        return inprice;
    }

    public void setInprice(Double inprice) {
        this.inprice = inprice;
    }

    public Double getAmout() {
        return amout;
    }

    public void setAmout(Double amout) {
        this.amout = amout;
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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getStoragenum() {
        return storagenum;
    }

    public void setStoragenum(String storagenum) {
        this.storagenum = storagenum == null ? null : storagenum.trim();
    }

    public String getFromlocalnum() {
        return fromlocalnum;
    }

    public void setFromlocalnum(String fromlocalnum) {
        this.fromlocalnum = fromlocalnum == null ? null : fromlocalnum.trim();
    }

    public String getTolocalnum() {
        return tolocalnum;
    }

    public void setTolocalnum(String tolocalnum) {
        this.tolocalnum = tolocalnum == null ? null : tolocalnum.trim();
    }
}