package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import entity.DbPool;
import org.apache.struts2.ServletActionContext;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by forandroid on 16-12-13.
 */
public class school extends ActionSupport {
    private static final long serialVersionUID = 1L;
    private String id;
    private ArrayList<String> results;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public ArrayList<String> getResults() {
        return results;
    }

    public void setResults(ArrayList<String> results) {
        this.results = results;
    }

    public String execute() throws IOException {
        results = new ArrayList<>();
        DbPool dbp = new DbPool();
        PreparedStatement ps = null;
        String sql = "select name from school where place ='" + id + "';";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                results.add(rs.getString("name"));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
        ServletActionContext.getResponse().setHeader("content-type", "text/html;charset=UTF-8");
        ServletActionContext.getResponse().getWriter().print(results);
        return null;
    }
}
