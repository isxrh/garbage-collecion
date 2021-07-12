package com.soft.service;

import com.soft.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getALLByEnterpriseId(Integer id);
    List<Product> getALLByType(Integer id,String type);
    List<Product> getAll();
    List<String> getALLTypeByEnterpriseId(Integer id);
    Product selectById(Integer id);
    //更新
    int updateProduct(Integer id, String productName, String productPrice,String productType, String productImage);
    //插入
    int insertProduct(Integer enterpriseId, String productName, String productPrice,String productType, String productImage);
    int deleteProduct(Integer id);

}
