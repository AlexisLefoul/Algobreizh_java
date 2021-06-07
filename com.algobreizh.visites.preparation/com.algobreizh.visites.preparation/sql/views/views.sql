SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET NAMES utf8 */;

/*Creation de la vue des commerciaux*/
CREATE OR REPLACE VIEW view_visites_commerciaux
(Id,Civilite,Nom,Prenom, TelephoneFixe, TelephoneMobile,Email)
AS SELECT Id,Contact_Civility, Contact_Name, Contact_FirstName,Contact_Phone, Contact_CellPhone, Contact_Email
FROM colleague;
/******************/

/*Création de la vue des clients*/
CREATE OR REPLACE VIEW view_visites_clients
(Id,IdCommercial, Entreprise, Adresse, CodePostal, Ville, Nom, Prenom, TelephoneFixe, TelephoneMobile)
AS SELECT DISTINCT cu.Id AS Id, cu.ColleagueId AS IdCommercial , cu.Name AS Entreprise, cu.MainDeliveryAddress_Address1 AS Adresse, cu.MainDeliveryAddress_ZipCode AS CodePostal, cu.MainDeliveryAddress_City AS Ville, co.ContactFields_Name AS Nom, co.ContactFields_FirstName AS Prenom, co.ContactFields_Phone AS TelephoneFixe, co.ContactFields_CellPhone AS TelephoneMobile
FROM customer cu, contact co
WHERE cu.Id = co.AssociatedCustomerId;
/********************/

/*Création de la vue des produits*/

