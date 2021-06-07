-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 02 sep. 2020 à 21:53
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `algobreizh_gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `accountingexchangegroup`
--

DROP TABLE IF EXISTS `accountingexchangegroup`;
CREATE TABLE IF NOT EXISTS `accountingexchangegroup` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `GroupNumber` int(11) NOT NULL DEFAULT '0',
  `System` tinyint(1) NOT NULL DEFAULT '0',
  `TransferedPieces` tinyint(1) NOT NULL DEFAULT '0',
  `ProcessType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `accountingexchangegroupprocessdetail`
--

DROP TABLE IF EXISTS `accountingexchangegroupprocessdetail`;
CREATE TABLE IF NOT EXISTS `accountingexchangegroupprocessdetail` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ProcessType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ProcessDate` datetime NOT NULL,
  `Errors` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `IsInvoicingType` tinyint(1) NOT NULL DEFAULT '1',
  `IsDeliveryType` tinyint(1) NOT NULL DEFAULT '1',
  `AddressFields_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `AddressFields_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Longitude` decimal(20,8) DEFAULT NULL,
  `AddressFields_Latitude` decimal(20,8) DEFAULT NULL,
  `IsMainInvoicing` tinyint(1) NOT NULL DEFAULT '0',
  `IsMainDelivery` tinyint(1) NOT NULL DEFAULT '0',
  `AssociatedCustomerId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedSupplierId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `analyticgrid`
--

DROP TABLE IF EXISTS `analyticgrid`;
CREATE TABLE IF NOT EXISTS `analyticgrid` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AnalyticGrid_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `analyticgridline`
--

DROP TABLE IF EXISTS `analyticgridline`;
CREATE TABLE IF NOT EXISTS `analyticgridline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `AnalyticPlanItem` int(11) NOT NULL,
  `Percentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AnalyticGridId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AnalyticGridLine_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `analyticplan`
--

DROP TABLE IF EXISTS `analyticplan`;
CREATE TABLE IF NOT EXISTS `analyticplan` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaxDepth` int(11) NOT NULL DEFAULT '0',
  `WaitingPlanItemId` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `sysEditCounter` int(11) DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AnalyticPlan_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `analyticplanitem`
--

DROP TABLE IF EXISTS `analyticplanitem`;
CREATE TABLE IF NOT EXISTS `analyticplanitem` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` int(11) NOT NULL,
  `Code` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `FullPathCode` varchar(169) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PlanId` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `Label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsLeaf` tinyint(1) NOT NULL DEFAULT '0',
  `HierarchyLevel` int(11) NOT NULL DEFAULT '1',
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `AnalyticPlanItem_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `BankBook` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AccountingAccount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '512',
  `Address_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_BankName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Longitude` decimal(20,8) DEFAULT NULL,
  `Address_Latitude` decimal(20,8) DEFAULT NULL,
  `Contact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Function` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Department` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_BasicBankAccountNumber` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_InternationalBankAccountNumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_BankIdentifierCode` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NationalIssuerNumber` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FormatCfonbFile` tinyint(1) NOT NULL DEFAULT '0',
  `FormatSepaFile` tinyint(1) NOT NULL DEFAULT '0',
  `SepaCreditorIdentifier` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SepaFileUtf8Encoded` tinyint(1) NOT NULL DEFAULT '1',
  `SepaForceChrgBr` tinyint(1) NOT NULL DEFAULT '1',
  `SepaBatchBooking` tinyint(1) NOT NULL DEFAULT '0',
  `SepaSerializeDateTimeToLocalZone` tinyint(1) NOT NULL DEFAULT '0',
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BillOfExchangeBook` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OD',
  `BillForCollectionBook` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OD',
  `BillForDiscountBook` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OD',
  `OtherPaymentBook` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OD',
  `BillForCollectionAccount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '5113',
  `BillForDiscountAccount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '5114',
  `OtherPaymentAccount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '5112',
  `BankRemittanceCharges0_Caption` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankRemittanceCharges0_Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BankRemittanceCharges0_AmountType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `BankRemittanceCharges0_Account` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '627',
  `BankRemittanceCharges0_PaymentTypes` longtext COLLATE utf8_unicode_ci,
  `BankRemittanceCharges1_Caption` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankRemittanceCharges1_Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BankRemittanceCharges1_AmountType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `BankRemittanceCharges1_Account` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '627',
  `BankRemittanceCharges1_PaymentTypes` longtext COLLATE utf8_unicode_ci,
  `BankRemittanceCharges2_Caption` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankRemittanceCharges2_Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BankRemittanceCharges2_AmountType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `BankRemittanceCharges2_Account` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '627',
  `BankRemittanceCharges2_PaymentTypes` longtext COLLATE utf8_unicode_ci,
  `BankRemittanceCharges3_Caption` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankRemittanceCharges3_Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BankRemittanceCharges3_AmountType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `BankRemittanceCharges3_Account` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '627',
  `BankRemittanceCharges3_PaymentTypes` longtext COLLATE utf8_unicode_ci,
  `BankRemittanceCharges4_Caption` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankRemittanceCharges4_Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BankRemittanceCharges4_AmountType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `BankRemittanceCharges4_Account` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '627',
  `BankRemittanceCharges4_PaymentTypes` longtext COLLATE utf8_unicode_ci,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Bank_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bankremittance`
--

DROP TABLE IF EXISTS `bankremittance`;
CREATE TABLE IF NOT EXISTS `bankremittance` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `BankRemittanceNumber` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `BankRemittanceDate` date NOT NULL,
  `BankId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `BankRemittanceState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CfonbFileGenerated` tinyint(1) NOT NULL DEFAULT '0',
  `LastSepaMessageId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyConversionRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargesEntryDate` date DEFAULT NULL,
  `RemittanceType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingTransferWithCommitmentDate` tinyint(1) NOT NULL DEFAULT '0',
  `ChargeAmounts0` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts1` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts2` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts3` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts4` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts0` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts1` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts2` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts3` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts4` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UseRemittanceAccountsForAccountingTransfer` tinyint(1) NOT NULL DEFAULT '0',
  `CollectionDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `BankRemittanceIdIndex` (`BankRemittanceNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `calcultateddatamodel`
--

DROP TABLE IF EXISTS `calcultateddatamodel`;
CREATE TABLE IF NOT EXISTS `calcultateddatamodel` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `sysEditCounter` int(11) DEFAULT '0',
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Purpose` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Program_Program` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `civility`
--

DROP TABLE IF EXISTS `civility`;
CREATE TABLE IF NOT EXISTS `civility` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `classificationgroup`
--

DROP TABLE IF EXISTS `classificationgroup`;
CREATE TABLE IF NOT EXISTS `classificationgroup` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `GroupType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `colleague`
--

DROP TABLE IF EXISTS `colleague`;
CREATE TABLE IF NOT EXISTS `colleague` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Address_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Longitude` decimal(20,8) DEFAULT NULL,
  `Address_Latitude` decimal(20,8) DEFAULT NULL,
  `Contact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Contact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_ColleagueFunction` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsSalesperson` tinyint(1) NOT NULL DEFAULT '1',
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GeographicSector` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ColleagueFamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaximumDiscountRateAllowed` decimal(28,8) DEFAULT NULL,
  `ActiveState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CifNif` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IRPFRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UseCompanyDaySchedule` tinyint(1) NOT NULL DEFAULT '1',
  `DaySchedule0_StartTime` datetime NOT NULL DEFAULT '1753-01-01 09:00:00',
  `DaySchedule0_EndTime` datetime NOT NULL DEFAULT '1753-01-01 17:00:00',
  `DaySchedule0_Duration` double NOT NULL DEFAULT '7',
  `DaySchedule0_Active` tinyint(1) NOT NULL DEFAULT '1',
  `DaySchedule1_StartTime` datetime NOT NULL DEFAULT '1753-01-01 09:00:00',
  `DaySchedule1_EndTime` datetime NOT NULL DEFAULT '1753-01-01 17:00:00',
  `DaySchedule1_Duration` double NOT NULL DEFAULT '7',
  `DaySchedule1_Active` tinyint(1) NOT NULL DEFAULT '1',
  `DaySchedule2_StartTime` datetime NOT NULL DEFAULT '1753-01-01 09:00:00',
  `DaySchedule2_EndTime` datetime NOT NULL DEFAULT '1753-01-01 17:00:00',
  `DaySchedule2_Duration` double NOT NULL DEFAULT '7',
  `DaySchedule2_Active` tinyint(1) NOT NULL DEFAULT '1',
  `DaySchedule3_StartTime` datetime NOT NULL DEFAULT '1753-01-01 09:00:00',
  `DaySchedule3_EndTime` datetime NOT NULL DEFAULT '1753-01-01 17:00:00',
  `DaySchedule3_Duration` double NOT NULL DEFAULT '7',
  `DaySchedule3_Active` tinyint(1) NOT NULL DEFAULT '1',
  `DaySchedule4_StartTime` datetime NOT NULL DEFAULT '1753-01-01 09:00:00',
  `DaySchedule4_EndTime` datetime NOT NULL DEFAULT '1753-01-01 17:00:00',
  `DaySchedule4_Duration` double NOT NULL DEFAULT '7',
  `DaySchedule4_Active` tinyint(1) NOT NULL DEFAULT '1',
  `DaySchedule5_StartTime` datetime NOT NULL DEFAULT '1753-01-01 09:00:00',
  `DaySchedule5_EndTime` datetime NOT NULL DEFAULT '1753-01-01 17:00:00',
  `DaySchedule5_Duration` double NOT NULL DEFAULT '7',
  `DaySchedule5_Active` tinyint(1) NOT NULL DEFAULT '0',
  `DaySchedule6_StartTime` datetime NOT NULL DEFAULT '1753-01-01 09:00:00',
  `DaySchedule6_EndTime` datetime NOT NULL DEFAULT '1753-01-01 17:00:00',
  `DaySchedule6_Duration` double NOT NULL DEFAULT '7',
  `DaySchedule6_Active` tinyint(1) NOT NULL DEFAULT '0',
  `EmployeeRegistrationNumber` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SalePriceVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `HourlyCostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReferenceItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmployeePayrollId` int(11) DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Colleague_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `colleague`
--

INSERT INTO `colleague` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `Id`, `Address_Address1`, `Address_Address2`, `Address_Address3`, `Address_Address4`, `Address_ZipCode`, `Address_City`, `Address_State`, `Address_CountryIsoCode`, `Address_Longitude`, `Address_Latitude`, `Contact_Civility`, `Contact_Name`, `Contact_FirstName`, `Contact_Phone`, `Contact_CellPhone`, `Contact_Fax`, `Contact_Email`, `Contact_ColleagueFunction`, `IsSalesperson`, `UserId`, `GeographicSector`, `ColleagueFamilyId`, `Group1`, `Group2`, `MaximumDiscountRateAllowed`, `ActiveState`, `CifNif`, `IRPFRate`, `AnalyticAccounting_GridId`, `StorehouseId`, `UseCompanyDaySchedule`, `DaySchedule0_StartTime`, `DaySchedule0_EndTime`, `DaySchedule0_Duration`, `DaySchedule0_Active`, `DaySchedule1_StartTime`, `DaySchedule1_EndTime`, `DaySchedule1_Duration`, `DaySchedule1_Active`, `DaySchedule2_StartTime`, `DaySchedule2_EndTime`, `DaySchedule2_Duration`, `DaySchedule2_Active`, `DaySchedule3_StartTime`, `DaySchedule3_EndTime`, `DaySchedule3_Duration`, `DaySchedule3_Active`, `DaySchedule4_StartTime`, `DaySchedule4_EndTime`, `DaySchedule4_Duration`, `DaySchedule4_Active`, `DaySchedule5_StartTime`, `DaySchedule5_EndTime`, `DaySchedule5_Duration`, `DaySchedule5_Active`, `DaySchedule6_StartTime`, `DaySchedule6_EndTime`, `DaySchedule6_Duration`, `DaySchedule6_Active`, `EmployeeRegistrationNumber`, `SalePriceVatExcluded`, `HourlyCostPrice`, `ReferenceItemId`, `EmployeePayrollId`, `UniqueId`, `sysRecordVersion`, `sysRecordVersionId`, `sysEditCounter`) VALUES
('2015-04-02 05:28:33', 'ADM', '2015-04-02 05:30:16', 'ADM', NULL, NULL, 'CO00001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'KERMAREC', 'Gwen', NULL, '0607080910', NULL, 'g.kermarec@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '8a643460-4d80-4d6c-acca-6c3567fe4d82', 11, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 2),
('2015-04-02 05:29:39', 'ADM', '2015-04-02 05:29:39', 'ADM', NULL, NULL, 'CO00002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mademoiselle', 'LEFEBURE', 'Estelle', NULL, '0612345678', NULL, 'e.lefebure@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '224ee60a-782d-4d46-8be9-e9365c82fdfe', 10, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 05:31:38', 'ADM', '2015-04-02 05:31:38', 'ADM', NULL, NULL, 'CO00003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'DE CARANTEC', 'Georges', NULL, '065457687', NULL, 'g.decarantec@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, 'c59a7ecf-8611-4205-bf22-3e9aa80fe6e6', 12, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 05:32:31', 'ADM', '2015-04-02 05:32:31', 'ADM', NULL, NULL, 'CO00004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'KERADOC', 'Yannick', NULL, '0601020304', NULL, 'y.keradoc@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '6f572dbc-2e5e-47e4-aa8d-a6154ad09318', 13, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 05:32:31', 'ADM', '2015-04-02 05:32:31', 'ADM', NULL, NULL, 'CO00005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Monsieur', 'LECAILTEC', 'Julien', NULL, '06010202378', NULL, 'j.lecailtec@algobreizh.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '0.00000000', NULL, NULL, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 1, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, '1753-01-01 09:00:00', '1753-01-01 17:00:00', 7, 0, NULL, '0.00000000', '0.00000000', NULL, NULL, '6f572dbc-2e5e-47e4-aa8d-a6154ad09318', 13, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1);

-- --------------------------------------------------------

--
-- Structure de la table `colleagueassociatedfiles`
--

DROP TABLE IF EXISTS `colleagueassociatedfiles`;
CREATE TABLE IF NOT EXISTS `colleagueassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `colleaguefamily`
--

DROP TABLE IF EXISTS `colleaguefamily`;
CREATE TABLE IF NOT EXISTS `colleaguefamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `ColleagueFamily_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `colleaguefunction`
--

DROP TABLE IF EXISTS `colleaguefunction`;
CREATE TABLE IF NOT EXISTS `colleaguefunction` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commissionscale`
--

DROP TABLE IF EXISTS `commissionscale`;
CREATE TABLE IF NOT EXISTS `commissionscale` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DateBeginning` date DEFAULT NULL,
  `DateEnd` date DEFAULT NULL,
  `CSScope` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ObjectiveType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Mode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `GroupBy` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `CommissionScale_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commissionscalecolleagueline`
--

DROP TABLE IF EXISTS `commissionscalecolleagueline`;
CREATE TABLE IF NOT EXISTS `commissionscalecolleagueline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CommissionScaleId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ColleagueFamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commissionscaleselectionline`
--

DROP TABLE IF EXISTS `commissionscaleselectionline`;
CREATE TABLE IF NOT EXISTS `commissionscaleselectionline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CommissionScaleId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SelectionType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IdFrom` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdTo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Exclude` tinyint(1) NOT NULL DEFAULT '0',
  `SelectionOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commissionscalestageline`
--

DROP TABLE IF EXISTS `commissionscalestageline`;
CREATE TABLE IF NOT EXISTS `commissionscalestageline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CommissionScaleId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Threshold` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Formula` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Percentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `complementarydiscount`
--

DROP TABLE IF EXISTS `complementarydiscount`;
CREATE TABLE IF NOT EXISTS `complementarydiscount` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SaleAccount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '709',
  `PurchaseAccount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '609',
  `TransferToAccounting` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ContactFields_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_Name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `ContactFields_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_Function` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_Department` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `ContactFields_OptIn` tinyint(1) NOT NULL DEFAULT '0',
  `ContactFields_ExternalId_GoogleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactFields_ExternalId_OutlookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `AddressFields_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressFields_Longitude` decimal(20,8) DEFAULT NULL,
  `AddressFields_Latitude` decimal(20,8) DEFAULT NULL,
  `OtherAddressFields_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `OtherAddressFields_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherAddressFields_Longitude` decimal(20,8) DEFAULT NULL,
  `OtherAddressFields_Latitude` decimal(20,8) DEFAULT NULL,
  `IsMainInvoicing` tinyint(1) NOT NULL DEFAULT '0',
  `IsMainDelivery` tinyint(1) NOT NULL DEFAULT '0',
  `AssociatedCustomerId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedSupplierId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsWebContact` tinyint(1) NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `contact`
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

-- --------------------------------------------------------

--
-- Structure de la table `contactassociatedfiles`
--

DROP TABLE IF EXISTS `contactassociatedfiles`;
CREATE TABLE IF NOT EXISTS `contactassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contactecommerceinfo`
--

DROP TABLE IF EXISTS `contactecommerceinfo`;
CREATE TABLE IF NOT EXISTS `contactecommerceinfo` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `InfoKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `InfoValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `correctionreason`
--

DROP TABLE IF EXISTS `correctionreason`;
CREATE TABLE IF NOT EXISTS `correctionreason` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `IsoCode` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Inactive` tinyint(1) NOT NULL DEFAULT '0',
  `Eu` tinyint(1) NOT NULL DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IsoCode`),
  KEY `Country_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `currencytable`
--

DROP TABLE IF EXISTS `currencytable`;
CREATE TABLE IF NOT EXISTS `currencytable` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Symbol` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DecimalCount` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `ConversionRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ConversionRateDate` date NOT NULL,
  `ProviderName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SalesJournal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchasesJournal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CurrencyTable_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UseInvoicingAddressAsDeliveryAddress` tinyint(1) NOT NULL DEFAULT '1',
  `UseInvoicingContactAsDeliveryContact` tinyint(1) NOT NULL DEFAULT '1',
  `MainDeliveryAddress_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `MainDeliveryAddress_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Longitude` decimal(20,8) DEFAULT NULL,
  `MainDeliveryAddress_Latitude` decimal(20,8) DEFAULT NULL,
  `MainInvoicingAddress_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `MainInvoicingAddress_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Longitude` decimal(20,8) DEFAULT NULL,
  `MainInvoicingAddress_Latitude` decimal(20,8) DEFAULT NULL,
  `MainDeliveryContact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Function` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Department` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `MainDeliveryContact_OptIn` tinyint(1) NOT NULL DEFAULT '0',
  `MainDeliveryContact_ExternalId_GoogleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_ExternalId_OutlookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Function` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Department` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `MainInvoicingContact_OptIn` tinyint(1) NOT NULL DEFAULT '0',
  `MainInvoicingContact_ExternalId_GoogleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_ExternalId_OutlookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `ThirdLanguage` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FR',
  `PriceListCategoryId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Siren` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAF` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubFamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IntracommunityVATNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TerritorialityId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `FirstInvoicingDate` date DEFAULT NULL,
  `SettlementModeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentDate` smallint(6) DEFAULT NULL,
  `DiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SecondDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AllowedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrentAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ExtendedCurrentAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `InitialAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ExceedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Accounts_Account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Accounts_BillOfExchangeAccountingAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FinancialDiscountType` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `FinancialDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `FinancialDiscountPaymentDelay` smallint(6) NOT NULL DEFAULT '0',
  `ActiveState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MustRetrieveCommitmentsFromAccounting` tinyint(1) NOT NULL DEFAULT '0',
  `DocumentSerialId` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdentificationType` tinyint(3) UNSIGNED DEFAULT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThresholdBeforeExceedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TaxIds0` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShippingId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InvoicingThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DisallowOrderAssort` tinyint(1) NOT NULL DEFAULT '0',
  `DisallowDeliveryAssort` tinyint(1) NOT NULL DEFAULT '0',
  `Type` tinyint(3) UNSIGNED DEFAULT '1',
  `PriceWithTaxBased` tinyint(1) NOT NULL DEFAULT '0',
  `MustBeReminder` tinyint(1) NOT NULL DEFAULT '1',
  `SelectedReminderReport` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DayNumberToFirstReminder` int(11) NOT NULL DEFAULT '5',
  `DayNumberToSecondReminder` int(11) NOT NULL DEFAULT '5',
  `DayNumberToThirdReminder` int(11) NOT NULL DEFAULT '5',
  `IsCustomerAccount` tinyint(1) NOT NULL DEFAULT '0',
  `WebContactSendKind` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `SubjectToRE` tinyint(1) NOT NULL DEFAULT '0',
  `SendReminderToPayerThird` tinyint(1) NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Customer_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `Id`, `Civility`, `Name`, `UseInvoicingAddressAsDeliveryAddress`, `UseInvoicingContactAsDeliveryContact`, `MainDeliveryAddress_Address1`, `MainDeliveryAddress_Address2`, `MainDeliveryAddress_Address3`, `MainDeliveryAddress_Address4`, `MainDeliveryAddress_ZipCode`, `MainDeliveryAddress_City`, `MainDeliveryAddress_State`, `MainDeliveryAddress_CountryIsoCode`, `MainDeliveryAddress_Description`, `MainDeliveryAddress_Civility`, `MainDeliveryAddress_ThirdName`, `MainDeliveryAddress_Npai`, `MainDeliveryAddress_WebSite`, `MainDeliveryAddress_Longitude`, `MainDeliveryAddress_Latitude`, `MainInvoicingAddress_Address1`, `MainInvoicingAddress_Address2`, `MainInvoicingAddress_Address3`, `MainInvoicingAddress_Address4`, `MainInvoicingAddress_ZipCode`, `MainInvoicingAddress_City`, `MainInvoicingAddress_State`, `MainInvoicingAddress_CountryIsoCode`, `MainInvoicingAddress_Description`, `MainInvoicingAddress_Civility`, `MainInvoicingAddress_ThirdName`, `MainInvoicingAddress_Npai`, `MainInvoicingAddress_WebSite`, `MainInvoicingAddress_Longitude`, `MainInvoicingAddress_Latitude`, `MainDeliveryContact_Civility`, `MainDeliveryContact_Name`, `MainDeliveryContact_FirstName`, `MainDeliveryContact_Phone`, `MainDeliveryContact_CellPhone`, `MainDeliveryContact_Fax`, `MainDeliveryContact_Email`, `MainDeliveryContact_Function`, `MainDeliveryContact_Department`, `MainDeliveryContact_NaturalPerson`, `MainDeliveryContact_OptIn`, `MainDeliveryContact_ExternalId_GoogleId`, `MainDeliveryContact_ExternalId_OutlookId`, `MainInvoicingContact_Civility`, `MainInvoicingContact_Name`, `MainInvoicingContact_FirstName`, `MainInvoicingContact_Phone`, `MainInvoicingContact_CellPhone`, `MainInvoicingContact_Fax`, `MainInvoicingContact_Email`, `MainInvoicingContact_Function`, `MainInvoicingContact_Department`, `MainInvoicingContact_NaturalPerson`, `MainInvoicingContact_OptIn`, `MainInvoicingContact_ExternalId_GoogleId`, `MainInvoicingContact_ExternalId_OutlookId`, `NaturalPerson`, `ThirdLanguage`, `PriceListCategoryId`, `Siren`, `NAF`, `FamilyId`, `SubFamilyId`, `IntracommunityVATNumber`, `TerritorialityId`, `FirstInvoicingDate`, `SettlementModeId`, `PaymentDate`, `DiscountRate`, `SecondDiscountRate`, `AllowedAmount`, `CurrentAmount`, `ExtendedCurrentAmount`, `InitialAmount`, `ExceedAmount`, `Accounts_Account`, `Accounts_BillOfExchangeAccountingAccount`, `FinancialDiscountType`, `FinancialDiscountRate`, `FinancialDiscountPaymentDelay`, `ActiveState`, `CurrencyId`, `Group1`, `Group2`, `ColleagueId`, `MustRetrieveCommitmentsFromAccounting`, `DocumentSerialId`, `IdentificationType`, `AnalyticAccounting_GridId`, `ThresholdBeforeExceedAmount`, `TaxIds0`, `TaxIds1`, `TaxIds2`, `ShippingId`, `PaymentThirdId`, `InvoicingThirdId`, `DisallowOrderAssort`, `DisallowDeliveryAssort`, `Type`, `PriceWithTaxBased`, `MustBeReminder`, `SelectedReminderReport`, `DayNumberToFirstReminder`, `DayNumberToSecondReminder`, `DayNumberToThirdReminder`, `IsCustomerAccount`, `WebContactSendKind`, `SubjectToRE`, `SendReminderToPayerThird`, `sysEditCounter`, `UniqueId`, `sysRecordVersion`, `sysRecordVersionId`) VALUES
('2015-04-02 05:15:06', 'ADM', '2015-04-02 05:15:10', 'ADM', NULL, NULL, 'CL00001', NULL, 'Super U Landivisiau', 1, 1, '3 rue des Abers', NULL, NULL, NULL, '29400', 'LANDIVISIAU', 'FINISTERE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Super U Landivisiau', 0, NULL, NULL, NULL, '3 rue des Abers', NULL, NULL, NULL, '29400', 'LANDIVISIAU', 'FINISTERE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Super U Landivisiau', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 'FR', NULL, NULL, NULL, 'FCL00001', NULL, NULL, 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', NULL, NULL, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '411CL00001', '413CL00001', 1, '0.00000000', 0, 0, NULL, NULL, NULL, 'CO00001', 0, NULL, NULL, NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, 5, 5, 0, 0, 0, 0, 2, 'fbc42281-b3a4-40cf-942e-f55c90672ec0', 5, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:17:40', 'ADM', '2015-04-02 05:17:42', 'ADM', NULL, NULL, 'CL00002', NULL, 'Cora Ploufragan', 1, 1, 'Zone commerciale de l\'Arvor', NULL, NULL, NULL, '22400', 'PLOUFRAGAN', 'COTES-D\'ARMOR', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Cora Ploufragan', 0, NULL, NULL, NULL, 'Zone commerciale de l\'Arvor', NULL, NULL, NULL, '22400', 'PLOUFRAGAN', 'COTES-D\'ARMOR', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Cora Ploufragan', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 'FR', NULL, NULL, NULL, 'FCL00001', NULL, NULL, 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', NULL, NULL, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '411CL00002', '413CL00002', 1, '0.00000000', 0, 0, NULL, NULL, NULL, 'CO00001', 0, NULL, NULL, NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, 5, 5, 0, 0, 0, 0, 2, '97d08726-d7cb-426f-aba7-76579f13f42d', 6, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:20:23', 'ADM', '2015-04-02 05:20:25', 'ADM', NULL, NULL, 'CL00003', NULL, 'Scarabée Rennes Ouest', 1, 1, '10, route de Lorient', NULL, NULL, NULL, '35000', 'RENNES', 'ILLE-ET-VILAINE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Scarabée Rennes Ouest', 0, NULL, NULL, NULL, '10, route de Lorient', NULL, NULL, NULL, '35000', 'RENNES', 'ILLE-ET-VILAINE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Scarabée Rennes Ouest', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 'FR', NULL, NULL, NULL, 'FCL00002', NULL, NULL, 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', NULL, NULL, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '411CL00003', '413CL00003', 1, '0.00000000', 0, 0, NULL, NULL, NULL, 'CO00001', 0, NULL, NULL, NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, 5, 5, 0, 0, 0, 0, 2, 'd62d98f7-c37c-4e7a-8508-1a0a6e98ca78', 7, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:22:27', 'ADM', '2015-04-02 05:22:28', 'ADM', NULL, NULL, 'CL00004', NULL, 'La Belle-Iloise Rennes', 1, 1, '16, rue Hoche', NULL, NULL, NULL, '35000', 'RENNES', 'ILLE-ET-VILAINE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'La Belle-Iloise Rennes', 0, NULL, NULL, NULL, '16, rue Hoche', NULL, NULL, NULL, '35000', 'RENNES', 'ILLE-ET-VILAINE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'La Belle-Iloise Rennes', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 'FR', NULL, NULL, NULL, 'FCL00003', NULL, NULL, 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', NULL, NULL, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '411CL00004', '413CL00004', 1, '0.00000000', 0, 0, NULL, NULL, NULL, 'CO00002', 0, NULL, NULL, NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, 5, 5, 0, 0, 0, 0, 2, '1bbaad4f-e80a-4681-9142-1a300cbbc0d9', 8, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:22:27', 'ADM', '2015-04-02 05:22:28', 'ADM', NULL, NULL, 'CL00005', NULL, 'Sephora', 1, 1, 'Centre commercial Le Colombier', NULL, NULL, NULL, '35000', 'RENNES', 'ILLE-ET-VILAINE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Sephora Rennes Colombier', 0, NULL, NULL, NULL, 'Centre commercial Le colombier', NULL, NULL, NULL, '35000', 'RENNES', 'ILLE-ET-VILAINE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Sephora Rennes Colombier', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 'FR', NULL, NULL, NULL, 'FCL00003', NULL, NULL, 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', NULL, NULL, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '411CL00005', '413CL00005', 1, '0.00000000', 0, 0, NULL, NULL, NULL, 'CO00002', 0, NULL, NULL, NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, 5, 5, 0, 0, 0, 0, 2, '1bbaad4f-e80a-4681-9142-1b300cbbc0d9', 9, '0895452f-b7c1-4c00-a316-c6b6d0ea4bf4'),
('2015-04-02 05:22:27', 'ADM', '2015-04-02 05:22:28', 'ADM', NULL, NULL, 'CL00006', NULL, 'Terre d\'Oc', 1, 1, 'Terre d\'Oc zone artisanale La Tranche', NULL, NULL, NULL, '04180', 'VILLENEUVE', 'AVEYRON', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Terre d\'Oc zone artisanale La Tranche', 0, NULL, NULL, NULL, 'Terre d\'Oc zone artisanale La Tranche', NULL, NULL, NULL, '04180', 'VILLENEUVE', 'AVEYRON', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Terre d\'Oc zone artisanale La Tranche', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 'FR', NULL, NULL, NULL, 'FCL00003', NULL, NULL, 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', NULL, NULL, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '411CL00005', '413CL00006', 1, '0.00000000', 0, 0, NULL, NULL, NULL, 'CO00003', 0, NULL, NULL, NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, 5, 5, 0, 0, 0, 0, 2, '1bbaad4f-e80a-4681-9142-1b300cbbc0d9', 10, '0895452f-b7c1-4c00-a316-c6b6d0ea4bf4'),
('2015-04-02 05:22:27', 'ADM', '2015-04-02 05:22:28', 'ADM', NULL, NULL, 'CL00007', NULL, 'Le Ptit Zef', 1, 1, 'Z.A. de Penhoat', NULL, NULL, NULL, '29800', 'SAINT DIVY', 'BRETAGNE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Le Ptit Zef Z.A. de Penhoat', 0, NULL, NULL, NULL, 'Le Ptit Zef Z.A. de Penhoat', NULL, NULL, NULL, '29800', 'SAINT DIVY', 'BRETAGNE', 'FR', 'Adresse principale de facturation/livraison', NULL, 'Le Ptit Zef Z.A. de Penhoat', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 'FR', NULL, NULL, NULL, 'FCL00001', NULL, NULL, 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', NULL, NULL, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '411CL00007', '413CL00007', 1, '0.00000000', 0, 0, NULL, NULL, NULL, 'CO00005', 0, NULL, NULL, NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, NULL, 5, 5, 5, 0, 0, 0, 0, 2, '1bbaad4f-e80a-4681-9142-1b300cbbc0d9', 10, '0895452f-b7c1-4c00-a316-c6b6d0ea4bf4');

-- --------------------------------------------------------

--
-- Structure de la table `customerassociatedfiles`
--

DROP TABLE IF EXISTS `customerassociatedfiles`;
CREATE TABLE IF NOT EXISTS `customerassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customercustomreport`
--

DROP TABLE IF EXISTS `customercustomreport`;
CREATE TABLE IF NOT EXISTS `customercustomreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL,
  `NumberOfCopies` int(11) NOT NULL DEFAULT '1',
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PriceTaxeBased` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ReportId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customerfamily`
--

