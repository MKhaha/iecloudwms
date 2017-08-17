package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.BadReport;

public interface BadReportMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BadReport record);

    int insertSelective(BadReport record);

    BadReport selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BadReport record);

    int updateByPrimaryKey(BadReport record);
}