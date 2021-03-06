-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 02 Avril 2015 à 05:47
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
-- Contenu de la table `colleague`
--

INSERT INTO `colleague` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `Id`, `Address_Address1`, `Address_Address2`, `Address_Address3`, `Address_Address4`, `Address_ZipCode`, `Address_City`, `Address_State`, `Address_CountryIsoCode`, `Address_Longitude`, `Address_Latitude`, `Contact_Civility`, `Contact_Name`, `Contact_FirstName`, `Contact_Phone`, `Contact_CellPhone`, `Contact_Fax`, `Contact_Email`, `Contact_ColleagueFunction`, `IsSalesperson`, `UserId`, `GeographicSector`, `ColleagueFamilyId`, `Group1`, `Group2`, `MaximumDiscountRateAllowed`, `ActiveState`, `CifNif`, `IRPFRate`, `AnalyticAccounting_GridId`, `StorehouseId`, `UseCompanyDaySchedule`, `DaySchedule0_StartTime`, `DaySchedule0_EndTime`, `DaySchedule0_Duration`, `DaySchedule0_Active`, `DaySchedule1_StartTime`, `DaySchedule1_EndTime`, `DaySchedule1_Duration`, `DaySchedule1_Active`, `DaySchedule2_StartTime`, `DaySchedule2_EndTime`, `DaySchedule2_Duration`, `DaySchedule2_Active`, `DaySchedule3_StartTime`, `DaySchedule3_EndTime`, `DaySchedule3_Duration`, `DaySchedule3_Active`, `DaySchedule4_StartTime`, `DaySchedule4_EndTime`, `DaySchedule4_Duration`, `DaySchedule4_Active`, `DaySchedule5_StartTime`, `DaySchedule5_EndTime`, `DaySchedule5_Duration`, `DaySchedule5_Active`, `DaySchedule6_StartTime`, `DaySchedule6_EndTime`, `DaySchedule6_Duration`, `DaySchedule6_Active`, `EmployeeRegistrationNumber`, `SalePriceVatExcluded`, `HourlyCostPrice`, `ReferenceItemId`, `EmployeePayrollId`, `UniqueId`, `sysRecordVersion`, `sysRecordVersionId`, `sysEditCounter`) VALUES
('2015-04-02 05:28:33', 'ADM', '2015-04-02 05:30:16', 'ADM', NULL, NULL, 'CO00001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'KERMAREC', 'Gwen', NULL, '0607080910', NULL, 'g.kermarec@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '8a643460-4d80-4d6c-acca-6c3567fe4d82', 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 2),
('2015-04-02 05:29:39', 'ADM', '2015-04-02 05:29:39', 'ADM', NULL, NULL, 'CO00002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mademoiselle', 'LEFEBURE', 'Estelle', NULL, '0612345678', NULL, 'e.lefebure@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '224ee60a-782d-4d46-8be9-e9365c82fdfe', 10, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 05:31:38', 'ADM', '2015-04-02 05:31:38', 'ADM', NULL, NULL, 'CO00003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'DE CARANTEC', 'Georges', NULL, '065457687', NULL, 'g.decarantec@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, 'c59a7ecf-8611-4205-bf22-3e9aa80fe6e6', 12, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 05:32:31', 'ADM', '2015-04-02 05:32:31', 'ADM', NULL, NULL, 'CO00004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'KERADOC', 'Yannick', NULL, '0601020304', NULL, 'y.keradoc@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '6f572dbc-2e5e-47e4-aa8d-a6154ad09318', 13, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 05:32:31', 'ADM', '2015-04-02 05:32:31', 'ADM', NULL, NULL, 'CO00005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'LECAILTEC', 'Julien', NULL, '06010202378', NULL, 'j.lecailtec@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '6f572dbc-2e5e-47e4-aa8d-a6154ad09318', 13, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
