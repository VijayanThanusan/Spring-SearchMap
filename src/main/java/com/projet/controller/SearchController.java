package com.projet.controller;

import java.util.List;
import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.projet.model.Country;
import com.projet.model.Area;
import com.projet.model.City;
import com.projet.model.Street;
import com.projet.service.ICountryService;
import com.projet.service.IAreaService;
import com.projet.service.ICityService;
import com.projet.service.IStreetService;

@Controller
public class SearchController {
	
    private ICountryService countryService;
    private IAreaService areaService;
    private ICityService cityService;
    private IStreetService streetService;
    
    // COUNTRY
    @Autowired(required=true)
    @Qualifier(value="countryService")
	public void setCountryService(ICountryService countryService) {
		this.countryService = countryService;
	}
    
    // CITY
    @Autowired(required=true)
    @Qualifier(value="cityService")
	public void setCityService(ICityService cityService) {
		this.cityService = cityService;
	}
    
    // AREA
    @Autowired(required=true)
    @Qualifier(value="areaService")
	public void setAreaService(IAreaService areaService) {
		this.areaService = areaService;
	}
    
    // STREETS
    @Autowired(required=true)
    @Qualifier(value="streetService")
	public void setStreetService(IStreetService streetService) {
		this.streetService = streetService;
	}
    
    // CONTROLEUR DE RECHERCHE
    @RequestMapping(value="/search" , method = RequestMethod.GET)
    public ModelAndView recupererListeProvinces() 
    {
    	List<Country> listCountry = countryService.recupererListePays();
    	List<Area> listArea = areaService.recupererListeProvinces();
    	List<City> listCity = cityService.recupererListeVilles();
    	List<Street> listStreet = streetService.recupererListeRues();
 
    	
    	Map<String, Object> model = new HashMap<String, Object>();
        model.put("listArea", listArea);
        model.put("listCountry", listCountry);
        model.put("listCity", listCity);
        model.put("listStreet", listStreet);
        
        return new ModelAndView("pageRecherche", "table", model);
    }
    
    
}
