package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class InventoryBook {
    private Integer id;

    private String productnum;

    private String barcode;

    private String productname;

    private String batchnum;

    private Double num;

    private Integer inventorytype;

    private String contactorder;

    private String fromlocalnum;

    private String tolocalnum;

    private String storenum;

    private Date createtime;

    private String createuser;

    public InventoryBook(Integer id, String productnum, String barcode, String productname, String batchnum, Double num, Integer inventorytype, String contactorder, String fromlocalnum, String tolocalnum, String storenum, Date createtime, String createuser) {
        this.id = id;
        this.productnum = productnum;
        this.barcode = barcode;
        this.productname = productname;
        this.batchnum = batchnum;
        this.num = num;
        this.inventorytype = inventorytype;
        this.contactorder = contactorder;
        this.fromlocalnum = fromlocalnum;
        this.tolocalnum = tolocalnum;
        this.storenum = storenum;
        this.createtime = createtime;
        this.createuser = createuser;
    }

    public InventoryBook() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getInventorytype() {
        return inventorytype;
    }

    public void setInventorytype(Integer inventorytype) {
        this.inventorytype = inventorytype;
    }

    public String getContactorder() {
        return contactorder;
    }

    public void setContactorder(String contactorder) {
        this.contactorder = contactorder == null ? null : contactorder.trim();
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

    public String getStorenum() {
        return storenum;
    }

    public void setStorenum(String storenum) {
        this.storenum = storenum == null ? null : storenum.trim();
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
}