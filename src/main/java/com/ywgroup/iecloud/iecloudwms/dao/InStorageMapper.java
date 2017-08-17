package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.InStorage;

public interface InStorageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InStorage record);

    int insertSelective(InStorage record);

    InStorage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InStorage record);

    int updateByPrimaryKey(InStorage record);
}