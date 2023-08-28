package learn.spring.learnspring.domain;

import learn.spring.learnspring.model.Permission;
import learn.spring.learnspring.model.User;
import lombok.Data;

@Data
public class UserExt extends User {



    private Permission permission;

    @Override
    public String toString() {
        return "UserExt{" + super.toString()+
                "permission=" + permission.toString() +
                '}';
    }
}
