package Modelo;
public class Usuario {
   private int id;
   private String nombre;
   private String apa;
   private String ama;
   private String usuario;
   private String pwd;
   private String email;
   private String tipo;
   
       public Usuario() {
    }
   
   
   public Usuario(int id,String nombre,String apa,String ama,String usuario,String pwd,String email,String tipo){
    
       this.id = id;
       this.nombre = nombre;
       this.apa = apa;
       this.ama = ama;
       this.usuario = usuario;
       this.pwd = pwd;
       this.email = email;
       this.tipo = tipo;
   }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getNombre() {return nombre;}
    public void setNombre(String nombre) {this.nombre = nombre;}
    public String getApa() {return apa;}
    public void setApa(String apa) {this.apa = apa;}
    public String getAma() {return ama;}
    public void setAma(String ama) {this.ama = ama;}
    public String getUsuario() {return usuario;}
    public void setUsuario(String usuario) {this.usuario = usuario;}
    public String getPwd() {return pwd;}
    public void setPwd(String pwd) {this.pwd = pwd;}
    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}
    public String getTipo() {return tipo;}
    public void setTipo(String tipo) {this.tipo = tipo;}
}
