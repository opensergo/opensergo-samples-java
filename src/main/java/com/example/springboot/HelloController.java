package com.example.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Autowired(required = false)
    private ServiceInstance serviceInstance;

    @GetMapping("/index")
    public String index() {
        return "Greetings from Spring Boot!\n" + serviceInstance.getInstanceId() + "\n";
    }

    @GetMapping("/hello")
    public String hello() {
        return "Hello from Spring Boot!\n";
    }

}
