package com.soft.service;

import com.soft.model.Enterprise;

import java.util.List;

public interface EnterpriseService {
    List<Enterprise> getAll();
    Enterprise selectEnterpriseById(Integer id);
    List<Enterprise> FindByName(String name);
    int updateEnterInfo(Integer id, String account, String password, String phone, String address, String name);
    int  findEnterprise(Enterprise enterprise);

    Enterprise  searchEnterprise(Enterprise enterprise);

}
