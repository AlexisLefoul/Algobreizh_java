/*Creation de la table Visites_RDV*/
CREATE TABLE IF NOT EXISTS`Visites_RDV` (
  `idRDV` INT NOT NULL AUTO_INCREMENT,
  `idCommercial` VARCHAR(20) NOT NULL,
  `idClient` VARCHAR(20) NOT NULL,
  `Semaine` INT NOT NULL,
  `Nom` VARCHAR(45) NOT NULL,
  `Prenom` VARCHAR(45) NOT NULL,
  `Date` DATETIME NOT NULL,
  `Lieu` VARCHAR(255) NOT NULL,
  `Commentaire` VARCHAR(255),
  PRIMARY KEY (`idRDV`))
ENGINE = InnoDB;

/*clé étrangère*/
ALTER TABLE Visites_RDV
ADD CONSTRAINT FOREIGN KEY (`IdCommercial`) REFERENCES identification(`Id`);



/*Création de la table identification*/
CREATE TABLE IF NOT EXISTS identification AS SELECT
	Id,Contact_Name FROM colleague;
	
/*************/
ALTER TABLE identification
    ADD Password VARCHAR(128),
    ADD PRIMARY KEY (`Id`);