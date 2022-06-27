package Actions;

import BLL.BLL_Usuario;
import EL.Usuario;
import Hash.Hash;
import Patter.Action;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UsuarioQryAction extends ActionAbstract implements Action {
    private Usuario usuario;
    private Hash hash;
    private String password;
    private String mail;

    @Override
    protected boolean processData(HttpServletRequest _req) {
        BLL_Usuario bll = new BLL_Usuario();
        usuario = new Usuario();
        hash = new Hash();
        loadData(_req);
        if (!mail.equals("") && !password.equals("")) {
            Usuario usu = bll.queryToDataBaseEspecific(mail);
            if (!usu.getEmail().equals(null) && !usu.getNombre().equals(null) && !usu.getPassword().equals(null)) {
                if (usu.getEmail().equals(usuario.getEmail()) && usu.getPassword().equals(Hash.sha1(usuario.getPassword()))) {
                    usuario.setEmail(usu.getEmail());
                    usuario.setNombre(usu.getNombre());
                    usuario.setPassword(usu.getPassword());
                    usuario.setId(usu.getId());
                    _req.setAttribute("usuario", usuario);
                    _req.getSession().setAttribute("nombre", usuario.getNombre());
                    _req.getSession().setAttribute("correo", usuario.getEmail());
                } else {
                    view = "Login.jsp";
                }
            }else {
                view = "Login.jsp";
            }
        } else {
            view = "Login.jsp";
        }

        return usuario != null;
    }

    @Override
    protected void loadData(HttpServletRequest _req) {
        mail = _req.getParameter("mail");
        password = _req.getParameter("password");
        usuario.setEmail(mail);
        usuario.setPassword(password);
    }

    @Override
    public void setDatabase(Connection _db) {
        this.conection = _db;
    }

    @Override
    public boolean execute(HttpServletRequest _req, HttpServletResponse _res) throws ServletException, IOException {
        view = "Principal.jsp";
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
