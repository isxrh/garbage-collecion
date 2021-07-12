package com.soft.service.impl;


import com.soft.dao.ProductMapper;
import com.soft.model.Product;
import com.soft.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("productsService")
public class ProduceServiceImpl implements ProductService {
    @Autowired
    private ProductMapper mapper;
    @Override
    public List<Product> getALLByEnterpriseId(Integer id) {
        return mapper.getallByEnterpriseId(id);
    }

    @Override
    public List<Product> getALLByType(Integer id, String type) {
        return mapper.getallByType(id,type);
    }

    @Override
    public List<Product> getAll() {
        return mapper.selectAll();
    }

    @Override
    public List<String> getALLTypeByEnterpriseId(Integer id) {
        return mapper.getAllTypeByEnterpriseId(id);
    }

    @Override
    public Product selectById(Integer id) {
        return mapper.selectById(id);
    }

    //更新
    @Override
    public int updateProduct(Integer id, String productName, String productPrice, String productType, String productImage) {
        return mapper.updateProduct(id,productName,productPrice,productType,productImage);
    }

    //插入
    @Override
    public int insertProduct(Integer enterpriseId, String productName, String productPrice, String productType, String productImage) {
        return mapper.insertProduct(enterpriseId,productName,productPrice,productType,productImage);
    }

    @Override
    public int deleteProduct(Integer id) {
        return mapper.deleteProduct(id);
    }

}
