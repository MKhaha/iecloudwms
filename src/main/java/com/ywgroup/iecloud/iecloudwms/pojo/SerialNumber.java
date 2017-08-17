package com.ywgroup.iecloud.iecloudwms.pojo;

public class SerialNumber {
    private Integer id;

    private Integer num;

    private Integer minnum;

    private Integer maxnum;

    private String createday;

    private String tabname;

    public SerialNumber(Integer id, Integer num, Integer minnum, Integer maxnum, String createday, String tabname) {
        this.id = id;
        this.num = num;
        this.minnum = minnum;
        this.maxnum = maxnum;
        this.createday = createday;
        this.tabname = tabname;
    }

    public SerialNumber() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getMinnum() {
        return minnum;
    }

    public void setMinnum(Integer minnum) {
        this.minnum = minnum;
    }

    public Integer getMaxnum() {
        return maxnum;
    }

    public void setMaxnum(Integer maxnum) {
        this.maxnum = maxnum;
    }

    public String getCreateday() {
        return createday;
    }

    public void setCreateday(String createday) {
        this.createday = createday == null ? null : createday.trim();
    }

    public String getTabname() {
        return tabname;
    }

    public void setTabname(String tabname) {
        this.tabname = tabname == null ? null : tabname.trim();
    }
}