package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class ProductWithBLOBs extends Product {
    private String description;

    private String remark;

    public ProductWithBLOBs(Integer id, String snnum, String barcode, String productname, Double num, Double minnum, Double maxnum, String unitnum, String unitname, String catenum, String catename, String productsize, String color, Double inprice, Double outprice, Double avgprice, Double netweight, Double grossweight, String picurl, Integer isdelete, Date createtime, String createuser, String storagenum, String defaultlocal, String cusnum, String cusname, String display, String description, String remark) {
        super(id, snnum, barcode, productname, num, minnum, maxnum, unitnum, unitname, catenum, catename, productsize, color, inprice, outprice, avgprice, netweight, grossweight, picurl, isdelete, createtime, createuser, storagenum, defaultlocal, cusnum, cusname, display);
        this.description = description;
        this.remark = remark;
    }

    public ProductWithBLOBs() {
        super();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}