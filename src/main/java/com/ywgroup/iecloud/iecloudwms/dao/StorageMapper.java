package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.Storage;

import java.util.List;

public interface StorageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Storage record);

    int insertSelective(Storage record);

    Storage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Storage record);

    int updateByPrimaryKey(Storage record);

    List<Storage> selectAll();

    int checkId(Integer id);

}