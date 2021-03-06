package com.algobreizh.visites.preparation.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.algobreizh.visites.preparation.core.lib.Commercial;
import com.algobreizh.visites.preparation.core.lib.Outils;

public class BddAlgobreizh {

	public static String CurrentIdCommercial = "";
	
	/* Méthode de connexion à la bdd */
	public static Statement statement() throws SQLException, IOException {
		Connection connexion = DriverManager.getConnection(Config.getConfig());

		return connexion.createStatement();
	}

	public static boolean authentification(String username, String password)
			throws SQLException, IOException {

		String requete = "SELECT * FROM identification";
		ResultSet result = statement().executeQuery(requete);

		while (result.next()) {
			// String test = result.getNString(columnLabel)
			String login = result.getString("Contact_Name");
			String pass = result.getString("Password");

			/* Récupérer IdCommercial et l'assigner à l'objet commercial */

			System.out.println(login + pass);

			System.out.println(Outils.PasswordToHash(password));

			if (username.equals(login)
					&& Outils.PasswordToHash(password).equals(pass)) {

				/* recupère l'id du commercial courant */

				String Id = result.getString("Id");
				Commercial commercial = new Commercial(Id, "", login, "", "",
						"", "");
				CurrentIdCommercial = commercial.Id();
				System.out.println(login + Id);

				return true;

			}
		}
		return false;
	}

}
