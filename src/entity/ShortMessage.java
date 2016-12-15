package entity;

/**
 * Created by Xiangxi on 2016/12/15.
 * Contact him on zxx_1996@qq.com
 */
public class ShortMessage {
    private int ID;
    private String imgURL;
    private String userFrom;
    private String date;
    private String content;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public String getUserFrom() {
        return userFrom;
    }

    public void setUserFrom(String userFrom) {
        this.userFrom = userFrom;
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

    public ShortMessage(Message message) {
        ID = message.getID();
        imgURL = ""; //TODO:
        userFrom = message.getUserFrom();
        date = message.getDate();
        content = message.getContent();
        if (content.length() > 140)
            content = content.substring(0,140) + "...";
    }
}
