package com.soft.dao;

import com.soft.model.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderMapper {
    //用户预约订单
    int insert(Order collectionOrder);
    //用户取消订单
    int CancelOrder(@Param("id")Integer id,@Param("date") String date);
    //用户确认订单
    int ConfirmOrder(@Param("id")Integer id,@Param("date")String date);
    //用户查看已完成的订单
    List<Order> selectCompletedOrdersByCustomerId(Integer id);
    //用户查看未完成的订单
    List<Order> selectOutstandingOrdersByCustomerId(Integer id);
    //回收员根据订单状态查找
    List<Order> selectByOrderState();
    // 回收员更改订单状态，接单
    int updateOrderByRecycler(@Param("id")Integer id, @Param("recycler_id")Integer recycler_id);
    //回收员取消订单
    int cancelOrderByRecycler(@Param("id")Integer id);
//      int deleteOrderByRecycler(@Param("id")Integer id);
    //回收员查看已完成的订单
    List<Order> selectCompletedOrderByRecyclerId(@Param("id")Integer id);
    //回收员查看未完成的订单
    List<Order> selectIncompleteOrderByRecyclerId(@Param("id")Integer id);
    //企业订单
    List<Order> selectOrderByEnterpriseId(@Param("Enterprise_id")Integer enterprise_id);
    List<Order> selectCompletedOrderByEnterpriseId(@Param("Enterprise_id")Integer enterprise_id);
    //企业修改订单
    int updateOrderOrderStatusById(Integer id);

}
