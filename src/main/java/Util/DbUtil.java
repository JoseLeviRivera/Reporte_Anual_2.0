package Util;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;


public class DbUtil {
        private static DbUtil instance = new DbUtil();
	private Connection conexion = null;
	
	private DbUtil(){}
	public static DbUtil getInstance() {
            return instance;
	}
        
	public boolean createConexion(){
            try {
            Properties prop = new Properties();
            // Get the package name
            String packName = new Object(){}.getClass().getPackage().getName();   
            packName = packName.replace('.', '/') + "/";
            //System.out.println(packName.replace('.', '/'));
            
            InputStream inputStream = DbUtil.class.getClassLoader().getResourceAsStream("db.properties");
            prop.load(inputStream);
            String driver = prop.getProperty("driver").trim();
            String url = prop.getProperty("url").trim();
            String database = prop.getProperty("database").trim();
            String user = prop.getProperty("user").trim();
            String password = prop.getProperty("password").trim();
            Class.forName(driver);
            
            conexion = DriverManager.getConnection(url + database, user, password);
            if (conexion != null) 
            {                
            	System.out.println("Conexion a base de datos lista....Esperando :)");
                
            }
        } catch (ClassNotFoundException e) {                    // La clase a la que se llama no funciona
            e.printStackTrace();
        } catch (SQLException e) { 				// Error al establecer conexion
            e.printStackTrace();
        } catch (FileNotFoundException e) {                     // Error al leer el archivo 
            e.printStackTrace();
        } catch (IOException e) { 				// Se ha producido un error en la entrada/salida
            e.printStackTrace();
        }
            return true;
	}
	
    public Connection getConnection() {
        if (conexion == null)
            this.createConexion();          
        return conexion;
    }

    private Statement createStatement(int TYPE_FORWARD_ONLY, int CONCUR_READ_ONLY) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
