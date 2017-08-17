package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class SystemDepartment {
    private Integer id;

    private String departnum;

    private String departname;

    private Integer childcount;

    private String parentnum;

    private Integer departmentdepth;

    private Integer isdelete;

    private Date createtime;

    public SystemDepartment(Integer id, String departnum, String departname, Integer childcount, String parentnum, Integer departmentdepth, Integer isdelete, Date createtime) {
        this.id = id;
        this.departnum = departnum;
        this.departname = departname;
        this.childcount = childcount;
        this.parentnum = parentnum;
        this.departmentdepth = departmentdepth;
        this.isdelete = isdelete;
        this.createtime = createtime;
    }

    public SystemDepartment() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDepartnum() {
        return departnum;
    }

    public void setDepartnum(String departnum) {
        this.departnum = departnum == null ? null : departnum.trim();
    }

    public String getDepartname() {
        return departname;
    }

    public void setDepartname(String departname) {
        this.departname = departname == null ? null : departname.trim();
    }

    public Integer getChildcount() {
        return childcount;
    }

    public void setChildcount(Integer childcount) {
        this.childcount = childcount;
    }

    public String getParentnum() {
        return parentnum;
    }

    public void setParentnum(String parentnum) {
        this.parentnum = parentnum == null ? null : parentnum.trim();
    }

    public Integer getDepartmentdepth() {
        return departmentdepth;
    }

    public void setDepartmentdepth(Integer departmentdepth) {
        this.departmentdepth = departmentdepth;
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