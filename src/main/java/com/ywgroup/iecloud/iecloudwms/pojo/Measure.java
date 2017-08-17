package com.ywgroup.iecloud.iecloudwms.pojo;

public class Measure {
    private Integer id;

    private String sn;

    private String measurenum;

    private String measurename;

    public Measure(Integer id, String sn, String measurenum, String measurename) {
        this.id = id;
        this.sn = sn;
        this.measurenum = measurenum;
        this.measurename = measurename;
    }

    public Measure() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn == null ? null : sn.trim();
    }

    public String getMeasurenum() {
        return measurenum;
    }

    public void setMeasurenum(String measurenum) {
        this.measurenum = measurenum == null ? null : measurenum.trim();
    }

    public String getMeasurename() {
        return measurename;
    }

    public void setMeasurename(String measurename) {
        this.measurename = measurename == null ? null : measurename.trim();
    }
}