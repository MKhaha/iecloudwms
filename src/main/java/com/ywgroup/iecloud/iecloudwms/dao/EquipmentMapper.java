package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.Equipment;

public interface EquipmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Equipment record);

    int insertSelective(Equipment record);

    Equipment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Equipment record);

    int updateByPrimaryKey(Equipment record);
}