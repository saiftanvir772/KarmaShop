/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.Delivary;
import com.Order;
import com.Product;
import com.dao.DeliveryDao;
import com.dao.OrderDao;
import com.dao.ProductDao;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Shahin
 */
@Controller
public class UserController {

    @RequestMapping(value = "/home.htm")
    public String home(@ModelAttribute("product") Product p, Model m) {
        List<Order> list = new ArrayList<>();
        OrderDao od = new OrderDao();
        list = od.viewOrder();
        m.addAttribute("numberOfProduct", list.size());
        return "home";
    }

    @RequestMapping(value = "/product.htm")
    public String product(@ModelAttribute("product") Product p, Model m) {
        ProductDao pd = new ProductDao();
        List<Product> plist = pd.viewProduct();
        m.addAttribute("plist", plist);
        List<Order> list = new ArrayList<>();
        OrderDao od = new OrderDao();
        list = od.viewOrder();
        m.addAttribute("numberOfProduct", list.size());
        return "product";
    }

    @RequestMapping(value = "/addtocart.htm")
    public String addCartData(@ModelAttribute("proOrder") Product order, Model m) {
//        List<Order> list = new ArrayList<>();
//        OrderDao od = new OrderDao();
//         od.addOrder(order);
//        list =  od.viewOrder();
//      m.addAttribute("proOrder", list);
List<Order> list = new ArrayList<>();
        OrderDao od = new OrderDao();
        list = od.viewOrder();
        m.addAttribute("numberOfProduct", list.size());
        return "cart";
    }

    @RequestMapping(value = "/log.htm")
    public String log(@ModelAttribute("product") Product p, Model m) {
       List<Order> list = new ArrayList<>();
        OrderDao od = new OrderDao();
        list = od.viewOrder();
        m.addAttribute("numberOfProduct", list.size());
        return "login";
    }

    @RequestMapping(value = "/bag.htm")
    public String bag(@ModelAttribute("proOrder") Order order, Model m) {
        List<Order> list = new ArrayList<>();
        OrderDao od = new OrderDao();
        list = od.viewOrder();
        int totalSum = 0;
        for (Order order1 : list) {
            System.out.println("Order\t" + order1.getProName().toString());
            totalSum += order1.getTotalPrice();
        }
        m.addAttribute("totalPrice", totalSum);
        m.addAttribute("proOrder", list);
        m.addAttribute("numberOfProduct", list.size());
        return "order";
    }

    @RequestMapping("saveOrder.htm")
    public String ConfirmOrder(@ModelAttribute("order") Order order, Model m) {
        OrderDao od = new OrderDao();
        od.addOrder(order);
        ProductDao pd = new ProductDao();
        List<Product> plist = pd.viewProduct();
        m.addAttribute("plist", plist);
        List<Order> list = new ArrayList<>();
       
        list = od.viewOrder();
        m.addAttribute("numberOfProduct", list.size());
        return "product";
    }

    @RequestMapping("dele.htm")
    public String CancelOrder(@ModelAttribute("order") Order order, Model m) {
        OrderDao od = new OrderDao();
        od.cancelOrder(order);
        List<Order> list = new ArrayList<>();

        list = od.viewOrder();
        m.addAttribute("proOrder", list);
        
        return "order";
    }
    @RequestMapping("pay.htm")
    public String payment() {
       
        return "order";
    }
    @RequestMapping("cashDel.htm")
    public String deleveryAddre(Order order, Model m){
         List<Order> list = new ArrayList<>();
        OrderDao od = new OrderDao();
        list = od.viewOrder();
        int totalSum = 0;
        String totalProduct = "";
        for (Order order1 : list) {
          totalProduct += order1.getProName()+"("+order1.getProQty()+")"+", ";
            totalSum += order1.getTotalPrice();
            od.cancelOrder(order1);
        }
        System.err.println(totalProduct);
        m.addAttribute("totalPrice", totalSum);
        m.addAttribute("pro", totalProduct);
        
    return "delevery";
    }
    @RequestMapping("delivary.htm")
    public String deleveryinput(Delivary d, Model m){
        DeliveryDao dd = new DeliveryDao();
        dd.addDelivery(d);
        m.addAttribute("mgg", "Your Order is Confirmed!");
    return "order";
    }
}
