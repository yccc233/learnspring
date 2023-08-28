package learn.spring.learnspring.model;

import lombok.Data;

import java.io.Serializable;

@Data
public class User implements Serializable {

    private int id;

    private String username;

    private String nickname;

    private String phoneNumber;

    private String email;

    private String password;

    private String avatarUrl;

    private String description;

    private int enabled;

    private int permissions;

}
