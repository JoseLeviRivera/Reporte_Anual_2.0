
package EL;

/**
 *
 * @author Jose Levi
 */
public class Tutorias {
    private int num;
    private String nombreAlumno;
    private String carrera;
    private String semestre;
    private String fecha;
    private String subSeccion;
    
    public Tutorias(){}
    public Tutorias(int num, String nombreAlumno, String carrera, String semestre, String fecha, String subSeccion) {
        this.num = num;
        this.nombreAlumno = nombreAlumno;
        this.carrera = carrera;
        this.semestre = semestre;
        this.fecha = fecha;
        this.subSeccion = subSeccion;
    }

    public Tutorias(String nombreAlumno, String carrera, String semestre, String fecha, String subSeccion) {
        this.nombreAlumno = nombreAlumno;
        this.carrera = carrera;
        this.semestre = semestre;
        this.fecha = fecha;
        this.subSeccion = subSeccion;
    }
    
   
    public String getNombreAlumno() {
        return nombreAlumno;
    }

    public void setNombreAlumno(String nombreAlumno) {
        this.nombreAlumno = nombreAlumno;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getSubSeccion() {
        return subSeccion;
    }

    public void setSubSeccion(String subSeccion) {
        this.subSeccion = subSeccion;
    }
    
    
    
}
