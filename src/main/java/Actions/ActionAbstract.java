package Actions;
import EL.ErrorStatus;
import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;

public abstract class ActionAbstract {
    protected String view;
    protected Connection conection;
    protected ErrorStatus error;  
    protected boolean statusBll;
    protected abstract boolean processData(HttpServletRequest _req);
    protected abstract void loadData(HttpServletRequest _req);

}
