package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Reports {
    private Integer id;

    private String reportnum;

    private String reportname;

    private Integer reporttype;

    private String remark;

    private String datasource;

    private Integer dstype;

    private String filename;

    private Integer isdelete;

    private Integer status;

    private Date createtime;

    public Reports(Integer id, String reportnum, String reportname, Integer reporttype, String remark, String datasource, Integer dstype, String filename, Integer isdelete, Integer status, Date createtime) {
        this.id = id;
        this.reportnum = reportnum;
        this.reportname = reportname;
        this.reporttype = reporttype;
        this.remark = remark;
        this.datasource = datasource;
        this.dstype = dstype;
        this.filename = filename;
        this.isdelete = isdelete;
        this.status = status;
        this.createtime = createtime;
    }

    public Reports() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReportnum() {
        return reportnum;
    }

    public void setReportnum(String reportnum) {
        this.reportnum = reportnum == null ? null : reportnum.trim();
    }

    public String getReportname() {
        return reportname;
    }

    public void setReportname(String reportname) {
        this.reportname = reportname == null ? null : reportname.trim();
    }

    public Integer getReporttype() {
        return reporttype;
    }

    public void setReporttype(Integer reporttype) {
        this.reporttype = reporttype;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getDatasource() {
        return datasource;
    }

    public void setDatasource(String datasource) {
        this.datasource = datasource == null ? null : datasource.trim();
    }

    public Integer getDstype() {
        return dstype;
    }

    public void setDstype(Integer dstype) {
        this.dstype = dstype;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename == null ? null : filename.trim();
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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}