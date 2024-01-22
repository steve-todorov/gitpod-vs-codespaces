package org.example.gitpodvscodespaces.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class HomepageController
{

    public HomepageController()
    {
    }

    @GetMapping("/")
    public String endpoint()
    {
        return "Hello world @ " + new Date();
    }

}
