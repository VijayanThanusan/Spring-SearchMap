package com.projet.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name="Area")
public class Area 
{
    @Id
    @Column(name="ID_AREA", nullable=false)
    private int idArea;
    
    @Column(name="ID_COUNTRY", nullable=false)
    private int idCountry;
    
    @Column(name="LANGUAGE_ID", nullable=false)
    private int idLanguage;
    
    @Column(name="AREA_LABEL", nullable=false)
    private String areaLabel;

    
    // ID Area
	public int getIdArea() {
		return idArea;
	}
	
	public void setIdArea(int idArea) {
		this.idArea = idArea;
	}

	// ID COUNTRY
	public int getIdCountry() {
		return idCountry;
	}
	
	public void setIdCountry(int idCountry) {
		this.idCountry = idCountry;
	}
	
	// LANGUAGE ID
	public int getIdLanguage() {
		return idLanguage;
	}
	
	public void setIdLanguage(int idLanguage) {
		this.idLanguage = idLanguage;
	}
	
	// AREA LABEL
	public String getAreaLabel() {
		return areaLabel;
	}
	
	public void setAreaLabel(String areaLabel) {
		this.areaLabel = areaLabel;
	}
}
