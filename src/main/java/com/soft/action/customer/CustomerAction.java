package com.soft.action.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soft.model.*;
import com.soft.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.alibaba.fastjson.JSON;
import com.soft.util.HttpUtil;
import com.soft.vo.GarbageInfo;

/**
 * 
 * @ClassName: CustomerAction
 * @Description: 关于customer的控制器
 */

@Controller
@RequestMapping("/customer")
public class CustomerAction {

	@Autowired
    private EnterpriseService enterpriseService;
	@Autowired
	private RecyclerService recyclerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private ChildCustomerService childCustomerService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private CustomerService customerService;
	//浏览企业
	@RequestMapping("tomain")
	public String toMain() {
		return "customer/main";
	}

	@RequestMapping("toLogin")
	public String toLogin() {

		return "customer/login";
	}
	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException {
		Customer customer=new Customer();
		customer.setCustomer_account(request.getParameter("username"));
		customer.setCustomer_password(request.getParameter("password"));
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
		if(customerService.findCustomer(customer)==1){
			Customer c=customerService.searchCustomer(customer);
			session.setAttribute("customer",c);
			out.flush();
			out.println("<script>");
			out.println("alert('登陆成功');");
			out.println("</script>");
			return "customer/search";
		}else {
			out.flush();
			out.println("<script>");
			out.println("alert('登陆失败');");
			out.println("</script>");
			return null;
		}

	}

	@RequestMapping("searchCompany")
	public String toSearchCompany(Map<String, Object> map) {
		List<Enterprise> list = enterpriseService.getAll();
		
		map.put("enterpriseList",list);
		return "customer/search";
	}
	@RequestMapping("findenterprise")
	public String FindEnterprise(Map<String, Object> map,HttpServletRequest request) {
		String s=request.getParameter("enterprise_name");
		List<Enterprise> list;

		list = enterpriseService.FindByName(s);


		map.put("enterpriseList",list);
		return "customer/search";
	}
	@RequestMapping("/Lagout")
	public String Lagout(HttpSession session)
	{
		Customer customer = (Customer) session.getAttribute("customer");
		if (customer != null) {
			// 2.删除属性
			session.removeAttribute("customer");
		}
		return "customer/login";
	}
	//浏览个人订单
	@RequestMapping("vieworder")
	public String toViewOrder(HttpSession session, HttpServletResponse response,Map<String, Object> map) throws IOException {
		Customer customer = (Customer) session.getAttribute("customer");
		// 判断是否登录
		if (customer == null) {
			response.setContentType("text/html; charset=UTF-8"); //转码
			PrintWriter out = response.getWriter();
			out.flush();
			out.println("<script>");
			out.println("alert('若需查看相关订单请先登录');");
			out.println("history.back();");
			out.println("</script>");
			return null;
		}
		List<Order> list =orderService.getCompletedOrdersByCustomerId(customer.getId());
		List<Order> list3 =orderService.getOutstangdingOrdersByCustomerId(customer.getId());
		List<ChildCustomer> list1 =childCustomerService.selectById(customer.getId());
		List<Product> list2=productService.getAll();
		List<Recycler> list4=recyclerService.getAll();
		map.put("comorders",list);
		map.put("outorders",list3);
		map.put("address",list1);
		map.put("products",list2);
		map.put("recyclers",list4);

		return "customer/orderview";
	}
	//查看企业废品列表
	@RequestMapping("check")
	public String toCheckEnterprise(@RequestParam("id") Integer id,@RequestParam("name") String name,Map<String, Object> map) {
		List<Product> list=productService.getALLByEnterpriseId(id);
		List<Product> productList = new ArrayList<Product>();
		for (Product products : list) {
			if (products.getProduct_name() != null) {
				productList.add(products);
			}
		}
		List<String> typelist=productService.getALLTypeByEnterpriseId(id);
		Enterprise enterprise=new Enterprise();
		enterprise.setEnterprise_name(name);
		enterprise.setId(id);
		map.put("enterprise",enterprise);
		map.put("products",productList);
		map.put("typelist",typelist);
		return "customer/checkenterprise";
	}
	//点击旁边的种类列表查看废品列表
	@RequestMapping("checktype")
	public String toCheckProductType(@RequestParam("id") Integer id,@RequestParam("name") String name,@RequestParam("type") String type,Map<String, Object> map) {
		List<Product> list=productService.getALLByType(id,type);
		List<Product> productList = new ArrayList<Product>();
		for (Product products : list) {
			if (products.getProduct_name() != null) {
				productList.add(products);
			}
		}
		List<String> typelist=productService.getALLTypeByEnterpriseId(id);
		Enterprise enterprise=new Enterprise();
		enterprise.setEnterprise_name(name);
		enterprise.setId(id);
		map.put("enterprise",enterprise);
		map.put("products",productList);
		map.put("typelist",typelist);
		return "customer/checkenterprise";
	}

