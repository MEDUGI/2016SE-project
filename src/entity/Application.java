package entity;
/**
 * Created by 李沅泽 on 2016/11/13.
 */
public class Application {
    private int ID;
    private String stu;  // 学生，外键，默认为ID号
    private String pro; // 教授，外键，默认为ID号
    private String applydate;  // 申请日期(精确到小时)
    private int status;  // 申请状态(未通过，审核中，已接受)
    private String message;  // 申请信息（限定字数长度和部分内容——考虑安全性）

    public Application() {

    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getStu() {
        return stu;
    }

    public void setStu(String stu) {
        this.stu = stu;
    }

    public String getPro() {
        return pro;
    }

    public void setPro(String pro) {
        this.pro = pro;
    }

    public String getApplydate() {
        return applydate;
    }

    public void setApplydate(String applydate) {
        this.applydate = applydate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
