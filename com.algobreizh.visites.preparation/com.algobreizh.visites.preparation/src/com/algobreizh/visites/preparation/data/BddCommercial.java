package com.algobreizh.visites.preparation.data;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import com.algobreizh.visites.preparation.core.lib.Commercial;

public class BddCommercial {
	public static Collection<Commercial> all() throws IOException {

		Collection<Commercial> commerciaux = new ArrayList<Commercial>();

		try {
			String requete = "SELECT * FROM view_visites_commerciaux";
			ResultSet result = BddAlgobreizh.statement().executeQuery(requete);

			while (result.next()) {

				String Id = result.getString("Id");
				String Civilite = result.getString("Civilite");
				String Prenom = result.getString("Prenom");
				String Nom = result.getString("Nom");
				String TelephoneFixe = result.getString("TelephoneFixe");
				String TelephoneMobile = result.getString("TelephoneMobile");
				String Email = result.getString("Email");

				Commercial commercial = new Commercial(Id, Civilite, Prenom,
						Nom, TelephoneFixe, TelephoneMobile, Email);

				System.out.println(Id);
				commerciaux.add(commercial);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return commerciaux;

	}

	public void create(Commercial commercial) {

	}

	public void update(Commercial commercial) {
	}

	public static Collection<Commercial> read() {
		return null;
	}

}
