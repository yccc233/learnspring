package learn.spring.learnspring.dao;

import learn.spring.learnspring.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    User selectById(int id);

    int insertUser(User u);

    int updateById(User u);

    int deleteById(int id);

}
