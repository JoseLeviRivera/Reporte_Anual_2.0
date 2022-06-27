package Control;
import Patter.Action;
import Util.DbUtil;
import Util.ReqUtil;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet {
    private Connection dbCon;
    public void init() {
        try {
            dbCon = DbUtil.getInstance().getConnection();
        } catch (Exception e) {
            System.out.println("A problem occurred while connecting to the database.");
            System.out.println(e.toString());
        }
    }

    public void doGet(HttpServletRequest _req, HttpServletResponse _res) throws ServletException, IOException {
        doPost(_req, _res);
    }

    public void doPost(HttpServletRequest _req, HttpServletResponse _res) throws ServletException, IOException {
        ReqUtil reqUtil = new ReqUtil(_req);
        Action action = (Action) reqUtil.getAction();
        init();
        action.setDatabase(dbCon);
        if (action.execute(_req, _res)) {
            String view = action.getView();
            _req.setAttribute("model", action.getModel());
            RequestDispatcher dispatcher = _req.getRequestDispatcher(view);
            dispatcher.forward(_req, _res);
        }
    }

    public void destroy() {
        try {
            dbCon.close();
        } catch (java.sql.SQLException e) {
            System.out.println("A problem occurred while closing the database.");
            System.out.println(e.toString());
        }
    }

}
