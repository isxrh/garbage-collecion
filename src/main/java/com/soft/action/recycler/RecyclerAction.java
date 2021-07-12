package com.soft.action.recycler;

import com.soft.model.*;
import com.soft.service.ChildCustomerService;
import com.soft.service.OrderService;
import com.soft.service.ProductService;
import com.soft.service.RecyclerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/recycler")
public class RecyclerAction {
    @Autowired
    private OrderService orderService;
    @Autowired
    private ProductService productService;
    @Autowired
    private ChildCustomerService childCustomerService;
    @Autowired
    private RecyclerService recyclerService;

    // 璺宠浆鍒扮鐞嗗憳鐧诲綍鐣岄潰
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "recycler/login";
    }

    // 绠＄悊鍛樼櫥褰�
    @RequestMapping("/login")
    public String login(String username, String password, HttpServletResponse response, HttpSession session,HttpServletRequest request) throws IOException {
        Recycler recycler=new Recycler();
        recycler.setRecyclerAccount(request.getParameter("username"));
        recycler.setRecyclerPassword(request.getParameter("password"));
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        if(recyclerService.findRecycler(recycler)==1){
            Recycler r=recyclerService.searchRecycler(recycler);
            session.setAttribute("recycler",r);
            out.flush();
            out.println("<script>");
            out.println("alert('登陆成功');");
            out.println("</script>");
            return "recycler/allOrders";
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('登陆失败');");
            out.println("</script>");
            return "recycler/login";
        }
    }
    @RequestMapping("/toAllOrders")
    public String toAllOrders(Map<String, Object> map) {
        List<Order> orderList=orderService.getByOrderState();
        List<Product> productList = productService.getAll();
        List<ChildCustomer> childCustomerList = childCustomerService.getAll();
        map.put("orders", orderList);
        map.put("products", productList);
        map.put("childCustomers", childCustomerList);
        return "recycler/allOrders";
    }

    @RequestMapping("/Lagout")
    public String Lagout(HttpSession session)
    {
        Recycler recycler=( Recycler ) session.getAttribute("recycler");
        if (recycler != null) {
            // 2.删除属性
            session.removeAttribute("recycler");
        }
        return "recycler/login";
    }

    @RequestMapping("/toMyOrders")
    public String toMyOrders(Map<String, Object> map,HttpSession session,HttpServletResponse response) throws IOException {
        Recycler recycler=( Recycler ) session.getAttribute("recycler");
        // 判断是否登录
        if (recycler == null) {
            response.setContentType("text/html; charset=UTF-8"); //转码
            PrintWriter out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('若需查看相关订单请先登录');");
            out.println("history.back();");
            out.println("</script>");
            return null;
        }
        List<Order> comOrderList=orderService.selectCompletedOrderByRecyclerId(recycler.getId());
        List<Order> InComOrderList=orderService.selectIncompleteOrderByRecyclerId(recycler.getId());
        List<Product> productList = productService.getAll();
        List<ChildCustomer> childCustomerList = childCustomerService.getAll();

        map.put("comOrders", comOrderList);
        map.put("inComOrders", InComOrderList);
        map.put("products", productList);
        map.put("childCustomers", childCustomerList);
        return "recycler/myOrders";
    }

    @RequestMapping("/receive")
    public String  updateOrderByRecycler(@Param("id")Integer id, HttpServletResponse response,HttpSession session) throws IOException {
        Recycler recycler=( Recycler ) session.getAttribute("recycler");
        // 判断是否登录
        if (recycler == null) {
            response.setContentType("text/html; charset=UTF-8"); //转码
            PrintWriter out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('若需接单请先登录');");
            out.println("history.back();");
            out.println("</script>");
            return null;
        }
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        if(orderService.updateOrderByRecycler(id,recycler.getId())==1){
            out.flush();
            out.println("<script>");
            out.println("alert('接单成功');");
            out.println("history.back();");
            out.println("</script>");
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('接单失败');");
            out.println("history.back();");
            out.println("</script>");
        }
        return "recycler/allOrders";
    }


    @RequestMapping("/cancelOrder")
    public String  cancelOrderByRecycler(@Param("id")Integer id, HttpServletResponse response) throws IOException {
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        if(orderService.cancelOrderByRecycler(id)==1){
            out.flush();
            out.println("<script>");
            out.println("alert('取消成功');");
            out.println("history.back();");
            out.println("</script>");
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('取消失败');");
            out.println("history.back();");
            out.println("</script>");
        }
        return "recycler/myOrders";
    }

//    @RequestMapping("/deleteOrder")
//    public String  deleteOrderByRecycler(@Param("id")Integer id, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html; charset=UTF-8"); //转码
//        PrintWriter out = response.getWriter();
//        if(orderService.deleteOrderByRecycler(id)==1){
//            out.flush();
//            out.println("<script>");
//            out.println("alert('删除成功');");
//            out.println("history.back();");
//            out.println("</script>");
//        }else {
//            out.flush();
//            out.println("<script>");
//            out.println("alert('删除失败');");
//            out.println("history.back();");
//            out.println("</script>");
//        }
//        return "recycler/myOrders";
//    }

    @RequestMapping("/toInfo")
    public String toInfo(Map<String, Object> map,HttpSession session,HttpServletResponse response) throws IOException {
        Recycler recycler=( Recycler ) session.getAttribute("recycler");
        // 判断是否登录
        if (recycler == null) {
            response.setContentType("text/html; charset=UTF-8"); //转码
            PrintWriter out = response.getWriter();
            out.flush();
            out.println("<script>");
            out.println("alert('若需查看个人信息请先登录');");
            out.println("history.back();");
            out.println("</script>");
            return null;
        }
        Recycler recyclerInfo = recyclerService.getById(recycler.getId());
        map.put("recycler", recyclerInfo);
        return "recycler/info";
    }

    @RequestMapping("/changeInfo")
    public String changeInfo(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException {
        request.setCharacterEncoding("UTF-8");
        Recycler recycler=( Recycler ) session.getAttribute("recycler");
        String uaccount = request.getParameter("useraccount");
        String upwd = request.getParameter("password");
        String uname = request.getParameter("username");
        String uphone = request.getParameter("userphone");
        String uemail = request.getParameter("useremail");

//        System.out.println("userid:" + uid);
//        System.out.println("upwd:" + upwd);
//        System.out.println("uname:" + uname);
//        System.out.println("uphone:" + uphone);
//        System.out.println("uemail:" + uemail);

        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        if(recyclerService.updateInfo( recycler.getId(), uaccount, upwd, uphone,  uemail, uname)==1){
            out.flush();
            out.println("<script>");
            out.println("alert('修改成功');");
            out.println("history.back();");
            out.println("</script>");
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('修改失败');");
            out.println("history.back();");
            out.println("</script>");
        }
        return "recycler/info";
    }


}
