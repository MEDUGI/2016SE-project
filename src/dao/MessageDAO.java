package dao;

import entity.Tools;
import org.DbPool;

import java.sql.PreparedStatement;
import java.util.ArrayList;

import entity.Message;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class MessageDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;

    public MessageDAO() {

    }

    public int addMessage(Message mail) {
        int i = 0;
        String sql = "insert into message value(?,?,?,?,?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,mail.getUserFrom());
            ps.setString(2,mail.getUserTo());
            ps.setString(3,mail.getDate());
            ps.setString(4,mail.getStatus()+"");
            ps.setString(5,mail.getContent());
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    /*
        mode=userStyle+readStyle
        status=0表未读，为1表已读,为2表收藏;
        userStyle=1时，用户为学生；userStyle=0时，用户为教授;
        FromOrTo=0时，ID表示送的用户；FromOrTo=1时，ID代表收的用户；
        根据提供的ID和MODE，抽取目前未被读取的信息;
     */
    public ArrayList<Message> getMessageListByUserID(String ID,int status,int FromOrTo,int userStyle) {
        ArrayList<Message> resultList = new ArrayList<Message>();
        String userID;
        int i = 0;
        String sql = "select * from message when ";

        if (status == 1) {
            sql += "status=1 and ";
        }
        else {
            sql += "status=0 and ";
        }

        if (FromOrTo == 1) {
            sql += "userTo=?";
        }
        else {
            sql += "userFrom=?";
        }

        userID = Tools.addUserStyleSymbol(ID,userStyle);

        try {

        }catch (Exception e) {
            e.printStackTrace();
        }
        return resultList;
    }

    public int deleteMessage() {
        return 0;
    }
}
