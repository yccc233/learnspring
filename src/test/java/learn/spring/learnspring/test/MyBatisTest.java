package learn.spring.learnspring.test;

import learn.spring.learnspring.dao.UserDao;
import learn.spring.learnspring.model.User;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class MyBatisTest {
    private static final Logger LOGGER = LoggerFactory.getLogger(MyBatisTest.class);
    @Autowired
    private UserDao userDao;

    @Test
    void testSelectById() {
        User u = userDao.selectById(1);
        LOGGER.info("test RES:={}", u.toString());
    }

    @Test
    void testInsert() {
        User u = new User();
        u.setUsername("yc");
        u.setNickname("俞澄");
        u.setDescription("你好");
        u.setEmail("1099@qq.com");
        u.setEnabled(1);
        u.setPermissions(1);
        u.setPassword("1121234");

        int id = userDao.insertUser(u);
        LOGGER.info("test RES:={}", id);
    }

    @Test
    void testUpdateById() {
//        User u = userDao.selectById(1);
        User u = new User();
        u.setId(1);
        u.setUsername("ycc");

        userDao.updateById(u);
        LOGGER.info("test RES:={}", u.toString());
    }

    @Test
    void testDeleteById() {
       int del_id = userDao.deleteById(6);
        LOGGER.info("test RES:={}", del_id);
    }
}
