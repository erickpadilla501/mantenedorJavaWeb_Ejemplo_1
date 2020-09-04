/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import junit.framework.TestCase;

/**
 *
 * @author Erick
 */
public class testDePrueba extends TestCase { 
    
  
    public void testSuma() {

        ServletControl servletC = new ServletControl();
        int resultadoSuma;

        resultadoSuma = servletC.suma(3, 6);        
        
        assertEquals("3 + 6 deberia ser igual a 9", 9, resultadoSuma);
        
    }
    

    
    
}
