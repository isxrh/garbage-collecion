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

import com.soft.model.Recycler;
import com.soft.service.RecyclerService;

@Controller
@RequestMapping("recyclerManager")
public class RecyclerManagerAction {
	@Autowired
	private RecyclerService recyclerService;

	// 跳转到会员管理界面
	@RequestMapping("toRecyclerManager")
	public String toRecyclerManager(Map<String, Object> map) {
		List<Recycler> recyclers = recyclerService.getAll();
		map.put("recyclers", recyclers);
		return "admin/recyclerManager";
		
	}
	
}