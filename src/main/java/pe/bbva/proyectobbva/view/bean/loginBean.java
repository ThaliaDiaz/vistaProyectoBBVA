/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.bbva.proyectobbva.view.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import pe.bbva.proyectobbva.model.entity.Usuario;
import pe.bbva.proyectobbva.model.service.UsuarioService;

/**
 *
 * @author Ronald R
 */
@Component
@Scope("view")
public class loginBean {

    private Usuario usuario = new Usuario();
    @Autowired
    UsuarioService usuarioService;

    public String autenticar() {
        System.out.println("dentro de bean u: " + usuario.getDni() + "-" + usuario.getContraseña());
        if (usuarioService.autenticar(usuario.getDni(), usuario.getContraseña())) {
            return "vista2.xhtml?faces-redirect=true";
        } else {
            return "";
        }
    }

    public String gotoP3() {
        System.out.println("dentro de bean");
        return "vista3.xhtml?faces-redirect=true&s=ini";

    }

    public String gotoP4() {
        System.out.println("dentro de bean");
        return "vista4.xhtml?faces-redirect=true&s=ini";

    }

    public String gotoP5() {
        System.out.println("dentro de bean");
        return "vista5.xhtml?faces-redirect=true&s=ini";

    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

}
