package entity;

import java.util.ArrayList;
import java.util.Set;

/**
 * Created by 李沅泽 on 2016/11/16.
 */
public abstract class Recommand {
    private String username;

    public Recommand() {

    }

    public Recommand(String username) {
        this.username = username;
    }

    public abstract ArrayList execWithRestraint();

}
