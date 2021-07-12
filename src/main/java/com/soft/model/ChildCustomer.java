package com.soft.model;

public class ChildCustomer {
    Integer id;
    Integer Customer_id;
    String Customer_name;
    String Customer_address;
    String Customer_phone;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCustomer_id() {
        return Customer_id;
    }

    public void setCustomer_id(Integer customer_id) {
        Customer_id = customer_id;
    }

    public String getCustomer_name() {
        return Customer_name;
    }

    public void setCustomer_name(String customer_name) {
        Customer_name = customer_name;
    }

    public String getCustomer_address() {
        return Customer_address;
    }

    public void setCustomer_address(String customer_address) {
        Customer_address = customer_address;
    }

    public String getCustomer_phone() {
        return Customer_phone;
    }

    public void setCustomer_phone(String customer_phone) {
        Customer_phone = customer_phone;
    }
}
