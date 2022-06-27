package Actions;
import BLL.BLL_Usuario;
import EL.ErrorStatus;
import EL.Usuario;
import Patter.Action;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UsuarioAddAction extends ActionAbstract implements Action{
    private Usuario usuario;
    private String passwordRepeat;
    
    @Override
    public boolean processData(HttpServletRequest _req) {
        BLL_Usuario bll = new BLL_Usuario();
        loadData(_req);
        if(!usuario.getEmail().equals("") && !usuario.getNombre().equals("") && !usuario.getPassword().equals("")){
            if(this.usuario.getPassword().equals(passwordRepeat)){
                statusBll = bll.insertToDataBase(usuario);
                if(statusBll){
                    usuario.setPassword("password");
                     this.error.setDescripcion("Se registro el usuario correctamente!");
                     this.error.setStatus(true);
                }else{
                    this.error.setDescripcion("El usuario ya existe, verifique bien por favor!");
                    this.error.setStatus(false);
                    usuario = new Usuario();
                }
            }else {
                this.error.setDescripcion("El campo de contraseña no son iguales!");
                this.error.setStatus(false);
                usuario = new Usuario();
            }
        }else {
            this.error.setDescripcion("Los campos estan vacios, favor de llenarlos!");
            this.error.setStatus(false);
            usuario = new Usuario();
        }
        _req.setAttribute("usuario", usuario);
         _req.setAttribute("status",this.error);
        return usuario != null;
    }

    @Override
    public void loadData(HttpServletRequest _req) {
        error = new ErrorStatus();
        usuario = new Usuario();
        String nombre = _req.getParameter("usuario");
        String mail = _req.getParameter("mail");
        String password = _req.getParameter("password");
        passwordRepeat = _req.getParameter("password-Repeat");
        usuario.setNombre(nombre);
        usuario.setEmail(mail);
        usuario.setPassword(password);
    }

    @Override
    public void setDatabase(Connection _db) {
        this.conection = _db;
    }

    @Override
    public boolean execute(HttpServletRequest _req, HttpServletResponse _res) throws ServletException, IOException {
        this.view = "Login.jsp";
        return processData(_req);
    }

    @Override
    public String getView() {
        return view;
    }

    @Override
    public Object getModel() {
        return usuario;
    }
}
