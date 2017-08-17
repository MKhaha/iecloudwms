package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.Measure;

public interface MeasureMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Measure record);

    int insertSelective(Measure record);

    Measure selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Measure record);

    int updateByPrimaryKey(Measure record);
}