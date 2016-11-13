package entity;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class User {
    protected String username;                          // 不多于40个字符
    protected String password;                          // 不多于20个字符

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
