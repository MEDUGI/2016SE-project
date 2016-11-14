package entity;
import entity.Student;
import entity.Professor;
/**
 * Created by 李沅泽 on 2016/11/13.
 */
public class Application {
    Student stu;  // 学生，外键，默认为ID号
    Professor pro; // 教授，外键，默认为ID号
    String applydate;  // 申请日期(精确到小时)
    int status;  // 申请状态(未通过，审核中，已接受)
    String message;  // 申请信息（限定字数长度和部分内容——考虑安全性）

    public Application() {

    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Professor getPro() {
        return pro;
    }

    public void setPro(Professor pro) {
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
