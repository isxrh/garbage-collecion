package com.soft.service.impl;

import com.soft.dao.EnterpriseMapper;
import com.soft.model.Enterprise;
import com.soft.service.EnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("enterpriseService")
public class EnterpriseServiceImpl implements EnterpriseService {
    @Autowired
    private EnterpriseMapper mapper;
    @Override
    public List<Enterprise> getAll() {
        return mapper.selectByExample();
    }

    @Override
    public Enterprise selectEnterpriseById(Integer id) {
        return mapper.selectById(id);
    }

    @Override
    public List<Enterprise> FindByName(String name) {
        return mapper.selectByEnterpriseName(name);
    }

    //更新企业信息
    @Override
    public int updateEnterInfo(Integer id, String account, String password, String phone, String address, String name) {
        return mapper.updateEnterInfo(id, account, password, phone, address, name);
    }

    @Override
    public int findEnterprise(Enterprise enterprise) {
        return mapper.findEnterprise(enterprise);
    }

    @Override
    public Enterprise searchEnterprise(Enterprise enterprise) {
        return mapper.searchEnterprise(enterprise);
    }
}
