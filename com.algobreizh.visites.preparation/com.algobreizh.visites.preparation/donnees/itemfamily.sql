-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 02 Avril 2015 à 06:13
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
-- Contenu de la table `itemfamily`
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
