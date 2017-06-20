package com.ptteng.controlller;


import com.ptteng.dao.StudentDao;
import com.ptteng.dao.VocationDao;
import com.ptteng.entity.Student;
import com.ptteng.entity.Vocation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by litao on 2017/2/28.
 */

@Controller
public class HomeController {

    @Autowired
    private StudentDao dao;

    @Autowired
    private VocationDao vocationDao;

//    @RequestMapping(value = "/custom")
//    public String inputCustomer(){
//        return "customView";
//    }

//    @RequestMapping(value = "/customer_save")
//    public String handleRequest(ProductForm productForm, Model model) throws Exception {
//        logger.info("handleRequest called!");
//        Product product = new Product();
//        product.setName(productForm.getName());
//        product.setDescription(productForm.getDescription());
//        model.addAttribute("product",product);
//        return "custom";
//    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String getHomeInfo(ModelMap modelMap){
        List<Student> list = dao.findAllGoodStudent();
        modelMap.put("list",list);
        return "home";
    }

    @RequestMapping(value = "/courseList", method = RequestMethod.GET)
    public String getTextInfo(ModelMap modelMap){

        List<Vocation> list1 = vocationDao.getVocationsWithDirection(1);
        List<Vocation> list2 = vocationDao.getVocationsWithDirection(2);
        List<Vocation> list3 = vocationDao.getVocationsWithDirection(3);
        List<Vocation> list4 = vocationDao.getVocationsWithDirection(4);
        List<Vocation> list5 = vocationDao.getVocationsWithDirection(5);

        List list = new ArrayList();
        list.add(list1);
        list.add(list2);
        list.add(list3);
        list.add(list4);
        list.add(list5);

        modelMap.put("list",list);

        return "courseList";
    }



}
