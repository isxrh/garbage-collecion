package com.soft.dao;


import com.soft.model.Enterprise;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface EnterpriseMapper {
    List<Enterprise> selectByExample();
    Enterprise selectById(Integer id);
    List<Enterprise> selectByEnterpriseName(@Param("name")String name);
    //更新信息
    int updateEnterInfo(@Param("id")Integer id, @Param("account")String account, @Param("password")String password,
                        @Param("phone")String phone, @Param("address")String address, @Param("name")String name);
    int  findEnterprise(Enterprise enterprise);

    Enterprise  searchEnterprise(Enterprise enterprise);

}