DROP TABLE IF EXISTS `customerfamily`;
CREATE TABLE IF NOT EXISTS `customerfamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `sysEditCounter` int(11) DEFAULT '0',
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TerritorialityId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SecondDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PriceListCategoryId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FinancialDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SettlementModeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentDate` smallint(6) DEFAULT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentSerialId` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShippingId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds0` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PriceWithTaxBased` tinyint(1) NOT NULL DEFAULT '0',
  `WebContactSendKind` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `SubjectToRE` tinyint(1) NOT NULL DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CustomerFamily_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `customerfamily`
--

INSERT INTO `customerfamily` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `sysEditCounter`, `Id`, `Caption`, `DiscountRate`, `TerritorialityId`, `SecondDiscountRate`, `PriceListCategoryId`, `FinancialDiscountRate`, `SettlementModeId`, `PaymentDate`, `ColleagueId`, `DocumentSerialId`, `AnalyticAccounting_GridId`, `ShippingId`, `TaxIds0`, `TaxIds1`, `TaxIds2`, `PriceWithTaxBased`, `WebContactSendKind`, `SubjectToRE`, `UniqueId`, `sysRecordVersion`, `sysRecordVersionId`) VALUES
('2015-04-02 05:10:59', 'ADM', '2015-04-02 05:10:59', 'ADM', NULL, NULL, 1, 'FCL00001', 'Grande distribution', '0.00000000', 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', '0.00000000', NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '83919bd3-0fce-4ac7-b08e-dd69975aad39', 2, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:11:58', 'ADM', '2015-04-02 05:11:58', 'ADM', NULL, NULL, 1, 'FCL00002', 'Magasin bio', '0.00000000', 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', '0.00000000', NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'b6d43228-658f-4c57-b1a7-97772737ec85', 3, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 05:12:11', 'ADM', '2015-04-02 05:12:11', 'ADM', NULL, NULL, 1, 'FCL00003', 'Régionalisme', '0.00000000', 'f35ad689-16fd-4f6f-a8c6-faf76e63810d', '0.00000000', NULL, '0.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '8688f63e-156e-41d0-a449-349d3f12c6b5', 4, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4');

-- --------------------------------------------------------

--
-- Structure de la table `customerfamilycustomreport`
--

DROP TABLE IF EXISTS `customerfamilycustomreport`;
CREATE TABLE IF NOT EXISTS `customerfamilycustomreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL,
  `NumberOfCopies` int(11) NOT NULL DEFAULT '1',
  `ParentId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PriceTaxeBased` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ReportId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customeroptionscustomreport`
--

DROP TABLE IF EXISTS `customeroptionscustomreport`;
CREATE TABLE IF NOT EXISTS `customeroptionscustomreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL,
  `NumberOfCopies` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customersubfamily`
--

DROP TABLE IF EXISTS `customersubfamily`;
CREATE TABLE IF NOT EXISTS `customersubfamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CustomerFamilyId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `CustomerSubFamily_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customerwebsynchronizationinfo`
--

DROP TABLE IF EXISTS `customerwebsynchronizationinfo`;
CREATE TABLE IF NOT EXISTS `customerwebsynchronizationinfo` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `InfoKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `InfoValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `deal`
--

DROP TABLE IF EXISTS `deal`;
CREATE TABLE IF NOT EXISTS `deal` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DealDate` date NOT NULL,
  `DealState` int(11) DEFAULT NULL,
  `PredictedCosts` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PredictedSales` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PredictedGrossMargin` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AccomplishedCosts` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AccomplishedSales` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AccomplishedGrossMargin` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ProfitsOnCosts` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ProfitsOnSales` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ProfitsOnGrossMargin` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealassociatedfiles`
--

DROP TABLE IF EXISTS `dealassociatedfiles`;
CREATE TABLE IF NOT EXISTS `dealassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealcolleague`
--

DROP TABLE IF EXISTS `dealcolleague`;
CREATE TABLE IF NOT EXISTS `dealcolleague` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DealId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IsAutoLoaded` tinyint(1) NOT NULL DEFAULT '0',
  `InvoiceDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealcustomer`
--

DROP TABLE IF EXISTS `dealcustomer`;
CREATE TABLE IF NOT EXISTS `dealcustomer` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DealId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Turnover` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `InvoiceDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealextracost`
--

DROP TABLE IF EXISTS `dealextracost`;
CREATE TABLE IF NOT EXISTS `dealextracost` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ExtraCostDate` date NOT NULL,
  `UnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealitem`
--

DROP TABLE IF EXISTS `dealitem`;
CREATE TABLE IF NOT EXISTS `dealitem` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemCaption` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatExcludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `InterestAmount` decimal(28,8) DEFAULT '0.00000000',
  `NetInterestAmount` decimal(28,8) DEFAULT '0.00000000',
  `GrossInterestAmount` decimal(28,8) DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemType` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealpurchasedocument`
--

DROP TABLE IF EXISTS `dealpurchasedocument`;
CREATE TABLE IF NOT EXISTS `dealpurchasedocument` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentNumber` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentDate` date NOT NULL,
  `TransferedDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentState` int(11) DEFAULT NULL,
  `AmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatExcludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `DocumentTotalAmountVatExcludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatIncludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `InvoiceCorrectionType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `SupplierId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierName` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `IncludeAmountInCost` tinyint(1) NOT NULL DEFAULT '0',
  `IncludedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealpurchasedocumentline`
--

DROP TABLE IF EXISTS `dealpurchasedocumentline`;
CREATE TABLE IF NOT EXISTS `dealpurchasedocumentline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LineType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `Description` longtext COLLATE utf8_unicode_ci,
  `DescriptionClear` longtext COLLATE utf8_unicode_ci,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuantityDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PricesDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatExcludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatIncludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `GrossInterestBase` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IncludeAmountInCost` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealpurchasesettlement`
--

DROP TABLE IF EXISTS `dealpurchasesettlement`;
CREATE TABLE IF NOT EXISTS `dealpurchasesettlement` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SettlementId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ThirdName` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SettlementDate` date NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DepositLastAttachedDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DepositLastAttachedDocumentType` tinyint(3) UNSIGNED DEFAULT '0',
  `IsDeposit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealresourcescost`
--

DROP TABLE IF EXISTS `dealresourcescost`;
CREATE TABLE IF NOT EXISTS `dealresourcescost` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DealId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EquipmentId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CostAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealsaledocument`
--

