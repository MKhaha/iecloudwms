package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.Administrator;

public interface AdministratorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Administrator record);

    int insertSelective(Administrator record);

    Administrator selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Administrator record);

    int updateByPrimaryKey(Administrator record);
}