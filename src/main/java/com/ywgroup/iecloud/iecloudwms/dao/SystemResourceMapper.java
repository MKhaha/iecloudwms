package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.SystemResource;

public interface SystemResourceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SystemResource record);

    int insertSelective(SystemResource record);

    SystemResource selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SystemResource record);

    int updateByPrimaryKey(SystemResource record);
}