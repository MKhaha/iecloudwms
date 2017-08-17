package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Supplier {
    private Integer id;

    private String supnum;

    private String supname;

    private Integer suptype;

    private String phone;

    private String fax;

    private String email;

    private String contactname;

    private String address;

    private String createuser;

    private String contractnum;

    private Integer isdelete;

    private Date createtime;

    private String description;

    public Supplier(Integer id, String supnum, String supname, Integer suptype, String phone, String fax, String email, String contactname, String address, String createuser, String contractnum, Integer isdelete, Date createtime, String description) {
        this.id = id;
        this.supnum = supnum;
        this.supname = supname;
        this.suptype = suptype;
        this.phone = phone;
        this.fax = fax;
        this.email = email;
        this.contactname = contactname;
        this.address = address;
        this.createuser = createuser;
        this.contractnum = contractnum;
        this.isdelete = isdelete;
        this.createtime = createtime;
        this.description = description;
    }

    public Supplier() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSupnum() {
        return supnum;
    }

    public void setSupnum(String supnum) {
        this.supnum = supnum == null ? null : supnum.trim();
    }

    public String getSupname() {
        return supname;
    }

    public void setSupname(String supname) {
        this.supname = supname == null ? null : supname.trim();
    }

    public Integer getSuptype() {
        return suptype;
    }

    public void setSuptype(Integer suptype) {
        this.suptype = suptype;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax == null ? null : fax.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getContactname() {
        return contactname;
    }

    public void setContactname(String contactname) {
        this.contactname = contactname == null ? null : contactname.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser == null ? null : createuser.trim();
    }

    public String getContractnum() {
        return contractnum;
    }

    public void setContractnum(String contractnum) {
        this.contractnum = contractnum == null ? null : contractnum.trim();
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}