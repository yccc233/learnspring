package learn.spring.learnspring.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/learnspring/usermanage")
public class UserController {

    @PostMapping("/verifyUser")
    public String verifyUser(@RequestParam(value = "username") String username,
            @RequestParam(value = "pwd") String pwd) {
        return "Ok!";
    }
}
