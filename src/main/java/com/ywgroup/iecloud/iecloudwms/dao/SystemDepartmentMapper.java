package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.SystemDepartment;

public interface SystemDepartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SystemDepartment record);

    int insertSelective(SystemDepartment record);

    SystemDepartment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SystemDepartment record);

    int updateByPrimaryKey(SystemDepartment record);
}