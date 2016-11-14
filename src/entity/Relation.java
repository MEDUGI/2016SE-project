package entity;
import entity.Student;
import entity.Professor;
import entity.Application;

/**
 * Created by 李沅泽 on 2016/11/13.
 */
public class Relation {
    private String stu;  // 默认为学生的学号
    private String pro;  // 默认为教授的ID号
    private String studentmessage; // 申请时填写信息
    private Application apply;  // 对应申请
    private String date;  // 关系建立时间
    private String tutormessage;  // 教师回应信息

    public Relation() {

    }

    public Relation(Application app, String date, String message) {
        stu = app.getStu();
        pro = app.getPro();
        studentmessage = app.getMessage();
        this.date = date;
        apply = app;
        tutormessage = message;
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

    public String getStudentmessage() {
        return studentmessage;
    }

    public void setStudentmessage(String studentmessage) {
        this.studentmessage = studentmessage;
    }

    public Application getApply() {
        return apply;
    }

    public void setApply(Application apply) {
        this.apply = apply;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTutormessage() {
        return tutormessage;
    }

    public void setTutormessage(String tutormessage) {
        this.tutormessage = tutormessage;
    }
}
