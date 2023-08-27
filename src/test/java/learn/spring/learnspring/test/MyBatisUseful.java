package learn.spring.learnspring.test;

import learn.spring.learnspring.dao.UserDao;
import learn.spring.learnspring.model.User;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import java.util.List;

@SpringBootTest
public class MyBatisUseful {
    private static final Logger LOGGER = LoggerFactory.getLogger(MyBatisUseful.class);

    @Autowired
    private UserDao userDao;

    @Test
    void testUsefulSelectById() {
     List<User> targetList = userDao.usefulSelectByIdOrUsernameOrNickname(null, "user", null);
     LOGGER.info("select res : {}", targetList.toString());
    }
}
