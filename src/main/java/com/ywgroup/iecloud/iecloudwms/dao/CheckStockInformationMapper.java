package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.CheckStockInformation;

public interface CheckStockInformationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CheckStockInformation record);

    int insertSelective(CheckStockInformation record);

    CheckStockInformation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CheckStockInformation record);

    int updateByPrimaryKey(CheckStockInformation record);
}