package Modelo;

import java.sql.Blob;

public class ContenidoWeb {
    private String id;
    private String nompagina;
    private String contenido;
    private Blob imagen;
    
    public ContenidoWeb(){
        
    }
    public ContenidoWeb(String id,String nompagina,String contenido,Blob imagen){
        this.id = id;
        this.nompagina = nompagina;
        this.contenido = contenido;
        this.imagen = imagen;
    }

    public String getId() {return id;}
    public void setId(String id) {this.id = id;}
    public String getNompagina() {return nompagina;}
    public void setNompagina(String nompagina) {this.nompagina = nompagina;}
    public String getContenido() { return contenido;}
    public void setContenido(String contenido) {this.contenido = contenido;}
    public Blob getImagen() {return imagen;}
    public void setImagen(Blob imagen) {this.imagen = imagen;}
}
