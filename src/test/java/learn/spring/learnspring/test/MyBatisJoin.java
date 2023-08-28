package learn.spring.learnspring.test;

import learn.spring.learnspring.dao.UserDao;
import learn.spring.learnspring.domain.UserExt;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class MyBatisJoin {


    private static final Logger LOGGER = LoggerFactory.getLogger(MyBatisJoin.class);

    @Autowired
    private UserDao userDao;

    @Test
    void testJoinUser() {

        UserExt u = userDao.selectUserById(1);

        LOGGER.info("join res: {}", u.toString());
    }

    @Test
    void testJoinUserMap() {

        UserExt u = userDao.selectUserByIdMap(1);

        LOGGER.info("join res: {}", u.toString());
    }
}
