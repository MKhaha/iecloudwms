package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.ReportParams;

public interface ReportParamsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ReportParams record);

    int insertSelective(ReportParams record);

    ReportParams selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ReportParams record);

    int updateByPrimaryKey(ReportParams record);
}