package com.soft.model;

public class Customer {
    private Integer id;
    private String Customer_name;
    private String Customer_account;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomer_name() {
        return Customer_name;
    }

    public void setCustomer_name(String customer_name) {
        Customer_name = customer_name;
    }

    public String getCustomer_account() {
        return Customer_account;
    }

    public void setCustomer_account(String customer_account) {
        Customer_account = customer_account;
    }

    public String getCustomer_password() {
        return Customer_password;
    }

    public void setCustomer_password(String customer_password) {
        Customer_password = customer_password;
    }

    private String Customer_password;
}
