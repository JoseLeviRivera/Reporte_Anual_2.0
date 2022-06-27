package BLL;
import DAL.DAL_Usuario;
import EL.Usuario;
import java.util.List;

public class BLL_Usuario extends BLL{
    private DAL_Usuario bll;
    
    public BLL_Usuario(){
        super();
        bll =  new DAL_Usuario(this.getConnection());
    }

    public Usuario queryToDataBaseEspecific(String correo){
        return bll.queryToDataBaseEspecific(correo);
    }
    
    public List<Usuario> queryToDataBase(String user){
        return bll.queryToDataBase(user);
    }
    
    @Override
    public boolean deleteToDataBase(int num) {
        return bll.deleteToDataBase(num)!= 0;
    }

    @Override
    public boolean insertToDataBase(Object u) {
        return bll.insertToDataBase(u) != 0;
    }

    @Override
    public boolean updateToDataBase(Object u) {
        return bll.updateToDataBase(u) != 0;
    }

    public DAL_Usuario getBll() {
        return bll;
    }

    public void setBll(DAL_Usuario bll) {
        this.bll = bll;
    }
    
}
