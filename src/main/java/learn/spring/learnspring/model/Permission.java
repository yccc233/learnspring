package learn.spring.learnspring.model;

import lombok.Data;

import java.io.Serializable;

@Data
public class Permission implements Serializable {

    private int id;

    private String permissionType;

    private String desc;

}
