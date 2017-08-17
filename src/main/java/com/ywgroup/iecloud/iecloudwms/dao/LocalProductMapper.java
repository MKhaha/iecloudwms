package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.LocalProduct;

public interface LocalProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LocalProduct record);

    int insertSelective(LocalProduct record);

    LocalProduct selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LocalProduct record);

    int updateByPrimaryKey(LocalProduct record);
}