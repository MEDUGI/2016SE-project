package entity;
/**
 * Created by 李沅泽 on 2016/11/13.
 */
public class Application {
    private int ID;
    private String from;  // 发送方，外键，默认为用户名
    private String to; // 接收方，外键，默认为用户名
    private boolean isFromStudent;  // 是否是由学生发送的
    private String applydate;  // 申请日期(精确到日)
    private int status;  // 申请状态(未通过0，审核中1，已接受2)
    private String message;  // 申请信息（限定字数长度和部分内容——考虑安全性）

    public Application() {

    }

    public boolean getIsFromStudent() {
        return isFromStudent;
    }

    public void setIsFromStudent(boolean isFromStudent) {
        this.isFromStudent = isFromStudent;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
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
