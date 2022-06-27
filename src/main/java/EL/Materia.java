package EL;

/**
 *
 * @author Jose Levi
 */
public class Materia {
    private int id_Materia;
    private String carrera;
    private String semestre;
    private String asignatura;//nombre
    private String cicloEscolar;

    public Materia(){}
    public Materia(int id_Materia, String carrera, String semestre, String asignatura, String cicloEscolar) {
        this.id_Materia = id_Materia;
        this.carrera = carrera;
        this.semestre = semestre;
        this.asignatura = asignatura;
        this.cicloEscolar = cicloEscolar;
    }

    public Materia(String carrera, String semestre, String asignatura, String cicloEscolar) {
        this.carrera = carrera;
        this.semestre = semestre;
        this.asignatura = asignatura;
        this.cicloEscolar = cicloEscolar;
    }
       
    public int getId_Materia() {
        return id_Materia;
    }

    public void setId_Materia(int id_Materia) {
        this.id_Materia = id_Materia;
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

    public String getAsignatura() {
        return asignatura;
    }

    public void setAsignatura(String asignatura) {
        this.asignatura = asignatura;
    }

    public String getCicloEscolar() {
        return cicloEscolar;
    }

    public void setCicloEscolar(String cicloEscolar) {
        this.cicloEscolar = cicloEscolar;
    }
}
