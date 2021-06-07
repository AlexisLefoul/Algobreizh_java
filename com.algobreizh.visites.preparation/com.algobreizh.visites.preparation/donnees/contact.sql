-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 02 Avril 2015 à 05:45
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `algobreizh_0895452f-b7c1-4c00-a316-c6a6d0ea4bf4_22`
--

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `Id`, `ContactFields_Civility`, `ContactFields_Name`, `ContactFields_FirstName`, `ContactFields_Phone`, `ContactFields_CellPhone`, `ContactFields_Fax`, `ContactFields_Email`, `ContactFields_Function`, `ContactFields_Department`, `ContactFields_NaturalPerson`, `ContactFields_OptIn`, `ContactFields_ExternalId_GoogleId`, `ContactFields_ExternalId_OutlookId`, `AddressFields_Address1`, `AddressFields_Address2`, `AddressFields_Address3`, `AddressFields_Address4`, `AddressFields_ZipCode`, `AddressFields_City`, `AddressFields_State`, `AddressFields_CountryIsoCode`, `AddressFields_Description`, `AddressFields_Civility`, `AddressFields_ThirdName`, `AddressFields_Npai`, `AddressFields_WebSite`, `AddressFields_Longitude`, `AddressFields_Latitude`, `OtherAddressFields_Address1`, `OtherAddressFields_Address2`, `OtherAddressFields_Address3`, `OtherAddressFields_Address4`, `OtherAddressFields_ZipCode`, `OtherAddressFields_City`, `OtherAddressFields_State`, `OtherAddressFields_CountryIsoCode`, `OtherAddressFields_Description`, `OtherAddressFields_Civility`, `OtherAddressFields_ThirdName`, `OtherAddressFields_Npai`, `OtherAddressFields_WebSite`, `OtherAddressFields_Longitude`, `OtherAddressFields_Latitude`, `IsMainInvoicing`, `IsMainDelivery`, `AssociatedCustomerId`, `AssociatedSupplierId`, `IsWebContact`, `sysEditCounter`, `sysRecordVersion`, `sysRecordVersionId`) VALUES
('2015-04-02 05:17:00', 'ADM', '2015-04-02 05:17:00', 'ADM', NULL, NULL, '5ae8c7a1-0a01-4615-8268-57a5d93fc49a', NULL, 'Queffelec', 'Gwen', '0296979892', '06081014', NULL, NULL, 'PDG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Queffelec', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Queffelec', 0, NULL, NULL, NULL, 0, 0, 'CL00002', NULL, 0, 1, 6, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:20:00', 'ADM', '2015-04-02 05:20:00', 'ADM', NULL, NULL, '965d7d5f-72e1-4831-969f-3817e9c4876f', NULL, 'Alapoulos', 'Christofa', '0223242526', '067890123', NULL, NULL, 'Gérante', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Alapoulos', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Alapoulos', 0, NULL, NULL, NULL, 0, 0, 'CL00003', NULL, 0, 1, 7, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:22:00', 'ADM', '2015-04-02 05:22:00', 'ADM', NULL, NULL, 'c12f9ec0-a84e-4dd2-ba12-fd17d151231d', NULL, 'Dupont', 'Arthur', '0299887766', '0608070505', NULL, NULL, 'Gérant', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Dupont', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Dupont', 0, NULL, NULL, NULL, 0, 0, 'CL00004', NULL, 0, 1, 8, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02a3883bab2c', NULL, 'Martin', 'Georges', '0297282930', '0607080910', NULL, NULL, 'Gérant', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Martin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Martin', 0, NULL, NULL, NULL, 0, 0, 'CL00001', NULL, 0, 1, 5, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2c', NULL, 'Lecallec', 'Jérome', '0297282937', '060708812', NULL, NULL, 'Assistant de direction', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lecallec', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lecallec', 0, NULL, NULL, NULL, 0, 0, 'CL00001', NULL, 0, 1, 9, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2d', NULL, 'Lemoine', 'Jean-Claude', '0297285687', '060708813', NULL, NULL, 'Comptable', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lemoine', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lemoine', 0, NULL, NULL, NULL, 0, 0, 'CL00001', NULL, 0, 1, 10, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2e', NULL, 'Rouiller', 'Josselin', '0297236094', '0603492010', NULL, NULL, 'Directeur Ressources Humaines', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Rouiller', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Rouiller', 0, NULL, NULL, NULL, 0, 0, 'CL00002', NULL, 0, 1, 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2f', NULL, 'Lanvin', 'Gérard', '0297617901', '0605820326', NULL, NULL, 'Directeur Commercial', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lanvin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lanvin', 0, NULL, NULL, NULL, 0, 0, 'CL00005', NULL, 0, 1, 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2g', NULL, 'Roberta', 'Giselle', '0298927468', '0607401747', NULL, NULL, 'Secrétaire', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Roberta', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Roberta', 0, NULL, NULL, NULL, 0, 0, 'CL00005', NULL, 0, 1, 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2h', NULL, 'Legendre', 'Noémie', '0298274839', '0607482927', NULL, NULL, 'Gérante', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Legendre', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Legendre', 0, NULL, NULL, NULL, 0, 0, 'CL00006', NULL, 0, 1, 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2i', NULL, 'Lefahouet', 'Richard', '0283782090', '0683727949', NULL, NULL, 'Comptable', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lefahouet', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Lefahouet', 0, NULL, NULL, NULL, 0, 0, 'CL00006', NULL, 0, 1, 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-05-02 05:15:06', 'ADM', '2015-04-02 05:15:06', 'ADM', NULL, NULL, 'c682cbf4-915d-445f-9f21-02b3883bbb2j', NULL, 'Thoers', 'Valentin', '0276236239', '0682348293', NULL, NULL, 'Directeur Général', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Thoers', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Thoers', 0, NULL, NULL, NULL, 0, 0, 'CL00007', NULL, 0, 1, 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
