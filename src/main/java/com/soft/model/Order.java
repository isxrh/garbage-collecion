package com.soft.model;

import java.util.Date;

public class Order {
    private Integer Id;
    private Integer Customer_id;
    private Integer Childcustomer_id;
    private String Enterprise_name;
    private String Product_weight;
    private String Order_starttime;
    private String Order_endtime;
    private String Order_status;
    private Integer Recycler_id;
    private String Order_price;
    private String Order_appointmenttime;
    private Integer Product_id;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public Integer getCustomer_id() {
        return Customer_id;
    }

    public void setCustomer_id(Integer customer_id) {
        Customer_id = customer_id;
    }

    public Integer getChildcustomer_id() {
        return Childcustomer_id;
    }

    public void setChildcustomer_id(Integer childcustomer_id) {
        Childcustomer_id = childcustomer_id;
    }

    public String getEnterprise_name() {
        return Enterprise_name;
    }

    public void setEnterprise_name(String enterprise_name) {
        Enterprise_name = enterprise_name;
    }

    public String getProduct_weight() {
        return Product_weight;
    }

    public void setProduct_weight(String product_weight) {
        Product_weight = product_weight;
    }

    public String getOrder_starttime() {
        return Order_starttime;
    }

    public void setOrder_starttime(String order_starttime) {
        Order_starttime = order_starttime;
    }

    public String getOrder_endtime() {
        return Order_endtime;
    }

    public void setOrder_endtime(String order_endtime) {
        Order_endtime = order_endtime;
    }

    public String getOrder_status() {
        return Order_status;
    }

    public void setOrder_status(String order_status) {
        Order_status = order_status;
    }

    public Integer getRecycler_id() {
        return Recycler_id;
    }

    public void setRecycler_id(Integer recycler_id) {
        Recycler_id = recycler_id;
    }

    public String getOrder_price() {
        return Order_price;
    }

    public void setOrder_price(String order_price) {
        Order_price = order_price;
    }

    public String getOrder_appointmenttime() {
        return Order_appointmenttime;
    }

    public void setOrder_appointmenttime(String order_appointmenttime) {
        Order_appointmenttime = order_appointmenttime;
    }

    public Integer getProduct_id() {
        return Product_id;
    }

    public void setProduct_id(Integer product_id) {
        Product_id = product_id;
    }
}