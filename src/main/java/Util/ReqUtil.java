package Util;

import Patter.Action;
import Patter.ActionFactory;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

public class ReqUtil {

    HttpServletRequest request;

    public ReqUtil(HttpServletRequest _req) throws ServletException, IOException {
        request = _req;
    }

    public Action getAction() {
        String action = (String) request.getParameter("action");
        return ActionFactory.createAction(action);

    }
}
