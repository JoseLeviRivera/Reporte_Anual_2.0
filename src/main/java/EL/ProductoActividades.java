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
//ProductoAcademico
        
public class ProductoActividades {
    private int num;
    private String descripcion;

    public ProductoActividades(int num, String descripcion) {
        this.num = num;
        this.descripcion = descripcion;
    }

    public ProductoActividades() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
}
