package EL;

public class DireccionTesis {

    private int num;
    private String titulo;
    private String NombreEstudiante;
    private String grado;
    private int porcentajeAvance;
    private String fechaRegistro;
    private String fechaProgramadaTerminacion;
    private String fechaReprogramada;
    private String subSeccion;

    public DireccionTesis(String titulo, String NombreEstudiante, String grado, int porcentajeAvance, String fechaRegistro, String fechaProgramadaTerminacion, String fechaReprogramada, String subSeccion) {
        this.titulo = titulo;
        this.NombreEstudiante = NombreEstudiante;
        this.grado = grado;
        this.porcentajeAvance = porcentajeAvance;
        this.fechaRegistro = fechaRegistro;
        this.fechaProgramadaTerminacion = fechaProgramadaTerminacion;
        this.fechaReprogramada = fechaReprogramada;
        this.subSeccion = subSeccion;
    }

    public DireccionTesis(int num, String titulo, String NombreEstudiante, String grado, int porcentajeAvance, String fechaRegistro, String fechaProgramadaTerminacion, String fechaReprogramada, String subSeccion) {
        this.num = num;
        this.titulo = titulo;
        this.NombreEstudiante = NombreEstudiante;
        this.grado = grado;
        this.porcentajeAvance = porcentajeAvance;
        this.fechaRegistro = fechaRegistro;
        this.fechaProgramadaTerminacion = fechaProgramadaTerminacion;
        this.fechaReprogramada = fechaReprogramada;
        this.subSeccion = subSeccion;
    }

    public DireccionTesis() {
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getNombreEstudiante() {
        return NombreEstudiante;
    }

    public void setNombreEstudiante(String NombreEstudiante) {
        this.NombreEstudiante = NombreEstudiante;
    }

    public String getGrado() {
        return grado;
    }

    public void setGrado(String grado) {
        this.grado = grado;
    }

    public String getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(String fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getFechaProgramadaTerminacion() {
        return fechaProgramadaTerminacion;
    }

    public void setFechaProgramadaTerminacion(String fechaProgramadaTerminacion) {
        this.fechaProgramadaTerminacion = fechaProgramadaTerminacion;
    }

    public String getFechaReprogramada() {
        return fechaReprogramada;
    }

    public void setFechaReprogramada(String fechaReprogramada) {
        this.fechaReprogramada = fechaReprogramada;
    }

    public String getSubSeccion() {
        return subSeccion;
    }

    public void setSubSeccion(String subSeccion) {
        this.subSeccion = subSeccion;
    }

    public int getPorcentajeAvance() {
        return porcentajeAvance;
    }

    public void setPorcentajeAvance(int porcentajeAvance) {
        this.porcentajeAvance = porcentajeAvance;
    }

}
