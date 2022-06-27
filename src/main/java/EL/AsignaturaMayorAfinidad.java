package EL;

/**
 *
 * @author Jose Levi
 */
public class AsignaturaMayorAfinidad {

    private int num;
    private String carrera;
    private String asignatura;
    private String semestre;
    private String subSeccion;

    public AsignaturaMayorAfinidad() {
    }

    public AsignaturaMayorAfinidad(int num, String carrera, String asignatura, String semestre, String subSeccion) {
        this.num = num;
        this.carrera = carrera;
        this.asignatura = asignatura;
        this.semestre = semestre;
        this.subSeccion = subSeccion;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(String asignatura) {
        this.asignatura = asignatura;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public String getSubSeccion() {
        return subSeccion;
    }

    public void setSubSeccion(String subSeccion) {
        this.subSeccion = subSeccion;
    }
}
