package com.soft.service;

import com.soft.model.Customer;
import com.soft.model.Recycler;

import java.util.List;

public interface RecyclerService {
    // 根据id查找回收员
    Recycler getById(Integer id);

    int updateInfo(Integer id, String account, String password, String phone, String email, String name);
    List<Recycler> getAll();


    int  findRecycler(Recycler recycler);
    Recycler  searchRecycler(Recycler recycler);



}
