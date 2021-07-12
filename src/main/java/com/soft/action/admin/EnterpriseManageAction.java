package com.soft.action.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soft.model.Enterprise;
import com.soft.service.EnterpriseService;

@Controller
@RequestMapping("enterpriseManager")
public class EnterpriseManageAction {

		@Autowired
		private EnterpriseService enterpriseService;

		// 跳转到会员管理界面
		@RequestMapping("toEnterpriseManager")
		public String toEnterpriseManager(Map<String, Object> map) {
			List<Enterprise> enterprises = enterpriseService.getAll();
			map.put("enterprises", enterprises);
			return "admin/enterpriseManager";
			
		}
}
