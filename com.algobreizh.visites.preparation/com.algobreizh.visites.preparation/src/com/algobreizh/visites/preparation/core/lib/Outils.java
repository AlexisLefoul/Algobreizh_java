package com.algobreizh.visites.preparation.core.lib;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Outils {
	public static String PasswordToHash(String passwordToHash) {
		String generatedPassword = null;
		try {
			// MessageDigest  MD5
			MessageDigest md = MessageDigest.getInstance("MD5");
			// Add password bytes to digest
			md.update(passwordToHash.getBytes());
			//hash en bytes
			byte[] bytes = md.digest();
			// hexadecimal conversion
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16)
						.substring(1));
			}
			// hash complet en hexa
			generatedPassword = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return generatedPassword;
	}
	/*public static void main(String[] args) {
		System.out.println(PasswordToHash("azer"));
	}*/
}