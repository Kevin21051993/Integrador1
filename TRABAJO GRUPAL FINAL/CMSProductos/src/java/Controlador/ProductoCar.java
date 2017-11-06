
package Controlador;
import Modelo.*;

public class ProductoCar {
        public Modelo.Producto getProducto(String m){
        return new HRService().ProCarrito(m);
    }
}
