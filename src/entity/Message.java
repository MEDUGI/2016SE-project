package entity;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class Message {
    private int ID;
    private String userFrom;
    private String userTo;
    private String date;
    private String content;
    private int status;  // 信件的状态，未读0，已读1，收藏2
    private String format;  //TODO 优化站内信的编辑器可能是之后在第二轮迭代中要做的事情。

    public Message() {

    }

    public Message(String from,String FromStyle,String to, String ToStyle, String time, String content) {
        userFrom = Tools.addUserStyleSymbol(from,FromStyle);
        userTo = Tools.addUserStyleSymbol(to,ToStyle);
        date = time;
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getUserFrom() {
        return userFrom;
    }

    public void setUserFrom(String userFrom) {
        this.userFrom = userFrom;
    }

    public String getUserTo() {
        return userTo;
    }

    public void setUserTo(String userTo) {
        this.userTo = userTo;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }
}
