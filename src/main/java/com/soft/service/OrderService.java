package com.soft.service;

import com.soft.model.Order;

import java.util.List;

public interface OrderService {
    //用户预约订单
    int add(Order collectionOrder);
    //用户查看已完成的订单
    List<Order> getCompletedOrdersByCustomerId(Integer id);
    //用户查看未完成的订单
    List<Order> getOutstangdingOrdersByCustomerId(Integer id);
    //用户取消订单
    int CancelOrder(Integer id,String date);
    //用户确认订单
    int ConfirmOrder(Integer id,String date);
    // 根据订单状态查找kk
    List<Order> getByOrderState();
    List<Order> selectCompletedOrderByRecyclerId(Integer id);
    List<Order> selectIncompleteOrderByRecyclerId(Integer id);
    // 更改订单状态
    int updateOrderByRecycler(Integer id, Integer recycler_id);
    int cancelOrderByRecycler(Integer id);
//	int deleteOrderByRecycler(Integer id);
//根据企业查找订单
List<Order> selectOrderByEnterpriseId(Integer Enterprise_id);
    //根据企业和订单状态查找订单
    List<Order> selectCompletedOrderByEnterpriseId(Integer Enterprise_id);
    //企业修改订单状态
    int updateOrderOrderStatusById(Integer id, int i);

}
