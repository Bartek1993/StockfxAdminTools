package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RestController {

    @GetMapping(value ={"/index","/"})
    public String services()
    {
        return "index";
    }
    @GetMapping(value = "/indexUsers")
    public String servicesUsers()
    {
        return "indexUsers";
    }
    @GetMapping(value = "/indexProducts")
    public String servicesProduct()
    {
        return "indexProducts";
    }
    @GetMapping(value = "/indexLocations")
    public String servicesLocations()
    {
        return "indexLocations";
    }
    @GetMapping(value = "/indexMain")
    public String servicesMain()
    {
        return "indexMain";
    }


    @GetMapping(value = "/userComplete")
    public String userComplete()
    {
        return "userComplete";
    }
    @GetMapping(value = "/productsComplete")
    public String productsComplete()
    {
        return "productsComplete";
    }
    @GetMapping(value = "/LocationsComplete")
    public String LocationsComplete()
    {
        return "LocationsComplete";
    }
}
