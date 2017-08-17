package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.InventoryBook;

public interface InventoryBookMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InventoryBook record);

    int insertSelective(InventoryBook record);

    InventoryBook selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InventoryBook record);

    int updateByPrimaryKey(InventoryBook record);
}