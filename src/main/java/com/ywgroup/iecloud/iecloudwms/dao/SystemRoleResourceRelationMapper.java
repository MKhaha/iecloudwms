package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.SystemRoleResourceRelation;

public interface SystemRoleResourceRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SystemRoleResourceRelation record);

    int insertSelective(SystemRoleResourceRelation record);

    SystemRoleResourceRelation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SystemRoleResourceRelation record);

    int updateByPrimaryKey(SystemRoleResourceRelation record);
}