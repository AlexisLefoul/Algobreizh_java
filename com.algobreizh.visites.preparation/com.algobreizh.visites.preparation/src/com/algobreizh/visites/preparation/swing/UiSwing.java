package com.algobreizh.visites.preparation.swing;

import java.awt.Component;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.DefaultTableModel;

import com.algobreizh.visites.preparation.core.lib.Client;
import com.algobreizh.visites.preparation.core.lib.Rdv;
import com.algobreizh.visites.preparation.data.BddClients;
import com.algobreizh.visites.preparation.data.BddRDV;

public class UiSwing extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1394066759435106357L;

	public UiSwing() {

		setTitle("Algobreizh Visites 1.0");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

	}

	// declaration du tableau des rendez vous
	private static String col2[] = { "Id", "Semaine", "nom", "prénom", "Date",
			"lieu", "Commentaire" };
	public static DefaultTableModel tableModelrdvs = new DefaultTableModel(
			col2, 0) {
		/**
				 * 
				 */
				private static final long serialVersionUID = 5499767474040565773L;

		public boolean isCellEditable(int row, int column) {
			return false;
		}
	};

	// variables pour la selection
	public static int selectedRDV;
	public static int selectedRowRDV;
	public static int maxRows;
	public static int maxIdRdv;
	public static String selectedContact = null;

	// JTabbedPane parent
	private static JTabbedPane jtp = new JTabbedPane();

	public static Component setUI() throws IOException {

		// retourne le JTabbedPane qui contient les deux tableaux,
		// boutons + events

		// génération des tableau
		JScrollPane scrollPane1 = new JScrollPane(setTableClients());
		JScrollPane scrollPane2 = new JScrollPane(setTableRdvs());

		// JTabbedPane jtp = new JTabbedPane();

		JPanel jp1 = new JPanel();
		JPanel jp2 = new JPanel();

		jtp.addTab("Clients", jp1);
		jtp.addTab("Rendez-vous", jp2);

		JButton btnAdd = new JButton("Ajouter");
		JButton btnSee = new JButton("Voir les Infos");
		JButton btnDel = new JButton("Supprimer");
		JButton btnUpd = new JButton("Modifier");

		// gestion des events
		setButtonsEvents(btnAdd, btnDel, btnUpd);

		JPanel jpB = new JPanel();

		// layout
		jpB.setLayout(new BoxLayout(jpB, BoxLayout.PAGE_AXIS));

		jp1.add(btnAdd);

		jpB.add(btnDel);
		jpB.add(btnUpd);
		//jpB.add(btnSee);

		jp2.add(jpB);

		jp1.add(scrollPane1);
		jp2.add(scrollPane2);

		return jtp;

	}

	public static void setButtonsEvents(JButton btnAdd, final JButton btnDel,
			JButton btnUpd) {

		btnAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				setAddDialog();
			}
		});

		btnDel.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				try {
					setDeleteConfirm();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		});

		btnUpd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {

				setUpdDialog();

			}
		});

	}

	protected static void setDeleteConfirm() throws IOException {

		if (selectedRDV != 0) {

			int choice = JOptionPane.showConfirmDialog(jtp,
					"voulez-vous vraiment supprimer le rendez-vous n° :" + selectedRDV
							+ "", "Suppression", 2);

			System.out.println(choice);
			if (choice == 0) {
				if (BddRDV.deleteRdv(selectedRDV)) {
					actualiseTableDelete();
				}
			}
		} else {

			advertSelected(jtp);
		}

	}

	private static void setAddDialog() {

		InputSwing AddDialog = new InputSwing(jtp, null, true, true);
		AddDialog.setTitle("Nouveau Rendez-vous");
		if (selectedContact != null) {

			AddDialog.setVisible(true);
		} else {
			advertSelected(AddDialog);
		}

	}

	private static void setUpdDialog() {

		InputSwing UpdDialog = new InputSwing(jtp, null, true, false);
		UpdDialog.setTitle("Modifier le RDV n° " + selectedRDV + "");

		if (selectedRDV != 0) {

			Rdv currentRdv;
			try {
				currentRdv = BddRDV.all().get(selectedRDV);

				
				UpdDialog.tfL.setText(currentRdv.getLieu());
				UpdDialog.taC.setText(currentRdv.getCommentaire());

				String[] dateStrings = currentRdv.getDate().split("-| ");

				int year = Integer.parseInt(dateStrings[0]);
				int month = Integer.parseInt(dateStrings[1]);
				int day = Integer.parseInt(dateStrings[2]);

				UpdDialog.jdP.getModel().setDate(year, month, day);
				UpdDialog.setVisible(true);

				System.out.println(year + "//" + month + "//" + day);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			advertSelected(UpdDialog);
		}

	}

	private static void advertSelected(Component parent) {

		JOptionPane.showMessageDialog(parent,
				"Aucun élément du tableau selectionné !", "Attention",
				JOptionPane.INFORMATION_MESSAGE);

	}

	public static JTable setTableClients() throws IOException {

		Map<String, Client> clients = BddClients.all();

		/* gnération du tableau clients */
		String col1[] = { "Id", "Nom", "Prenom", "Adresse", "CodePostal",
				"Ville", "Entreprise" };
		DefaultTableModel tableModelclients = new DefaultTableModel(col1, 0) {
			/**
			 * 
			 */
			private static final long serialVersionUID = -3774308719537017360L;

			public boolean isCellEditable(int row, int column) {
				return false;
			}
		};
		final JTable tableclients = new JTable(tableModelclients);

		for (Iterator<Client> iterator = clients.values().iterator(); iterator
				.hasNext();) {
			Client client = iterator.next();

			String Id = client.getId();
			String Nom = client.getNom();
			String Prenom = client.getPrenom();
			String Adresse = client.getAdresse();
			String CodePostal = client.getCodePostal();
			String Entreprise = client.getEntreprise();
			String Ville = client.getVille();

			Object[] data1 = { Id, Nom, Prenom, Adresse, CodePostal, Ville,
					Entreprise };

			tableModelclients.addRow(data1);
		}

		tableclients.setRowSelectionAllowed(true);

		/*
		 * Création de l'évènement d'affichage de la liste des informations du
		 * client au clic du client
		 */

		ListSelectionModel SelectionModel = tableclients.getSelectionModel();
		SelectionModel.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		SelectionModel.addListSelectionListener(new ListSelectionListener() {

			@Override
			public void valueChanged(ListSelectionEvent e) {

				int[] selectedRows = tableclients.getSelectedRows();

				for (int i = 0; i < selectedRows.length; i++) {

					selectedContact = (String) tableclients.getValueAt(
							selectedRows[i], 0);/* 0 correspond à  l'id */
				}

				if (e.getValueIsAdjusting() == false) {
					System.out.println("Selected: " + selectedContact);
				}
			}

		});

		return tableclients;
	}

	public static JTable setTableRdvs() throws IOException {

		Map<Integer, Rdv> rdvs = BddRDV.all();

		/* génération du tableau pour les rdv */

		final JTable tablerdv = new JTable(tableModelrdvs);

		maxRows = 0;
		for (Iterator<Rdv> iterator = rdvs.values().iterator(); iterator
				.hasNext();) {
			Rdv rdv = iterator.next();

			int Id = rdv.getId();
			int Semaine = rdv.getSemaine();
			String Nom = rdv.getNom();
			String Prenom = rdv.getPrenom();
			String Date = rdv.getDate();
			String lieu = rdv.getLieu();
			String Commentaire = rdv.getCommentaire();

			Object[] data2 = { Id, Semaine, Nom, Prenom, Date, lieu,
					Commentaire };

			maxRows++;
			maxIdRdv = Id;

			tableModelrdvs.addRow(data2);

		}

		System.out.println(maxIdRdv);
		/*
		 * Création de l'évènement de selection
		 */

		ListSelectionModel SelectionModel = tablerdv.getSelectionModel();
		SelectionModel.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		SelectionModel.addListSelectionListener(new ListSelectionListener() {

			@Override
			public void valueChanged(ListSelectionEvent e) {
				int[] selectedRows = tablerdv.getSelectedRows();

				for (int i = 0; i < selectedRows.length; i++) {

					/* selectedRDV : recupère l'id du Rdv courant */
					selectedRDV = (Integer) tablerdv.getValueAt(
							selectedRows[i], 0);
					/* colone 0 correspond à  l'id */

					/* index pour la ligne supprimé */
					selectedRowRDV = selectedRows[i];

				}
				if (e.getValueIsAdjusting() == false) {
					System.out.println("Selected: " + selectedRDV);
				}
			}

		});
		return tablerdv;

	}

	public static void actualiseTableDelete() throws IOException {

		tableModelrdvs.removeRow(selectedRowRDV);

	}
}
