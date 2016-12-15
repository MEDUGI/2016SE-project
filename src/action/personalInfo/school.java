package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by forandroid on 16-12-13.
 */
public class school extends ActionSupport {
    private static final long serialVersionUID = 1L;
    private int id;
    private ArrayList<String> results;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    @Override
    public String execute() throws IOException {
        results = new ArrayList<>();
        if (id==0) {
            results.add("PKU");
            results.add("THU");
        }
        else {
            results.add("HIT");
            results.add("HMU");
        }
        ServletActionContext.getResponse().getWriter().print(results);
        return null;
    }
}
