package com.projet.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.projet.model.Street;
import com.projet.service.IStreetService;

@Controller
public class StreetController {
	
    private IStreetService streetService;
		
    public IStreetService getStreetService() {
		return streetService;
	}
    
    @Autowired(required=true)
    @Qualifier(value="streetService")
	public void setStreetService(IStreetService cityService) {
		this.streetService = cityService;
	}

    @RequestMapping(value="/street", method = RequestMethod.GET)
    public String recupererListeVilles(ModelMap map) {
    	List<Street> listeRues = streetService.recupererListeRues();
        map.addAttribute("listStreet", listeRues);
        return "pageRues";
    }
}
