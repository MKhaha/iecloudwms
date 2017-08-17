package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.SystemRole;

public interface SystemRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SystemRole record);

    int insertSelective(SystemRole record);

    SystemRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SystemRole record);

    int updateByPrimaryKey(SystemRole record);
}