DROP TABLE IF EXISTS `dealsaledocument`;
CREATE TABLE IF NOT EXISTS `dealsaledocument` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentNumber` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentDate` date NOT NULL,
  `TransferedDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentState` int(11) DEFAULT NULL,
  `AmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatExcludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `DocumentTotalAmountVatExcludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatIncludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `InvoiceCorrectionType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CustomerId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CustomerName` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NetInterestAmount` decimal(28,8) DEFAULT '0.00000000',
  `GrossInterestAmount` decimal(28,8) DEFAULT '0.00000000',
  `InterestAmount` decimal(28,8) DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealsaledocumentline`
--

DROP TABLE IF EXISTS `dealsaledocumentline`;
CREATE TABLE IF NOT EXISTS `dealsaledocumentline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LineType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `Description` longtext COLLATE utf8_unicode_ci,
  `DescriptionClear` longtext COLLATE utf8_unicode_ci,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuantityDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PricesDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatExcludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `NetAmountVatIncludedWithDiscount` decimal(28,8) DEFAULT '0.00000000',
  `GrossInterestBase` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetInterestAmount` decimal(28,8) DEFAULT '0.00000000',
  `GrossInterestAmount` decimal(28,8) DEFAULT '0.00000000',
  `InterestAmount` decimal(28,8) DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealsalesettlement`
--

DROP TABLE IF EXISTS `dealsalesettlement`;
CREATE TABLE IF NOT EXISTS `dealsalesettlement` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SettlementId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ThirdName` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SettlementDate` date NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DepositLastAttachedDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DepositLastAttachedDocumentType` tinyint(3) UNSIGNED DEFAULT '0',
  `IsDeposit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealstockdocument`
--

DROP TABLE IF EXISTS `dealstockdocument`;
CREATE TABLE IF NOT EXISTS `dealstockdocument` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentNumber` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentDate` date NOT NULL,
  `TransferedDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TargetStorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IncludedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealstockdocumentline`
--

DROP TABLE IF EXISTS `dealstockdocumentline`;
CREATE TABLE IF NOT EXISTS `dealstockdocumentline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LineType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `Description` longtext COLLATE utf8_unicode_ci,
  `DescriptionClear` longtext COLLATE utf8_unicode_ci,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QuantityDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PricesDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `StorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TargetStorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IncludedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dealsupplier`
--

DROP TABLE IF EXISTS `dealsupplier`;
CREATE TABLE IF NOT EXISTS `dealsupplier` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DealId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Turnover` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `disbursement`
--

