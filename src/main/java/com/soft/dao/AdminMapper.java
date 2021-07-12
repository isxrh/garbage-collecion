package com.soft.dao;

import com.soft.model.Admin;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {
    int  findAdmin(Admin admin);
}
