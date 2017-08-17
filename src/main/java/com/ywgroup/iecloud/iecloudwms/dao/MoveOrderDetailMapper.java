package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.MoveOrderDetail;

public interface MoveOrderDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoveOrderDetail record);

    int insertSelective(MoveOrderDetail record);

    MoveOrderDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MoveOrderDetail record);

    int updateByPrimaryKey(MoveOrderDetail record);
}