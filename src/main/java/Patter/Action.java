
package Patter;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author josel
 */
public interface Action {
        /* Set Database Connection */
	public void setDatabase(Connection _db);
	/* Execute business logic */
	public boolean execute(HttpServletRequest _req, HttpServletResponse _res) throws ServletException, IOException;
	/* Return the page name (and path) to display the view */	
	public String getView();
	/* Return a JavaBean containing the model (data) */
	public Object getModel();
}
