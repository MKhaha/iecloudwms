package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.MoveOrder;

public interface MoveOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoveOrder record);

    int insertSelective(MoveOrder record);

    MoveOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MoveOrder record);

    int updateByPrimaryKey(MoveOrder record);
}