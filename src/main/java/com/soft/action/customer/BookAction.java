package com.soft.action.customer;

import com.soft.model.*;
import com.soft.service.*;
import jdk.nashorn.internal.ir.RuntimeNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/book")
public class BookAction {

    @Autowired
    private ProductService productService;
    @Autowired
    private ChildCustomerService childCustomerService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private EnterpriseService enterpriseService;

    @RequestMapping("/toOrder")
    public String toOrder(@RequestParam("id")Integer  id , Map<String, Object> map, HttpSession session, HttpServletResponse response) throws IOException {
        Customer customer = (Customer) session.getAttribute("customer");
        // 判断是否登录
        if (customer == null) {
            response.setContentType("text/html; charset=UTF-8"); //转码
            PrintWriter out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('若需进行预约上门回收请先登录');");
            out.println("history.back();");
            out.println("</script>");
            return null;
        }
        Product product=productService.selectById(id);
        List<ChildCustomer> childCustomerList = childCustomerService.selectById(customer.getId());
        map.put("list",childCustomerList);
        map.put("product",product);
        return "customer/order";
    }
    @RequestMapping("/retrieve")
    public void retrieve(@RequestParam("product_name") String product_name,@RequestParam("childcustomer_id") Integer childcustomer_id,
                         @RequestParam("product_id")Integer product_id,@RequestParam("product_weight") String product_weight,
                         @RequestParam("appointmenttime") String appointmenttime, HttpServletResponse response,HttpSession session) throws ParseException, IOException {
        PrintWriter out = response.getWriter();
        Customer customer = (Customer) session.getAttribute("customer");
        // 表单校验
        if( childcustomer_id!=null && !product_weight.equals("") && !appointmenttime.equals("") ) {
            Product products=productService.selectById(product_id);
            Enterprise enterprise= enterpriseService.selectEnterpriseById(products.getEnterprise_id());
            Order order=new Order();
            order.setCustomer_id(customer.getId());
            order.setChildcustomer_id(childcustomer_id);
            order.setProduct_id(product_id);
            order.setEnterprise_name(enterprise.getEnterprise_name());
            order.setProduct_weight(product_weight);
            order.setOrder_appointmenttime(appointmenttime);
            order.setOrder_starttime(new Date().toString());
            order.setOrder_status("已下单");
            if(orderService.add(order) == 1) {
                out.flush();
                out.println("<script>");
                out.println("alert('预约成功');");
                out.println("history.back();");
                out.println("</script>");
            } else {
                out.flush();
                out.println("<script>");
                out.println("alert('预约失败');");
                out.println("history.back();");
                out.println("</script>");
            }
        } else {
            out.flush();
            out.println("<script>");
            out.println("alert('请输入完整并且正确的信息！');");
            out.println("history.back();");
            out.println("</script>");
        }
    }
}
