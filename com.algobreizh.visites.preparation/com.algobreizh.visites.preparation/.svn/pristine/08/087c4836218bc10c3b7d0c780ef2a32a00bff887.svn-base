package com.algobreizh.visites.preparation.data;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import com.algobreizh.visites.preparation.core.lib.Rdv;
import com.algobreizh.visites.preparation.swing.UiSwing;

public class BddRDV {
	
	public static Map<Integer,Rdv> rdvs ;
	
	public static Map<Integer,Rdv> all() throws IOException {
		
		rdvs = new HashMap<Integer,Rdv>();
		String CurrentId = BddAlgobreizh.CurrentIdCommercial;

		try {
			String requete = "SELECT * FROM `Visites_RDV` WHERE `idCommercial` = '"
					+ CurrentId + "' ORDER BY `Date` ";
			ResultSet result = BddAlgobreizh.statement().executeQuery(requete);

			while (result.next()) {

				int IdRDV = result.getInt("IdRDV");
				String IdCommercial = result.getString("IdCommercial");
				String IdContact =  result.getString("IdClient");
				int Semaine = result.getInt("Semaine");
				String Nom = result.getString("Nom");
				String Prenom = result.getString("Prenom");
				String Date = result.getString("Date");
				String Lieu = result.getString("Lieu");
				String Commentaire = result.getString("Commentaire");

				Rdv rdv = new Rdv(IdRDV, IdCommercial, IdContact, Semaine, Nom, Prenom,
						Date, Lieu, Commentaire);
				rdvs.put(rdv.getId(),rdv);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rdvs;
	}
	public static boolean create(Rdv rdv) throws IOException, SQLException {
		
		
			String requete = "INSERT INTO `algobreizh_gestion`.`visites_rdv` ("
					+ " `Semaine`, `Nom`, `Prenom`, `Date`, `Lieu`, `idCommercial`, `idClient`, `Commentaire`)"
					+ "VALUES ('" + rdv.getSemaine() + "', '"
					+ rdv.getNom() + "', '" + rdv.getPrenom() + "', '"
					+ rdv.getDate() + "', '" + rdv.getLieu() + "', '"
					+ rdv.getidCommercial() + "','"
					+ UiSwing.selectedContact +"','"
					+ rdv.getCommentaire()+ "');";
			
			BddAlgobreizh.statement().execute(requete);
			
		return true;
	}


	public static boolean update(Rdv rdv) throws IOException {
		try {
			String requete = "UPDATE `algobreizh_gestion`.`visites_rdv` SET "
					+ " `Date` = '"
					+ rdv.getDate()
					+ "', `Lieu` = '"
					+ rdv.getLieu()
					+"', `Commentaire` = '"
					+ rdv.getCommentaire()
					+ "' WHERE `visites_rdv`.`idRDV` = " + rdv.getId() + ";";

			BddAlgobreizh.statement().execute(requete);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return true;
	}

	public static boolean deleteRdv(int id) throws IOException {
		
		String requete = "DELETE FROM `algobreizh_gestion`.`visites_rdv` WHERE `visites_rdv`.`idRDV` = "
				+ id + ";";
		try {
			BddAlgobreizh.statement().execute(requete);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return true;

	}

	
}
