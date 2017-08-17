package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.OutStorage;

public interface OutStorageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OutStorage record);

    int insertSelective(OutStorage record);

    OutStorage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OutStorage record);

    int updateByPrimaryKey(OutStorage record);
}