package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.IOException;

/**
 * Created by forandroid on 16-12-13.
 */
public class school extends ActionSupport {
    private static final long serialVersionUID = 1L;
    private int id;
    private String result;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    @Override
    public String execute() throws IOException{
        result = "HIT";
        ServletActionContext.getResponse().getWriter().print(result);
        return null;
    }
}
