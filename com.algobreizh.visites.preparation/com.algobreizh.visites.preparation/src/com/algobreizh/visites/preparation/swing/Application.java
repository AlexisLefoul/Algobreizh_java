package com.algobreizh.visites.preparation.swing;

import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;



public class Application {

	public static JLabel picLabel ;

	public static void main(String[] args) throws IOException {

		final JFrame frame = new UiSwing();
		final JButton btnLogin = new JButton("Connection");
		

		// event de demande de connexion

		btnLogin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				IdentificationSwing loginDlg = new IdentificationSwing(frame);
				loginDlg.setVisible(true);

				// si connexion ok
				if (loginDlg.isSucceeded()) {
					
					btnLogin.setVisible(false);
				
					//picLabel.setVisible(false);
					
					// on affiche l'interface

					try {
						
						//méthode de génération de l'UI
						
						frame.add(UiSwing.setUI());
			
						
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}

				}
			}
		});

		// logo
		BufferedImage myPicture;
		try {
			myPicture = ImageIO
					.read(new File("C:\\Users\\LEFOUL\\OneDrive\\Documents\\Cours\\E4 & E6\\Java\\Algobreizh_java\\com.algobreizh.visites.preparation\\com.algobreizh.visites.preparation\\donnees\\img\\AlgoBreizh_Logo.png"));
			 picLabel = new JLabel(new ImageIcon(myPicture));
			frame.add(picLabel);

		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// placement de JFrame

		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		int height = screenSize.height;
		int width = screenSize.width;
		frame.setSize(width / 2, height / 2);
		frame.setLocationRelativeTo(null);
		frame.setLayout(new FlowLayout());
		frame.getContentPane().add(btnLogin);
		frame.setVisible(true);
		frame.getRootPane().setDefaultButton(btnLogin);
	
		
			

	}
	
		
	
}
