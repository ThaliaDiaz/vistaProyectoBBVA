/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.bbva.proyectobbva.view.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 *
 * @author Ronald R
 */
@Component
@Scope("view")
public class loginBean {

    public String autenticar() {
        System.out.println("dentro de bean");
        return "vista2.xhtml?faces-redirect=true&s=ini";

    }
    
     public String gotoP3() {
        System.out.println("dentro de bean");
        return "vista3.xhtml?faces-redirect=true&s=ini";

    }
}
