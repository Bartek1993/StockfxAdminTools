package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RestController {
    @GetMapping(value = "/index")
    public String services()
    {
        return "index.jsp";
    }
}
