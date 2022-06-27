/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EL;

/**
 *
 * @author josel
 */
public class Tesis {
    private String ClaveT;
    private String Titulo;
    private String Descripcion;
    private String FechaInicio;
    private String FechaFin;
    private String Matricula;

    public Tesis(){}
    public Tesis(String _ClaveT, String _Titulo, String _Descripcion, String _FechaInicio, String _FechaFin, String _Matricula) {
        this.ClaveT = _ClaveT;
        this.Titulo = _Titulo;
        this.Descripcion = _Descripcion;
        this.FechaInicio = _FechaInicio;
        this.FechaFin = _FechaFin;
        this.Matricula = _Matricula;
    }

    public String getClaveT() {
        return ClaveT;
    }

    public void setClaveT(String ClaveT) {
        this.ClaveT = ClaveT;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getFechaInicio() {
        return FechaInicio;
    }

    public void setFechaInicio(String FechaInicio) {
        this.FechaInicio = FechaInicio;
    }

    public String getFechaFin() {
        return FechaFin;
    }

    public void setFechaFin(String FechaFin) {
        this.FechaFin = FechaFin;
    }

    public String getMatricula() {
        return Matricula;
    }

    public void setMatricula(String Matricula) {
        this.Matricula = Matricula;
    }

}
