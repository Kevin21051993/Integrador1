package Modelo;
public class Producto {
    private Integer id;
    private String nombre;
    private String descripcion;
    private String imagen;
    private Double precio;
    private Integer categoria;
    private Integer stock;
    private Integer Id_marca;
    private Integer Id_modelo;
    private String nom_marca;
    private String nom_modelo;
    private String nom_categoria;
    
    public Producto(){
        
    }
    public Producto(Integer id,String nombre,String descripcion,String imagen,Double precio,Integer categoria,Integer stock,Integer Id_marca, Integer Id_modelo, String nom_marca,String nom_modelo,String nom_categoria)
    {
    this.id = id;
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.imagen = imagen;
    this.precio = precio;
    this.categoria = categoria;
    this.stock = stock;
    this.Id_marca = Id_marca;
    this.Id_modelo = Id_modelo;
    this.nom_marca = nom_marca;
    this.nom_modelo = nom_modelo;
    this.nom_categoria = nom_categoria;
    }

    public Integer getId() {return id;}
    public void setId(Integer id) {this.id = id;}
    public String getNombre() {return nombre;}
    public void setNombre(String nombre) {this.nombre = nombre;}
    public String getImagen() {return imagen;}
    public void setImagen(String imagen) {this.imagen = imagen;}
    public Double getPrecio() {return precio;}
    public void setPrecio(Double precio) {this.precio = precio;}
    public Integer getCategoria() {return categoria;}
    public void setCategoria(Integer categoria) {this.categoria = categoria;}
    public Integer getStock() {return stock;}
    public void setStock(Integer stock) {this.stock = stock;}
    public Integer getId_marca() {return Id_marca;}
    public void setId_marca(Integer Id_marca) {this.Id_marca = Id_marca;}
    public Integer getId_modelo() {return Id_modelo;}
    public void setId_modelo(Integer Id_modelo) { this.Id_modelo = Id_modelo;}
    public String getDescripcion() {return descripcion;}
    public void setDescripcion(String descripcion) {this.descripcion = descripcion;}
    public String getNom_marca() {return nom_marca;}
    public void setNom_marca(String nom_marca) {this.nom_marca = nom_marca;}
    public String getNom_modelo() {return nom_modelo;}
    public void setNom_modelo(String nom_modelo) {this.nom_modelo = nom_modelo;}
    public String getNom_categoria() {return nom_categoria;}
    public void setNom_categoria(String nom_categoria) {this.nom_categoria = nom_categoria;}
}
