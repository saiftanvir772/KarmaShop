/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.Admin;
import com.Category;
import com.Delivary;
import com.Product;
import com.SubCategory;
import com.dao.CategoryDao;
import com.dao.DeliveryDao;
import com.dao.LoginDao;
import com.dao.ProductDao;
import com.dao.subCategoryDao;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdminController {
    @RequestMapping(value = "/adminlog.htm")
    public String adminLogin(@ModelAttribute("product") Admin ad, Model m ){
        LoginDao admin = new LoginDao();
        if(admin.adminLogin(ad.getEmail(), ad.getPassword())){
        return "adminpanel";
        }else{
        return "admin";
        }
      
   }
    
     @RequestMapping(value = "/admin.htm")
    public String admin(@ModelAttribute("product")Product p, Model m ){
    return "admin";
    }
    
    @RequestMapping(value = "/addsubcat.htm")
    public String addsubcategory(@ModelAttribute("category") Category sc, Model m ){
        CategoryDao cd = new CategoryDao();
        List<Category> clist = cd.getCategory();
        m.addAttribute("clist", clist);
    return "addsubcat";
    }
    @RequestMapping(value = "/addcat.htm")
    public String addcategory(@ModelAttribute("product")Product p, Model m ){
    return "addcat";
    }
    @RequestMapping(value = "/addproduct.htm")
    public String addpro(@ModelAttribute("product")Category c, SubCategory scat, Model m ){
        CategoryDao cd = new CategoryDao();
        List<Category> clist = cd.getCategory();
        m.addAttribute("clist", clist);
        
    return "addproduct";
    }
    @RequestMapping(value = "/catagory.htm")
    public String createCategory(@ModelAttribute("category") Category cat, Model m ){
    CategoryDao cd = new CategoryDao();
   cd.adCategory(cat);
    return "adminpanel";
    }
    @RequestMapping(value = "/subcatagory.htm")
    public String createsubCategory(@ModelAttribute("subcategory") SubCategory scat, Model m ){
   subCategoryDao scd = new subCategoryDao();
    scd.addSubCat(scat);
    return "adminpanel";
    }
    @RequestMapping(value = "/productAdd.htm")
    public String productAdd(@ModelAttribute("pro")Product p, Model m ){
       ProductDao proDao = new ProductDao();
       proDao.AddProduct(p);
    return "adminpanel";
    }
    
    
    @RequestMapping(value = "/selCat.htm")
    public String showSubcat(@ModelAttribute("pro")SubCategory sc, Model m ){
       
       subCategoryDao scdao = new subCategoryDao();
        List<SubCategory> subcatList =  scdao.viewSubcatByCat(sc.getCatName());
      m.addAttribute("list", subcatList);
        CategoryDao cd = new CategoryDao();
       List<Category> clist = cd.getCategory();
        m.addAttribute("clist", clist);
    return "addproduct";
    }
    
    @RequestMapping("productA")
    public String productAdmin(@ModelAttribute("pro") Product p, Model m){
        ProductDao pd = new ProductDao();
        List<Product> plist = pd.viewProduct();
        m.addAttribute("list", plist);
    return "productA";
    }
    
    @RequestMapping("del.htm")
    public String deletePro(@ModelAttribute("pro") Product p, Model m){
        ProductDao pd = new ProductDao();
        pd.deleteProduct(p);
        List<Product> plist = pd.viewProduct();
        m.addAttribute("list", plist);
    return "productA";
    }
    @RequestMapping("up.htm")
    public String ProEdit(@ModelAttribute("pro") Product p, Model m){
        ProductDao pd = new ProductDao();
        pd.updatePro(p);
        List<Product> plist = pd.viewProduct();
        m.addAttribute("list", plist);
    return "productA";
    }
    
    @RequestMapping("edit.htm")
    public String editPro(@ModelAttribute("pro") Product p, Model m){
        
    return "proEdit";
    }
    @RequestMapping("delivarydel.htm")
    public String ddddd(Delivary deli, Model m){
    List <Delivary> ll = new ArrayList<>();
        DeliveryDao dd = new DeliveryDao();
        dd.delDelivary(deli);
        ll = dd.allDelivery();
        m.addAttribute("delivary", ll);
    return "delreport";
    }
    
     @RequestMapping("allOrder.htm")
    public String order(@ModelAttribute("pro") Delivary p, Model m){
        List <Delivary> ll = new ArrayList<>();
        DeliveryDao dd = new DeliveryDao();
        ll = dd.allDelivery();
        m.addAttribute("delivary", ll);
    return "delreport";
    }
     
    
}
