package com.soft.model;

/**
 * Recycle实体类
 */

public class Recycler {
    private Integer id;
    private String RecyclerAccount; // 账户名
    private String RecyclerPassword;
    private String RecyclerName;    // 姓名
    private String RecyclerPhone;
    private String RecyclerEmail;

    @Override
    public String toString() {
        return "Recycler{" +
                "id=" + id +
                ", RecyclerAccount='" + RecyclerAccount + '\'' +
                ", RecyclerPassword='" + RecyclerPassword + '\'' +
                ", RecyclerName='" + RecyclerName + '\'' +
                ", RecyclerPhone=" + RecyclerPhone +
                ", RecyclerEmail='" + RecyclerEmail + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRecyclerAccount() {
        return RecyclerAccount;
    }

    public void setRecyclerAccount(String recyclerAccount) {
        RecyclerAccount = recyclerAccount;
    }

    public String getRecyclerPassword() {
        return RecyclerPassword;
    }

    public void setRecyclerPassword(String recyclerPassword) {
        RecyclerPassword = recyclerPassword;
    }

    public String getRecyclerName() {
        return RecyclerName;
    }

    public void setRecyclerName(String recyclerName) {
        RecyclerName = recyclerName;
    }

    public String getRecyclerPhone() {
        return RecyclerPhone;
    }

    public void setRecyclerPhone(String recyclerPhone) {
        RecyclerPhone = recyclerPhone;
    }

    public String getRecyclerEmail() {
        return RecyclerEmail;
    }

    public void setRecyclerEmail(String recyclerEmail) {
        RecyclerEmail = recyclerEmail;
    }
}
