package entity;

/**
 * Created by Xiangxi on 2016/12/15.
 * Contact him on zxx_1996@qq.com
 */
public class ShortApplication {
    int id;
    int status;
    String applyDate;
    String opposite;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(String applyDate) {
        this.applyDate = applyDate;
    }

    public String getOpposite() {
        return opposite;
    }

    public void setOpposite(String opposite) {
        this.opposite = opposite;
    }

    public ShortApplication(Application application, String username) {
        id = application.getID();
        status = application.getStatus();
        applyDate = application.getApplydate();
        if (application.getFrom().equals(username))
            opposite = application.getTo();
        else
            opposite = application.getFrom();
    }
}
