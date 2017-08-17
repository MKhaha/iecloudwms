package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class SystemResource {
    private Integer id;

    private String resnum;

    private String resname;

    private String parentnum;

    private Integer resourcedepth;

    private String parentpath;

    private Integer childcount;

    private Integer sort;

    private Integer ishide;

    private Integer isdelete;

    private String url;

    private String cssname;

    private Date createtime;

    private Integer depart;

    private Integer restype;

    private Date updatetime;

    private String createuser;

    private String updateuser;

    private String createip;

    private String updateip;

    private String remark;

    public SystemResource(Integer id, String resnum, String resname, String parentnum, Integer resourcedepth, String parentpath, Integer childcount, Integer sort, Integer ishide, Integer isdelete, String url, String cssname, Date createtime, Integer depart, Integer restype, Date updatetime, String createuser, String updateuser, String createip, String updateip, String remark) {
        this.id = id;
        this.resnum = resnum;
        this.resname = resname;
        this.parentnum = parentnum;
        this.resourcedepth = resourcedepth;
        this.parentpath = parentpath;
        this.childcount = childcount;
        this.sort = sort;
        this.ishide = ishide;
        this.isdelete = isdelete;
        this.url = url;
        this.cssname = cssname;
        this.createtime = createtime;
        this.depart = depart;
        this.restype = restype;
        this.updatetime = updatetime;
        this.createuser = createuser;
        this.updateuser = updateuser;
        this.createip = createip;
        this.updateip = updateip;
        this.remark = remark;
    }

    public SystemResource() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getResnum() {
        return resnum;
    }

    public void setResnum(String resnum) {
        this.resnum = resnum == null ? null : resnum.trim();
    }

    public String getResname() {
        return resname;
    }

    public void setResname(String resname) {
        this.resname = resname == null ? null : resname.trim();
    }

    public String getParentnum() {
        return parentnum;
    }

    public void setParentnum(String parentnum) {
        this.parentnum = parentnum == null ? null : parentnum.trim();
    }

    public Integer getResourcedepth() {
        return resourcedepth;
    }

    public void setResourcedepth(Integer resourcedepth) {
        this.resourcedepth = resourcedepth;
    }

    public String getParentpath() {
        return parentpath;
    }

    public void setParentpath(String parentpath) {
        this.parentpath = parentpath == null ? null : parentpath.trim();
    }

    public Integer getChildcount() {
        return childcount;
    }

    public void setChildcount(Integer childcount) {
        this.childcount = childcount;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getIshide() {
        return ishide;
    }

    public void setIshide(Integer ishide) {
        this.ishide = ishide;
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getCssname() {
        return cssname;
    }

    public void setCssname(String cssname) {
        this.cssname = cssname == null ? null : cssname.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getDepart() {
        return depart;
    }

    public void setDepart(Integer depart) {
        this.depart = depart;
    }

    public Integer getRestype() {
        return restype;
    }

    public void setRestype(Integer restype) {
        this.restype = restype;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser == null ? null : createuser.trim();
    }

    public String getUpdateuser() {
        return updateuser;
    }

    public void setUpdateuser(String updateuser) {
        this.updateuser = updateuser == null ? null : updateuser.trim();
    }

    public String getCreateip() {
        return createip;
    }

    public void setCreateip(String createip) {
        this.createip = createip == null ? null : createip.trim();
    }

    public String getUpdateip() {
        return updateip;
    }

    public void setUpdateip(String updateip) {
        this.updateip = updateip == null ? null : updateip.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}