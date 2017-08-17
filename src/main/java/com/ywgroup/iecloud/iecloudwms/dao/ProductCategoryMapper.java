package com.ywgroup.iecloud.iecloudwms.dao;

import com.ywgroup.iecloud.iecloudwms.pojo.ProductCategory;

public interface ProductCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductCategory record);

    int insertSelective(ProductCategory record);

    ProductCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductCategory record);

    int updateByPrimaryKey(ProductCategory record);
}