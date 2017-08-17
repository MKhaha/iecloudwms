package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.CloneHistory;

public interface CloneHistoryMapper {
    int deleteByPrimaryKey(Integer cloneid);

    int insert(CloneHistory record);

    int insertSelective(CloneHistory record);

    CloneHistory selectByPrimaryKey(Integer cloneid);

    int updateByPrimaryKeySelective(CloneHistory record);

    int updateByPrimaryKey(CloneHistory record);
}