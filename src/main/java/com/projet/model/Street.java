package com.projet.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name="Street")
public class Street 
{
    @Id
    @Column(name="ID_STREET_NAME", nullable=false)
    private int idStreetName;
    
    @Column(name="ID_STREET_TYPE", nullable=false)
    private Long idStreetType;
    
    @Column(name="ID_COUNTRY", nullable=false)
    private int idCountry;
    
    @Column(name="ID_CITY", nullable=false)
    private int idCity;
    
    @Column(name="ID_ZIP", nullable=false)
    private int idZip;
    
    @Column(name="LANGUAGE_ID", nullable=false)
    private int idLanguage;
    
    @Column(name="STREET_LABEL", nullable=false)
    private String streetLabel;

    
    // ID STREET NAME
	public int getIdStreetName() {
		return idStreetName;
	}
	
	public void setIdStreetName(int idStreetName) {
		this.idStreetName = idStreetName;
	}
	
	// ID STREET TYPE
	public Long getIdStreetType() {
		return idStreetType;
	}
	
	public void setIdStreetType(Long idStreetType) {
		this.idStreetType = idStreetType;
	}

	// ID COUNTRY
	public int getIdCountry() {
		return idCountry;
	}
	
	public void setidCountry(int idCountry) {
		this.idCountry = idCountry;
	}
	
	// ID CITY
	public int getIdCity() {
		return idCity;
	}
	
	public void setIdCity(int idCity) {
		this.idCity = idCity;
	}
	
	// ID ZIP
	public int getIdZip() {
		return idZip;
	}
	
	public void setIdZip(int idZip) {
		this.idZip = idZip;
	}
	
	// LANGUAGE ID
	public int getIdLanguage() {
		return idLanguage;
	}
	
	public void setIdLanguage(int idLanguage) {
		this.idLanguage = idLanguage;
	}
	
	// STREET LABEL
	public String getStreetLabel() {
		return streetLabel;
	}
	
	public void setStreetLabel(String streetLabel) {
		this.streetLabel = streetLabel;
	}
}
