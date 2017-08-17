package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class SystemRole {
    private Integer id;

    private String rolenum;

    private String rolename;

    private Integer isdelete;

    private Date createtime;

    private String remark;

    public SystemRole(Integer id, String rolenum, String rolename, Integer isdelete, Date createtime, String remark) {
        this.id = id;
        this.rolenum = rolenum;
        this.rolename = rolename;
        this.isdelete = isdelete;
        this.createtime = createtime;
        this.remark = remark;
    }

    public SystemRole() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRolenum() {
        return rolenum;
    }

    public void setRolenum(String rolenum) {
        this.rolenum = rolenum == null ? null : rolenum.trim();
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}