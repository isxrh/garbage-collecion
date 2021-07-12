package com.soft.service.impl;
import com.soft.dao.ChildCustomerMapper;
import com.soft.model.ChildCustomer;
import com.soft.service.ChildCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service("childCustomerService")
public class ChildCustomerServiceImpl implements ChildCustomerService {
    @Autowired
    private ChildCustomerMapper mapper;
    @Override
    public List<ChildCustomer> selectById(Integer id) {
        return mapper.selectById(id);
    }
    @Override
    public int add(ChildCustomer childCustomer) {
        return mapper.insert(childCustomer);
    }

    @Override
    public int deleteAddress(Integer id) {
        return mapper.deleteAddress(id);
    }

    @Override
    public int updateAddress(ChildCustomer childCustomer) {
        return mapper.updateAddress(childCustomer);
    }
    @Override
    public List<ChildCustomer> getAll() {
        return mapper.selectAll();
    }
}
