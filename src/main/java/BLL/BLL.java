package BLL;

import Util.DbUtil;
import java.sql.Connection;

public abstract class BLL {
    protected Connection connection;
    
    public BLL(){
       connection = DbUtil.getInstance().getConnection();
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
    
    public abstract boolean deleteToDataBase(int num);
    public abstract boolean insertToDataBase(Object u);
    public abstract boolean updateToDataBase(Object u);
}
