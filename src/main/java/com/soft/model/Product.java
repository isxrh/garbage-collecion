package com.soft.model;

public class Product {
    private Integer Id;
    private Integer Enterprise_id;
    private String Product_name;
    private String Product_price;
    private String Product_type;
    private String Product_image;

    @Override
    public String toString() {
        return "Product{" +
                "Id=" + Id +
                ", Enterprise_id=" + Enterprise_id +
                ", Product_name='" + Product_name + '\'' +
                ", Product_price='" + Product_price + '\'' +
                ", Product_type='" + Product_type + '\'' +
                ", Product_image='" + Product_image + '\'' +
                '}';
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public Integer getEnterprise_id() {
        return Enterprise_id;
    }

    public void setEnterprise_id(Integer enterprise_id) {
        Enterprise_id = enterprise_id;
    }

    public String getProduct_name() {
        return Product_name;
    }

    public void setProduct_name(String product_name) {
        Product_name = product_name;
    }

    public String getProduct_price() {
        return Product_price;
    }

    public void setProduct_price(String product_price) {
        Product_price = product_price;
    }

    public String getProduct_type() {
        return Product_type;
    }

    public void setProduct_type(String product_type) {
        Product_type = product_type;
    }

    public String getProduct_image() {
        return Product_image;
    }

    public void setProduct_image(String product_image) {
        Product_image = product_image;
    }
}
