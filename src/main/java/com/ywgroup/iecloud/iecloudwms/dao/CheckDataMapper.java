package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.CheckData;

public interface CheckDataMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CheckData record);

    int insertSelective(CheckData record);

    CheckData selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CheckData record);

    int updateByPrimaryKey(CheckData record);
}