package EL;

public class ProyectoDeInvestigacion {
    private int num;
    private String tituloProyecto;
    private String responsabilidad;
    private String faseDeAprovacion;
    private String instanciaPrincipal;
    private String fechaDeInicio;
    private String fechaTerminada;
    private String fechaReProgramada;
    private int porcentajeAvanceProyecto;
    private String subSeccion;
    public ProyectoDeInvestigacion(){}
    public ProyectoDeInvestigacion(int num, String tituloProyecto, String responsabilidad, String faseDeAprovacion, String instanciaPrincipal, String fechaDeInicio, String fechaTerminada, String fechaReProgramada, int porcentajeAvanceProyecto, String subSeccion) {
        this.num = num;
        this.tituloProyecto = tituloProyecto;
        this.responsabilidad = responsabilidad;
        this.faseDeAprovacion = faseDeAprovacion;
        this.instanciaPrincipal = instanciaPrincipal;
        this.fechaDeInicio = fechaDeInicio;
        this.fechaTerminada = fechaTerminada;
        this.fechaReProgramada = fechaReProgramada;
        this.porcentajeAvanceProyecto = porcentajeAvanceProyecto;
        this.subSeccion = subSeccion;
    }

    public ProyectoDeInvestigacion(String tituloProyecto, String responsabilidad, String faseDeAprovacion, String instanciaPrincipal, String fechaDeInicio, String fechaTerminada, String fechaReProgramada, int porcentajeAvanceProyecto, String subSeccion) {
        this.tituloProyecto = tituloProyecto;
        this.responsabilidad = responsabilidad;
        this.faseDeAprovacion = faseDeAprovacion;
        this.instanciaPrincipal = instanciaPrincipal;
        this.fechaDeInicio = fechaDeInicio;
        this.fechaTerminada = fechaTerminada;
        this.fechaReProgramada = fechaReProgramada;
        this.porcentajeAvanceProyecto = porcentajeAvanceProyecto;
        this.subSeccion = subSeccion;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getTituloProyecto() {
        return tituloProyecto;
    }

    public void setTituloProyecto(String tituloProyecto) {
        this.tituloProyecto = tituloProyecto;
    }

    public String getResponsabilidad() {
        return responsabilidad;
    }

    public void setResponsabilidad(String responsabilidad) {
        this.responsabilidad = responsabilidad;
    }

    public String getFaseDeAprovacion() {
        return faseDeAprovacion;
    }

    public void setFaseDeAprovacion(String faseDeAprovacion) {
        this.faseDeAprovacion = faseDeAprovacion;
    }

    public String getInstanciaPrincipal() {
        return instanciaPrincipal;
    }

    public void setInstanciaPrincipal(String instanciaPrincipal) {
        this.instanciaPrincipal = instanciaPrincipal;
    }

    public String getFechaDeInicio() {
        return fechaDeInicio;
    }

    public void setFechaDeInicio(String fechaDeInicio) {
        this.fechaDeInicio = fechaDeInicio;
    }

    public String getFechaTerminada() {
        return fechaTerminada;
    }

    public void setFechaTerminada(String fechaTerminada) {
        this.fechaTerminada = fechaTerminada;
    }

    public String getFechaReProgramada() {
        return fechaReProgramada;
    }

    public void setFechaReProgramada(String fechaReProgramada) {
        this.fechaReProgramada = fechaReProgramada;
    }

    public int getPorcentajeAvanceProyecto() {
        return porcentajeAvanceProyecto;
    }

    public void setPorcentajeAvanceProyecto(int porcentajeAvanceProyecto) {
        this.porcentajeAvanceProyecto = porcentajeAvanceProyecto;
    }

    public String getSubSeccion() {
        return subSeccion;
    }

    public void setSubSeccion(String subSeccion) {
        this.subSeccion = subSeccion;
    }
}
