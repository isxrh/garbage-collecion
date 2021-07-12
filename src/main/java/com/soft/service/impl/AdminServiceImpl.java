package com.soft.service.impl;

import com.soft.dao.AdminMapper;
import com.soft.dao.OrderMapper;
import com.soft.model.Admin;
import com.soft.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper mapper;
    @Override
    public int findAdmin(Admin admin) {
        return mapper.findAdmin(admin);
    }
}
