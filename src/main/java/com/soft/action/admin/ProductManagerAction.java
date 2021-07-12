package com.soft.action.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soft.model.Product;
import com.soft.service.ProductService;

@Controller
@RequestMapping("productManager")
public class ProductManagerAction {
	@Autowired
	private ProductService productService;

	// 跳转到会员管理界面
	@RequestMapping("toProductManager")
	public String toProductManager(Map<String, Object> map) {
		List<Product> products = productService.getAll();
		map.put("products", products);
		return "admin/productManager";
		
	}
	
}