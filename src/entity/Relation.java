package entity;
import entity.Student;
import entity.Professor;
import entity.Application;

/**
 * Created by 李沅泽 on 2016/11/13.
 */
public class Relation {
    Student stu;
    Professor pro;
    String studentmessage; // 申请时填写信息
    Application apply;  // 对应申请
    String date;  // 关系建立时间
    String tutormessage;  // 教师回应信息

    public Relation() {

    }

    public Relation(Application app) {
        stu = app.stu;
        pro = app.pro;
        studentmessage = app.message;
        apply = app;
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
