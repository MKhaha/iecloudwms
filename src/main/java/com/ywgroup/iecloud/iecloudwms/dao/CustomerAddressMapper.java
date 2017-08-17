package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.CustomerAddress;

public interface CustomerAddressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CustomerAddress record);

    int insertSelective(CustomerAddress record);

    CustomerAddress selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CustomerAddress record);

    int updateByPrimaryKey(CustomerAddress record);
}