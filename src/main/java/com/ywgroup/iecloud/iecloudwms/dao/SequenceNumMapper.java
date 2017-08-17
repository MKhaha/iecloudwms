package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.SequenceNum;

public interface SequenceNumMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SequenceNum record);

    int insertSelective(SequenceNum record);

    SequenceNum selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SequenceNum record);

    int updateByPrimaryKey(SequenceNum record);
}