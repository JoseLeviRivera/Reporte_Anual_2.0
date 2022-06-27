/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EL;

/**
 *
 * @author Jose Levi
 */
public class Usuario_1 {
    private int idUsuario;
    private String nombreUsuario;
    private String password;
    
    public Usuario_1(){}

    public Usuario_1(int idUsuario, String nombreUsuario, String password) {
        this.idUsuario = idUsuario;
        this.nombreUsuario = nombreUsuario;
        this.password = password;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}
