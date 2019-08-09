package com.projet.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
 

@Entity
@Table(name="Language")
public class Language 
{
    @Id
    @Column(name="ID_LANGUAGE", nullable=false)
    private Long idLanguage;
    
    @Column(name="CODE_LANGUAGE", nullable=false)
    private String codeLanguage;

    @Column(name="LANGUAGE_NAME", nullable=false)
    private String labelLanguage;
    
    // ID LANGUADE
	public Long getIdLanguage() {
		return idLanguage;
	}

	public void setIdLanguage(Long idLanguage) {
		this.idLanguage = idLanguage;
	}

	// CODE LANGUAGE
	public String getCodeLanguage() {
		return codeLanguage;
	}

	public void setCodeLanguage(String codeLanguage) {
		this.codeLanguage = codeLanguage;
	}
	
	// LABEL LANGUAGE
	public String getlabelLanguage() {
		return labelLanguage;
	}

	public void setlabelLanguage(String labelLanguage) {
		this.labelLanguage = labelLanguage;
	}
}