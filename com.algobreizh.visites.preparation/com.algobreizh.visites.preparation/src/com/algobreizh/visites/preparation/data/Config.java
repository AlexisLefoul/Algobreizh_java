package com.algobreizh.visites.preparation.data;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;



public class Config {
	private static String host;
	private static String login;
	private static String mdp;
	private static String port;
	
	private static Path path = Paths.get("config.ini");
	
	 public static String getConfig() throws IOException {
		
		Charset charset = Charset.forName("UTF-8");
		List<String> lines = null;
		lines = Files.readAllLines(path, charset);
		
		for (Iterator<String> iterator = lines.iterator(); iterator.hasNext();) {
			String line = (String) iterator.next();
			
			String[] values = line.split(":");
		
			switch (values[0]) {
			case "login": login = values[1];
				break;
				
			case "mdp": mdp = values[1];
				break;
			
			case "host":host = values[1];
				break;
				
			case "port":port = values[1];
				break;

			default:
				break;
			}
		}
		//si mot de passe vide
		if(mdp == null){mdp = "";}

			return "jdbc:mysql://"+host+":"+port+"/algobreizh_gestion?user="+login+"&password="+mdp+"";
	}
	 
	
}


