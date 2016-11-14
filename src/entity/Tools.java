package entity;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class Tools {

    public static String addUserStyleSymbol(String ID, int style) {
        if (style == 1) {
            return "S"+ID;
        }
        else return "P"+ID;
    }
}
