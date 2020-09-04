/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testing;

import static junit.framework.Assert.assertEquals;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import web.ServletControl;

/**
 *
 * @author Erick
 */
public class probarServletControl {
    
    public probarServletControl() {
    }



    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
     @Test
     public void hello() {}
    
         
    @Test
    public void testSuma() {

        ServletControl servletC = new ServletControl();
        int resultadoSuma;

        resultadoSuma = servletC.suma(3, 6);        
        
        assertEquals("3 + 6 deberia ser igual a 9", 9, resultadoSuma);
        
    }
 
    @Test
    public void testSuma2() {

        ServletControl servletC = new ServletControl();
        int resultadoSuma;

        resultadoSuma = servletC.suma(20, 50);        
        
        assertEquals("20 + 50 deberia ser igual a 70", 70, resultadoSuma);
        
    }    
    
    
    
}
