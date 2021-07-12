package com.soft.service.impl;

import com.soft.dao.OrderMapper;
import com.soft.model.Order;

import com.soft.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CollectionOrderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper mapper;
    @Override
    public int add(Order order) {
        return mapper.insert(order);
    }

    @Override
    public List<Order> getCompletedOrdersByCustomerId(Integer id) {
        return mapper.selectCompletedOrdersByCustomerId(id);
    }
    @Override
    public List<Order> getOutstangdingOrdersByCustomerId(Integer id) {
        return mapper.selectOutstandingOrdersByCustomerId(id);
    }

    @Override
    public int CancelOrder(Integer id,String date) {
        return mapper.CancelOrder(id,date);
    }

    @Override
    public int ConfirmOrder(Integer id,String date) {
        return mapper.ConfirmOrder(id,date);
    }
    @Override
    public List<Order> getByOrderState() {
//		System.out.println("--------------hello??? getByOrderState() service------- ");
        return mapper.selectByOrderState();
    }

    @Override
    public List<Order> selectCompletedOrderByRecyclerId(Integer id) {
        return mapper.selectCompletedOrderByRecyclerId(id);
    }

    @Override
    public List<Order> selectIncompleteOrderByRecyclerId(Integer id) {
        return mapper.selectIncompleteOrderByRecyclerId(id);
    }

    @Override
    public int updateOrderByRecycler(Integer id, Integer recycler_id) {
//		System.out.println("--------------hello??? updateOrderByRecycler service------- ");
        return mapper.updateOrderByRecycler(id, recycler_id);
    }

    @Override
    public int cancelOrderByRecycler(Integer id) {
        return mapper.cancelOrderByRecycler(id);
    }
    //	根据企业id查询订单信息
    @Override
    public List<Order> selectOrderByEnterpriseId(Integer Enterprise_id) {
        return mapper.selectOrderByEnterpriseId(Enterprise_id);
    }
    //	根据企业id查询已完成订单信息
    @Override
    public List<Order> selectCompletedOrderByEnterpriseId(Integer Enterprise_id) {
        return mapper.selectCompletedOrderByEnterpriseId(Enterprise_id);
    }
    //	根据企业id修改订单状态
    @Override
    public int updateOrderOrderStatusById(Integer id, int i) {
        return mapper.updateOrderOrderStatusById(id);
    }
}
