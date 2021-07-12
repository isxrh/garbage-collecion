package com.soft.service.impl;

import com.soft.dao.CustomerMapper;
import com.soft.dao.EnterpriseMapper;
import com.soft.model.Customer;
import com.soft.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper mapper;
    @Override
    public int updateCustomer(Customer customer) {
        return mapper.updateCustomer(customer);
    }

    @Override
    public int findCustomer(Customer customer) {
        return mapper.findCustomer(customer);
    }

    @Override
    public Customer searchCustomer(Customer customer) {
        return mapper.searchCustomer(customer);
    }

    @Override
    public List<Customer> getAll() {
        return mapper.selectByExample();
    }

    @Override
    public boolean delete(int id) {

        return mapper.delete(id);
    }

    @Override
    public Customer findByAccount(int account) {
        Customer customer=mapper.findByAccount(account);
        return customer;
    }
}
