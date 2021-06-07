package com.algobreizh.visites.preparation.core.lib;

public class Client {
	private String Id;
	private String Entreprise;
	private String Nom;
	private String Prenom;
	private String Adresse;
	private String CodePostal;
	private String Ville;
	private String TelephoneFixe;
	private String TelephoneMobile;

	public Client(String Id, String Entreprise, String Nom, String Prenom,
			String Adresse, String CodePostal, String Ville,
			String TelephoneFixe, String TelephoneMobile) {
		this.Id = Id;
		this.Entreprise = Entreprise;
		this.Nom = Nom;
		this.Prenom = Prenom;
		this.Adresse = Adresse;
		this.CodePostal = CodePostal;
		this.Ville = Ville;
		this.TelephoneFixe = TelephoneFixe;
		this.TelephoneMobile = TelephoneMobile;
	}
	
	/*Accesseurs*/
	public String getId() { return Id; }
	public String getEntreprise() {return Entreprise; }
	public String getAdresse() { return Adresse; }
	public String getCodePostal() { return CodePostal; }
	public String getVille() { return Ville; }
	public String getPrenom() { return Prenom; }
	public String getNom() { return Nom; }
	public String getTelephoneFixe() { return TelephoneFixe; }
	public String getTelephoneMobile() { return TelephoneMobile; }
	
	/*Setters*/
	public void setId(String Id) { this.Id = Id; }
	public void setEntreprise(String Entreprise) { this.Entreprise = Entreprise; }
	public void setPrenom(String Prenom) { this.Prenom= Prenom; }
	public void setNom(String Nom) { this.Nom = Nom; }
	public void setAdresse(String Adresse) { this.Adresse= Adresse; }
	public void setCodePostal(String CodePostal) { this.CodePostal=CodePostal; }
	public void setVille(String Ville) { this.Ville= Ville; }
	public void setTelephoneFixe(String TelephoneFixe) { this.TelephoneFixe= TelephoneFixe; }
	public void setTelephoneMobile(String TelephoneMobile) { this.TelephoneMobile= TelephoneMobile; }
		
}
