package com.ywgroup.iecloud.iecloudwms.pojo;

import java.util.Date;

public class Equipment {
    private Integer id;

    private String snnum;

    private String equipmentname;

    private String equipmentnum;

    private Boolean isimpower;

    private String flag;

    private Integer isdelete;

    private Integer status;

    private String createuser;

    private Date createtime;

    private String remark;

    public Equipment(Integer id, String snnum, String equipmentname, String equipmentnum, Boolean isimpower, String flag, Integer isdelete, Integer status, String createuser, Date createtime, String remark) {
        this.id = id;
        this.snnum = snnum;
        this.equipmentname = equipmentname;
        this.equipmentnum = equipmentnum;
        this.isimpower = isimpower;
        this.flag = flag;
        this.isdelete = isdelete;
        this.status = status;
        this.createuser = createuser;
        this.createtime = createtime;
        this.remark = remark;
    }

    public Equipment() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSnnum() {
        return snnum;
    }

    public void setSnnum(String snnum) {
        this.snnum = snnum == null ? null : snnum.trim();
    }

    public String getEquipmentname() {
        return equipmentname;
    }

    public void setEquipmentname(String equipmentname) {
        this.equipmentname = equipmentname == null ? null : equipmentname.trim();
    }

    public String getEquipmentnum() {
        return equipmentnum;
    }

    public void setEquipmentnum(String equipmentnum) {
        this.equipmentnum = equipmentnum == null ? null : equipmentnum.trim();
    }

    public Boolean getIsimpower() {
        return isimpower;
    }

    public void setIsimpower(Boolean isimpower) {
        this.isimpower = isimpower;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
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

    public String getCreateuser() {
        return createuser;
    }

    public void setCreateuser(String createuser) {
        this.createuser = createuser == null ? null : createuser.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}