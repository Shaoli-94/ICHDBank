/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chapter3.main;

import chapter3.model.Customer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 *
 * @author XYZ
 */
public class TestBeanWiring {
    public static void main(String[] args) {
        ApplicationContext ac=new ClassPathXmlApplicationContext("chapter3/config/Spring-Config.xml");
        Customer cust=(Customer)ac.getBean("CustomerBean");
        System.out.println("The Values are: ");
        System.out.println(cust.getFirstName());
        System.out.println(cust.getMiddleName());
        System.out.println(cust.getLastName());
    }
    
}
