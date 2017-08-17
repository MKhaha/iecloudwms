package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class CheckStockInformation {
    private Integer id;

    private String ordernum;

    private String storagenum;

    private String targetnum;

    private Date createtime;

    public CheckStockInformation(Integer id, String ordernum, String storagenum, String targetnum, Date createtime) {
        this.id = id;
        this.ordernum = ordernum;
        this.storagenum = storagenum;
        this.targetnum = targetnum;
        this.createtime = createtime;
    }

    public CheckStockInformation() {
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

    public String getStoragenum() {
        return storagenum;
    }

    public void setStoragenum(String storagenum) {
        this.storagenum = storagenum == null ? null : storagenum.trim();
    }

    public String getTargetnum() {
        return targetnum;
    }

    public void setTargetnum(String targetnum) {
        this.targetnum = targetnum == null ? null : targetnum.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}