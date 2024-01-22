package org.example.gitpodvscodespaces;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"org.example.gitpodvscodespaces.controllers"})
public class GitpodVsCodespacesApplication
{

    public static void main(String[] args)
    {
        SpringApplication.run(GitpodVsCodespacesApplication.class, args);
    }

}
