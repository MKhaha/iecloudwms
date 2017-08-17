package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Product {
    private Integer id;

    private String snnum;

    private String barcode;

    private String productname;

    private Double num;

    private Double minnum;

    private Double maxnum;

    private String unitnum;

    private String unitname;

    private String catenum;

    private String catename;

    private String productsize;

    private String color;

    private Double inprice;

    private Double outprice;

    private Double avgprice;

    private Double netweight;

    private Double grossweight;

    private String picurl;

    private Integer isdelete;

    private Date createtime;

    private String createuser;

    private String storagenum;

    private String defaultlocal;

    private String cusnum;

    private String cusname;

    private String display;

    public Product(Integer id, String snnum, String barcode, String productname, Double num, Double minnum, Double maxnum, String unitnum, String unitname, String catenum, String catename, String productsize, String color, Double inprice, Double outprice, Double avgprice, Double netweight, Double grossweight, String picurl, Integer isdelete, Date createtime, String createuser, String storagenum, String defaultlocal, String cusnum, String cusname, String display) {
        this.id = id;
        this.snnum = snnum;
        this.barcode = barcode;
        this.productname = productname;
        this.num = num;
        this.minnum = minnum;
        this.maxnum = maxnum;
        this.unitnum = unitnum;
        this.unitname = unitname;
        this.catenum = catenum;
        this.catename = catename;
        this.productsize = productsize;
        this.color = color;
        this.inprice = inprice;
        this.outprice = outprice;
        this.avgprice = avgprice;
        this.netweight = netweight;
        this.grossweight = grossweight;
        this.picurl = picurl;
        this.isdelete = isdelete;
        this.createtime = createtime;
        this.createuser = createuser;
        this.storagenum = storagenum;
        this.defaultlocal = defaultlocal;
        this.cusnum = cusnum;
        this.cusname = cusname;
        this.display = display;
    }

    public Product() {
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

    public Double getNum() {
        return num;
    }

    public void setNum(Double num) {
        this.num = num;
    }

    public Double getMinnum() {
        return minnum;
    }

    public void setMinnum(Double minnum) {
        this.minnum = minnum;
    }

    public Double getMaxnum() {
        return maxnum;
    }

    public void setMaxnum(Double maxnum) {
        this.maxnum = maxnum;
    }

    public String getUnitnum() {
        return unitnum;
    }

    public void setUnitnum(String unitnum) {
        this.unitnum = unitnum == null ? null : unitnum.trim();
    }

    public String getUnitname() {
        return unitname;
    }

    public void setUnitname(String unitname) {
        this.unitname = unitname == null ? null : unitname.trim();
    }

    public String getCatenum() {
        return catenum;
    }

    public void setCatenum(String catenum) {
        this.catenum = catenum == null ? null : catenum.trim();
    }

    public String getCatename() {
        return catename;
    }

    public void setCatename(String catename) {
        this.catename = catename == null ? null : catename.trim();
    }

    public String getProductsize() {
        return productsize;
    }

    public void setProductsize(String productsize) {
        this.productsize = productsize == null ? null : productsize.trim();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public Double getInprice() {
        return inprice;
    }

    public void setInprice(Double inprice) {
        this.inprice = inprice;
    }

    public Double getOutprice() {
        return outprice;
    }

    public void setOutprice(Double outprice) {
        this.outprice = outprice;
    }

    public Double getAvgprice() {
        return avgprice;
    }

    public void setAvgprice(Double avgprice) {
        this.avgprice = avgprice;
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

    public String getPicurl() {
        return picurl;
    }

    public void setPicurl(String picurl) {
        this.picurl = picurl == null ? null : picurl.trim();
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

    public String getStoragenum() {
        return storagenum;
    }

    public void setStoragenum(String storagenum) {
        this.storagenum = storagenum == null ? null : storagenum.trim();
    }

    public String getDefaultlocal() {
        return defaultlocal;
    }

    public void setDefaultlocal(String defaultlocal) {
        this.defaultlocal = defaultlocal == null ? null : defaultlocal.trim();
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

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display == null ? null : display.trim();
    }
}