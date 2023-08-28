package learn.spring.learnspring.dao;

import learn.spring.learnspring.domain.UserExt;
import learn.spring.learnspring.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    User selectById(int id);

    int insertUser(User u);

    int updateById(User u);

    int deleteById(int id);

    List<User> usefulSelectByIdOrUsernameOrNickname(Integer id, String userName, String nickName);


    UserExt selectUserById(int id);

    UserExt selectUserByIdMap(int id);

}
