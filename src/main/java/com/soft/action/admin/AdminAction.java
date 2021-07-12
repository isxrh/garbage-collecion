package com.soft.action.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soft.model.Admin;
import com.soft.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class AdminAction {

	@Autowired
	private AdminService adminService;

	// 跳转到管理员登录界面
	@RequestMapping("/toLogin")
	public String toLogin() {
		return "admin/login";
	}

	// 管理员登录
	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		Admin admin=new Admin();
		admin.setUsername(request.getParameter("username"));
		admin.setPassword(request.getParameter("password"));
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
		if(adminService.findAdmin(admin)==1){
			out.flush();
			out.println("<script>");
			out.println("alert('登陆成功');");
			out.println("</script>");
			return "admin/main";
		}else {
			out.flush();
			out.println("<script>");
			out.println("alert('登陆失败');");
			out.println("</script>");
			return null;
		}

	}

	
	// 退出登录
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:toLogin";
	}
	
	
}
