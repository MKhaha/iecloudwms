package com.ywgroup.iecloud.iecloudwms.pojo;

public class ReportParams {
    private Integer id;

    private String paramnum;

    private String reportnum;

    private String inputno;

    private String paramname;

    private String showname;

    private String paramtype;

    private String paramdata;

    private String defaultvalue;

    private String paramelement;

    private String remark;

    public ReportParams(Integer id, String paramnum, String reportnum, String inputno, String paramname, String showname, String paramtype, String paramdata, String defaultvalue, String paramelement, String remark) {
        this.id = id;
        this.paramnum = paramnum;
        this.reportnum = reportnum;
        this.inputno = inputno;
        this.paramname = paramname;
        this.showname = showname;
        this.paramtype = paramtype;
        this.paramdata = paramdata;
        this.defaultvalue = defaultvalue;
        this.paramelement = paramelement;
        this.remark = remark;
    }

    public ReportParams() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getParamnum() {
        return paramnum;
    }

    public void setParamnum(String paramnum) {
        this.paramnum = paramnum == null ? null : paramnum.trim();
    }

    public String getReportnum() {
        return reportnum;
    }

    public void setReportnum(String reportnum) {
        this.reportnum = reportnum == null ? null : reportnum.trim();
    }

    public String getInputno() {
        return inputno;
    }

    public void setInputno(String inputno) {
        this.inputno = inputno == null ? null : inputno.trim();
    }

    public String getParamname() {
        return paramname;
    }

    public void setParamname(String paramname) {
        this.paramname = paramname == null ? null : paramname.trim();
    }

    public String getShowname() {
        return showname;
    }

    public void setShowname(String showname) {
        this.showname = showname == null ? null : showname.trim();
    }

    public String getParamtype() {
        return paramtype;
    }

    public void setParamtype(String paramtype) {
        this.paramtype = paramtype == null ? null : paramtype.trim();
    }

    public String getParamdata() {
        return paramdata;
    }

    public void setParamdata(String paramdata) {
        this.paramdata = paramdata == null ? null : paramdata.trim();
    }

    public String getDefaultvalue() {
        return defaultvalue;
    }

    public void setDefaultvalue(String defaultvalue) {
        this.defaultvalue = defaultvalue == null ? null : defaultvalue.trim();
    }

    public String getParamelement() {
        return paramelement;
    }

    public void setParamelement(String paramelement) {
        this.paramelement = paramelement == null ? null : paramelement.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}