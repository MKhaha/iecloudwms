package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.InStorageDetail;

public interface InStorageDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InStorageDetail record);

    int insertSelective(InStorageDetail record);

    InStorageDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InStorageDetail record);

    int updateByPrimaryKey(InStorageDetail record);
}