package com.ywgroup.iecloud.iecloudwms.pojo;

public class SequenceNum {
    private Integer id;

    private String sn;

    private String tabname;

    private Integer firsttype;

    private String firstrule;

    private Integer firstlength;

    private Integer secondtype;

    private String secondrule;

    private Integer secondlength;

    private Integer thirdtype;

    private String thirdrule;

    private Integer thirdlength;

    private Integer fourtype;

    private String fourrule;

    private Integer fourlength;

    private String joinchar;

    private String sample;

    private String currentvalue;

    private String remark;

    public SequenceNum(Integer id, String sn, String tabname, Integer firsttype, String firstrule, Integer firstlength, Integer secondtype, String secondrule, Integer secondlength, Integer thirdtype, String thirdrule, Integer thirdlength, Integer fourtype, String fourrule, Integer fourlength, String joinchar, String sample, String currentvalue, String remark) {
        this.id = id;
        this.sn = sn;
        this.tabname = tabname;
        this.firsttype = firsttype;
        this.firstrule = firstrule;
        this.firstlength = firstlength;
        this.secondtype = secondtype;
        this.secondrule = secondrule;
        this.secondlength = secondlength;
        this.thirdtype = thirdtype;
        this.thirdrule = thirdrule;
        this.thirdlength = thirdlength;
        this.fourtype = fourtype;
        this.fourrule = fourrule;
        this.fourlength = fourlength;
        this.joinchar = joinchar;
        this.sample = sample;
        this.currentvalue = currentvalue;
        this.remark = remark;
    }

    public SequenceNum() {
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

    public String getTabname() {
        return tabname;
    }

    public void setTabname(String tabname) {
        this.tabname = tabname == null ? null : tabname.trim();
    }

    public Integer getFirsttype() {
        return firsttype;
    }

    public void setFirsttype(Integer firsttype) {
        this.firsttype = firsttype;
    }

    public String getFirstrule() {
        return firstrule;
    }

    public void setFirstrule(String firstrule) {
        this.firstrule = firstrule == null ? null : firstrule.trim();
    }

    public Integer getFirstlength() {
        return firstlength;
    }

    public void setFirstlength(Integer firstlength) {
        this.firstlength = firstlength;
    }

    public Integer getSecondtype() {
        return secondtype;
    }

    public void setSecondtype(Integer secondtype) {
        this.secondtype = secondtype;
    }

    public String getSecondrule() {
        return secondrule;
    }

    public void setSecondrule(String secondrule) {
        this.secondrule = secondrule == null ? null : secondrule.trim();
    }

    public Integer getSecondlength() {
        return secondlength;
    }

    public void setSecondlength(Integer secondlength) {
        this.secondlength = secondlength;
    }

    public Integer getThirdtype() {
        return thirdtype;
    }

    public void setThirdtype(Integer thirdtype) {
        this.thirdtype = thirdtype;
    }

    public String getThirdrule() {
        return thirdrule;
    }

    public void setThirdrule(String thirdrule) {
        this.thirdrule = thirdrule == null ? null : thirdrule.trim();
    }

    public Integer getThirdlength() {
        return thirdlength;
    }

    public void setThirdlength(Integer thirdlength) {
        this.thirdlength = thirdlength;
    }

    public Integer getFourtype() {
        return fourtype;
    }

    public void setFourtype(Integer fourtype) {
        this.fourtype = fourtype;
    }

    public String getFourrule() {
        return fourrule;
    }

    public void setFourrule(String fourrule) {
        this.fourrule = fourrule == null ? null : fourrule.trim();
    }

    public Integer getFourlength() {
        return fourlength;
    }

    public void setFourlength(Integer fourlength) {
        this.fourlength = fourlength;
    }

    public String getJoinchar() {
        return joinchar;
    }

    public void setJoinchar(String joinchar) {
        this.joinchar = joinchar == null ? null : joinchar.trim();
    }

    public String getSample() {
        return sample;
    }

    public void setSample(String sample) {
        this.sample = sample == null ? null : sample.trim();
    }

    public String getCurrentvalue() {
        return currentvalue;
    }

    public void setCurrentvalue(String currentvalue) {
        this.currentvalue = currentvalue == null ? null : currentvalue.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}