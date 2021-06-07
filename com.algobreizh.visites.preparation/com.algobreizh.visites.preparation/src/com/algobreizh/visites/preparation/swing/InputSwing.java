package com.algobreizh.visites.preparation.swing;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.HeadlessException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Properties;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;

import org.jdatepicker.impl.JDatePanelImpl;
import org.jdatepicker.impl.JDatePickerImpl;
import org.jdatepicker.impl.SqlDateModel;

import com.algobreizh.visites.preparation.core.lib.Client;
import com.algobreizh.visites.preparation.core.lib.Commercial;
import com.algobreizh.visites.preparation.core.lib.Rdv;
import com.algobreizh.visites.preparation.data.BddClients;
import com.algobreizh.visites.preparation.data.BddRDV;

public class InputSwing extends JDialog {

	protected JDatePickerImpl jdP;
	protected JTextField tfL;
	protected JTextArea taC;
	private JLabel lbS;
	private JLabel lbD;
	private JLabel lbL;
	private JLabel lbC;
	private JButton btnAjout;
	private JButton btnCancel;

	public InputSwing(Component parent, String name, boolean b,
			final boolean option) {

		JPanel panel = new JPanel(new GridBagLayout());
		GridBagConstraints cs = new GridBagConstraints();

		cs.fill = GridBagConstraints.HORIZONTAL;

		lbD = new JLabel("Date: ");
		cs.gridx = 0;
		cs.gridy = 3;
		cs.gridwidth = 1;
		panel.add(lbD, cs);

		jdP = setDatePicker();
		cs.gridx = 1;
		cs.gridy = 3;
		cs.gridwidth = 2;
		panel.add(jdP, cs);

		lbL = new JLabel("Lieu: ");
		cs.gridx = 0;
		cs.gridy = 4;
		cs.gridwidth = 1;
		panel.add(lbL, cs);

		tfL = new JTextField(20);
		cs.gridx = 1;
		cs.gridy = 4;
		cs.gridwidth = 2;
		panel.add(tfL, cs);

		lbC = new JLabel("Commentaire: ");
		cs.gridx = 0;
		cs.gridy = 5;
		cs.gridwidth = 1;
		panel.add(lbC, cs);

		taC = new JTextArea(10, 10);
		taC.setLineWrap(true);
		taC.setWrapStyleWord(true);
		cs.gridx = 1;
		cs.gridy = 5;
		cs.gridwidth = 2;
		panel.add(taC, cs);

		panel.setBorder(new LineBorder(Color.BLUE));

		btnAjout = new JButton("Envoyer");
		btnAjout.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {

				try {

					getInputRdv(option);
				} catch (IOException | HeadlessException | SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}

			}
		});

		btnCancel = new JButton("Cancel");
		btnCancel.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {

				dispose();
			}
		});

		JPanel bp = new JPanel();

		bp.add(btnAjout);

		bp.add(btnCancel);

		getContentPane().add(panel, BorderLayout.CENTER);
		getContentPane().add(bp, BorderLayout.PAGE_END);

		pack();
		setResizable(false);

		setLocationRelativeTo(parent);

	}

	public void getInputRdv(boolean option) throws IOException,
			HeadlessException, SQLException {

		// construit l'objet de nouveau rdv a partir de la saisit
		//ou le recupere pour le modifier

		Date selectedDate = (Date) jdP.getModel().getValue();

		Calendar cal = Calendar.getInstance();

		cal.setTime(selectedDate);

		int week = cal.get(Calendar.WEEK_OF_YEAR);

		System.out.println("semaine = "+week);

		
		if (option == true) {
			
			Client client = BddClients.clients.get(UiSwing.selectedContact);

			Rdv rdv = new Rdv(UiSwing.maxIdRdv+1, Commercial.Id(), UiSwing.selectedContact,
					week, client.getNom(),
					client.getPrenom(), selectedDate.toString(), tfL.getText(),
					taC.getText());
			
			setNewRdv(rdv);
			
		} else {
			
			 Rdv rdv = BddRDV.rdvs.get(UiSwing.selectedRDV);
			 
			 rdv.setDate(selectedDate.toString());
			 rdv.setLieu(tfL.getText());
			 rdv.setCommentaire(taC.getText());
			 
			 updateRdv(rdv);
		
		}
			
			
			

	}

	private void updateRdv(Rdv rdv) throws IOException {
		
		//update BDD et tablemodel
		
		if(BddRDV.update(rdv)) {
			
			Object[] dataRdv = { rdv.getId(), rdv.getSemaine(),
					rdv.getNom(), rdv.getPrenom(), rdv.getDate(),
					rdv.getLieu(),rdv.getCommentaire() };
			
			UiSwing.tableModelrdvs.removeRow(UiSwing.selectedRowRDV);
			UiSwing.tableModelrdvs.insertRow(UiSwing.selectedRowRDV, dataRdv);
		
			JOptionPane.showMessageDialog(InputSwing.this,
					"Rendez-vous modifié ", "OK",
					JOptionPane.INFORMATION_MESSAGE);
			dispose();	
			
		}
		
	 else {
		JOptionPane.showMessageDialog(InputSwing.this,
				"Un problème est survenu", "OK",
				JOptionPane.INFORMATION_MESSAGE);
		dispose();
		System.out.println("updated !");
	 }
	}

	public void setNewRdv(Rdv rdv) throws HeadlessException, IOException,
			SQLException {

		// ajout dans BDD et tablemodel

		if (BddRDV.create(rdv)) {

			Object[] dataRdv = { rdv.getId(), rdv.getSemaine(),
					rdv.getNom(), rdv.getPrenom(), rdv.getDate(),
					rdv.getLieu(),rdv.getCommentaire() };

			UiSwing.tableModelrdvs.addRow(dataRdv);

			JOptionPane.showMessageDialog(InputSwing.this,
					"Rendez-vous enregistré ", "OK",
					JOptionPane.INFORMATION_MESSAGE);
			dispose();
		} else {
			JOptionPane.showMessageDialog(InputSwing.this,
					"Un problème est survenu", "OK",
					JOptionPane.INFORMATION_MESSAGE);
			dispose();

		}

	}

	private static JDatePickerImpl setDatePicker() {

		SqlDateModel model = new SqlDateModel();
		Properties p = new Properties();
		p.put("text.today", "Today");
		p.put("text.month", "Month");
		p.put("text.year", "Year");

		// model.setDate(1554,12,02);
		model.setSelected(true);

		JDatePanelImpl datePanel = new JDatePanelImpl(model, p);
		JDatePickerImpl datePicker = new JDatePickerImpl(datePanel,
				new DateLabelFormatter());

		return datePicker;

	}

}
