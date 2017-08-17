package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.ReturnOrder;

public interface ReturnOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ReturnOrder record);

    int insertSelective(ReturnOrder record);

    ReturnOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ReturnOrder record);

    int updateByPrimaryKey(ReturnOrder record);
}