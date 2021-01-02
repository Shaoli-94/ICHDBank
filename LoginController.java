/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chapter3.controller;

import org.springframework.context.ApplicationContext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import chapter3.model.Account;
import chapter3.model.Customer;
import chapter3.service.LoginService;
import org.springframework.context.support.ClassPathXmlApplicationContext;
/**
 *
 * @author XYZ
 */
@Controller
@RequestMapping(value="/loginView.htm")
public class LoginController {
    
    LoginService loginService;
    public void setLoginService(LoginService loginService)
    {
        this.loginService=loginService;
    }
    @RequestMapping(method=RequestMethod.GET)
    public String showLoginView(ModelMap model)
    {
        Customer customer=new Customer();
        model.addAttribute("CUSTOMER",customer);
        return "loginView";
    }
    @RequestMapping(method=RequestMethod.POST)
    public String processForm(@ModelAttribute(value="CUSTOMER")Customer customer,ModelMap model)
    {
        ApplicationContext ac=new ClassPathXmlApplicationContext("chapter3/config/Spring-Config.xml");
        Account act=(Account)ac.getBean("AccountBean");
        String str="Account Number: "+act.getAccountNumber();
        model.addAttribute("accountNumber",str);
        String str1="Account Balance($): "+act.getBalance();
        model.addAttribute("accountBalance",str1);
        model.addAttribute("helloMessage",loginService.sayHello(customer.getUserName()));
        return "userAccount";
    }
    
}

