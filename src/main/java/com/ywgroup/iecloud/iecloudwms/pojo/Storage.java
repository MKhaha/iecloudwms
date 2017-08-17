package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Storage {
    private Integer id;

    private String storagenum;

    private String storagename;

    private Integer storagetype;

    private Double storagelength;

    private Double width;

    private Double height;

    private String action;

    private Integer isdelete;

    private Integer status;

    private Boolean isforbid;

    private Integer isdefault;

    private Date createtime;

    private String remark;

    public Storage(Integer id, String storagenum, String storagename, Integer storagetype, Double storagelength, Double width, Double height, String action, Integer isdelete, Integer status, Boolean isforbid, Integer isdefault, Date createtime, String remark) {
        this.id = id;
        this.storagenum = storagenum;
        this.storagename = storagename;
        this.storagetype = storagetype;
        this.storagelength = storagelength;
        this.width = width;
        this.height = height;
        this.action = action;
        this.isdelete = isdelete;
        this.status = status;
        this.isforbid = isforbid;
        this.isdefault = isdefault;
        this.createtime = createtime;
        this.remark = remark;
    }

    public Storage() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getStoragetype() {
        return storagetype;
    }

    public void setStoragetype(Integer storagetype) {
        this.storagetype = storagetype;
    }

    public Double getStoragelength() {
        return storagelength;
    }

    public void setStoragelength(Double storagelength) {
        this.storagelength = storagelength;
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

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action == null ? null : action.trim();
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}