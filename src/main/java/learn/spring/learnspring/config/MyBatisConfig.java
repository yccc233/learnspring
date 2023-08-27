package learn.spring.learnspring.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("learn.spring.learnspring.dao")
public class MyBatisConfig {
}
