package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Administrator {
    private Integer id;

    private String username;

    private String password;

    private String usercode;

    private String realname;

    private String email;

    private String mobile;

    private String phone;

    private Date createtime;

    private String createip;

    private String createuser;

    private Integer logincount;

    private String picture;

    private Date updatetime;

    private Integer isdelete;

    private Integer status;

    private String departnum;

    private String parentcode;

    private String rolenum;

    private String remark;

    public Administrator(Integer id, String username, String password, String usercode, String realname, String email, String mobile, String phone, Date createtime, String createip, String createuser, Integer logincount, String picture, Date updatetime, Integer isdelete, Integer status, String departnum, String parentcode, String rolenum, String remark) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.usercode = usercode;
        this.realname = realname;
        this.email = email;
        this.mobile = mobile;
        this.phone = phone;
        this.createtime = createtime;
        this.createip = createip;
        this.createuser = createuser;
        this.logincount = logincount;
        this.picture = picture;
        this.updatetime = updatetime;
        this.isdelete = isdelete;
        this.status = status;
        this.departnum = departnum;
        this.parentcode = parentcode;
        this.rolenum = rolenum;
        this.remark = remark;
    }

    public Administrator() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode == null ? null : usercode.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getCreateip() {
        return createip;
    }

    public void setCreateip(String createip) {
        this.createip = createip == null ? null : createip.trim();
    }

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser == null ? null : createuser.trim();
    }

    public Integer getLogincount() {
        return logincount;
    }

    public void setLogincount(Integer logincount) {
        this.logincount = logincount;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
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

    public String getDepartnum() {
        return departnum;
    }

    public void setDepartnum(String departnum) {
        this.departnum = departnum == null ? null : departnum.trim();
    }

    public String getParentcode() {
        return parentcode;
    }

    public void setParentcode(String parentcode) {
        this.parentcode = parentcode == null ? null : parentcode.trim();
    }

    public String getRolenum() {
        return rolenum;
    }

    public void setRolenum(String rolenum) {
        this.rolenum = rolenum == null ? null : rolenum.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}