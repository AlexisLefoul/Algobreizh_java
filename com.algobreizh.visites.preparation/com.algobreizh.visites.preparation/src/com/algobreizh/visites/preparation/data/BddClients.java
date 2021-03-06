package com.algobreizh.visites.preparation.data;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.algobreizh.visites.preparation.core.lib.Client;


public class BddClients {
	
	public static Map<String,Client> clients;

	public static Map<String,Client> all() throws IOException {
		
		 clients = new HashMap<String, Client>();
		String CurrentId = BddAlgobreizh.CurrentIdCommercial;
		try {
			String requete = "SELECT * FROM `view_visites_clients` WHERE `IdCommercial` = '"+ CurrentId + "'";
			ResultSet result = BddAlgobreizh.statement().executeQuery(requete);
			
			while(result.next()) {
				
				String Id = result.getString("IdContact");
				String Entreprise = result.getString("Entreprise");
				String Nom = result.getString("Nom");
				String Prenom = result.getString("Prenom");
				String Adresse = result.getString("Adresse");
				String CodePostal = result.getString("CodePostal");
				String Ville = result.getString("Ville");
				String TelephoneFixe = result.getString("TelephoneFixe");
				String TelephoneMobile = result.getString("TelephoneMobile");
			
				Client client = new Client(Id, Entreprise, Nom, Prenom, Adresse, CodePostal, Ville, TelephoneFixe, TelephoneMobile);
				
				clients.put(client.getId(), client);				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return clients;
		
		

	}

	public void create(Client client) {

	}

	public void update(Client client) {
	}

	public static Collection<Client> read() {
		return null;
		
	}
}
