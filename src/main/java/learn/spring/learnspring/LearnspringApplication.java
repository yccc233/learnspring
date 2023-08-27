package learn.spring.learnspring;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class LearnspringApplication {

    public static void main(String[] args) {
        SpringApplication.run(LearnspringApplication.class, args);
    }
}
