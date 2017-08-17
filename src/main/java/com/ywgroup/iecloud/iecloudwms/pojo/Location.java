package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Location {
    private Integer id;

    private String localnum;

    private String localbarcode;

    private String localname;

    private String storagenum;

    private Integer storagetype;

    private Integer localtype;

    private String rack;

    private Double racklength;

    private Double width;

    private Double height;

    private Double x;

    private Double y;

    private Double z;

    private String unitnum;

    private String unitname;

    private String remark;

    private Boolean isforbid;

    private Integer isdefault;

    private Integer isdelete;

    private Date createtime;

    public Location(Integer id, String localnum, String localbarcode, String localname, String storagenum, Integer storagetype, Integer localtype, String rack, Double racklength, Double width, Double height, Double x, Double y, Double z, String unitnum, String unitname, String remark, Boolean isforbid, Integer isdefault, Integer isdelete, Date createtime) {
        this.id = id;
        this.localnum = localnum;
        this.localbarcode = localbarcode;
        this.localname = localname;
        this.storagenum = storagenum;
        this.storagetype = storagetype;
        this.localtype = localtype;
        this.rack = rack;
        this.racklength = racklength;
        this.width = width;
        this.height = height;
        this.x = x;
        this.y = y;
        this.z = z;
        this.unitnum = unitnum;
        this.unitname = unitname;
        this.remark = remark;
        this.isforbid = isforbid;
        this.isdefault = isdefault;
        this.isdelete = isdelete;
        this.createtime = createtime;
    }

    public Location() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLocalnum() {
        return localnum;
    }

    public void setLocalnum(String localnum) {
        this.localnum = localnum == null ? null : localnum.trim();
    }

    public String getLocalbarcode() {
        return localbarcode;
    }

    public void setLocalbarcode(String localbarcode) {
        this.localbarcode = localbarcode == null ? null : localbarcode.trim();
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

    public Integer getStoragetype() {
        return storagetype;
    }

    public void setStoragetype(Integer storagetype) {
        this.storagetype = storagetype;
    }

    public Integer getLocaltype() {
        return localtype;
    }

    public void setLocaltype(Integer localtype) {
        this.localtype = localtype;
    }

    public String getRack() {
        return rack;
    }

    public void setRack(String rack) {
        this.rack = rack == null ? null : rack.trim();
    }

    public Double getRacklength() {
        return racklength;
    }

    public void setRacklength(Double racklength) {
        this.racklength = racklength;
    }

    public Double getWidth() {
        return width;
    }

    public void setWidth(Double width) {
        this.width = width;
    }

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public Double getX() {
        return x;
    }

    public void setX(Double x) {
        this.x = x;
    }

    public Double getY() {
        return y;
    }

    public void setY(Double y) {
        this.y = y;
    }

    public Double getZ() {
        return z;
    }

    public void setZ(Double z) {
        this.z = z;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Boolean getIsforbid() {
        return isforbid;
    }

    public void setIsforbid(Boolean isforbid) {
        this.isforbid = isforbid;
    }

    public Integer getIsdefault() {
        return isdefault;
    }

    public void setIsdefault(Integer isdefault) {
        this.isdefault = isdefault;
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
}