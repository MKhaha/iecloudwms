package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.BadReportDetail;

public interface BadReportDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BadReportDetail record);

    int insertSelective(BadReportDetail record);

    BadReportDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BadReportDetail record);

    int updateByPrimaryKey(BadReportDetail record);
}