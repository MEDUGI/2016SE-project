package entity;

/**
 * Created by 李沅泽 on 2016/11/13.
 */
public class Relation {
    private int ID;
    private String stu;  // 默认为学生的学号
    private String pro;  // 默认为教授的ID号
    private String studentmessage; // 申请时填写信息
    private int apply;  // 对应申请的ID号
    private String date;  // 关系建立时间
    private String tutormessage;  // 教师回应信息

    public Relation() {

    }

    public Relation(Application app, String date, String message) {
        stu = app.getFrom();
        pro = app.getTo();
        studentmessage = app.getMessage();
        this.date = date;
        apply = app.getID();
        tutormessage = message;
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

    public String getStudentmessage() {
        return studentmessage;
    }

    public void setStudentmessage(String studentmessage) {
        this.studentmessage = studentmessage;
    }

    public int getApply() {
        return apply;
    }

    public void setApply(int apply) {
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
