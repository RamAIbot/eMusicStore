package com.emusicstore.controller;

import com.emusicstore.model.BillingAddress;
import com.emusicstore.model.Customer;
import com.emusicstore.model.ShippingAddress;
import com.emusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class RegisterController {
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model)
    {
        Customer customer=new Customer();
        BillingAddress billingAddress=new BillingAddress();
        ShippingAddress shippingAddress=new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);
        model.addAttribute("customer",customer);
        return "registerCustomer";
    }

    @RequestMapping(value="/register",method= RequestMethod.POST)
    public String registerCustomerPost(@ModelAttribute("customer")Customer customer, Model model)
    {
        List<Customer> customerList=customerService.getAllCustomers();
        for(int i=0;i<customerList.size();i++)
        {
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail()))
            {
                model.addAttribute("emailMsg","The customer already exists");
                return "registerCustomer";

            }

            if(customer.getUsername().equals(customerList.get(i).getUsername()))
            {
                model.addAttribute("usernameMsg","The user already exists");
                return "registerCustomer";

            }
        }
        customer.setEnabled(true);
        customerService.addCustomer(customer);
        return "registerCustomerSuccess";
    }
}
