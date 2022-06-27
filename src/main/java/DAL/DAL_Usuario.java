package DAL;
import EL.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAL_Usuario extends DAL {
    
    public DAL_Usuario(Connection con) {
        super(con);
    }
    
    @Override
    public int deleteToDataBase(int num) {
        try {
            this.callableStatement = this.getConecction().prepareCall("{call tbl_usuario_eliminar(?)}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            this.callableStatement.setInt("IN_num", num);
            boolean results = this.callableStatement.execute();
            int rowsAffected = 0;
            while (results || rowsAffected != -1) {
                if (results) {
                    this.resulSet = this.callableStatement.getResultSet();
                    break;
                } else {
                    rowsAffected = this.callableStatement.getUpdateCount();
                }
                results = this.callableStatement.getMoreResults();
            }
            int aux = 0;
            if (this.resulSet.next()) {
                aux = this.resulSet.getInt(1);
            }
            return aux;
        } catch (SQLException e) {
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return 0;
    }
    
    @Override
    public int insertToDataBase(Object u) {
        Usuario usuario = (Usuario) u;
        try {
            this.callableStatement = this.getConecction().prepareCall("{call tbl_usuario_insertar(?,?,?)}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            this.callableStatement.setString("IN_usuario", usuario.getNombre());
            this.callableStatement.setString("IN_contrasenia", usuario.getPassword());
            this.callableStatement.setString("IN_correo", usuario.getEmail());
            boolean results = this.callableStatement.execute();
            int rowsAffected = 0;
            while (results || rowsAffected != -1) {
                if (results) {
                    this.resulSet = this.callableStatement.getResultSet();
                    break;
                } else {
                    rowsAffected = this.callableStatement.getUpdateCount();
                }
                results = this.callableStatement.getMoreResults();
            }
            int aux = 0;
            if (this.resulSet.next()) {
                aux = this.resulSet.getInt(1);
            }
            return aux;
        } catch (SQLException e) {
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return 0;
    }
    
    @Override
    public int updateToDataBase(Object u) {
        Usuario usuario = (Usuario) u;
        try {
            this.callableStatement = this.getConecction().prepareCall("{call tbl_usuario_actualizar(?,?,?,?)}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            this.callableStatement.setInt("IN_id_usuario", usuario.getId());
            this.callableStatement.setString("IN_usuario", usuario.getNombre());
            this.callableStatement.setString("IN_contrasenia", usuario.getPassword());
            this.callableStatement.setString("IN_correo", usuario.getEmail());
            boolean results = this.callableStatement.execute();
            int rowsAffected = 0;
            while (results || rowsAffected != -1) {
                if (results) {
                    this.resulSet = this.callableStatement.getResultSet();
                    break;
                } else {
                    rowsAffected = this.callableStatement.getUpdateCount();
                }
                results = this.callableStatement.getMoreResults();
            }
            int aux = 0;
            if (this.resulSet.next()) {
                aux = this.resulSet.getInt(1);
            }
            return aux;
        } catch (SQLException e) {
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return 0;
    }
    
    public List<Usuario> queryToDataBase(String user) {
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        
        try {
            this.callableStatement = this.getConecction().prepareCall("{call tbl_usuario_query(?)}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            this.callableStatement.setString("IN_usuario", user);
            boolean results = this.callableStatement.execute();
            int rowsAffected = 0;
            while (results || rowsAffected != -1) {
                if (results) {
                    this.resulSet = this.callableStatement.getResultSet();
                    break;
                } else {
                    rowsAffected = this.callableStatement.getUpdateCount();
                }
                results = this.callableStatement.getMoreResults();
            }
            
            while (this.resulSet.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(this.resulSet.getInt("id_usuario"));
                usuario.setNombre(this.resulSet.getString("usuario"));
                usuario.setPassword(this.resulSet.getString("contrasenia"));
                usuario.setEmail(this.resulSet.getString("correo"));
                listaUsuarios.add(usuario);
            }
        } catch (SQLException e) {
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return listaUsuarios;
        
    }
    
    public Usuario queryToDataBaseEspecific(String correo) {
       Usuario usuario = new Usuario();
        
        try {
            this.callableStatement = this.getConecction().prepareCall("{call tbl_usuario_query_Especifico(?)}",
                    ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            this.callableStatement.setString("IN_correo", correo);
            boolean results = this.callableStatement.execute();
            int rowsAffected = 0;
            while (results || rowsAffected != -1) {
                if (results) {
                    this.resulSet = this.callableStatement.getResultSet();
                    break;
                } else {
                    rowsAffected = this.callableStatement.getUpdateCount();
                }
                results = this.callableStatement.getMoreResults();
            }
            
            while (this.resulSet.next()) {
                usuario.setId(this.resulSet.getInt("id_usuario"));
                usuario.setNombre(this.resulSet.getString("usuario"));
                usuario.setPassword(this.resulSet.getString("contrasenia"));
                usuario.setEmail(this.resulSet.getString("correo"));
            }
        } catch (SQLException e) {
            System.out.println("Failed to get the collection of records " + e.toString());
        }
        return usuario;
    }
    
}
