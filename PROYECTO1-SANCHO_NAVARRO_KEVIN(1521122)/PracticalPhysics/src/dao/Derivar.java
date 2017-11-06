package dao;

import org.lsmp.djep.djep.DJep;
import org.nfunk.jep.Node;
import org.nfunk.jep.ParseException;

public class Derivar {
    
    public String DerivarFuncion(String funcion){
        String derivada = "";
        DJep Derivar = new DJep();
        Derivar.addStandardFunctions();
        Derivar.addStandardConstants();
        Derivar.addComplex();
        Derivar.setAllowUndeclared(true);
        Derivar.setAllowAssignment(true);
        Derivar.setImplicitMul(true);
        Derivar.addStandardDiffRules();
        
        try{
            Node node = Derivar.parse(funcion);
            Node diff = Derivar.differentiate(node, "t");
            Node sim = Derivar.simplify(diff);
            derivada = Derivar.toString(sim);
        }catch(ParseException e){
            e.printStackTrace();
        }
        return derivada;
    }   
    
    
}
