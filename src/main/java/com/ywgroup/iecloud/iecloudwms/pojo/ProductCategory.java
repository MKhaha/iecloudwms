package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class ProductCategory {
    private Integer id;

    private String catenum;

    private String catename;

    private Integer isdelete;

    private Date createtime;

    private String createuser;

    private String remark;

    public ProductCategory(Integer id, String catenum, String catename, Integer isdelete, Date createtime, String createuser, String remark) {
        this.id = id;
        this.catenum = catenum;
        this.catename = catename;
        this.isdelete = isdelete;
        this.createtime = createtime;
        this.createuser = createuser;
        this.remark = remark;
    }

    public ProductCategory() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCatenum() {
        return catenum;
    }

    public void setCatenum(String catenum) {
        this.catenum = catenum == null ? null : catenum.trim();
    }

    public String getCatename() {
        return catename;
    }

    public void setCatename(String catename) {
        this.catename = catename == null ? null : catename.trim();
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