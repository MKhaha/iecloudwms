package com.ywgroup.iecloud.iecloudwms.pojo;

public class MeasureRelation {
    private Integer id;

    private String sn;

    private String measuresource;

    private String measuretarget;

    private Double rate;

    public MeasureRelation(Integer id, String sn, String measuresource, String measuretarget, Double rate) {
        this.id = id;
        this.sn = sn;
        this.measuresource = measuresource;
        this.measuretarget = measuretarget;
        this.rate = rate;
    }

    public MeasureRelation() {
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

    public String getMeasuresource() {
        return measuresource;
    }

    public void setMeasuresource(String measuresource) {
        this.measuresource = measuresource == null ? null : measuresource.trim();
    }

    public String getMeasuretarget() {
        return measuretarget;
    }

    public void setMeasuretarget(String measuretarget) {
        this.measuretarget = measuretarget == null ? null : measuretarget.trim();
    }

    public Double getRate() {
        return rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }
}