package com.soft.action.enterprise;

import com.soft.model.*;
import com.soft.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseAction {
    @Autowired
    private OrderService orderService;
    @Autowired
    private ProductService productService;
    @Autowired
    private EnterpriseService enterpriseService;

    @RequestMapping("/toLogin")
    public String toLogin() {
        return "enterprise/login";
    }

    // 绠＄悊鍛樼櫥褰�
    @RequestMapping("/login")
    public String login(String username, String password, HttpServletResponse response, HttpSession session, HttpServletRequest request) throws IOException {
        Enterprise enterprise=new Enterprise();
        enterprise.setEnterprise_account(request.getParameter("username"));
        enterprise.setEnterprise_password(request.getParameter("password"));
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        if(enterpriseService.findEnterprise(enterprise)==1){
            Enterprise e=enterpriseService.searchEnterprise(enterprise);
            session.setAttribute("enterprise",e);
            out.flush();
            out.println("<script>");
            out.println("alert('登陆成功');");
            out.println("</script>");
            return "enterprise/enterProducts";
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('登陆失败');");
            out.println("</script>");
            return "enterprise/login";
        }
    }

    //订单显示界面
    @RequestMapping("/toEnterOrders")
    public String toEnterOrders(Map<String, Object> map,HttpSession session) {
        //未完成订单
        Enterprise enterprise=( Enterprise ) session.getAttribute("enterprise");
        List<Order> orderList = orderService.selectOrderByEnterpriseId(enterprise.getId());
        map.put("orders", orderList);
        //已完成订单
        List<Order> completeOrderList = orderService.selectCompletedOrderByEnterpriseId(enterprise.getId());
        map.put("completeOrders", completeOrderList);
        //废品
        List<Product> productList = productService.getAll();
        map.put("products", productList);

        return "enterprise/enterOrders";
    }
    //订单取消
    @RequestMapping("/toUpdateEnterOrders")
    public String toUpdateEnterOrders(@Param("id")Integer id, HttpServletResponse response,HttpSession session) throws IOException {
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        Enterprise enterprise=( Enterprise ) session.getAttribute("enterprise");
        if(orderService.updateOrderOrderStatusById(id,enterprise.getId())==1){
            out.flush();
            out.println("<script>");
            out.println("alert('取消订单成功');");
            out.println("history.back();");
            out.println("</script>");
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('取消订单失败');");
            out.println("history.back();");
            out.println("</script>");
        }
        return "enterprise/enterOrders";
    }

    /////////////////////////////////////////////////////////////////////////////
    //废品界面
    @RequestMapping("/toEnterProducts")
    public String toCheckEnterprise(Map<String, Object> map,HttpSession session) {
        Enterprise enterprise=( Enterprise ) session.getAttribute("enterprise");
        List<Product> list=productService.getALLByEnterpriseId(enterprise.getId());
        List<Product> productList = new ArrayList<Product>();
        for (Product products : list) {
            if (products.getProduct_name() != null) {
                productList.add(products);
            }
        }

        List<String> typeList=productService.getALLTypeByEnterpriseId(enterprise.getId());

        map.put("enterprise",enterprise);
        map.put("products",productList);
        map.put("typeList",typeList);
        return "enterprise/enterProducts";
    }
    //点击旁边的种类列表查看废品列表
    @RequestMapping("/toEnterProductsType")
    public String toCheckProductType(@RequestParam("id") Integer id,@RequestParam("name") String name,@RequestParam("type") String type,Map<String, Object> map) {
        List<Product> list=productService.getALLByType(id,type);
        List<Product> productList = new ArrayList<Product>();
        for (Product products : list) {
            if (products.getProduct_name() != null) {
                productList.add(products);
            }
        }
        List<String> typeList=productService.getALLTypeByEnterpriseId(id);
        Enterprise enterprise=new Enterprise();
        enterprise.setEnterprise_name(name);
        enterprise.setId(id);
        map.put("enterprise",enterprise);
        map.put("products",productList);
        map.put("typeList",typeList);
        return "enterprise/enterProducts";
    }

    /////////////////////////////////////////////////////////
    //修改废品信息
    @RequestMapping("/toUpdateProducts")
    public String toUpdateProducts(@RequestParam("id") Integer id, Map<String, Object> map) {
        Product product=productService.selectById(id);
        map.put("product",product);

        return "enterprise/enterUpdateProducts";
    }
    @RequestMapping("/toDeleteProducts")
    public String toDeleteProducts(@RequestParam("id") Integer id,HttpServletResponse response) throws IOException {
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();

        if(productService.deleteProduct(id)==1){
            out.flush();
            out.println("<script>");
            out.println("alert('删除废品成功');");
            out.println("history.back();");
            out.println("</script>");
            return null;
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('删除废品失败');");
            out.println("history.back();");
            out.println("</script>");
        }

        return "enterprise/enterProducts";
    }

    //更新废品信息
    @RequestMapping("/toChangeProducts")
    public String toChangeProducts(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        Integer id=Integer.valueOf(request.getParameter("product_id"));
        String name = request.getParameter("product_name");
        String price = request.getParameter("product_price");
        String type = request.getParameter("product_type");
        String image = request.getParameter("product_image");

        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        if(productService.updateProduct(id,name,price,type,"images/images/glassbottle.jpg")==1){
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
        return "enterprise/enterUpdateProducts";
    }

    ///////////////////////////////////////////////
    //插入新废品界面
    @RequestMapping("/toInsertProductsUI")
    public String toInsertProductsUI(Map<String, Object> map) {

        return "enterprise/enterInsertProducts";
    }
    @RequestMapping("/Lagout")
     public String Lagout(HttpSession session)
    {
        Enterprise enterprise=( Enterprise ) session.getAttribute("enterprise");
        if (enterprise != null) {
            // 2.删除属性
            session.removeAttribute("enterprise");
        }
        return "enterprise/login";
    }

    //插入新废品
    @RequestMapping("/toInsertProducts")
    public String insertProducts(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("product_name");
        String price = request.getParameter("product_price");
        String type = request.getParameter("product_type");
        String image = request.getParameter("product_image");

        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        Enterprise enterprise=( Enterprise ) session.getAttribute("enterprise");
        if(productService.insertProduct(enterprise.getId(),name,price,type,"images/enterprise1.png")==1){
            out.flush();
            out.println("<script>");
            out.println("alert('添加成功');");
            out.println("history.back();");
            out.println("</script>");
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('添加失败');");
            out.println("history.back();");
            out.println("</script>");
        }

        return "enterprise/enterInsertProducts";
    }


    ///////////////////////////////////////////////////
    //企业信息界面
    @RequestMapping("/toEnterInfo")
    public String toEnterInfo(Map<String, Object> map,HttpSession session) {
        Enterprise enterprise=( Enterprise ) session.getAttribute("enterprise");
        Enterprise enterpriseInfo = enterpriseService.selectEnterpriseById(enterprise.getId());
        map.put("enterpriseInfo", enterpriseInfo);
        return "enterprise/enterInfo";
    }

    //更新企业信息
    @RequestMapping("/changeEnterInfo")
    public String changeEnterInfo(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException {
        request.setCharacterEncoding("UTF-8");

        String account = request.getParameter("enterAccount");
        String pwd = request.getParameter("enterPassword");
        String name = request.getParameter("enterName");
        String phone = request.getParameter("enterPhone");
        String address = request.getParameter("enterAddress");

        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        Enterprise enterprise=( Enterprise ) session.getAttribute("enterprise");
        if(enterpriseService.updateEnterInfo( enterprise.getId(), account, pwd, phone, address, name)==1){
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
        return "enterprise/enterInfo";
    }
}