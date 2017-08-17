package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.MeasureRelation;

public interface MeasureRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MeasureRelation record);

    int insertSelective(MeasureRelation record);

    MeasureRelation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MeasureRelation record);

    int updateByPrimaryKey(MeasureRelation record);
}