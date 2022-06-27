package EL;

/**
 *
 * @author Jose Levi
 */
public class DocenciaComentarios {
    private int num;
    private String oportunidades;
    private String problemas;
    private String subseccion;
    
    public DocenciaComentarios(){}

    public DocenciaComentarios(int num, String oportunidades, String problemas, String subseccion) {
        this.num = num;
        this.oportunidades = oportunidades;
        this.problemas = problemas;
        this.subseccion = subseccion;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getOportunidades() {
        return oportunidades;
    }

    public void setOportunidades(String oportunidades) {
        this.oportunidades = oportunidades;
    }

    public String getProblemas() {
        return problemas;
    }

    public void setProblemas(String problemas) {
        this.problemas = problemas;
    }

    public String getSubseccion() {
        return subseccion;
    }

    public void setSubseccion(String subseccion) {
        this.subseccion = subseccion;
    }
    
}