	//添加用户地址
	@RequestMapping("/addAddress")
	public void add( ChildCustomer childCustomer, HttpServletResponse response,HttpSession session) throws IOException{
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
	if(childCustomer.getCustomer_address()!=null && childCustomer.getCustomer_name()!=null&&childCustomer.getCustomer_phone()!=null)
	{
		Customer customer = (Customer) session.getAttribute("customer");
		childCustomer.setCustomer_id(customer.getId());
		if(childCustomerService.add(childCustomer) == 1){

			out.flush();
			out.println("<script>");
			out.println("alert('添加地址成功');");
			out.println("history.back();");
			out.println("</script>");
		} else {
			out.flush();
			out.println("<script>");
			out.println("alert('添加地址失败');");
			out.println("history.back();");
			out.println("</script>");
			}
	}
	else
	{

		out.flush();
		out.println("<script>");
		out.println("alert('请填写完整并正确的信息');");
		out.println("history.back();");
		out.println("</script>");
	}

	}
	//查看个人页面
	@RequestMapping("info")
	public String toInfo(Map<String, Object> map, HttpSession session,HttpServletResponse response) throws IOException {
		Customer customer = (Customer) session.getAttribute("customer");
		// 判断是否登录
		if (customer == null) {
			response.setContentType("text/html; charset=UTF-8"); //转码
			PrintWriter out = response.getWriter();
			out.flush();
			out.println("<script>");
			out.println("alert('若需查看个人页面请先登录');");
			out.println("history.back();");
			out.println("</script>");
			return null;
		}
		List<ChildCustomer> list=childCustomerService.selectById(customer.getId());
		map.put("list",list);
		map.put("customer",customer);
		return "customer/info";
	}
	@RequestMapping(value = "/getRecycler/{id}",method= RequestMethod.GET)
	@ResponseBody
	String getRecyclerById(@PathVariable("id") Integer id){

		System.out.println("dsfcdscfsdcd");
		return "123";
	}
	@RequestMapping("/cancel")
	public String cancelOrder(@RequestParam("id") Integer id,HttpServletResponse response) throws IOException{
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
		if(orderService.CancelOrder(id,new Date().toString())==1)
		{
			out.flush();
			out.println("<script>");
			out.println("alert('取消成功');");
			out.println("history.back();");
			out.println("</script>");
			return "customer/orderview";
		}
		else
		{
			out.flush();
			out.println("<script>");
			out.println("alert('取消失败');");
			out.println("history.back();");
			out.println("</script>");
			return null;
		}


	}

	@RequestMapping("/confirm")
	public String confimOrder(@RequestParam("id") Integer id, HttpServletResponse response, HttpServletRequest request) throws IOException{
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
		if(orderService.ConfirmOrder(id,new Date().toString())==1)
		{
			out.flush();
			out.println("<script>");
			out.println("alert('确定成功');");
			out.println("history.back();");
			out.println("</script>");
			return "customer/orderview";

		}
		else
		{
			out.flush();
			out.println("<script>");
			out.println("alert('确定失败');");
			out.println("history.back();");
			out.println("</script>");
			return null;
		}
	}
	@RequestMapping("/deleteAddress")
	public String delete(@RequestParam("id") Integer id,HttpServletResponse response) throws IOException{
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
		if(childCustomerService.deleteAddress(id)==1)
		{
			out.flush();
			out.println("<script>");
			out.println("alert('删除成功');");
			out.println("history.back();");
			out.println("</script>");
			return "customer/info";
		}
		else
		{
			out.flush();
			out.println("<script>");
			out.println("alert('删除失败');");
			out.println("history.back();");
			out.println("</script>");
			return null;
		}
	}
	@RequestMapping("/editAddress")
	public void editAddress(HttpServletRequest request,HttpServletResponse response) throws IOException {
		ChildCustomer childCustomer=new ChildCustomer();
		childCustomer.setId(Integer.valueOf(request.getParameter("address_id")));
		childCustomer.setCustomer_name(request.getParameter("address_name"));
		childCustomer.setCustomer_phone(request.getParameter("address_phone"));
		childCustomer.setCustomer_address(request.getParameter("address_address"));
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
		if(childCustomerService.updateAddress(childCustomer)==1)
		{
			out.flush();
			out.println("<script>");
			out.println("alert('修改成功');");
			out.println("history.back();");
			out.println("</script>");

		}
		else
		{
			out.flush();
			out.println("<script>");
			out.println("alert('修改失败');");
			out.println("history.back();");
			out.println("</script>");

		}
	}
	@RequestMapping("/editCustomer")
	public void editCustomer(HttpServletRequest request,HttpServletResponse response) throws IOException {
		Customer customer=new Customer();
		customer.setId(Integer.valueOf(request.getParameter("customer_id")));
		customer.setCustomer_account(request.getParameter("customer_account"));
		customer.setCustomer_name(request.getParameter("customer_name"));
		customer.setCustomer_password(request.getParameter("customer_password"));
		response.setContentType("text/html; charset=UTF-8"); //转码
		PrintWriter out = response.getWriter();
		if(customerService.updateCustomer(customer)==1)
		{
			out.flush();
			out.println("<script>");
			out.println("alert('修改成功');");
			out.println("history.back();");
			out.println("</script>");

		}
		else
		{
			out.flush();
			out.println("<script>");
			out.println("alert('修改失败');");
			out.println("history.back();");
			out.println("</script>");

		}
	}


		

}
