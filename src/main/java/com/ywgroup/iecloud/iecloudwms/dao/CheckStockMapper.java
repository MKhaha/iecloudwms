package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.CheckStock;

public interface CheckStockMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CheckStock record);

    int insertSelective(CheckStock record);

    CheckStock selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CheckStock record);

    int updateByPrimaryKey(CheckStock record);
}