
package Modelo;
public class Categoria {
    private Integer id;
    private String nom;
    private String desc;
    public Categoria(Integer id, String nom,String desc){
        this.id = id;
        this.nom = nom;
        this.desc = desc;
    }

    public Integer getId() {return id;}
    public void setId(Integer id) {this.id = id;}
    public String getNom() {return nom;}
    public void setNom(String nom) {this.nom = nom;}
    public String getDesc() {return desc;}
    public void setDesc(String desc) {this.desc = desc;}
}
