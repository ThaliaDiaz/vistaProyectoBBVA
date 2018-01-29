/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.bbva.proyectobbva.view.bean;

import java.util.List;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import pe.bbva.proyectobbva.model.entity.Banner;
import pe.bbva.proyectobbva.model.service.BannerService;

/**
 *
 * @author Ronald R
 */
@Component
@Scope("view")
public class BannerBean {

    private List<Banner> listaBanners;
    
    @Autowired
    private BannerService bannerService;

    @PostConstruct
    public void init() {
        System.out.println("dentro de bean");
        listaBanners = this.bannerService.obtenerTodos();
        for (Banner listaBanner : listaBanners) {
            System.out.println(listaBanner);
        }
    }

    public List<Banner> getListaBanners() {
        return listaBanners;
    }

    public void setListaBanners(List<Banner> listaBanners) {
        this.listaBanners = listaBanners;
    }

    public BannerService getBannerService() {
        return bannerService;
    }

    public void setBannerService(BannerService bannerService) {
        this.bannerService = bannerService;
    }
    
    
}
