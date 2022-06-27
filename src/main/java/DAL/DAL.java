
package DAL;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;


public abstract class DAL {
     //Attributes
    private Connection conecction;
    protected  CallableStatement callableStatement;
    protected  ResultSet resulSet;
    //Contructor
    public DAL(Connection con){ conecction = con; }
    //Methods
    public Connection getConecction() { return conecction; }
    public void setConecction(Connection conecction) { this.conecction = conecction; }
    //public abstract List<Object> queryToDataBaseList(String user) ;
    //public abstract Object queryToDataBase(int numero);
    public abstract int deleteToDataBase(int num);
    public abstract int insertToDataBase(Object u);
    public abstract int updateToDataBase(Object u);
}
