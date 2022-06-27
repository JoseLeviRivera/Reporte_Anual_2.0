package Patter;

import Actions.UsuarioAddAction;
import Actions.UsuarioQryAction;

public interface ActionFactory {
    public static Action createAction(String _action){
        switch(_action){
            case "UsuarioAdd": return new UsuarioAddAction();
            case "UsuarioQry": return new UsuarioQryAction();
            default: return null;
        }
    }
}
