package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class CustomerAddress {
    private Integer id;

    private String snnum;

    private String cusnum;

    private String contact;

    private String phone;

    private String address;

    private Integer isdelete;

    private Date createtime;

    private String createuser;

    private String remark;

    public CustomerAddress(Integer id, String snnum, String cusnum, String contact, String phone, String address, Integer isdelete, Date createtime, String createuser, String remark) {
        this.id = id;
        this.snnum = snnum;
        this.cusnum = cusnum;
        this.contact = contact;
        this.phone = phone;
        this.address = address;
        this.isdelete = isdelete;
        this.createtime = createtime;
        this.createuser = createuser;
        this.remark = remark;
    }

    public CustomerAddress() {
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

    public String getCusnum() {
        return cusnum;
    }

    public void setCusnum(String cusnum) {
        this.cusnum = cusnum == null ? null : cusnum.trim();
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact == null ? null : contact.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}