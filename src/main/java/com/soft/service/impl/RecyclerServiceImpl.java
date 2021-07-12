package com.soft.service.impl;

import com.soft.dao.RecyclerMapper;
import com.soft.model.Customer;
import com.soft.model.Recycler;
import com.soft.service.RecyclerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("recyclerService")
public class RecyclerServiceImpl implements RecyclerService {
    @Autowired
    private RecyclerMapper mapper;
    @Override
    public List<Recycler> getAll() {
        return mapper.getAll();
    }


    @Override
    public int findRecycler(Recycler recycler) {
        return mapper.findRecycler(recycler);
    }

    @Override
    public Recycler searchRecycler(Recycler recycler) {
        return mapper.searchRecycler(recycler);
    }

    @Override
    public Recycler getById(Integer id) {
//        System.out.println("------------------service-----------------");
        return mapper.selectRecyclerById(id);
    }

    @Override
    public int updateInfo(Integer id, String account, String password, String phone, String email, String name) {
//        System.out.println("--------------service-----------------");
        return mapper.updateInfo(id, account, password, phone, email, name);
    }

}
