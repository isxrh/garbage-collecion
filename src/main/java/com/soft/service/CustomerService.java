package com.soft.service;

import com.soft.model.Customer;

import java.util.List;

public interface CustomerService {
    int updateCustomer(Customer customer );
    int findCustomer(Customer customer);
    Customer searchCustomer(Customer customer);
    List<Customer> getAll();
    Customer findByAccount(int account);
    boolean delete(int id);
}
