package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.OutStorageDetail;

public interface OutStorageDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OutStorageDetail record);

    int insertSelective(OutStorageDetail record);

    OutStorageDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OutStorageDetail record);

    int updateByPrimaryKey(OutStorageDetail record);
}