DROP TABLE IF EXISTS `disbursement`;
CREATE TABLE IF NOT EXISTS `disbursement` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DisbursementNumber` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DisbursementDate` date NOT NULL,
  `BankId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `DisbursementState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CfonbFileGenerated` tinyint(1) NOT NULL DEFAULT '0',
  `LastSepaMessageId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyConversionRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargesEntryDate` date DEFAULT NULL,
  `RemittanceType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingTransferWithCommitmentDate` tinyint(1) NOT NULL DEFAULT '0',
  `ChargeAmounts0` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts1` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts2` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts3` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmounts4` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts0` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts1` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts2` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts3` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyChargeAmounts4` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `DisbursementIdIndex` (`DisbursementNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `documentlineassociation`
--

DROP TABLE IF EXISTS `documentlineassociation`;
CREATE TABLE IF NOT EXISTS `documentlineassociation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OriginDocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OriginLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OriginDocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `OriginDocumentSubType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `TransferedLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TransferedDocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `TransferedDocumentSubType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `TransferedDocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsCountermark` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `documentserial`
--

DROP TABLE IF EXISTS `documentserial`;
CREATE TABLE IF NOT EXISTS `documentserial` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DocumentSerialType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IsDefault` tinyint(1) NOT NULL DEFAULT '0',
  `CorrectiveSerialId` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SalesAccountingBook` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchasesAccountingBook` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `DocumentSerial_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysalert`
--

DROP TABLE IF EXISTS `ebpsysalert`;
CREATE TABLE IF NOT EXISTS `ebpsysalert` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TableName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogicalSubTypeId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Caption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OpeningDatabase` tinyint(1) NOT NULL DEFAULT '0',
  `OpeningEntryForm` tinyint(1) NOT NULL DEFAULT '0',
  `EditingEntryForm` tinyint(1) NOT NULL DEFAULT '0',
  `SavingEntryForm` tinyint(1) NOT NULL DEFAULT '0',
  `MessageClear` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ValidityDateFrom` date DEFAULT NULL,
  `ValidityDateFromType` int(11) DEFAULT '0',
  `ValidityDateTo` date DEFAULT NULL,
  `RemindDateTime` datetime DEFAULT NULL,
  `Inactive` tinyint(1) NOT NULL DEFAULT '0',
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserGroupdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Conditions` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysasynchronouslog`
--

DROP TABLE IF EXISTS `ebpsysasynchronouslog`;
CREATE TABLE IF NOT EXISTS `ebpsysasynchronouslog` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ConnectedMachine` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ExecutionDate` datetime NOT NULL,
  `Caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ErrorKind` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysautoincrement`
--

DROP TABLE IF EXISTS `ebpsysautoincrement`;
CREATE TABLE IF NOT EXISTS `ebpsysautoincrement` (
  `incName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `incValue` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`incName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysautotreecategory`
--

DROP TABLE IF EXISTS `ebpsysautotreecategory`;
CREATE TABLE IF NOT EXISTS `ebpsysautotreecategory` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ListId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ViewNamespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TreeCategoryName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TreeCategoryKey` int(11) NOT NULL,
  `FirstFilter` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SecondFilter` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`TreeCategoryKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyscloudaccount`
--

DROP TABLE IF EXISTS `ebpsyscloudaccount`;
CREATE TABLE IF NOT EXISTS `ebpsyscloudaccount` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `LastName` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsAdministrator` tinyint(1) NOT NULL DEFAULT '0',
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyscloudaccountpublicationassociation`
--

DROP TABLE IF EXISTS `ebpsyscloudaccountpublicationassociation`;
CREATE TABLE IF NOT EXISTS `ebpsyscloudaccountpublicationassociation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PublicationId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`AccountId`,`PublicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysclouddocument`
--

DROP TABLE IF EXISTS `ebpsysclouddocument`;
CREATE TABLE IF NOT EXISTS `ebpsysclouddocument` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `PublicationId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Name` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GeneratorId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Configuration` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `nameIndex_SysCloudDocument` (`PublicationId`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyscloudpublication`
--

DROP TABLE IF EXISTS `ebpsyscloudpublication`;
CREATE TABLE IF NOT EXISTS `ebpsyscloudpublication` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastPublishedDate` datetime DEFAULT NULL,
  `Folder` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Icon` longblob,
  `IconPreset` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IsModified` tinyint(1) NOT NULL DEFAULT '0',
  `IsInactive` tinyint(1) NOT NULL DEFAULT '0',
  `NextPublishDate` datetime DEFAULT NULL,
  `Periodicity_StartDate` date DEFAULT NULL,
  `Periodicity_EndDate` date DEFAULT NULL,
  `Periodicity_Time` datetime DEFAULT NULL,
  `Periodicity_Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '3',
  `Periodicity_Monday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Tuesday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Wednesday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Thursday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Friday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Saturday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Sunday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_DayRank` tinyint(3) UNSIGNED DEFAULT '1',
  `Periodicity_DayRankSelector` tinyint(1) NOT NULL DEFAULT '1',
  `Periodicity_SelectedDayOfWeek` tinyint(3) UNSIGNED DEFAULT '1',
  `Periodicity_DayNumber` tinyint(3) UNSIGNED DEFAULT '1',
  `Periodicity_DayNumberSelector` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_UserIncrement` int(11) DEFAULT '1',
  `Periodicity_Caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyscustomtreecategory`
--

DROP TABLE IF EXISTS `ebpsyscustomtreecategory`;
CREATE TABLE IF NOT EXISTS `ebpsyscustomtreecategory` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ListId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ViewNamespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TreeCategoryName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TreeCategoryKey` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(27) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TreeCategoryKey`,`ParentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysdashboard`
--

DROP TABLE IF EXISTS `ebpsysdashboard`;
CREATE TABLE IF NOT EXISTS `ebpsysdashboard` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`OwningId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysdashboarddefaulttemplate`
--

DROP TABLE IF EXISTS `ebpsysdashboarddefaulttemplate`;
CREATE TABLE IF NOT EXISTS `ebpsysdashboarddefaulttemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `DefaultTemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysdashboardpart`
--

DROP TABLE IF EXISTS `ebpsysdashboardpart`;
CREATE TABLE IF NOT EXISTS `ebpsysdashboardpart` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DashboardId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `PartId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `PartInstanceId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Config` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysdashboardtemplate`
--

DROP TABLE IF EXISTS `ebpsysdashboardtemplate`;
CREATE TABLE IF NOT EXISTS `ebpsysdashboardtemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Template` longtext COLLATE utf8_unicode_ci,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SystemDashboardId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreationOrder` int(11) NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysdefaultreport`
--

DROP TABLE IF EXISTS `ebpsysdefaultreport`;
CREATE TABLE IF NOT EXISTS `ebpsysdefaultreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ReportCategoryId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ElementType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ReportId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `NumberOfCopies` int(11) NOT NULL DEFAULT '0',
  `ReportLanguage` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysdeletedrecord`
--

DROP TABLE IF EXISTS `ebpsysdeletedrecord`;
CREATE TABLE IF NOT EXISTS `ebpsysdeletedrecord` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Kind` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysexchangeapplication`
--

DROP TABLE IF EXISTS `ebpsysexchangeapplication`;
CREATE TABLE IF NOT EXISTS `ebpsysexchangeapplication` (
  `SourceApplicationId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SourceApplicationName` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DestinationApplicationId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DestinationApplicationName` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ApplicationVersion` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SourceDatabaseName` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`SourceApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysexchangelog`
--

DROP TABLE IF EXISTS `ebpsysexchangelog`;
CREATE TABLE IF NOT EXISTS `ebpsysexchangelog` (
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ConnectedMachine` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SaveDate` datetime NOT NULL,
  `Destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ApplicationId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ApplicationVersion` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OperationType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysgenericimportsettings`
--

DROP TABLE IF EXISTS `ebpsysgenericimportsettings`;
CREATE TABLE IF NOT EXISTS `ebpsysgenericimportsettings` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `categoryId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `export` tinyint(1) NOT NULL,
  `formatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedEntity` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`categoryId`,`export`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyslock`
--

DROP TABLE IF EXISTS `ebpsyslock`;
CREATE TABLE IF NOT EXISTS `ebpsyslock` (
  `keyValue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupId` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contextId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `productName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `productVersion` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mainApplicationId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `computerName` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creationDate` datetime NOT NULL,
  PRIMARY KEY (`keyValue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysmachineinfo`
--

DROP TABLE IF EXISTS `ebpsysmachineinfo`;
CREATE TABLE IF NOT EXISTS `ebpsysmachineinfo` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MachineName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `MachineKey` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CompanyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ActivationCode` varchar(19) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ConnectionDate` datetime DEFAULT NULL,
  `WindowsUserName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WindowsDomain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OsVersion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MachineKeyInfo` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysnavbar`
--

DROP TABLE IF EXISTS `ebpsysnavbar`;
CREATE TABLE IF NOT EXISTS `ebpsysnavbar` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`OwningId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysnavbardefaulttemplate`
--

DROP TABLE IF EXISTS `ebpsysnavbardefaulttemplate`;
CREATE TABLE IF NOT EXISTS `ebpsysnavbardefaulttemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `DefaultTemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysnavbartemplate`
--

DROP TABLE IF EXISTS `ebpsysnavbartemplate`;
CREATE TABLE IF NOT EXISTS `ebpsysnavbartemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Défaut',
  `Template` longtext COLLATE utf8_unicode_ci,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysoptions`
--

DROP TABLE IF EXISTS `ebpsysoptions`;
CREATE TABLE IF NOT EXISTS `ebpsysoptions` (
  `OptionName` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OptionValue` longtext COLLATE utf8_unicode_ci,
  `OptionBlobValue` longblob,
  `LocalUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '¤GLOBAL¤',
  `LocalWorkstation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '¤GLOBAL¤',
  `OptionHashCode` int(11) NOT NULL,
  PRIMARY KEY (`OptionHashCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysquerytool`
--

DROP TABLE IF EXISTS `ebpsysquerytool`;
CREATE TABLE IF NOT EXISTS `ebpsysquerytool` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Query` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysreport`
--

DROP TABLE IF EXISTS `ebpsysreport`;
CREATE TABLE IF NOT EXISTS `ebpsysreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LevelId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Label` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Report` longblob,
  `Thumbnail` longblob,
  `IsSystem` tinyint(1) NOT NULL DEFAULT '0',
  `PrintCount` int(11) NOT NULL DEFAULT '0',
  `ReportModifiedDate` datetime DEFAULT NULL,
  `ReportDesignState` tinyint(3) UNSIGNED DEFAULT '0',
  `DesignerId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DesignerInfo` longtext COLLATE utf8_unicode_ci,
  `IsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `IsVisible` tinyint(1) NOT NULL DEFAULT '1',
  `ReportLanguage` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysreportsavedsettings`
--

DROP TABLE IF EXISTS `ebpsysreportsavedsettings`;
CREATE TABLE IF NOT EXISTS `ebpsysreportsavedsettings` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ReportCategoryId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SettingsData` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `unique_sysReportSettings` (`Label`,`ReportCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysreporttagassociation`
--

DROP TABLE IF EXISTS `ebpsysreporttagassociation`;
CREATE TABLE IF NOT EXISTS `ebpsysreporttagassociation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TagId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ReportId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TagId`,`ReportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysright`
--

DROP TABLE IF EXISTS `ebpsysright`;
CREATE TABLE IF NOT EXISTS `ebpsysright` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ApplicationRightId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `ParentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Authorizations` smallint(6) NOT NULL DEFAULT '32767',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysrightcolumn`
--

DROP TABLE IF EXISTS `ebpsysrightcolumn`;
CREATE TABLE IF NOT EXISTS `ebpsysrightcolumn` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `RightId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `RightTableName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `RightColumnName` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Authorizations` smallint(6) NOT NULL DEFAULT '32767',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `index_SysRightColumn_Unique` (`RightId`,`RightTableName`,`RightColumnName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysrightvalue`
--

DROP TABLE IF EXISTS `ebpsysrightvalue`;
CREATE TABLE IF NOT EXISTS `ebpsysrightvalue` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `RightId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `RightValue` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Authorizations` smallint(6) NOT NULL DEFAULT '32767',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `index_SysRightValue_Unique` (`RightId`,`RightValue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyssavelog`
--

DROP TABLE IF EXISTS `ebpsyssavelog`;
CREATE TABLE IF NOT EXISTS `ebpsyssavelog` (
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ConnectedMachine` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SaveDate` datetime NOT NULL,
  `Destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysschemainformation`
--

DROP TABLE IF EXISTS `ebpsysschemainformation`;
CREATE TABLE IF NOT EXISTS `ebpsysschemainformation` (
  `schemaId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `systemVersion` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastSynchroDate` datetime NOT NULL,
  `databaseId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `schemaMetaData` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lastApplicationId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastApplicationCaption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastVersion` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastSystemVersion` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastLastApplicationId` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `applicationVersion` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `isCreated` tinyint(1) NOT NULL DEFAULT '0',
  `isDemo` tinyint(1) NOT NULL DEFAULT '0',
  `isBeta` tinyint(1) NOT NULL DEFAULT '0',
  `recoveryInformations` longtext COLLATE utf8_unicode_ci,
  `levelCompatibility` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysschemasynchronizationlog`
--

DROP TABLE IF EXISTS `ebpsysschemasynchronizationlog`;
CREATE TABLE IF NOT EXISTS `ebpsysschemasynchronizationlog` (
  `SynchronizationDate` datetime NOT NULL,
  `Success` tinyint(1) NOT NULL DEFAULT '0',
  `Errors` longtext COLLATE utf8_unicode_ci,
  `SchemaIdBefore` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SchemaIdAfter` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SchemaVersionBefore` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SchemaVersionAfter` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemVersionBefore` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemVersionAfter` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationIdBefore` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationIdAfter` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationVersionBefore` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationVersionAfter` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysstatisticcustomfilter`
--

DROP TABLE IF EXISTS `ebpsysstatisticcustomfilter`;
CREATE TABLE IF NOT EXISTS `ebpsysstatisticcustomfilter` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ContextualFilterId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CustomFilters` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `EbpSysStatisticCustomFilterUniqueIndex` (`Label`,`ContextualFilterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyssynchronizedversion`
--

DROP TABLE IF EXISTS `ebpsyssynchronizedversion`;
CREATE TABLE IF NOT EXISTS `ebpsyssynchronizedversion` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionKonwnByDistant` int(11) DEFAULT '0',
  `VersionId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`VersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsystag`
--

DROP TABLE IF EXISTS `ebpsystag`;
CREATE TABLE IF NOT EXISTS `ebpsystag` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysuser`
--

DROP TABLE IF EXISTS `ebpsysuser`;
CREATE TABLE IF NOT EXISTS `ebpsysuser` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `UserPassword` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `ConnectedMachine` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Blocked` tinyint(1) NOT NULL DEFAULT '0',
  `Unauthorized` tinyint(1) NOT NULL DEFAULT '0',
  `ActiveDirectoryUserName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActiveDirectoryUser` tinyint(1) NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysuserconnection`
--

DROP TABLE IF EXISTS `ebpsysuserconnection`;
CREATE TABLE IF NOT EXISTS `ebpsysuserconnection` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ConnectedCount` int(11) NOT NULL DEFAULT '0',
  `ApplicationId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `MainApplicationId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ProcessId` int(11) DEFAULT '0',
  `ProcessName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`UserId`,`ApplicationId`,`MainApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysuserfunction`
--

DROP TABLE IF EXISTS `ebpsysuserfunction`;
CREATE TABLE IF NOT EXISTS `ebpsysuserfunction` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  `Id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Signature` longtext COLLATE utf8_unicode_ci,
  `UserFunctionProgram_Program` longtext COLLATE utf8_unicode_ci,
  `ReturnedDataType` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `Category` int(11) NOT NULL DEFAULT '0',
  `Example` longtext COLLATE utf8_unicode_ci,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysusergroup`
--

DROP TABLE IF EXISTS `ebpsysusergroup`;
CREATE TABLE IF NOT EXISTS `ebpsysusergroup` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `sysEditCounter` int(11) DEFAULT '0',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysusergroupassociation`
--

DROP TABLE IF EXISTS `ebpsysusergroupassociation`;
CREATE TABLE IF NOT EXISTS `ebpsysusergroupassociation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `index_SysUserGroupAssociation_Unique` (`UserId`,`GroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysusermandatoryfield`
--

DROP TABLE IF EXISTS `ebpsysusermandatoryfield`;
CREATE TABLE IF NOT EXISTS `ebpsysusermandatoryfield` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TableName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ColumnName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LogicalSubTypeId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Conditions` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswebsynchronizationversion`
--

DROP TABLE IF EXISTS `ebpsyswebsynchronizationversion`;
CREATE TABLE IF NOT EXISTS `ebpsyswebsynchronizationversion` (
  `ProviderId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Kind` tinyint(3) UNSIGNED NOT NULL,
  `EntityId` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `LastVersion` int(11) NOT NULL DEFAULT '0',
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProviderId`,`Kind`,`EntityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswinform`
--

DROP TABLE IF EXISTS `ebpsyswinform`;
CREATE TABLE IF NOT EXISTS `ebpsyswinform` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Template` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswingrid`
--

DROP TABLE IF EXISTS `ebpsyswingrid`;
CREATE TABLE IF NOT EXISTS `ebpsyswingrid` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `GridId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`OwningId`,`GridId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswingriddefaulttemplate`
--

DROP TABLE IF EXISTS `ebpsyswingriddefaulttemplate`;
CREATE TABLE IF NOT EXISTS `ebpsyswingriddefaulttemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `DefaultTemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `GridId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswingridtemplate`
--

DROP TABLE IF EXISTS `ebpsyswingridtemplate`;
CREATE TABLE IF NOT EXISTS `ebpsyswingridtemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Template` longtext COLLATE utf8_unicode_ci,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `GridId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswinlayout`
--

DROP TABLE IF EXISTS `ebpsyswinlayout`;
CREATE TABLE IF NOT EXISTS `ebpsyswinlayout` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`OwningId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswinlayoutdefaulttemplate`
--

DROP TABLE IF EXISTS `ebpsyswinlayoutdefaulttemplate`;
CREATE TABLE IF NOT EXISTS `ebpsyswinlayoutdefaulttemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `DefaultTemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SubTypeId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswinlayouttemplate`
--

DROP TABLE IF EXISTS `ebpsyswinlayouttemplate`;
CREATE TABLE IF NOT EXISTS `ebpsyswinlayouttemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Template` longtext COLLATE utf8_unicode_ci,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SubTypeId` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswinlist`
--

DROP TABLE IF EXISTS `ebpsyswinlist`;
CREATE TABLE IF NOT EXISTS `ebpsyswinlist` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ViewId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`OwningId`,`ViewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswinlisttemplate`
--

DROP TABLE IF EXISTS `ebpsyswinlisttemplate`;
CREATE TABLE IF NOT EXISTS `ebpsyswinlisttemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Template` longtext COLLATE utf8_unicode_ci,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ViewId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`OwningId`,`ViewId`,`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsyswinlistview`
--

DROP TABLE IF EXISTS `ebpsyswinlistview`;
CREATE TABLE IF NOT EXISTS `ebpsyswinlistview` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `DefaultTemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ViewId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysworkflow`
--

DROP TABLE IF EXISTS `ebpsysworkflow`;
CREATE TABLE IF NOT EXISTS `ebpsysworkflow` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`OwningId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysworkflowdefaulttemplate`
--

DROP TABLE IF EXISTS `ebpsysworkflowdefaulttemplate`;
CREATE TABLE IF NOT EXISTS `ebpsysworkflowdefaulttemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `DefaultTemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ebpsysworkflowtemplate`
--

DROP TABLE IF EXISTS `ebpsysworkflowtemplate`;
CREATE TABLE IF NOT EXISTS `ebpsysworkflowtemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GroupId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Template` longtext COLLATE utf8_unicode_ci,
  `OwningId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `economicreason`
--

DROP TABLE IF EXISTS `economicreason`;
CREATE TABLE IF NOT EXISTS `economicreason` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(170) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `EconomicReason_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecotax`
--

DROP TABLE IF EXISTS `ecotax`;
CREATE TABLE IF NOT EXISTS `ecotax` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AmountVatInclued` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Ecotax_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecotaxcalculationbase`
--

DROP TABLE IF EXISTS `ecotaxcalculationbase`;
CREATE TABLE IF NOT EXISTS `ecotaxcalculationbase` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `CalculationBase` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `UnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecotaxfurniture`
--

DROP TABLE IF EXISTS `ecotaxfurniture`;
CREATE TABLE IF NOT EXISTS `ecotaxfurniture` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OrganizationId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `EcotaxCalculationBaseId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `ProducerStatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DecreeCategory` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DecreeFunction` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ValdeliaFamily` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MajoritoryProductMaterial` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomsCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProductStatus` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReferenceItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipmentfamily`
--

DROP TABLE IF EXISTS `equipmentfamily`;
CREATE TABLE IF NOT EXISTS `equipmentfamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReferenceItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `eventlog`
--

DROP TABLE IF EXISTS `eventlog`;
CREATE TABLE IF NOT EXISTS `eventlog` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EventDate` datetime NOT NULL,
  `EventType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nature` longtext COLLATE utf8_unicode_ci,
  `ThirdId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PaymentDate` date NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `geographicsector`
--

DROP TABLE IF EXISTS `geographicsector`;
CREATE TABLE IF NOT EXISTS `geographicsector` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `GeographicSector_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `identification`
--

DROP TABLE IF EXISTS `identification`;
CREATE TABLE IF NOT EXISTS `identification` (
  `Id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Contact_Name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `identification`
--

INSERT INTO `identification` (`Id`, `Contact_Name`, `Password`) VALUES
('CO00001', 'KERMAREC', '77e4384583f37ae9afb377b280c5994b'),
('CO00002', 'LEFEBURE', '77e4384583f37ae9afb377b280c5994b'),
('CO00003', 'DE CARANTEC', '77e4384583f37ae9afb377b280c5994b'),
('CO00004', 'KERADOC', '77e4384583f37ae9afb377b280c5994b');

-- --------------------------------------------------------

--
-- Structure de la table `intrastat`
--

DROP TABLE IF EXISTS `intrastat`;
CREATE TABLE IF NOT EXISTS `intrastat` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `IntrastatState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IntrastatNumber` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `IntrastatDate` date NOT NULL,
  `ReferencePeriod` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `IntrastatType` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `ObligationLevel` smallint(6) NOT NULL DEFAULT '1',
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IntrastatNumberIndex` (`IntrastatNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intrastatline`
--

DROP TABLE IF EXISTS `intrastatline`;
CREATE TABLE IF NOT EXISTS `intrastatline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `IntrastatId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineNumber` int(11) NOT NULL DEFAULT '0',
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PurchaserCeNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentType` tinyint(3) UNSIGNED DEFAULT '0',
  `Nc8NomenclatureId` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DestinationCountry` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RegimeId` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StatisticValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetWeight` decimal(28,8) DEFAULT NULL,
  `SupplementaryUnits` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TransactionNatureId` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransportModeId` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExpeditionFinishState` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OriginCountry` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intrastatnc8nomenclature`
--

DROP TABLE IF EXISTS `intrastatnc8nomenclature`;
CREATE TABLE IF NOT EXISTS `intrastatnc8nomenclature` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Chapter` longtext COLLATE utf8_unicode_ci,
  `Sh4` longtext COLLATE utf8_unicode_ci,
  `Sh6` longtext COLLATE utf8_unicode_ci,
  `Nc8Section` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intrastatregime`
--

DROP TABLE IF EXISTS `intrastatregime`;
CREATE TABLE IF NOT EXISTS `intrastatregime` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `RegimeType` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intrastattransactionnature`
--

DROP TABLE IF EXISTS `intrastattransactionnature`;
CREATE TABLE IF NOT EXISTS `intrastattransactionnature` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intrastattransportmode`
--

DROP TABLE IF EXISTS `intrastattransportmode`;
CREATE TABLE IF NOT EXISTS `intrastattransportmode` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `FamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubFamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DesCom` longtext COLLATE utf8_unicode_ci,
  `DesComClear` longtext COLLATE utf8_unicode_ci,
  `ItemImage` longblob,
  `BarCode` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DefaultQuantity` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `SupplierId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `InterestRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `InterestAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BrandRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SalePriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ManageStock` tinyint(1) NOT NULL DEFAULT '1',
  `RealStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Pump` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OrderedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SuppliersOrderedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CustomersDeliveryOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CustomersReturnOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SuppliersDeliveryOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SuppliersReturnOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VirtualStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StockDestination` tinyint(3) UNSIGNED DEFAULT '1',
  `StockVarianceAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrentStockAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Volume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VolumeUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Weight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `WeightUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NumberOfItemByPackage` int(11) DEFAULT '0',
  `UseComponentVat` tinyint(1) NOT NULL DEFAULT '0',
  `ApplyPriceListOnComponents` tinyint(1) NOT NULL DEFAULT '0',
  `ComponentCalculationType` tinyint(3) UNSIGNED DEFAULT NULL,
  `ComponentsPurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ComponentsCostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ComponentsSalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ComponentsSalePriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PrintComponentDetail` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AssemblingVirtualQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DisassemblingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `QuantityUsedToAssemblate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `QuantityFromDisassembling` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AllowNegativeStock` tinyint(1) NOT NULL DEFAULT '0',
  `ReplacementItem` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ActiveState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `NonInvoiceableType` tinyint(3) UNSIGNED DEFAULT NULL,
  `AdvisedSalePriceVATExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SetItemSalePriceWithAdvisedSalePrice` tinyint(1) NOT NULL DEFAULT '0',
  `NotPrintable` tinyint(3) UNSIGNED DEFAULT NULL,
  `NotIncluded` tinyint(3) UNSIGNED DEFAULT NULL,
  `IsFixedPrice` tinyint(3) UNSIGNED DEFAULT NULL,
  `TrackingMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AllowComponentsModification` tinyint(1) NOT NULL DEFAULT '0',
  `AllowPublishOnWeb` tinyint(1) NOT NULL DEFAULT '0',
  `ImageVersion` int(11) NOT NULL DEFAULT '0',
  `Group1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PriceDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IntrastatNc8NomenclatureId` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsHumanServicesIncludedInAttestation` tinyint(1) NOT NULL DEFAULT '0',
  `MainIntervener` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InterventionDurationEqualsQuantity` tinyint(1) NOT NULL DEFAULT '0',
  `Height` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Width` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Length` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DimensionUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_LongDescription` longtext COLLATE utf8_unicode_ci,
  `Oxatis_Oxatis_LongDescriptionClear` longtext COLLATE utf8_unicode_ci,
  `Oxatis_Oxatis_ShowInStockNote` tinyint(1) NOT NULL DEFAULT '0',
  `Oxatis_Oxatis_ShowStockLevel` tinyint(1) NOT NULL DEFAULT '0',
  `Oxatis_Oxatis_ShowIfOutOfStock` tinyint(1) NOT NULL DEFAULT '0',
  `Oxatis_Oxatis_SaleIfOutOfStock` tinyint(1) NOT NULL DEFAULT '0',
  `Oxatis_Oxatis_SaleIfOutOfStockScenario` int(11) NOT NULL DEFAULT '0',
  `Oxatis_Oxatis_ShowDaysToship` tinyint(1) NOT NULL DEFAULT '0',
  `Oxatis_Oxatis_MetaTitle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_MetaDescription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_MetaKeywords` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_Brand` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_HandlingSurcharge1ST` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Oxatis_Oxatis_HandlingSurchargeOthers` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Oxatis_Oxatis_SmallImage` longblob,
  `Oxatis_Oxatis_ShipPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Oxatis_Oxatis_DaysToship` int(11) NOT NULL DEFAULT '0',
  `Oxatis_Oxatis_UserMainSupplierDaysToship` tinyint(1) NOT NULL DEFAULT '1',
  `Oxatis_Oxatis_CategoryType1` tinyint(3) UNSIGNED DEFAULT NULL,
  `Oxatis_Oxatis_CategoryType2` tinyint(3) UNSIGNED DEFAULT NULL,
  `Oxatis_Oxatis_CategoryType3` tinyint(3) UNSIGNED DEFAULT NULL,
  `Oxatis_Oxatis_CategoryId1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_CategoryId2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_CategoryId3` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Oxatis_Oxatis_UseSubFamilyAsBrand` tinyint(1) NOT NULL DEFAULT '0',
  `IsManagedByCounterMark` tinyint(1) NOT NULL DEFAULT '0',
  `IsCounterMarkForced` tinyint(1) NOT NULL DEFAULT '0',
  `PurchaseUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SalePurchaseConversionRate` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `LimitDateMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LimitDateSafetyDelay` smallint(6) NOT NULL DEFAULT '0',
  `LimitDateSafetyDelayMode` tinyint(3) UNSIGNED DEFAULT '0',
  `DefaultLifeTime` smallint(6) DEFAULT NULL,
  `PurchasePriceUpdateType` tinyint(3) UNSIGNED DEFAULT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `BillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `SaleUnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `SaleUnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `PurchaseBillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `PurchaseBillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `PurchaseUnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `PurchaseUnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `UpdateComponentsStockInFabrication` tinyint(1) NOT NULL DEFAULT '0',
  `CanBePartiallyDelivered` tinyint(1) NOT NULL DEFAULT '0',
  `ReplenishmentDeliveryAddressType` tinyint(3) UNSIGNED DEFAULT NULL,
  `CatalogId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CatalogItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EcotaxFurnitureId` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotOnMarket` tinyint(1) NOT NULL DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `ReplacementItemIdIndex` (`ReplacementItem`),
  KEY `Item_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `Id`, `Caption`, `FamilyId`, `SubFamilyId`, `ItemType`, `DesCom`, `DesComClear`, `ItemImage`, `BarCode`, `UnitId`, `DefaultQuantity`, `SupplierId`, `PurchasePrice`, `ChargeRate`, `ChargeAmount`, `CostPrice`, `InterestRate`, `InterestAmount`, `SalePriceVatExcluded`, `BrandRate`, `VatId`, `VatAmount`, `SalePriceVatIncluded`, `ManageStock`, `RealStock`, `Pump`, `StockValue`, `OrderedQuantity`, `SuppliersOrderedQuantity`, `CustomersDeliveryOrderPreparingQuantity`, `CustomersReturnOrderPreparingQuantity`, `SuppliersDeliveryOrderPreparingQuantity`, `SuppliersReturnOrderPreparingQuantity`, `VirtualStock`, `EcotaxId`, `StockDestination`, `StockVarianceAccount`, `CurrentStockAccount`, `Volume`, `VolumeUnitId`, `Weight`, `NetWeight`, `WeightUnitId`, `NumberOfItemByPackage`, `UseComponentVat`, `ApplyPriceListOnComponents`, `ComponentCalculationType`, `ComponentsPurchasePrice`, `ComponentsCostPrice`, `ComponentsSalePriceVatExcluded`, `ComponentsSalePriceVatIncluded`, `PrintComponentDetail`, `AssemblingVirtualQuantity`, `DisassemblingQuantity`, `QuantityUsedToAssemblate`, `QuantityFromDisassembling`, `AllowNegativeStock`, `ReplacementItem`, `ActiveState`, `NonInvoiceableType`, `AdvisedSalePriceVATExcluded`, `SetItemSalePriceWithAdvisedSalePrice`, `NotPrintable`, `NotIncluded`, `IsFixedPrice`, `TrackingMode`, `AllowComponentsModification`, `AllowPublishOnWeb`, `ImageVersion`, `Group1`, `Group2`, `PriceDecimalNumber`, `IntrastatNc8NomenclatureId`, `IsHumanServicesIncludedInAttestation`, `MainIntervener`, `InterventionDurationEqualsQuantity`, `Height`, `Width`, `Length`, `DimensionUnitId`, `Oxatis_Oxatis_LongDescription`, `Oxatis_Oxatis_LongDescriptionClear`, `Oxatis_Oxatis_ShowInStockNote`, `Oxatis_Oxatis_ShowStockLevel`, `Oxatis_Oxatis_ShowIfOutOfStock`, `Oxatis_Oxatis_SaleIfOutOfStock`, `Oxatis_Oxatis_SaleIfOutOfStockScenario`, `Oxatis_Oxatis_ShowDaysToship`, `Oxatis_Oxatis_MetaTitle`, `Oxatis_Oxatis_MetaDescription`, `Oxatis_Oxatis_MetaKeywords`, `Oxatis_Oxatis_Brand`, `Oxatis_Oxatis_HandlingSurcharge1ST`, `Oxatis_Oxatis_HandlingSurchargeOthers`, `Oxatis_Oxatis_SmallImage`, `Oxatis_Oxatis_ShipPrice`, `Oxatis_Oxatis_DaysToship`, `Oxatis_Oxatis_UserMainSupplierDaysToship`, `Oxatis_Oxatis_CategoryType1`, `Oxatis_Oxatis_CategoryType2`, `Oxatis_Oxatis_CategoryType3`, `Oxatis_Oxatis_CategoryId1`, `Oxatis_Oxatis_CategoryId2`, `Oxatis_Oxatis_CategoryId3`, `Oxatis_Oxatis_UseSubFamilyAsBrand`, `IsManagedByCounterMark`, `IsCounterMarkForced`, `PurchaseUnitId`, `SalePurchaseConversionRate`, `LimitDateMode`, `LimitDateSafetyDelay`, `LimitDateSafetyDelayMode`, `DefaultLifeTime`, `PurchasePriceUpdateType`, `AnalyticAccounting_GridId`, `BillOfQuantitiesProgram_Program`, `BillOfQuantitiesProgram_KeepActiveFromQuoteToOrder`, `SaleUnitPriceProgram_Program`, `SaleUnitPriceProgram_KeepActiveFromQuoteToOrder`, `PurchaseBillOfQuantitiesProgram_Program`, `PurchaseBillOfQuantitiesProgram_KeepActiveFromQuoteToOrder`, `PurchaseUnitPriceProgram_Program`, `PurchaseUnitPriceProgram_KeepActiveFromQuoteToOrder`, `UpdateComponentsStockInFabrication`, `CanBePartiallyDelivered`, `ReplenishmentDeliveryAddressType`, `CatalogId`, `CatalogItemId`, `EcotaxFurnitureId`, `NotOnMarket`, `UniqueId`, `sysModuleId`, `sysDatabaseId`, `sysRecordVersion`, `sysRecordVersionId`, `sysEditCounter`) VALUES
('2015-04-02 06:02:25', 'ADM', '2015-04-02 06:02:25', 'ADM', NULL, NULL, 'AR00001', 'Wakamé biologique feuilles 50 g', 'FAR00001', NULL, 0, '{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1036{\\fonttbl{\\f0\\fnil\\fcharset0 Microsoft Sans Serif;}}\r\n\\viewkind4\\uc1\\pard\\f0\\fs16 Wakam\\\'e9 biologique feuilles 50 g\\par\r\n}\r\n', 'Wakamé biologique feuilles 50 g', NULL, NULL, 'S50', '1.00000000', NULL, '3.61000000', '0.00000000', '0.00000000', '3.61000000', '19.94459834', '0.72000000', '4.33000000', '16.62817552', '36cab0de-3e5b-4bee-a556-8eabb1673e76', '0.87000000', '5.20000000', 1, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', NULL, 1, '6037', '371', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, 0, 0, 0, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 1, NULL, 0, NULL, '0.00000000', 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 2, NULL, 0, NULL, 0, '0.00000000', '0.00000000', '0.00000000', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '1.00000000', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, 0, '2c369fa9-6fc7-423c-9b47-415a57043cfb', NULL, NULL, 16, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 06:03:20', 'ADM', '2015-04-02 06:03:20', 'ADM', NULL, NULL, 'AR00002', 'Wakamé feuilles longues 200 g', 'FAR00001', NULL, 0, '{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1036{\\fonttbl{\\f0\\fnil\\fcharset0 Microsoft Sans Serif;}}\r\n\\viewkind4\\uc1\\pard\\f0\\fs16 Wakam\\\'e9 feuilles longues 200 g\\par\r\n}\r\n', 'Wakamé feuilles longues 200 g', NULL, NULL, 'S200', '1.00000000', NULL, '9.10000000', '0.00000000', '0.00000000', '9.10000000', '20.00000000', '1.82000000', '10.92000000', '16.66666667', '36cab0de-3e5b-4bee-a556-8eabb1673e76', '2.18000000', '13.10000000', 1, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', NULL, 1, '6037', '371', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, 0, 0, 0, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 1, NULL, 0, NULL, '0.00000000', 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 2, NULL, 0, NULL, 0, '0.00000000', '0.00000000', '0.00000000', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '1.00000000', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, 0, '331ea0a8-5fc0-41de-a52e-8d889c48a192', NULL, NULL, 17, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 06:04:11', 'ADM', '2015-04-02 06:04:11', 'ADM', NULL, NULL, 'AR00003', 'Dulse biologique feuilles 50 g', 'FAR00002', NULL, 0, '{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1036{\\fonttbl{\\f0\\fnil Microsoft Sans Serif;}}\r\n\\viewkind4\\uc1\\pard\\f0\\fs16 Dulse biologique feuilles 50 g\\par\r\n}\r\n', 'Dulse biologique feuilles 50 g', NULL, NULL, 'S50', '1.00000000', NULL, '3.02000000', '0.00000000', '0.00000000', '3.02000000', '20.19867550', '0.61000000', '3.63000000', '16.80440771', '36cab0de-3e5b-4bee-a556-8eabb1673e76', '0.73000000', '4.36000000', 1, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', NULL, 1, '6037', '371', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, 0, 0, 0, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 1, NULL, 0, NULL, '0.00000000', 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 2, NULL, 0, NULL, 0, '0.00000000', '0.00000000', '0.00000000', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '1.00000000', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, 0, '9a20aded-3756-4038-957d-07230f3f3059', NULL, NULL, 18, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 06:04:50', 'ADM', '2015-04-02 06:04:50', 'ADM', NULL, NULL, 'AR00004', 'Dulse biologique 200 g', 'FAR00002', NULL, 0, '{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1036{\\fonttbl{\\f0\\fnil Microsoft Sans Serif;}}\r\n\\viewkind4\\uc1\\pard\\f0\\fs16 Dulse biologique 200 g\\par\r\n}\r\n', 'Dulse biologique 200 g', NULL, NULL, 'S200', '1.00000000', NULL, '8.68000000', '0.00000000', '0.00000000', '8.68000000', '20.04608295', '1.74000000', '10.42000000', '16.69865643', '36cab0de-3e5b-4bee-a556-8eabb1673e76', '2.08000000', '12.50000000', 1, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', NULL, 1, '6037', '371', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, 0, 0, 0, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 1, NULL, 0, NULL, '0.00000000', 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 2, NULL, 0, NULL, 0, '0.00000000', '0.00000000', '0.00000000', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '1.00000000', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, 0, 'cf795136-94a5-454c-b958-4f9e3bb5bf51', NULL, NULL, 19, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1),
('2015-04-02 06:06:06', 'ADM', '2015-04-02 06:06:06', 'ADM', NULL, NULL, 'AR00005', 'Kombu Royal - Jeunes pousses biologiques feuilles 50 g', 'FAR00001', NULL, 0, '{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1036{\\fonttbl{\\f0\\fnil Microsoft Sans Serif;}}\r\n\\viewkind4\\uc1\\pard\\f0\\fs16 Kombu Royal - Jeunes pousses biologiques feuilles 50 g\\par\r\n}\r\n', 'Kombu Royal - Jeunes pousses biologiques feuilles 50 g', NULL, NULL, 'S50', '1.00000000', NULL, '3.92000000', '0.00000000', '0.00000000', '3.92000000', '20.15306122', '0.79000000', '4.71000000', '16.77282378', '36cab0de-3e5b-4bee-a556-8eabb1673e76', '0.94000000', '5.65000000', 1, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', NULL, 1, '6037', '371', '0.00000000', NULL, '0.00000000', '0.00000000', NULL, 0, 0, 0, NULL, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, '0.00000000', '0.00000000', '0.00000000', '0.00000000', 1, NULL, 0, NULL, '0.00000000', 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 2, NULL, 0, NULL, 0, '0.00000000', '0.00000000', '0.00000000', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '0.00000000', '0.00000000', NULL, '0.00000000', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '1.00000000', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, 0, 'a27424d1-0c7e-4aba-bab8-fd58b6d6ecf5', NULL, NULL, 20, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4', 1);

-- --------------------------------------------------------

--
-- Structure de la table `itemaccount`
--

DROP TABLE IF EXISTS `itemaccount`;
CREATE TABLE IF NOT EXISTS `itemaccount` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `VatId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchaseAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `ItemAccountItemIdVatIdIndex` (`ItemId`,`VatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `itemassociatedfilesschematable`
--

DROP TABLE IF EXISTS `itemassociatedfilesschematable`;
CREATE TABLE IF NOT EXISTS `itemassociatedfilesschematable` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `itemcomponent`
--

DROP TABLE IF EXISTS `itemcomponent`;
CREATE TABLE IF NOT EXISTS `itemcomponent` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ParentItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ComponentOrder` int(11) NOT NULL DEFAULT '0',
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DispatchedPurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DispatchedCostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DispatchedSalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DispatchedSalePriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DistributionPercentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NotIncluded` tinyint(1) NOT NULL DEFAULT '0',
  `BillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `BillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `SaleUnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `SaleUnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `PurchaseBillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `PurchaseBillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `PurchaseUnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `PurchaseUnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `UpdateComponentsStockInFabrication` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `itemecommerceinfo`
--

DROP TABLE IF EXISTS `itemecommerceinfo`;
CREATE TABLE IF NOT EXISTS `itemecommerceinfo` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `InfoKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `InfoValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `itemfamily`
--

DROP TABLE IF EXISTS `itemfamily`;
CREATE TABLE IF NOT EXISTS `itemfamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SupplierId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ManageStock` tinyint(1) NOT NULL DEFAULT '0',
  `InterestRate` decimal(28,8) DEFAULT '0.00000000',
  `ChargeRate` decimal(28,8) DEFAULT '0.00000000',
  `EcotaxId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotPrintable` tinyint(3) UNSIGNED DEFAULT NULL,
  `NotIncluded` tinyint(3) UNSIGNED DEFAULT NULL,
  `IsFixedPrice` tinyint(3) UNSIGNED DEFAULT NULL,
  `TrackingMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LimitDateMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LimitDateSafetyDelay` smallint(6) NOT NULL DEFAULT '0',
  `LimitDateSafetyDelayMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `VatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainIntervener` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AllowNegativeStock` tinyint(1) NOT NULL DEFAULT '1',
  `PriceDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AllowPublishOnWeb` tinyint(1) NOT NULL DEFAULT '0',
  `IsManagedByCountermark` tinyint(1) NOT NULL DEFAULT '0',
  `IsCounterMarkForced` tinyint(1) NOT NULL DEFAULT '0',
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `BillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `SaleUnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `SaleUnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `PurchaseBillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `PurchaseBillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `PurchaseUnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `PurchaseUnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `EcotaxFurnitureId` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotOnMarket` tinyint(1) NOT NULL DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `ItemFamily_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `itemfamily`
--

INSERT INTO `itemfamily` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `Id`, `Caption`, `SupplierId`, `LocationId`, `StorehouseId`, `ManageStock`, `InterestRate`, `ChargeRate`, `EcotaxId`, `NotPrintable`, `NotIncluded`, `IsFixedPrice`, `TrackingMode`, `LimitDateMode`, `LimitDateSafetyDelay`, `LimitDateSafetyDelayMode`, `VatId`, `MainIntervener`, `AllowNegativeStock`, `PriceDecimalNumber`, `AllowPublishOnWeb`, `IsManagedByCountermark`, `IsCounterMarkForced`, `AnalyticAccounting_GridId`, `BillOfQuantitiesProgram_Program`, `BillOfQuantitiesProgram_KeepActiveFromQuoteToOrder`, `SaleUnitPriceProgram_Program`, `SaleUnitPriceProgram_KeepActiveFromQuoteToOrder`, `PurchaseBillOfQuantitiesProgram_Program`, `PurchaseBillOfQuantitiesProgram_KeepActiveFromQuoteToOrder`, `PurchaseUnitPriceProgram_Program`, `PurchaseUnitPriceProgram_KeepActiveFromQuoteToOrder`, `EcotaxFurnitureId`, `NotOnMarket`, `UniqueId`, `sysRecordVersion`, `sysRecordVersionId`, `sysEditCounter`) VALUES
('2015-04-02 05:56:53', 'ADM', '2015-04-02 05:56:53', 'ADM', NULL, NULL, 'FAR00001', 'Algues séchées longues', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, '7677c165-501f-47f9-9893-14e07b47a79f', 0, NULL, 1),
('2015-04-02 05:57:10', 'ADM', '2015-04-02 05:57:10', 'ADM', NULL, NULL, 'FAR00002', 'Algues séchées morceaux', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, '2fe289a0-1f16-4dcc-91bd-6c76d650e0af', 0, NULL, 1),
('2015-04-02 05:57:21', 'ADM', '2015-04-02 05:57:21', 'ADM', NULL, NULL, 'FAR00003', 'Algues en conserve', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, 'd6466066-fb33-41b7-a627-28df499aadb0', 0, NULL, 1),
('2015-04-02 05:57:31', 'ADM', '2015-04-02 05:58:25', 'ADM', NULL, NULL, 'FAR00004', 'Algues en conserve entières', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, '6301c6b3-b4cb-49fe-a445-c83285787147', 0, NULL, 2),
('2015-04-02 05:58:36', 'ADM', '2015-04-02 05:58:36', 'ADM', NULL, NULL, 'FAR00005', 'Algues en poudre', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, 'cb682e63-37be-4469-a00c-a711d4585055', 0, NULL, 1),
('2015-04-02 05:58:48', 'ADM', '2015-04-02 05:58:48', 'ADM', NULL, NULL, 'FAR00006', 'Préparations culinaires', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, 'a368c015-7501-4beb-a0b2-3b17b6ac09da', 0, NULL, 1),
('2015-04-02 05:58:56', 'ADM', '2015-04-02 05:58:56', 'ADM', NULL, NULL, 'FAR00007', 'Pâtes aux algues', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, '11fc5ee6-0148-4a54-adbc-1468c9498ef3', 0, NULL, 1),
('2015-04-02 05:59:05', 'ADM', '2015-04-02 05:59:05', 'ADM', NULL, NULL, 'FAR00008', 'Notices et recettes', NULL, NULL, '3b7fa0c3-1f64-449f-9277-cb8d8ccb9663', 0, '20.00000000', '0.00000000', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, 0, 2, 0, 0, 0, NULL, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 0, 'c8bfc52d-362e-4595-9e11-c2cabaf9f231', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `itemfamilyaccount`
--

DROP TABLE IF EXISTS `itemfamilyaccount`;
CREATE TABLE IF NOT EXISTS `itemfamilyaccount` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `VatId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchaseAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemFamilyId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ServiceAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchaseServiceAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `ItemFamilyAccountItemFamilyIdVatIdIndex` (`ItemFamilyId`,`VatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `itemsubfamily`
--

DROP TABLE IF EXISTS `itemsubfamily`;
CREATE TABLE IF NOT EXISTS `itemsubfamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ItemFamilyId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `linkeditem`
--

DROP TABLE IF EXISTS `linkeditem`;
CREATE TABLE IF NOT EXISTS `linkeditem` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LinkedItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `Quantity` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `IsFree` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `MainItemAndLinkedItemIndex` (`ItemId`,`LinkedItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`,`StorehouseId`),
  KEY `Location_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mailmergetemplate`
--

DROP TABLE IF EXISTS `mailmergetemplate`;
CREATE TABLE IF NOT EXISTS `mailmergetemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `modificationlog`
--

DROP TABLE IF EXISTS `modificationlog`;
CREATE TABLE IF NOT EXISTS `modificationlog` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ModifiedObjectId` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ModificationGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `naf`
--

DROP TABLE IF EXISTS `naf`;
CREATE TABLE IF NOT EXISTS `naf` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Naf_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `olapcustomdatabase`
--

DROP TABLE IF EXISTS `olapcustomdatabase`;
CREATE TABLE IF NOT EXISTS `olapcustomdatabase` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Xml` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `olapfavoritetemplate`
--

DROP TABLE IF EXISTS `olapfavoritetemplate`;
CREATE TABLE IF NOT EXISTS `olapfavoritetemplate` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `olaptemplatetable`
--

DROP TABLE IF EXISTS `olaptemplatetable`;
CREATE TABLE IF NOT EXISTS `olaptemplatetable` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TemplateId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Description` longtext COLLATE utf8_unicode_ci,
  `AssociatedCube` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsSystem` tinyint(1) NOT NULL DEFAULT '0',
  `CategoryId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserSetting_GridTitle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserSetting_ChartTitle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserSetting_ChartTitlePosition` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `UserSetting_ChartType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `UserSetting_DisplayHeader` tinyint(1) NOT NULL DEFAULT '1',
  `UserSetting_HeaderText` longtext COLLATE utf8_unicode_ci,
  `UserSetting_DisplayFooter` tinyint(1) NOT NULL DEFAULT '1',
  `UserSetting_FooterText` longtext COLLATE utf8_unicode_ci,
  `UserSetting_DisplayGrid` tinyint(1) NOT NULL DEFAULT '1',
  `UserSetting_DisplayChart` tinyint(1) NOT NULL DEFAULT '1',
  `UserSetting_DisplayChartInFullPage` tinyint(1) NOT NULL DEFAULT '0',
  `UserSetting_GridCollapseState` longblob,
  `UserSetting_LeftMargin` int(11) NOT NULL DEFAULT '100',
  `UserSetting_RightMargin` int(11) NOT NULL DEFAULT '100',
  `UserSetting_TopMargin` int(11) NOT NULL DEFAULT '100',
  `UserSetting_BottomMargin` int(11) NOT NULL DEFAULT '100',
  `UserSetting_Landscape` tinyint(1) NOT NULL DEFAULT '1',
  `UserSetting_PaperKind` tinyint(3) UNSIGNED NOT NULL DEFAULT '9',
  `UserSetting_Watermark` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE IF NOT EXISTS `organization` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OrganizationOfficial` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IncludeEcotaxFurnitureAmountInSaleDocument` tinyint(1) NOT NULL DEFAULT '0',
  `IsEcotaxCalculationTypeBasedOnDocumentCalculationType` tinyint(1) NOT NULL DEFAULT '0',
  `IncludeEcotaxFurnitureAmountInPurchaseDocument` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paymenttype`
--

DROP TABLE IF EXISTS `paymenttype`;
CREATE TABLE IF NOT EXISTS `paymenttype` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Nature` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `BankId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RemitToBank` tinyint(1) NOT NULL DEFAULT '0',
  `TransferAtCommitmentDate` tinyint(1) NOT NULL DEFAULT '0',
  `GenerateCustomerSettlement` tinyint(1) NOT NULL DEFAULT '0',
  `GenerateSupplierSettlement` tinyint(1) NOT NULL DEFAULT '0',
  `BillForCollectionBook` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'OD',
  `BillForDiscountBook` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'OD',
  `OtherPaymentBook` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'OD',
  `BillForCollectionAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '5113',
  `BillForDiscountAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '5114',
  `OtherPaymentAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '5112',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `PaymentType_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payrollexchangegroup`
--

DROP TABLE IF EXISTS `payrollexchangegroup`;
CREATE TABLE IF NOT EXISTS `payrollexchangegroup` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `GroupNumber` int(11) NOT NULL DEFAULT '0',
  `System` tinyint(1) NOT NULL DEFAULT '0',
  `TransferedPieces` tinyint(1) NOT NULL DEFAULT '0',
  `ValidityDate` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payrollexchangegroupprocessdetail`
--

DROP TABLE IF EXISTS `payrollexchangegroupprocessdetail`;
CREATE TABLE IF NOT EXISTS `payrollexchangegroupprocessdetail` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `PayrollExchangeGroupId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ProcessType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ProcessDate` datetime NOT NULL,
  `Errors` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `periodicinvoicing`
--

DROP TABLE IF EXISTS `periodicinvoicing`;
CREATE TABLE IF NOT EXISTS `periodicinvoicing` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ReferenceDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Periodicity_StartDate` date NOT NULL,
  `Periodicity_EndDate` date DEFAULT NULL,
  `Periodicity_Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '3',
  `Periodicity_Monday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Tuesday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Wednesday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Thursday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Friday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Saturday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_Sunday` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_DayRank` tinyint(3) UNSIGNED DEFAULT '1',
  `Periodicity_DayRankSelector` tinyint(1) NOT NULL DEFAULT '1',
  `Periodicity_SelectedDayOfWeek` tinyint(3) UNSIGNED DEFAULT '1',
  `Periodicity_DayNumber` tinyint(3) UNSIGNED DEFAULT '1',
  `Periodicity_DayNumberSelector` tinyint(1) NOT NULL DEFAULT '0',
  `Periodicity_UserIncrement` int(11) DEFAULT '1',
  `Periodicity_Caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UpdatePrices` tinyint(1) NOT NULL DEFAULT '0',
  `UpdatePurchaseAndCostPrice` tinyint(1) NOT NULL DEFAULT '0',
  `RetrieveCustomerInformations` tinyint(1) NOT NULL DEFAULT '1',
  `ApplyCustomerDiscount` tinyint(1) NOT NULL DEFAULT '0',
  `ApplyPriceList` tinyint(1) NOT NULL DEFAULT '0',
  `InvoicingMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AssortItemLines` tinyint(1) NOT NULL DEFAULT '0',
  `CopyTextLines` tinyint(1) NOT NULL DEFAULT '0',
  `CreateSubTotal` tinyint(1) NOT NULL DEFAULT '0',
  `IgnoreCheckAddress` tinyint(1) NOT NULL DEFAULT '0',
  `IgnoreCheckUserDefinedFields` tinyint(1) NOT NULL DEFAULT '0',
  `DelayBeforeAssortEnabled` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CurrencyCalculationMethod` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `SettlementModeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UseCustomSettlementMode` tinyint(1) NOT NULL DEFAULT '0',
  `DoNotAddOriginDocumentInformationLine` tinyint(1) NOT NULL DEFAULT '0',
  `KeepBillOfQuantitiesProgramActive` tinyint(1) NOT NULL DEFAULT '0',
  `KeepUnitPriceProgramActive` tinyint(1) NOT NULL DEFAULT '0',
  `DoNotSetLastDebitSepaToLast` tinyint(1) NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `periodicinvoicingcustomer`
--

DROP TABLE IF EXISTS `periodicinvoicingcustomer`;
CREATE TABLE IF NOT EXISTS `periodicinvoicingcustomer` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `PeriodicInvoicingId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CustomerId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerFamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `PreviousInvoicingDate` date DEFAULT NULL,
  `NextInvoicingDate` date DEFAULT NULL,
  `LineNumber` int(11) NOT NULL DEFAULT '0',
  `SepaMandateIdentification` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SepaMandateDate` date DEFAULT NULL,
  `SepaSequence` tinyint(3) UNSIGNED DEFAULT '3',
  `BankAccountId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pricelist`
--

DROP TABLE IF EXISTS `pricelist`;
CREATE TABLE IF NOT EXISTS `pricelist` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `StartValidityDate` date DEFAULT NULL,
  `EndValidityDate` date DEFAULT NULL,
  `UseFooterDiscount` tinyint(1) NOT NULL DEFAULT '0',
  `CalculationBase` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IsPromotion` tinyint(1) NOT NULL DEFAULT '0',
  `IsAccumulatableWithPriceListOrPromotion` tinyint(1) NOT NULL DEFAULT '0',
  `IsLastAccumulatable` tinyint(1) NOT NULL DEFAULT '0',
  `CanBeAccumulated` tinyint(1) NOT NULL DEFAULT '0',
  `RoundId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AllowToDefineItemOnCalculationLines` tinyint(1) NOT NULL DEFAULT '0',
  `IsPurchasePriceList` tinyint(1) NOT NULL DEFAULT '0',
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `PriceList_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pricelistcalculationline`
--

DROP TABLE IF EXISTS `pricelistcalculationline`;
CREATE TABLE IF NOT EXISTS `pricelistcalculationline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `PriceListId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Threshold` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CalculationType` int(11) NOT NULL DEFAULT '4',
  `DiscountValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PriceValue` decimal(28,8) DEFAULT '0.00000000',
  `VatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pricelistcategory`
--

DROP TABLE IF EXISTS `pricelistcategory`;
CREATE TABLE IF NOT EXISTS `pricelistcategory` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  `Id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `IsPurchasePriceListCategory` tinyint(1) NOT NULL DEFAULT '0',
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `PriceListCategory_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pricelistinclusionline`
--

DROP TABLE IF EXISTS `pricelistinclusionline`;
CREATE TABLE IF NOT EXISTS `pricelistinclusionline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `PriceListId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `InclusionType` tinyint(3) UNSIGNED NOT NULL DEFAULT '4',
  `StartElementId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EndElementId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsExcluded` tinyint(1) NOT NULL DEFAULT '0',
  `InclusionOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasecommitment`
--

DROP TABLE IF EXISTS `purchasecommitment`;
CREATE TABLE IF NOT EXISTS `purchasecommitment` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `DocumentSubType` tinyint(3) UNSIGNED DEFAULT NULL,
  `DueDate` date NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BalanceDue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsDeposit` tinyint(1) NOT NULL DEFAULT '0',
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DayOfMonth` smallint(6) DEFAULT NULL,
  `PercentageDistribution` decimal(28,8) DEFAULT NULL,
  `DaysNumber` smallint(6) NOT NULL DEFAULT '0',
  `CommitmentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingMonth` tinyint(1) NOT NULL DEFAULT '0',
  `IsLiquidated` tinyint(1) NOT NULL DEFAULT '0',
  `AccountingTransferState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LiquidationAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `LiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `TransferedLiquidationAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TransferedLiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `LiquidationStateChangeDate` date DEFAULT NULL,
  `TransferedLiquidationStateChangeDate` date DEFAULT NULL,
  `LiquidationAccountingTransferState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LiquidationAccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExternalDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyBalanceDue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `LiquidationType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PreviousLiquidationType` tinyint(3) UNSIGNED DEFAULT '0',
  `IsCorrected` tinyint(1) NOT NULL DEFAULT '0',
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GenerateSettlement` tinyint(1) NOT NULL DEFAULT '0',
  `PaymentThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasedocumentassociatedfiles`
--

DROP TABLE IF EXISTS `purchasedocumentassociatedfiles`;
CREATE TABLE IF NOT EXISTS `purchasedocumentassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasedocumentcomplementarydiscount`
--

DROP TABLE IF EXISTS `purchasedocumentcomplementarydiscount`;
CREATE TABLE IF NOT EXISTS `purchasedocumentcomplementarydiscount` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `Code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Caption` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasedocumentex`
--

DROP TABLE IF EXISTS `purchasedocumentex`;
CREATE TABLE IF NOT EXISTS `purchasedocumentex` (
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `EcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureVatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatExcludedIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureVatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatExcludedIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `TransferReverseChargeEntryLine` tinyint(1) NOT NULL DEFAULT '0',
  `ShippingReverseChargeVatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasedocumentline`
--

DROP TABLE IF EXISTS `purchasedocumentline`;
CREATE TABLE IF NOT EXISTS `purchasedocumentline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TopParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `Description` longtext COLLATE utf8_unicode_ci,
  `DescriptionClear` longtext COLLATE utf8_unicode_ci,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsReferencedItem` tinyint(1) NOT NULL DEFAULT '0',
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StockMovementId` int(11) DEFAULT NULL,
  `ManageStock` tinyint(1) NOT NULL DEFAULT '0',
  `NomenclatureLevel` int(11) NOT NULL DEFAULT '0',
  `IsPrintable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `QuantityDecimalNumber` smallint(6) NOT NULL DEFAULT '0',
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HasTrackingDispatch` tinyint(1) NOT NULL DEFAULT '0',
  `LimitDate` date DEFAULT NULL,
  `PricesDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IsManagedByCountermark` tinyint(1) NOT NULL DEFAULT '0',
  `IsCountermarkInitiated` tinyint(1) NOT NULL DEFAULT '0',
  `Volume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalVolume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VolumeUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Weight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `WeightUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhaseLevel` int(11) NOT NULL DEFAULT '0',
  `Location_LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location_MultiLocationMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Numbering` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsNumberSetManually` tinyint(1) NOT NULL DEFAULT '0',
  `PurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyTotalUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyTotalUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsNetPriceWithFullDecimals` tinyint(1) NOT NULL DEFAULT '0',
  `NetPriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitEcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitEcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DeliveryDate` date DEFAULT NULL,
  `DeliveryState` tinyint(3) UNSIGNED DEFAULT NULL,
  `ReturnState` tinyint(3) UNSIGNED DEFAULT NULL,
  `OrderedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DeliveredQuantity` decimal(28,8) DEFAULT '0.00000000',
  `RemainingQuantityToDeliver` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RemainingQuantityToInvoice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReturnedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReturnedQuantityByPreviousCreditMemo` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VatMode` tinyint(3) UNSIGNED DEFAULT '0',
  `NumberOfItemByPackage` int(11) NOT NULL DEFAULT '0',
  `NetWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalNetWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UseComponentVat` tinyint(1) NOT NULL DEFAULT '0',
  `NomenclatureCalculationType` tinyint(3) UNSIGNED DEFAULT NULL,
  `ComponentDistributionPercentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DistributionPercentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `Discounts0_CurrencyUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_CurrencyUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `Discounts1_CurrencyUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_CurrencyUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `Discounts2_CurrencyUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_CurrencyUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NotIncluded` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes0_Id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes0_CalculationBase` tinyint(3) UNSIGNED DEFAULT NULL,
  `OtherTaxes0_TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_SubjectToVat` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes0_TaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_TaxUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes0_BaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_CurrencyBaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_CurrencyTaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_CurrencyTaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_Id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes1_CalculationBase` tinyint(3) UNSIGNED DEFAULT NULL,
  `OtherTaxes1_TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_SubjectToVat` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes1_TaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_TaxUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes1_BaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_CurrencyBaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_CurrencyTaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_CurrencyTaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_Id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes2_CalculationBase` tinyint(3) UNSIGNED DEFAULT NULL,
  `OtherTaxes2_TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_SubjectToVat` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes2_TaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_TaxUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes2_BaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_CurrencyBaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_CurrencyTaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_CurrencyTaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsPriceListApplied` tinyint(1) NOT NULL DEFAULT '0',
  `CanApplyPriceListOnComponent` tinyint(1) NOT NULL DEFAULT '0',
  `DispatchedAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DispatchedAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `REAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyVatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ItemReference` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MustPartiallyDeliverCommercialNomenclature` tinyint(1) NOT NULL DEFAULT '0',
  `BillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `BillOfQuantitiesProgram_IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `BillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `UnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `UnitPriceProgram_IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `UnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `NumberOfPackage` int(11) NOT NULL DEFAULT '0',
  `IsCustomNumberOfPackage` tinyint(1) NOT NULL DEFAULT '0',
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EcotaxFurnitureId` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IncludeEcotaxFurnitureInDueAmount` tinyint(1) NOT NULL DEFAULT '1',
  `AnalyticPlanItemId` int(11) DEFAULT NULL,
  `HasAnalyticAffectations` tinyint(1) NOT NULL DEFAULT '0',
  `PriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PurchaseOrderMinimumQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PurchaseOrderMultipleQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PurchaseUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SalePurchaseConversionRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalChargeAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CostAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AdvisedSalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DiscountRateOnAdvisedSalePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DiscountAmountOnAdvisedSalePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `QuantityToReplenish` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsCostAmountModifiedByNextDocument` tinyint(1) NOT NULL DEFAULT '0',
  `CurrencyPriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyPriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyPurchaseChargeAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReverseChargeVatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `PurchaseDocumentLineDocumentIndex` (`DocumentId`,`LineOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasedocumentlineanalyticaffectation`
--

DROP TABLE IF EXISTS `purchasedocumentlineanalyticaffectation`;
CREATE TABLE IF NOT EXISTS `purchasedocumentlineanalyticaffectation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `AnalyticPlanItem` int(11) NOT NULL,
  `Percentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasedocumentlinetrackingdispatch`
--

DROP TABLE IF EXISTS `purchasedocumentlinetrackingdispatch`;
CREATE TABLE IF NOT EXISTS `purchasedocumentlinetrackingdispatch` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockMovementId` int(11) DEFAULT NULL,
  `DispatchIndex` int(11) NOT NULL DEFAULT '0',
  `LimitDate` date DEFAULT NULL,
  `LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OriginQuantity` decimal(28,8) DEFAULT '0.00000000',
  `OriginId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReturnOriginLocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReturnedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RemainingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReturnedQuantityByPreviousCreditMemo` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasesettlement`
--

DROP TABLE IF EXISTS `purchasesettlement`;
CREATE TABLE IF NOT EXISTS `purchasesettlement` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Reference` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DraweeReference` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SettlementDate` date NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BankId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RemainingAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRemainingAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ValidationState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsLiquidated` tinyint(1) NOT NULL DEFAULT '0',
  `LiquidationAmount` decimal(28,8) DEFAULT '0.00000000',
  `LiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `TransferedLiquidationAmount` decimal(28,8) DEFAULT '0.00000000',
  `TransferedLiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `LiquidationStateChangeDate` date DEFAULT NULL,
  `TransferedLiquidationStateChangeDate` date DEFAULT NULL,
  `LiquidationAccountingTransferState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LiquidationAccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DisbursementId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountingTransferMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ThirdBankAccountId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedOrderId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedDeliveryId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedInvoiceId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyConversionRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyExchangeDifference` tinyint(1) NOT NULL DEFAULT '0',
  `PreviousLiquidationType` tinyint(3) UNSIGNED DEFAULT '0',
  `IsDeposit` tinyint(1) NOT NULL DEFAULT '0',
  `EconomicReasonId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecoveredFrom` smallint(6) DEFAULT NULL,
  `AcceptationId` tinyint(3) UNSIGNED DEFAULT NULL,
  `BankRemittancePlannedDate` date DEFAULT NULL,
  `BillOfExchangeCommitmentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `BillOfExchangePointingId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `BankRemittanceChargeAmounts0` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts1` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts2` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts3` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts4` decimal(28,8) DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchasesettlementcommitmentassociation`
--

DROP TABLE IF EXISTS `purchasesettlementcommitmentassociation`;
CREATE TABLE IF NOT EXISTS `purchasesettlementcommitmentassociation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CommitmentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SettlementId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SecondarySettlementId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssignedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyAssignedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsTransferedToAccounting` tinyint(1) NOT NULL DEFAULT '0',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LinkedCommitmentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
CREATE TABLE IF NOT EXISTS `receipt` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nature` longtext COLLATE utf8_unicode_ci,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentDate` date NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SettlementId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GoodAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ServiceAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recovereddocument`
--

DROP TABLE IF EXISTS `recovereddocument`;
CREATE TABLE IF NOT EXISTS `recovereddocument` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentNumber` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `NumberPrefix` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `NumberSuffix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentDate` date NOT NULL,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `SaleDocumentSubType` tinyint(3) UNSIGNED DEFAULT '0',
  `PurchaseDocumentSubType` tinyint(3) UNSIGNED DEFAULT '0',
  `RecoveredFrom` smallint(6) NOT NULL DEFAULT '1',
  `CustomerId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SupplierId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThirdName` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RecoveredDocumentDocumentNumberIndex` (`DocumentNumber`,`DocumentType`,`DocumentSubType`),
  UNIQUE KEY `RecoveredDocumentPrefixSuffixIndex` (`NumberPrefix`,`NumberSuffix`,`DocumentType`,`DocumentSubType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recovereddocumentassociatedfiles`
--

DROP TABLE IF EXISTS `recovereddocumentassociatedfiles`;
CREATE TABLE IF NOT EXISTS `recovereddocumentassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `remindercommitment`
--

DROP TABLE IF EXISTS `remindercommitment`;
CREATE TABLE IF NOT EXISTS `remindercommitment` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ReminderLetterId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CommitmentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CommitmentDate` date NOT NULL,
  `CommitmentDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CommitmentTotalAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DocumentCurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CommitmentCurrencyTotalAmount` decimal(28,8) DEFAULT '0.00000000',
  `CommitmentCurrencyDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `NewReminderLevel` int(11) NOT NULL DEFAULT '0',
  `SendingMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `IsSelected` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reminderletter`
--

DROP TABLE IF EXISTS `reminderletter`;
CREATE TABLE IF NOT EXISTS `reminderletter` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ReminderNumber` int(11) NOT NULL DEFAULT '0',
  `ReminderDate` date NOT NULL,
  `MustBeSentByMail` tinyint(1) NOT NULL DEFAULT '1',
  `MustBeSentByFax` tinyint(1) NOT NULL DEFAULT '1',
  `ReminderCriticalLevel` int(11) NOT NULL DEFAULT '2',
  `NotIncrementReminderLevel` tinyint(1) NOT NULL DEFAULT '0',
  `IsPrinted` tinyint(1) NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `round`
--

DROP TABLE IF EXISTS `round`;
CREATE TABLE IF NOT EXISTS `round` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `RoundType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `RoundValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salecommitment`
--

DROP TABLE IF EXISTS `salecommitment`;
CREATE TABLE IF NOT EXISTS `salecommitment` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `DocumentSubType` tinyint(3) UNSIGNED DEFAULT NULL,
  `DueDate` date NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BalanceDue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsDeposit` tinyint(1) NOT NULL DEFAULT '0',
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DayOfMonth` smallint(6) DEFAULT NULL,
  `PercentageDistribution` decimal(28,8) DEFAULT NULL,
  `DaysNumber` smallint(6) NOT NULL DEFAULT '0',
  `CommitmentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingMonth` tinyint(1) NOT NULL DEFAULT '0',
  `IsLiquidated` tinyint(1) NOT NULL DEFAULT '0',
  `AccountingTransferState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LiquidationAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `LiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `TransferedLiquidationAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TransferedLiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `LiquidationStateChangeDate` date DEFAULT NULL,
  `TransferedLiquidationStateChangeDate` date DEFAULT NULL,
  `LiquidationAccountingTransferState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LiquidationAccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExternalDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyBalanceDue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `LiquidationType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `PreviousLiquidationType` tinyint(3) UNSIGNED DEFAULT '0',
  `IsCorrected` tinyint(1) NOT NULL DEFAULT '0',
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GenerateSettlement` tinyint(1) NOT NULL DEFAULT '0',
  `PaymentThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TotalReminderNumber` int(11) NOT NULL DEFAULT '0',
  `LastReminderLevel` int(11) NOT NULL DEFAULT '0',
  `LastReminderDate` date DEFAULT NULL,
  `LastReminderSendingMode` tinyint(3) UNSIGNED DEFAULT NULL,
  `SepaMandateIdentification` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SepaMandateDate` date DEFAULT NULL,
  `SepaSequence` tinyint(3) UNSIGNED DEFAULT '3',
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saledocumentassociatedfiles`
--

DROP TABLE IF EXISTS `saledocumentassociatedfiles`;
CREATE TABLE IF NOT EXISTS `saledocumentassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saledocumentcomplementarydiscount`
--

DROP TABLE IF EXISTS `saledocumentcomplementarydiscount`;
CREATE TABLE IF NOT EXISTS `saledocumentcomplementarydiscount` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `Code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Caption` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saledocumentex`
--

DROP TABLE IF EXISTS `saledocumentex`;
CREATE TABLE IF NOT EXISTS `saledocumentex` (
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `EcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureVatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatExcludedIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureVatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatExcludedIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountIncludedToDueAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount0_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount1_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount2_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount3_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount4_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_TaxFurnitAmountVatExcludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_TaxFurnitAmountVatIncludedIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_EcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurrencyEcotaxFurnitureVatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurTaxFurnitAmountVatExcludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurTaxFurnitAmountVatIncludIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  `DetailVatAmount5_CurEcotaxFurnitureVatAmountIncludedToDueAmount` decimal(28,8) DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saledocumentline`
--

DROP TABLE IF EXISTS `saledocumentline`;
CREATE TABLE IF NOT EXISTS `saledocumentline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TopParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `Description` longtext COLLATE utf8_unicode_ci,
  `DescriptionClear` longtext COLLATE utf8_unicode_ci,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsReferencedItem` tinyint(1) NOT NULL DEFAULT '0',
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StockMovementId` int(11) DEFAULT NULL,
  `ManageStock` tinyint(1) NOT NULL DEFAULT '0',
  `NomenclatureLevel` int(11) NOT NULL DEFAULT '0',
  `IsPrintable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `QuantityDecimalNumber` smallint(6) NOT NULL DEFAULT '0',
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HasTrackingDispatch` tinyint(1) NOT NULL DEFAULT '0',
  `LimitDate` date DEFAULT NULL,
  `PricesDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IsManagedByCountermark` tinyint(1) NOT NULL DEFAULT '0',
  `IsCountermarkInitiated` tinyint(1) NOT NULL DEFAULT '0',
  `Volume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalVolume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VolumeUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Weight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `WeightUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhaseLevel` int(11) NOT NULL DEFAULT '0',
  `Location_LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location_MultiLocationMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Numbering` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsNumberSetManually` tinyint(1) NOT NULL DEFAULT '0',
  `PurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ChargeAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyTotalUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyTotalUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsNetPriceWithFullDecimals` tinyint(1) NOT NULL DEFAULT '0',
  `NetPriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitEcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitEcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VatId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VatAmount` decimal(28,8) DEFAULT '0.00000000',
  `DeliveryDate` date DEFAULT NULL,
  `DeliveryState` tinyint(3) UNSIGNED DEFAULT NULL,
  `ReturnState` tinyint(3) UNSIGNED DEFAULT NULL,
  `OrderedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DeliveredQuantity` decimal(28,8) DEFAULT '0.00000000',
  `RemainingQuantityToDeliver` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RemainingQuantityToInvoice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReturnedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReturnedQuantityByPreviousCreditMemo` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VatMode` tinyint(3) UNSIGNED DEFAULT '0',
  `NumberOfItemByPackage` int(11) NOT NULL DEFAULT '0',
  `NetWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalNetWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UseComponentVat` tinyint(1) NOT NULL DEFAULT '0',
  `NomenclatureCalculationType` tinyint(3) UNSIGNED DEFAULT NULL,
  `ComponentDistributionPercentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DistributionPercentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `Discounts0_CurrencyUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts0_CurrencyUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `Discounts1_CurrencyUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts1_CurrencyUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_UnitDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_UnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_UnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_DiscountType` tinyint(3) UNSIGNED DEFAULT NULL,
  `Discounts2_CurrencyUnitDiscountAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Discounts2_CurrencyUnitDiscountAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealNetAmountVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPriceVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NotIncluded` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes0_Id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes0_CalculationBase` tinyint(3) UNSIGNED DEFAULT NULL,
  `OtherTaxes0_TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_SubjectToVat` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes0_TaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_TaxUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes0_BaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_CurrencyBaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_CurrencyTaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes0_CurrencyTaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_Id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes1_CalculationBase` tinyint(3) UNSIGNED DEFAULT NULL,
  `OtherTaxes1_TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_SubjectToVat` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes1_TaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_TaxUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes1_BaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_CurrencyBaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_CurrencyTaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes1_CurrencyTaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_Id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes2_CalculationBase` tinyint(3) UNSIGNED DEFAULT NULL,
  `OtherTaxes2_TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_SubjectToVat` tinyint(1) NOT NULL DEFAULT '0',
  `OtherTaxes2_TaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_TaxUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OtherTaxes2_BaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_CurrencyBaseAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_CurrencyTaxAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OtherTaxes2_CurrencyTaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsPriceListApplied` tinyint(1) NOT NULL DEFAULT '0',
  `CanApplyPriceListOnComponent` tinyint(1) NOT NULL DEFAULT '0',
  `DispatchedAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DispatchedAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `REAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncludedWithDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncludedWithDiscountAndFinancialDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRealNetAmountVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatExcludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyNetPriceVatIncludedWithParentDiscount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyVatAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ItemReference` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MustPartiallyDeliverCommercialNomenclature` tinyint(1) NOT NULL DEFAULT '0',
  `BillOfQuantitiesProgram_Program` longtext COLLATE utf8_unicode_ci,
  `BillOfQuantitiesProgram_IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `BillOfQuantitiesProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `UnitPriceProgram_Program` longtext COLLATE utf8_unicode_ci,
  `UnitPriceProgram_IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `UnitPriceProgram_KeepActiveFromQuoteToOrder` tinyint(1) NOT NULL DEFAULT '1',
  `NumberOfPackage` int(11) NOT NULL DEFAULT '0',
  `IsCustomNumberOfPackage` tinyint(1) NOT NULL DEFAULT '0',
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EcotaxFurnitureId` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyUnitEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyEcotaxFurnitureAmountVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IncludeEcotaxFurnitureInDueAmount` tinyint(1) NOT NULL DEFAULT '1',
  `AnalyticPlanItemId` int(11) DEFAULT NULL,
  `HasAnalyticAffectations` tinyint(1) NOT NULL DEFAULT '0',
  `SalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SalePriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `InterestRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `InterestAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetInterestRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetInterestAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BrandRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalInterestAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsFixedPrice` tinyint(3) UNSIGNED DEFAULT NULL,
  `UsePumpForReturn` tinyint(1) NOT NULL DEFAULT '1',
  `ReturnUnitCostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReturnCostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsHumanService` tinyint(1) NOT NULL DEFAULT '0',
  `InterventionDurationEqualQuantity` tinyint(1) NOT NULL DEFAULT '0',
  `GrossInterestRateCalculationType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `GrossInterestAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `GrossInterestRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `GrossInterestBase` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencySalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencySalePriceVatIncluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PurchaseDeliveryAddressType` tinyint(3) UNSIGNED DEFAULT '0',
  `DoNotCreateMovement` tinyint(1) NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `SaleDocumentLineDocumentIndex` (`DocumentId`,`LineOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saledocumentlineanalyticaffectation`
--

DROP TABLE IF EXISTS `saledocumentlineanalyticaffectation`;
CREATE TABLE IF NOT EXISTS `saledocumentlineanalyticaffectation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `AnalyticPlanItem` int(11) NOT NULL,
  `Percentage` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saledocumentlinehumanservicedetail`
--

DROP TABLE IF EXISTS `saledocumentlinehumanservicedetail`;
CREATE TABLE IF NOT EXISTS `saledocumentlinehumanservicedetail` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `ParentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `IntervenerId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `InterventionDate` date NOT NULL,
  `InterventionDuration` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saledocumentlinetrackingdispatch`
--

DROP TABLE IF EXISTS `saledocumentlinetrackingdispatch`;
CREATE TABLE IF NOT EXISTS `saledocumentlinetrackingdispatch` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockMovementId` int(11) DEFAULT NULL,
  `DispatchIndex` int(11) NOT NULL DEFAULT '0',
  `LimitDate` date DEFAULT NULL,
  `LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OriginQuantity` decimal(28,8) DEFAULT '0.00000000',
  `OriginId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReturnOriginLocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReturnedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RemainingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReturnedQuantityByPreviousCreditMemo` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `saleorderecommerceinfo`
--

DROP TABLE IF EXISTS `saleorderecommerceinfo`;
CREATE TABLE IF NOT EXISTS `saleorderecommerceinfo` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `InfoKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `InfoValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salesettlement`
--

DROP TABLE IF EXISTS `salesettlement`;
CREATE TABLE IF NOT EXISTS `salesettlement` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Reference` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DraweeReference` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SettlementDate` date NOT NULL,
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `BankId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RemainingAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyRemainingAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ValidationState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsLiquidated` tinyint(1) NOT NULL DEFAULT '0',
  `LiquidationAmount` decimal(28,8) DEFAULT '0.00000000',
  `LiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `TransferedLiquidationAmount` decimal(28,8) DEFAULT '0.00000000',
  `TransferedLiquidationCurrencyAmount` decimal(28,8) DEFAULT '0.00000000',
  `LiquidationStateChangeDate` date DEFAULT NULL,
  `TransferedLiquidationStateChangeDate` date DEFAULT NULL,
  `LiquidationAccountingTransferState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LiquidationAccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BankRemittanceId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountingTransferMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ThirdBankAccountId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedOrderId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedDeliveryId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssociatedInvoiceId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyConversionRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyExchangeDifference` tinyint(1) NOT NULL DEFAULT '0',
  `PreviousLiquidationType` tinyint(3) UNSIGNED DEFAULT '0',
  `IsDeposit` tinyint(1) NOT NULL DEFAULT '0',
  `EconomicReasonId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecoveredFrom` smallint(6) DEFAULT NULL,
  `AcceptationId` tinyint(3) UNSIGNED DEFAULT NULL,
  `BankRemittancePlannedDate` date DEFAULT NULL,
  `BillOfExchangeCommitmentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `BillOfExchangePointingId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `BankRemittanceChargeAmounts0` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts1` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts2` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts3` decimal(28,8) DEFAULT NULL,
  `BankRemittanceChargeAmounts4` decimal(28,8) DEFAULT NULL,
  `SepaMandateIdentification` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SepaMandateDate` date DEFAULT NULL,
  `SepaDirectDebitSequence` tinyint(3) UNSIGNED DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salesettlementcommitmentassociation`
--

DROP TABLE IF EXISTS `salesettlementcommitmentassociation`;
CREATE TABLE IF NOT EXISTS `salesettlementcommitmentassociation` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CommitmentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SettlementId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SecondarySettlementId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AssignedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyAssignedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsTransferedToAccounting` tinyint(1) NOT NULL DEFAULT '0',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LinkedCommitmentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scheduleevent`
--

DROP TABLE IF EXISTS `scheduleevent`;
CREATE TABLE IF NOT EXISTS `scheduleevent` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentEventId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `StartDateTime` datetime NOT NULL,
  `EndDateTime` datetime NOT NULL,
  `Caption` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EventType` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EquipmentId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExpectedDuration` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AchievedDuration` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) DEFAULT '0.00000000',
  `SalePriceVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetAmountVatExcluded` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `HourlyCostPrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CostAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IncludeInRealizedCost` tinyint(1) NOT NULL DEFAULT '0',
  `ToInvoice` tinyint(1) NOT NULL DEFAULT '0',
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InvoiceColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InvoiceCustomerId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PayrollVariableDuration0` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration1` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration2` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration3` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration4` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration5` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration6` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration7` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration8` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration9` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration10` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration11` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration12` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration13` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration14` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration15` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration16` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration17` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration18` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration19` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration20` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration21` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration22` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration23` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration24` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration25` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration26` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration27` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration28` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration29` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration30` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration31` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration32` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration33` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration34` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration35` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration36` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration37` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration38` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration39` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration40` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration41` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration42` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration43` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration44` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration45` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration46` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration47` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration48` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PayrollVariableDuration49` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `EventState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ScheduleShowTimeLine` tinyint(1) NOT NULL DEFAULT '0',
  `LineType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `InvoiceId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InvoiceLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `SaleDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchaseDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StockDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `Address_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Longitude` decimal(20,8) DEFAULT NULL,
  `Address_Latitude` decimal(20,8) DEFAULT NULL,
  `Contact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Function` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Department` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `Contact_OptIn` tinyint(1) NOT NULL DEFAULT '0',
  `Contact_ExternalId_GoogleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_ExternalId_OutlookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatorColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SupplierId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NextReminder` datetime DEFAULT NULL,
  `ReminderType` tinyint(3) UNSIGNED DEFAULT '1',
  `Reminder` smallint(6) DEFAULT '20',
  `ReminderEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `PayrollExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AddressId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `ScheduleEventParentIdIndex` (`ParentEventId`),
  KEY `ScheduleEventRemindIndex` (`ReminderEnabled`,`NextReminder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scheduleeventassociatedfiles`
--

DROP TABLE IF EXISTS `scheduleeventassociatedfiles`;
CREATE TABLE IF NOT EXISTS `scheduleeventassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scheduleeventtype`
--

DROP TABLE IF EXISTS `scheduleeventtype`;
CREATE TABLE IF NOT EXISTS `scheduleeventtype` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `serviceintrastat`
--

DROP TABLE IF EXISTS `serviceintrastat`;
CREATE TABLE IF NOT EXISTS `serviceintrastat` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `IntrastatState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IntrastatNumber` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `IntrastatDate` date NOT NULL,
  `ReferencePeriod` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `ServiceIntrastatNumberIndex` (`IntrastatNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `serviceintrastatline`
--

DROP TABLE IF EXISTS `serviceintrastatline`;
CREATE TABLE IF NOT EXISTS `serviceintrastatline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `IntrastatId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineNumber` int(11) NOT NULL DEFAULT '0',
  `Amount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PurchaserCeNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentType` tinyint(3) UNSIGNED DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `settlementmode`
--

DROP TABLE IF EXISTS `settlementmode`;
CREATE TABLE IF NOT EXISTS `settlementmode` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OxatisPaymentTypeCaption` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `SettlementMode_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `settlementmodeline`
--

DROP TABLE IF EXISTS `settlementmodeline`;
CREATE TABLE IF NOT EXISTS `settlementmodeline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `SettlementModeId` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `PercentageDistribution` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AccountingMonth` tinyint(1) NOT NULL DEFAULT '0',
  `PaymentTypeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DaysNumber` smallint(6) NOT NULL DEFAULT '0',
  `CommitmentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DayOfMonth` smallint(6) DEFAULT '1',
  `GenerateCustomerSettlement` tinyint(1) NOT NULL DEFAULT '0',
  `GenerateSupplierSettlement` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `VatId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `CalculationMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CalculationValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CarrierAddress_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierAddress_Longitude` decimal(20,8) DEFAULT NULL,
  `CarrierAddress_Latitude` decimal(20,8) DEFAULT NULL,
  `CarrierAddress_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierContact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierContact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierContact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierContact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierContact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierContact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CarrierContact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IntrastatTransportMode` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotSubjectToFinancialDiscount` tinyint(1) NOT NULL DEFAULT '0',
  `ApplyOnType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Shipping_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `shippingaccount`
--

DROP TABLE IF EXISTS `shippingaccount`;
CREATE TABLE IF NOT EXISTS `shippingaccount` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `VatId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PurchaseAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShippingId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `shippingIdVatIdIndex` (`ShippingId`,`VatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `shippinglevel`
--

DROP TABLE IF EXISTS `shippinglevel`;
CREATE TABLE IF NOT EXISTS `shippinglevel` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ShippingId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Threshold` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `LevelValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `standardtext`
--

DROP TABLE IF EXISTS `standardtext`;
CREATE TABLE IF NOT EXISTS `standardtext` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `StandardTextClear` longtext COLLATE utf8_unicode_ci NOT NULL,
  `StandardText` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `StateNumber` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Caption` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `statisticview`
--

DROP TABLE IF EXISTS `statisticview`;
CREATE TABLE IF NOT EXISTS `statisticview` (
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `StatisticType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stockdocument`
--

DROP TABLE IF EXISTS `stockdocument`;
CREATE TABLE IF NOT EXISTS `stockdocument` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentNumber` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `NumberPrefix` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `NumberSuffix` decimal(28,8) NOT NULL,
  `DocumentDate` date NOT NULL,
  `GlobalDocumentOrder` int(11) NOT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DispatchedByStorehouse` tinyint(1) NOT NULL DEFAULT '0',
  `TransferedDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TotalVolume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Reference` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RecoveredFrom` smallint(6) DEFAULT NULL,
  `ModifiedSinceRecovery` tinyint(1) DEFAULT '0',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `OriginDocumentType` tinyint(3) UNSIGNED DEFAULT NULL,
  `ValidateState` tinyint(3) UNSIGNED DEFAULT NULL,
  `GroupingType` tinyint(3) UNSIGNED DEFAULT NULL,
  `SortingType` tinyint(3) UNSIGNED DEFAULT NULL,
  `MustGetQuantities` tinyint(1) NOT NULL DEFAULT '0',
  `AccountingExchangeGroupId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MustBeTransferedToAccounting` tinyint(1) NOT NULL DEFAULT '0',
  `TargetStorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ValidationDate` date DEFAULT NULL,
  `ValidationGlobalDocumentOrder` int(11) DEFAULT NULL,
  `DocumentStage` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `OriginDocumentId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransitStorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransitEndDate` date DEFAULT NULL,
  `TransitDuration` int(11) DEFAULT NULL,
  `IncludeSoldOutTrackingNumbers` tinyint(1) NOT NULL DEFAULT '0',
  `RemoveOutOfDateUseByStock` tinyint(1) NOT NULL DEFAULT '0',
  `RemoveOutOfDateBestBeforeStock` tinyint(1) NOT NULL DEFAULT '0',
  `UseAdjustedLimitDate` tinyint(1) NOT NULL DEFAULT '0',
  `ItemValueType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `StockDocumentDocumentNumberIndex` (`DocumentNumber`,`DocumentType`),
  UNIQUE KEY `StockDocumentPrefixSuffixIndex` (`NumberPrefix`,`NumberSuffix`,`DocumentType`),
  UNIQUE KEY `StockDocumentGlobalDocumentOrderIndex` (`GlobalDocumentOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stockdocumentassociatedfiles`
--

DROP TABLE IF EXISTS `stockdocumentassociatedfiles`;
CREATE TABLE IF NOT EXISTS `stockdocumentassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stockdocumentline`
--

DROP TABLE IF EXISTS `stockdocumentline`;
CREATE TABLE IF NOT EXISTS `stockdocumentline` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TopParentLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LineType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LineOrder` int(11) NOT NULL DEFAULT '0',
  `Description` longtext COLLATE utf8_unicode_ci,
  `DescriptionClear` longtext COLLATE utf8_unicode_ci,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsReferencedItem` tinyint(1) NOT NULL DEFAULT '0',
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StockMovementId` int(11) DEFAULT NULL,
  `ManageStock` tinyint(1) NOT NULL DEFAULT '0',
  `NomenclatureLevel` int(11) NOT NULL DEFAULT '0',
  `IsPrintable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `QuantityDecimalNumber` smallint(6) NOT NULL DEFAULT '0',
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HasTrackingDispatch` tinyint(1) NOT NULL DEFAULT '0',
  `LimitDate` date DEFAULT NULL,
  `PricesDecimalNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `IsManagedByCountermark` tinyint(1) NOT NULL DEFAULT '0',
  `IsCountermarkInitiated` tinyint(1) NOT NULL DEFAULT '0',
  `Volume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalVolume` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VolumeUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Weight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalWeight` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `WeightUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhaseLevel` int(11) NOT NULL DEFAULT '0',
  `Location_LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location_MultiLocationMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DealId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TotalValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrentPump` decimal(28,8) DEFAULT '0.00000000',
  `CurrentStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Commentary` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NewPump` decimal(28,8) DEFAULT NULL,
  `NewTotalValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AccountingNewTotalValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `LocationCaption` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitCaption` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PreviousTotalValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Gap` decimal(28,8) DEFAULT NULL,
  `JustificationQuantity1` decimal(28,8) DEFAULT NULL,
  `JustificationQuantity2` decimal(28,8) DEFAULT NULL,
  `JustificationQuantity3` decimal(28,8) DEFAULT NULL,
  `JustificationQuantity4` decimal(28,8) DEFAULT NULL,
  `JustificationQuantity5` decimal(28,8) DEFAULT NULL,
  `TargetStorehouseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReceivedQuantity` decimal(28,8) DEFAULT NULL,
  `TargetStockMovementId` int(11) DEFAULT NULL,
  `StockChargeAmount` decimal(28,8) DEFAULT NULL,
  `GapStockMovementId` int(11) DEFAULT NULL,
  `OriginLineId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RemainingQuantity` decimal(28,8) DEFAULT NULL,
  `TargetQuantity` decimal(28,8) DEFAULT NULL,
  `TransitInputStockMovementId` int(11) DEFAULT NULL,
  `TransitOutputStockMovementId` int(11) DEFAULT NULL,
  `ExistingTrackingNumber` tinyint(1) NOT NULL DEFAULT '0',
  `TrackingMasterLine` tinyint(1) NOT NULL DEFAULT '0',
  `UpdateComponentsStockInFabrication` tinyint(1) NOT NULL DEFAULT '0',
  `TransitLocation_LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TransitLocation_MultiLocationMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `TargetLocation_LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TargetLocation_MultiLocationMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `StockDocumentLineDocumentIndex` (`DocumentId`,`LineOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stockdocumentlinetrackingdispatch`
--

DROP TABLE IF EXISTS `stockdocumentlinetrackingdispatch`;
CREATE TABLE IF NOT EXISTS `stockdocumentlinetrackingdispatch` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockMovementId` int(11) DEFAULT NULL,
  `DispatchIndex` int(11) NOT NULL DEFAULT '0',
  `LimitDate` date DEFAULT NULL,
  `LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TargetStockMovementId` int(11) DEFAULT NULL,
  `GapStockMovementId` int(11) DEFAULT NULL,
  `TransitInputStockMovementId` int(11) DEFAULT NULL,
  `TransitOutputStockMovementId` int(11) DEFAULT NULL,
  `ReceivedQuantity` decimal(28,8) DEFAULT NULL,
  `Gap` decimal(28,8) DEFAULT NULL,
  `RemainingQuantity` decimal(28,8) DEFAULT NULL,
  `TargetQuantity` decimal(28,8) DEFAULT NULL,
  `TransitLocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TargetLocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stockitem`
--

DROP TABLE IF EXISTS `stockitem`;
CREATE TABLE IF NOT EXISTS `stockitem` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RealStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `MinStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockToOrderThreshold` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `VirtualStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `OrderedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SuppliersOrderedQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Pump` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StorageEnable` tinyint(1) NOT NULL DEFAULT '1',
  `TransferOutputVirtualQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TransferInputVirtualQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AssemblingVirtualQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DisassemblingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `QuantityUsedToAssemblate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `QuantityFromDisassembling` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `MaxStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CustomersDeliveryOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CustomersReturnOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SuppliersDeliveryOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SuppliersReturnOrderPreparingQuantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `MultiLocationMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `HasLocationDispatch` tinyint(1) NOT NULL DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ItemId`,`StorehouseId`),
  KEY `StockItem_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stockmovement`
--

DROP TABLE IF EXISTS `stockmovement`;
CREATE TABLE IF NOT EXISTS `stockmovement` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentLineId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentDate` date NOT NULL,
  `DocumentOrder` int(11) NOT NULL DEFAULT '0',
  `DocumentNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Quantity` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UnitCost` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Cost` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Pump` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `RealStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReferenceMovementId` int(11) DEFAULT NULL,
  `StockChargeAmount` decimal(28,8) DEFAULT NULL,
  `MovementType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LimitDate` date DEFAULT NULL,
  `TrackingRealStock` decimal(28,8) DEFAULT '0.00000000',
  `TrackingPump` decimal(28,8) DEFAULT '0.00000000',
  `TrackingStockValue` decimal(28,8) DEFAULT '0.00000000',
  `UsePumpForSaleReturn` tinyint(1) NOT NULL DEFAULT '1',
  `LocationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ItemIdIndex` (`ItemId`),
  KEY `DocumentOrderIndex` (`ItemId`,`DocumentDate`,`DocumentOrder`,`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `storehouse`
--

DROP TABLE IF EXISTS `storehouse`;
CREATE TABLE IF NOT EXISTS `storehouse` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LastInventoryDate` date DEFAULT NULL,
  `Address_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address_Longitude` decimal(20,8) DEFAULT NULL,
  `Address_Latitude` decimal(20,8) DEFAULT NULL,
  `Contact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Main` tinyint(1) NOT NULL DEFAULT '0',
  `Asleep` tinyint(1) NOT NULL DEFAULT '0',
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `MultiLocationEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `MultiLocationDefaultMode` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UseInvoicingAddressAsDeliveryAddress` tinyint(1) NOT NULL DEFAULT '1',
  `UseInvoicingContactAsDeliveryContact` tinyint(1) NOT NULL DEFAULT '1',
  `MainDeliveryAddress_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `MainDeliveryAddress_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryAddress_Longitude` decimal(20,8) DEFAULT NULL,
  `MainDeliveryAddress_Latitude` decimal(20,8) DEFAULT NULL,
  `MainInvoicingAddress_Address1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Address2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Address3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Address4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_ZipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_City` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_ThirdName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Npai` tinyint(1) NOT NULL DEFAULT '0',
  `MainInvoicingAddress_WebSite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingAddress_Longitude` decimal(20,8) DEFAULT NULL,
  `MainInvoicingAddress_Latitude` decimal(20,8) DEFAULT NULL,
  `MainDeliveryContact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Function` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_Department` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `MainDeliveryContact_OptIn` tinyint(1) NOT NULL DEFAULT '0',
  `MainDeliveryContact_ExternalId_GoogleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainDeliveryContact_ExternalId_OutlookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Civility` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_FirstName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_CellPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Function` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_Department` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `MainInvoicingContact_OptIn` tinyint(1) NOT NULL DEFAULT '0',
  `MainInvoicingContact_ExternalId_GoogleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MainInvoicingContact_ExternalId_OutlookId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NaturalPerson` tinyint(1) NOT NULL DEFAULT '1',
  `ThirdLanguage` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FR',
  `PriceListCategoryId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Siren` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAF` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubFamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IntracommunityVATNumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TerritorialityId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `FirstInvoicingDate` date DEFAULT NULL,
  `SettlementModeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentDate` smallint(6) DEFAULT NULL,
  `DiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SecondDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `AllowedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrentAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ExtendedCurrentAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `InitialAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ExceedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Accounts_Account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Accounts_BillOfExchangeAccountingAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FinancialDiscountType` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `FinancialDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `FinancialDiscountPaymentDelay` smallint(6) NOT NULL DEFAULT '0',
  `ActiveState` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CurrencyId` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Group2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MustRetrieveCommitmentsFromAccounting` tinyint(1) NOT NULL DEFAULT '0',
  `DocumentSerialId` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IdentificationType` tinyint(3) UNSIGNED DEFAULT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThresholdBeforeExceedAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TaxIds0` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShippingId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `InvoicingThirdId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DisallowOrderAssort` tinyint(1) NOT NULL DEFAULT '0',
  `DisallowDeliveryAssort` tinyint(1) NOT NULL DEFAULT '0',
  `IRPFRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `sysEditCounter` int(11) DEFAULT '0',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Supplier_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supplierassociatedfiles`
--

DROP TABLE IF EXISTS `supplierassociatedfiles`;
CREATE TABLE IF NOT EXISTS `supplierassociatedfiles` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Content` longblob,
  `DocumentType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suppliercustomreport`
--

DROP TABLE IF EXISTS `suppliercustomreport`;
CREATE TABLE IF NOT EXISTS `suppliercustomreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL,
  `NumberOfCopies` int(11) NOT NULL DEFAULT '1',
  `ParentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PriceTaxeBased` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ReportId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supplierfamily`
--

DROP TABLE IF EXISTS `supplierfamily`;
CREATE TABLE IF NOT EXISTS `supplierfamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `sysEditCounter` int(11) DEFAULT '0',
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TerritorialityId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SecondDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `PriceListCategoryId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FinancialDiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `SettlementModeId` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PaymentDate` smallint(6) DEFAULT NULL,
  `ColleagueId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DocumentSerialId` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShippingId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds0` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds1` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxIds2` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IRPFRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `SupplierFamily_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supplierfamilycustomreport`
--

DROP TABLE IF EXISTS `supplierfamilycustomreport`;
CREATE TABLE IF NOT EXISTS `supplierfamilycustomreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL,
  `NumberOfCopies` int(11) NOT NULL DEFAULT '1',
  `ParentId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PriceTaxeBased` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ReportId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supplieritem`
--

DROP TABLE IF EXISTS `supplieritem`;
CREATE TABLE IF NOT EXISTS `supplieritem` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `SupplierId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MainSupplier` tinyint(1) NOT NULL DEFAULT '0',
  `PurchaseOrderMinimumQuantity` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `PurchaseOrderMultipleQuantity` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `PurchaseUnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SalePurchaseConversionRate` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `PublicPurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DiscountRate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DiscountAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `NetPurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DeliveryDelay` int(11) NOT NULL DEFAULT '0',
  `PriceModifiedDate` date NOT NULL,
  `SetItemPurchasePriceWithNetPurchasePrice` tinyint(1) NOT NULL DEFAULT '0',
  `DiscountRateOnAdvisedSalePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `DiscountAmountOnAdvisedSalePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `IsPurchasePriceLinkedToAdvisedSalePrice` tinyint(1) NOT NULL DEFAULT '1',
  `CurrencyNetPurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyPublicPurchasePrice` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `CurrencyDiscountAmount` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `ReferenceId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EcotaxId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UseEcotax` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supplieroptionscustomreport`
--

DROP TABLE IF EXISTS `supplieroptionscustomreport`;
CREATE TABLE IF NOT EXISTS `supplieroptionscustomreport` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `DocumentSubType` tinyint(3) UNSIGNED NOT NULL,
  `NumberOfCopies` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suppliersubfamily`
--

DROP TABLE IF EXISTS `suppliersubfamily`;
CREATE TABLE IF NOT EXISTS `suppliersubfamily` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SupplierFamilyId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `AnalyticAccounting_GridId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `SupplierSubFamily_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE IF NOT EXISTS `tax` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `CalculationBase` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `UnitId` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SubjectToVat` tinyint(1) NOT NULL DEFAULT '1',
  `SaleAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '447',
  `PurchaseAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '447',
  `sysEditCounter` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `taxitem`
--

DROP TABLE IF EXISTS `taxitem`;
CREATE TABLE IF NOT EXISTS `taxitem` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemFamilyId` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaxId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TaxOrder` int(11) NOT NULL DEFAULT '0',
  `OwnerType` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `taxterritoriality`
--

DROP TABLE IF EXISTS `taxterritoriality`;
CREATE TABLE IF NOT EXISTS `taxterritoriality` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TerritorialityId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TaxId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ForSale` tinyint(1) NOT NULL DEFAULT '1',
  `ForPurchase` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `TaxTerritorialityTaxIdTerritorialityIdIndex` (`TaxId`,`TerritorialityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `thirdbankaccountdetail`
--

DROP TABLE IF EXISTS `thirdbankaccountdetail`;
CREATE TABLE IF NOT EXISTS `thirdbankaccountdetail` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `IsMain` tinyint(1) NOT NULL DEFAULT '0',
  `AccountDetail_BasicBankAccountNumber` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_InternationalBankAccountNumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_BankIdentifierCode` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_Caption` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_Domiciliation1` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_Domiciliation2` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_Domiciliation3` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AccountDetail_OtherBankIdentifier` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `CustomerId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SupplierId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SepaMandateIdentification` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SepaMandateDate` date DEFAULT NULL,
  `SepaSequence` tinyint(3) UNSIGNED DEFAULT '3',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `thirdreference`
--

DROP TABLE IF EXISTS `thirdreference`;
CREATE TABLE IF NOT EXISTS `thirdreference` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ReferenceThirdType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ThirdSelectionType` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ThirdId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Reference` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BarCode` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `trackingstockitem`
--

DROP TABLE IF EXISTS `trackingstockitem`;
CREATE TABLE IF NOT EXISTS `trackingstockitem` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `StorehouseId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `RealStock` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TrackingNumber` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `UnitValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `StockValue` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `LimitDate` date DEFAULT NULL,
  `AdjustedLimitDate` date DEFAULT NULL,
  `LocationId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ItemId`,`StorehouseId`,`LocationId`,`TrackingNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE IF NOT EXISTS `unit` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `Caption` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UnitType` tinyint(3) UNSIGNED NOT NULL DEFAULT '5',
  `Decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `ConversionRate` decimal(28,8) NOT NULL DEFAULT '1.00000000',
  `UniqueId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `sysModuleId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysDatabaseId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Unit_UniqueId_Index` (`UniqueId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `unit`
--

INSERT INTO `unit` (`sysCreatedDate`, `sysCreatedUser`, `sysModifiedDate`, `sysModifiedUser`, `NotesClear`, `Notes`, `Id`, `Caption`, `UnitType`, `Decimals`, `ConversionRate`, `UniqueId`, `sysModuleId`, `sysDatabaseId`, `sysRecordVersion`, `sysRecordVersionId`) VALUES
('2015-04-02 06:01:54', 'ADM', '2015-04-02 06:01:54', 'ADM', NULL, NULL, 'S200', 'Sachet 200 g', 5, 2, '1.00000000', 'c2797091-5eb0-4dcc-8e8c-e04d7f1b61c0', NULL, NULL, 15, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4'),
('2015-04-02 06:00:54', 'ADM', '2015-04-02 06:00:54', 'ADM', NULL, NULL, 'S50', 'Sachet 50 g', 5, 2, '1.00000000', 'bc5347d7-cfed-401b-9ca9-bd253b2a2b1a', NULL, NULL, 14, '0895452f-b7c1-4c00-a316-c6a6d0ea4bf4');

-- --------------------------------------------------------

--
-- Structure de la table `vat`
--

DROP TABLE IF EXISTS `vat`;
CREATE TABLE IF NOT EXISTS `vat` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `TerritorialityId` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `Rate` decimal(28,2) NOT NULL DEFAULT '0.00',
  `Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RERate` decimal(28,8) NOT NULL DEFAULT '0.00000000',
  `TerritorialityDefaultRate` tinyint(1) NOT NULL DEFAULT '0',
  `Inactive` tinyint(1) NOT NULL DEFAULT '0',
  `Npr` tinyint(1) NOT NULL DEFAULT '0',
  `SellingCollectionVatAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '44571',
  `SellingDebitVatAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '44571',
  `SellingGoodsAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '707',
  `SellingServicesAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '706',
  `SellingShippingAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '7085',
  `SellingEcotaxAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '7088',
  `SellingEcotaxFurnitureAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '7088',
  `PurchaseCollectionVatAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '44566',
  `PurchaseDebitVatAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '44566',
  `PurchaseGoodsAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '607',
  `PurchaseServicesAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '604',
  `PurchaseShippingAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '6241',
  `PurchaseEcotaxAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '6088',
  `PurchaseEcotaxFurnitureAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '6088',
  `REAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '477',
  `GoodsReverseChargeAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '4452',
  `ServicesReverseChargeAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT '4452',
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `view_visites_clients`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `view_visites_clients`;
CREATE TABLE IF NOT EXISTS `view_visites_clients` (
`Id` varchar(20)
,`IdCommercial` varchar(20)
,`IdContact` char(36)
,`Entreprise` varchar(60)
,`Adresse` varchar(40)
,`CodePostal` varchar(10)
,`Ville` varchar(35)
,`Nom` varchar(60)
,`Prenom` varchar(60)
,`TelephoneFixe` varchar(20)
,`TelephoneMobile` varchar(20)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `view_visites_commerciaux`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `view_visites_commerciaux`;
CREATE TABLE IF NOT EXISTS `view_visites_commerciaux` (
`Id` varchar(20)
,`Civilite` varchar(25)
,`Nom` varchar(60)
,`Prenom` varchar(60)
,`TelephoneFixe` varchar(20)
,`TelephoneMobile` varchar(20)
,`Email` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure de la table `visites_rdv`
--

DROP TABLE IF EXISTS `visites_rdv`;
CREATE TABLE IF NOT EXISTS `visites_rdv` (
  `idRDV` int(11) NOT NULL AUTO_INCREMENT,
  `idCommercial` varchar(20) NOT NULL,
  `idClient` varchar(64) NOT NULL,
  `Semaine` int(11) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `Lieu` varchar(255) NOT NULL,
  `Commentaire` varchar(100) NOT NULL,
  PRIMARY KEY (`idRDV`),
  KEY `idClient` (`idClient`),
  KEY `idCommercial` (`idCommercial`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visites_rdv`
--

INSERT INTO `visites_rdv` (`idRDV`, `idCommercial`, `idClient`, `Semaine`, `Nom`, `Prenom`, `Date`, `Lieu`, `Commentaire`) VALUES
(5, 'CO00002', '', 19, 'Queffelec', 'Weaver', '2015-04-23 04:39:10', 'Ulichnoye', ''),
(6, 'CO00002', '', 48, 'Léandre', 'Payne', '2015-03-18 01:01:11', 'Quán Hành', ''),
(7, 'CO00002', '', 47, 'Dafnée', 'Garcia', '2014-10-16 19:39:28', 'Redange-sur-Attert', ''),
(8, 'CO00002', '', 6, 'Réservés', 'Smith', '2014-08-22 21:21:15', 'Machala', ''),
(9, 'CO00002', '', 44, 'Tán', 'Wood', '2015-04-18 10:00:59', 'Grand Bois', ''),
(10, 'CO00002', '', 23, 'Estée', 'Hayes', '2015-02-16 17:03:40', 'Dawuhanmangli', ''),
(11, 'CO00003', '', 22, 'Queffelec', 'Sanders', '2014-10-17 16:00:14', 'Teeli', ''),
(12, 'CO00003', '', 25, 'Vénus', 'Hanson', '2014-06-24 13:06:09', 'Ungheni', ''),
(13, 'CO00003', '', 42, 'Hélène', 'Dean', '2014-05-29 19:50:38', 'Castelo', ''),
(14, 'CO00003', '', 16, 'Maëlann', 'Harvey', '2014-12-31 06:27:43', 'Aguadulce', ''),
(15, 'CO00003', '', 2, 'Méthode', 'Thompson', '2015-04-06 09:09:55', 'Dam?vand', ''),
(16, 'CO00004', '', 33, 'Joséphine', 'Fox', '2015-01-13 21:47:48', 'Shangcunba', ''),
(17, 'CO00004', '', 24, 'Marie-josée', 'Palmer', '2014-07-04 15:41:45', 'Keluke', ''),
(18, 'CO00004', '', 33, 'Aimée', 'Kennedy', '2015-03-20 17:38:59', 'Koronowo', ''),
(19, 'CO00004', '', 7, 'Médiamass', 'Sanders', '2014-11-05 02:31:49', 'D?bowiec', ''),
(20, 'CO00004', '', 42, 'Naéva', 'Nguyen', '2014-10-15 02:00:01', 'D?bnica Kaszubska', ''),
(22, 'CO00001', 'c682cbf4-915d-445f-9', 21, 'Rouiller', 'Josselin', '2015-10-21 00:00:00', 'Rennes', 'Ceci est un test de commentaire avec l\'apostrophe'),
(23, 'CO00001', 'c682cbf4-915d-445f-9f21-02b3883bbb2c', 25, 'Lecallec', 'Jérome', '2015-07-18 00:00:00', 'Loc', 'connard je t\'ai bien iqué'),
(24, 'CO00003', 'c682cbf4-915d-445f-9f21-02b3883bbb2i', 37, 'Lefahouet', 'Richard', '2020-09-10 00:00:00', 'test', 'test test');

-- --------------------------------------------------------

--
-- Structure de la table `zipcode`
--

DROP TABLE IF EXISTS `zipcode`;
CREATE TABLE IF NOT EXISTS `zipcode` (
  `sysCreatedDate` datetime DEFAULT NULL,
  `sysCreatedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysModifiedDate` datetime DEFAULT NULL,
  `sysModifiedUser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NotesClear` longtext COLLATE utf8_unicode_ci,
  `Notes` longtext COLLATE utf8_unicode_ci,
  `Id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `ZipCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `City` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `StateId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountryIsoCode` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `sysRecordVersion` int(11) DEFAULT '0',
  `sysRecordVersionId` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la vue `view_visites_clients`
--
DROP TABLE IF EXISTS `view_visites_clients`;

DROP VIEW IF EXISTS `view_visites_clients`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_visites_clients`  AS  select distinct `cu`.`Id` AS `Id`,`cu`.`ColleagueId` AS `IdCommercial`,`co`.`Id` AS `IdContact`,`cu`.`Name` AS `Entreprise`,`cu`.`MainDeliveryAddress_Address1` AS `Adresse`,`cu`.`MainDeliveryAddress_ZipCode` AS `CodePostal`,`cu`.`MainDeliveryAddress_City` AS `Ville`,`co`.`ContactFields_Name` AS `Nom`,`co`.`ContactFields_FirstName` AS `Prenom`,`co`.`ContactFields_Phone` AS `TelephoneFixe`,`co`.`ContactFields_CellPhone` AS `TelephoneMobile` from (`customer` `cu` join `contact` `co`) where (`cu`.`Id` = `co`.`AssociatedCustomerId`) ;

-- --------------------------------------------------------

--
-- Structure de la vue `view_visites_commerciaux`
--
DROP TABLE IF EXISTS `view_visites_commerciaux`;

DROP VIEW IF EXISTS `view_visites_commerciaux`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_visites_commerciaux`  AS  select `colleague`.`Id` AS `Id`,`colleague`.`Contact_Civility` AS `Civilite`,`colleague`.`Contact_Name` AS `Nom`,`colleague`.`Contact_FirstName` AS `Prenom`,`colleague`.`Contact_Phone` AS `TelephoneFixe`,`colleague`.`Contact_CellPhone` AS `TelephoneMobile`,`colleague`.`Contact_Email` AS `Email` from `colleague` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
