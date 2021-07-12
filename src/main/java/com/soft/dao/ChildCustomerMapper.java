package com.soft.dao;

import com.soft.model.ChildCustomer;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ChildCustomerMapper {
    List<ChildCustomer> selectById(Integer id);
    int insert(ChildCustomer childCustomer);
    int deleteAddress(Integer integer);
    int updateAddress(ChildCustomer childCustomer);
    List<ChildCustomer> selectAll();

}
