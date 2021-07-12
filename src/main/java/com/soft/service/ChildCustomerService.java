package com.soft.service;



import com.soft.model.ChildCustomer;

import java.util.List;

public interface ChildCustomerService {
    List<ChildCustomer> selectById(Integer id);
    int add(ChildCustomer childCustomer);
    int deleteAddress(Integer id);
    int updateAddress(ChildCustomer childCustomer);
    List<ChildCustomer> getAll();
}
