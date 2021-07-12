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

import com.soft.model.Customer;
import com.soft.service.CustomerService;

@Controller
@RequestMapping("customerManager")
public class CustomerManagerAction {
	@Autowired
	private CustomerService customerService;

	// 跳转到会员管理界面
	@RequestMapping("toCustomerManager")
	public String toCustomerManager(Map<String, Object> map) {
		List<Customer> customers = customerService.getAll();
		map.put("customers", customers);
		return "admin/customerManager";
		
	}
	
}
