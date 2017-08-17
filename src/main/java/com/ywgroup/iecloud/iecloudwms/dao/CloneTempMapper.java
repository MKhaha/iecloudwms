package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.CloneTemp;

public interface CloneTempMapper {
    int deleteByPrimaryKey(Integer cloneid);

    int insert(CloneTemp record);

    int insertSelective(CloneTemp record);

    CloneTemp selectByPrimaryKey(Integer cloneid);

    int updateByPrimaryKeySelective(CloneTemp record);

    int updateByPrimaryKey(CloneTemp record);
}