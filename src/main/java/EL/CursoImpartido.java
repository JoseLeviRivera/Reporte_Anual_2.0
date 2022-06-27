package EL;

public class CursoImpartido {
    private int horasPorSemana;
    private int totalAlumnos;
    private String subseccion; 
    private Materia materia;
    
    public CursoImpartido(){}

    public CursoImpartido(Materia materia, int horasPsemana, int numeroDeAlumnos, String subseccion) {
        this.materia = materia;
        this.horasPorSemana = horasPsemana;
        this.totalAlumnos = numeroDeAlumnos;
        this.subseccion = subseccion;
    }

    public int getHorasPorSemana() {
        return horasPorSemana;
    }
    
    public void setHorasPorSemana(int horasPorSemana) {
        this.horasPorSemana = horasPorSemana;
    }
    
    public int getTotalAlumnos() {
        return totalAlumnos;
    }

    public void setTotalAlumnos(int totalAlumnos) {
        this.totalAlumnos = totalAlumnos;
    }

    public Materia getMateria() {
        return materia;
    }

    public void setMateria(Materia materia) {
        this.materia = materia;
    }

    public String getSubseccion() {
        return subseccion;
    }

    public void setSubseccion(String subseccion) {
        this.subseccion = subseccion;
    }
}
