package com.soft.dao;

import com.soft.model.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface ProductMapper {
    List<Product> selectAll();
    List<Product> getallByEnterpriseId(Integer id);
    List<Product> getallByType(@Param("id")Integer id, @Param("type") String type);
    List<String> getAllTypeByEnterpriseId(Integer id);
    Product selectById(Integer id);
    //更新废品信息
    int updateProduct(@Param("id")Integer id, @Param("productName")String productName, @Param("productPrice")String productPrice,
                      @Param("productType")String productType, @Param("productImage")String productImage);

    //插入新废品
    int insertProduct(@Param("enterpriseId")Integer enterpriseId, @Param("productName")String productName, @Param("productPrice")String productprice,
                      @Param("productType")String productType, @Param("productImage")String productImage);
    //插入新废品
    int deleteProduct(Integer id);


}
