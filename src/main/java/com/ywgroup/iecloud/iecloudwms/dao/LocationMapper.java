package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.Location;

public interface LocationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Location record);

    int insertSelective(Location record);

    Location selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Location record);

    int updateByPrimaryKey(Location record);
}