package com.ywgroup.iecloud.iecloudwms.pojo;

public class SystemRoleResourceRelation {
    private Integer id;

    private String rolenum;

    private String resnum;

    private Integer restype;

    public SystemRoleResourceRelation(Integer id, String rolenum, String resnum, Integer restype) {
        this.id = id;
        this.rolenum = rolenum;
        this.resnum = resnum;
        this.restype = restype;
    }

    public SystemRoleResourceRelation() {
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

    public String getResnum() {
        return resnum;
    }

    public void setResnum(String resnum) {
        this.resnum = resnum == null ? null : resnum.trim();
    }

    public Integer getRestype() {
        return restype;
    }

    public void setRestype(Integer restype) {
        this.restype = restype;
    }
}