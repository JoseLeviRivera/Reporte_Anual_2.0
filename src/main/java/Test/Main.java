
package Test;

import BLL.BLL_Usuario;
import EL.Usuario;
import Util.DbUtil;
import java.util.List;

/**
 *
 * @author Jose Levi
 */
public class Main {
    public static void main(String[] args) {
        System.out.println(DbUtil.getInstance().createConexion());
        BLL_Usuario bll = new BLL_Usuario();
       
//        Usuario input = new Usuario();
//        input.setEmail("Carlos@gmail.com");
//        input.setNombre("Carlos garcias");
//        input.setPassword("1234");
//        System.out.println(bll.insertToDataBase(input));
       
        List<Usuario> usuarios = bll.queryToDataBase("Listar");
        for (Usuario u : usuarios) {
            System.out.println(u.getNombre() + ", " + u.getEmail() + ", " + u.getPassword());
        }
        
        Usuario user = bll.queryToDataBaseEspecific("joselevir.com");
        System.out.println(user.getNombre() + ", " + user.getEmail() + ", " + user.getPassword());
    }
}
