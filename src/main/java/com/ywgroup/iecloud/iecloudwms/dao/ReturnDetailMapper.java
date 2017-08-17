package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.ReturnDetail;

public interface ReturnDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ReturnDetail record);

    int insertSelective(ReturnDetail record);

    ReturnDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ReturnDetail record);

    int updateByPrimaryKey(ReturnDetail record);
}