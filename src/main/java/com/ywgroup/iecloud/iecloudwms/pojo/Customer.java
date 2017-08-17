package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Customer {
    private Integer id;

    private String cusnum;

    private String cusname;

    private String phone;

    private String email;

    private String fax;

    private String address;

    private Integer custype;

    private Integer isdelete;

    private Date createtime;

    private String createuser;

    private String remark;

    public Customer(Integer id, String cusnum, String cusname, String phone, String email, String fax, String address, Integer custype, Integer isdelete, Date createtime, String createuser, String remark) {
        this.id = id;
        this.cusnum = cusnum;
        this.cusname = cusname;
        this.phone = phone;
        this.email = email;
        this.fax = fax;
        this.address = address;
        this.custype = custype;
        this.isdelete = isdelete;
        this.createtime = createtime;
        this.createuser = createuser;
        this.remark = remark;
    }

    public Customer() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax == null ? null : fax.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getCustype() {
        return custype;
    }

    public void setCustype(Integer custype) {
        this.custype = custype;
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