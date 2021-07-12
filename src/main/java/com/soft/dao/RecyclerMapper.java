package com.soft.dao;

import com.soft.model.Recycler;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface RecyclerMapper {
    List<Recycler> getAll();
    Recycler selectRecyclerById(Integer id);    // 通过账号查找回收员

    int updateInfo(@Param("id")Integer id, @Param("account")String account, @Param("password")String password,
                   @Param("phone")String phone, @Param("email")String email, @Param("name")String name);
    int  findRecycler(Recycler recycler);
    Recycler  searchRecycler(Recycler recycler);

}
