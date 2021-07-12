package com.soft.dao;

import com.soft.model.Customer;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CustomerMapper {
    int updateCustomer(Customer customer);
    int  findCustomer(Customer customer);

    Customer  searchCustomer(Customer customer);
    List<Customer> selectByExample();
    Customer findByAccount(int account);
    boolean delete(int id);

}
