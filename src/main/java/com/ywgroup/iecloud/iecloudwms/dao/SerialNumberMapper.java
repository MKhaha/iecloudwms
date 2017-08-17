package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.SerialNumber;

public interface SerialNumberMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SerialNumber record);

    int insertSelective(SerialNumber record);

    SerialNumber selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SerialNumber record);

    int updateByPrimaryKey(SerialNumber record);
}