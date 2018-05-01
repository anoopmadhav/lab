-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 09:28 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chem_lab_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `chemicals`
--

CREATE TABLE `chemicals` (
  `id` int(11) NOT NULL,
  `name` varchar(41) DEFAULT NULL,
  `company` varchar(35) DEFAULT NULL,
  `packing_size` varchar(19) DEFAULT NULL,
  `amount_left` varchar(11) DEFAULT NULL,
  `critical_amount` varchar(15) DEFAULT NULL,
  `location` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemicals`
--

INSERT INTO `chemicals` (`id`, `name`, `company`, `packing_size`, `amount_left`, `critical_amount`, `location`) VALUES
(341, 'oxytocin', 'none', '250 gm', '20', '50', '3110'),
(2, '1,10 - Phenanthroline', 'Spectrochem', '25 gm', '', '', ''),
(3, '1,4-DIOXANE FOR HPLC', 'SPECTROCHEM', '1 L', '', '', ''),
(4, '1-ACETYLNAPHTHALENE', 'SD fine', '250 G', '', '', ''),
(5, '1-NAPHTHALDEHYDE', 'SD fine', '100 G', '', '', ''),
(6, '1-NAPHTHOIC ACID', 'Sigma-Aldrich', '25 G', '', '', ''),
(7, '1-Propanol', 'Molychem', '500 mL', '', '', ''),
(8, '2,2\'- Bipyridine', 'Molychem', '25 g', '', '', ''),
(9, '2,4 Dinitro Phenyle hydrazine', 'SRL', '100g', '', '', ''),
(10, '2,4-DICHLOROBENZOIC ACID', 'Molychem', '500G', '', '', ''),
(11, '2,4-DINITROCHLOROBENZENE', 'S D FINE', '500 G', '', '', ''),
(12, '2,4-DINITROPHENYL HYDRAZINE', 'Molychem', '100 G ', '', '', ''),
(13, '2-Aminophenol', 'LOBA chemie', '100 g', '', '', ''),
(14, '2-CHLOROPHENOL', 'Loba Chemie', '500 mL', '', '', ''),
(15, '2-FUROIC ACID', 'SRL', '100 G', '', '', ''),
(16, '2-Hydroxy benzaldehyde', 'SD Fine', '250ml', '', '', ''),
(17, '2-HYDROXY BENZALDEHYDE', 'SDFCL', '250ML', '', '', ''),
(18, '2-Hydroxybenzoic acid (Salicylic acid)', 'Molychem', '500 g', '', '', ''),
(19, '2-METHOXYBENZOIC ACID', 'Spectrochem', '100 G', '', '', ''),
(20, '2-NAPHTHOL', 'Molychem', '500 G ', '', '', ''),
(21, '2-PROPANOL', 'SPECTROCHEM', '1 L', '', '', ''),
(22, '3,5-DINITROBENZOIC ACID AR', 'SD Fine', '100g', '', '', ''),
(23, '4-(Dimethylamino)cinnamaldehyde', 'SRL', 'D4506-5 g', '', '', ''),
(24, '4-AMINOBENZOIC ACID', 'SPECTROCHEM', '250 g', '', '', ''),
(25, '4-Aminophenol ', 'Molychem', '250g', '', '', ''),
(26, '4-NITROCINNAMIC ACID', 'Spectrrochem', '25 G', '', '', ''),
(27, '4-Nitrophenol, 99 %', 'Molychem', '100 g', '', '', ''),
(28, '4-NITROTOLUENE', 'SD Fine', '500g', '', '', ''),
(29, '4-PHENYLBUTYRIC ACID', 'Sigma Aldrich', '25 G', '', '', ''),
(30, '6-BROMO-2-NAPHTHOIC ACID', 'SRL', '25 G', '', '', ''),
(31, '8-Hydoxyquinoline', 'Molychem', '100 g', '', '', ''),
(32, 'ACETALDEHYDE', 'S D FINE', '500 ML', '', '', ''),
(33, 'Acetic acid', 'SRL', '500ml', '', '', ''),
(34, 'Acetic Acid, 99 %, Glacial ', 'Molychem', '500 mL', '', '', ''),
(35, 'ACETIC ANHYDRIDE', 'S D FINE', '500 ML', '', '', ''),
(36, 'Acetone', 'SRL', '2.5lts', '', '', ''),
(37, 'ACETONE', 'Merck', '25 L', '', '', ''),
(38, 'Acetone, 99 %, ', 'Molychem', '2.5 L ', '', '', ''),
(39, 'Acetonitrile', 'Fisher Scientific', '4 L', '', '', ''),
(40, 'ACETONITRILE HPLC', 'SPECTROCHEM', '2.5 lit', '', '', ''),
(41, 'Acetonitrile HPLC Grade', 'SD Fine', '500 mL', '', '', ''),
(42, 'ACETOPHENONE', 'SRL', '500 ML', '', '', ''),
(43, 'ACETYL CHLORIDE', 'Spectrochem ', '500 ML', '', '', ''),
(44, 'Aluminium Potassium Sulfate dodecahydrate', 'SRL', '500 g', '', '', ''),
(45, 'ALUMINIUM SULPHATE, AR', 'MOLYCHEM', '500 g', '', '', ''),
(46, 'ALUMINUM HYDROXIDE', 'MERCK', '1kg', '', '', ''),
(47, 'Aluminum Oxide,  Basic', 'MOLYCHEM', '500 g', '', '', ''),
(48, 'Aluminum Oxide,  Neutral', 'MOLYCHEM', '500 g', '', '', ''),
(49, 'Amberlite IR 120H', 'SD Fine', '1 kg', '', '', ''),
(50, 'Amberlite IRA-404 Cl', 'SD Fine', '1 kg', '', '', ''),
(51, 'Ammonia 25 % Aq. solution', 'SD Fine', '500 ml', '', '', ''),
(52, 'Ammonia Solution', 'SRL', '500ml', '', '', ''),
(53, 'Ammonium Chloride', 'SRL', '500g', '', '', ''),
(54, 'AMMONIUM CHLORIDE', 'S D FINE', '500 G', '', '', ''),
(55, 'Ammonium Chloride', 'SRL', '500 G', '', '', ''),
(56, 'Ammonium Ferric Sulphate, AR', 'SRL', '500 g', '', '', ''),
(57, 'Ammonium Ferrous sulfate hexahydrate, AR', 'SRL', '500 g', '', '', ''),
(58, 'Ammonium Hydroxide 25%', 'Merck', '50 mL', '', '', ''),
(59, 'AMMONIUM MOLYBDATE', 'spectrochem ', '100 G', '', '', ''),
(60, 'Ammonium Molybdate tetrahydrate, 98 %', 'SRL', '100 g', '', '', ''),
(61, 'Ammonium Nickel sulfate hexahydrate', 'SD Fine', '500 g', '', '', ''),
(62, 'Ammonium Oxalate Monohydrate, 98 %', 'SRL', '500 g', '', '', ''),
(63, 'Ammonium Thicyanate, 98 %', 'SRL', '500g', '', '', ''),
(64, 'Aniline', 'SD Fine', '500 mL', '', '', ''),
(65, 'ANTHRACENE', 'SD fine', '100 G', '', '', ''),
(66, 'APCI Tuning mix', 'Agilent', '100 mL', '', '', ''),
(67, 'Barium chloride dihydrate', 'SRL', '500 g', '', '', ''),
(68, 'Barium nitrate', 'SRL', '500 g', '', '', ''),
(69, 'BENEDICT\'S REAGENT', 'SRL', '500 ML', '', '', ''),
(70, 'Benzaldehyde', 'SRL', '500ml', '', '', ''),
(71, 'BENZAMIDE', 'SRL', '500 G', '', '', ''),
(72, 'BENZENESULFONYL CHLORIDE', 'Spectrochem ', '500 ML', '', '', ''),
(73, 'BENZIL', 'S D FINE', '250 G', '', '', ''),
(74, 'BENZOPHENONE', 'S D FINE', '500 G', '', '', ''),
(75, 'Beta-cyclodextrin', 'Spectrochem', '100 g', '', '', ''),
(76, 'BIS(2-METHOXYETHYL)ETHER OR DIGLYME', 'Molychem', '500 ML', '', '', ''),
(77, 'BLEACHING POWDER', 'S D FINE', '500 G', '', '', ''),
(78, 'Buffer pH-4', 'SRL', '10tab/pack', '', '', ''),
(79, 'Buffer tablets pH 4', 'SRL', 'Bottle (20 tablets)', '', '', ''),
(80, 'Buffer tablets pH 7.0', 'MOLYCHEM', 'Bottle (10 tablets)', '', '', ''),
(81, 'Buffer tablets pH 9.2', 'MOLYCHEM', 'Bottle (10 tablets)', '', '', ''),
(82, 'Calcium Carbonate', 'SRL', '500ml', '', '', ''),
(83, 'Calcium Carbonate, 98 %', 'SRL', '500 g', '', '', ''),
(84, 'Calcium Chloride', 'SRL', '500ml', '', '', ''),
(85, 'Calcium Chloride dihydrate', 'SPECTROCHEM', '500 g', '', '', ''),
(86, 'Calcium Fluoride 98 %', 'SRL', '500 g', '', '', ''),
(87, 'CALCIUM SULPHATE', 'LOBA chemie', '500g', '', '', ''),
(88, 'CARBON DISULFIDE', 'S D FINE', '500 ML', '', '', ''),
(89, 'CARBON TETRACHLORIDE', 'MOLYCHEM', '500 mL', '', '', ''),
(90, 'Catechol', 'SDFCL', '500 g', '', '', ''),
(91, 'CERRIC AMMONIUM NITRATE ', 'SRL', '100 G', '', '', ''),
(92, 'Chitin, purified flakes', 'SDFCL', '100g', '', '', ''),
(93, 'CHLORINETEST REAGENT', 'Qualikems', '100 ML', '', '', ''),
(94, 'Chloroauric Acid', '1 g', '1 g', '', '', ''),
(95, 'Chloroform, 98 %', 'Molychem', '2.5 L', '', '', ''),
(96, 'CHLOROFORM, HPLC', 'SPECTROCHEM', '2.5 L', '', '', ''),
(97, 'Chloroform-D + 0.3% TMS', 'SIGMA', '100G', '', '', ''),
(98, 'Chloroform-D + 0.3% TMS', 'SYNMR ', '100G', '', '', ''),
(99, 'Citric acid', 'SRL', '500ml', '', '', ''),
(100, 'Cobalt (II) chloride hexahydrate', 'SRL', '500 g', '', '', ''),
(101, 'Cobalt (II) sulfate 7-hydrate', 'SRL', '500 g', '', '', ''),
(102, 'COBALT NITRATE (Hexahydrate)', 'SRL', '500 G', '', '', ''),
(103, 'Copper acetate (Cu(OAc)2.H2O)', 'SRL', '500g', '', '', ''),
(104, 'Copper Sulphate', 'SRL', '500g', '', '', ''),
(105, 'Copper(II) nitrate trihydrate, 98 %', 'SRL', '500 g', '', '', ''),
(106, 'Copper(II) sulfate pentahydrate, 98 %', 'SRL', '500 g', '', '', ''),
(107, 'Copper(II) sulfate pentahydrate, 98 %', 'MOLYCHEM', '500 g', '', '', ''),
(108, 'CTAB', 'SD Fine', '500 g', '', '', ''),
(109, 'CYCLOHEXANONE', 'Molychem', '500 ML', '', '', ''),
(110, 'CYCLOHEXANONE', 'Molychem', '100 ML(500 ML)', '', '', ''),
(111, 'Dextrose (D-Glucose)', 'MOLYCHEM', '500 g', '', '', ''),
(112, 'D-Galactose', 'SPECTROCHEM', '25g', '', '', ''),
(113, 'D-GLUCOSE', 'SRL', '500 G', '', '', ''),
(114, 'Dichloromethane', 'SRL', '2.5lts', '', '', ''),
(115, 'DICHLOROMETHANE', 'Merck', '25 L', '', '', ''),
(116, 'Dichloromethane (HPLC)', 'SPECTROCHEM', '1 L', '', '', ''),
(117, 'Diethyl ether', 'SD Fine', '500ml', '', '', ''),
(118, 'DIETHYL ETHER', 'Molychem', '500 ML', '', '', ''),
(119, 'DIETHYL KETONE', 'SRL', '500 ML', '', '', ''),
(120, 'DIETHYLAMINE', 'Spectrochem', '500 ML', '', '', ''),
(121, 'Dimethyl Sulphoxide-d6', 'SIGMA', '25G', '', '', ''),
(122, 'Dimethyl Sulphoxide-d6 5X10ML', 'SYNMR ', '50ML', '', '', ''),
(123, 'Dimethylglyoxime', 'Molychem', '100 g', '', '', ''),
(124, 'DIOCTYL SULFOSUCCINATE SODIUM SALT', 'SDFCL', '500g', '', '', ''),
(125, 'DIPHENYLAMINE', 'SD Fine', '500 G', '', '', ''),
(126, 'DL-TARTARIC ACID', 'Molychem', '500 G', '', '', ''),
(127, 'Dodecanethiol', 'Spectrochem', '100 g', '', '', ''),
(128, 'D-Ribose', 'SPECTROCHEM', '25 g', '', '', ''),
(129, 'EBT', 'SRL', '25g', '', '', ''),
(130, 'EDTA di sodium salt', 'SRL', '500g', '', '', ''),
(131, 'EDTA disodium salt dihydrate, 98 %', 'SRL', '500 g', '', '', ''),
(132, 'ERICHROME BLACK T ', 'SRL', '100 g', '', '', ''),
(133, 'Ethanol', 'China (Changshu yangyuan chemicals)', '500 ml', '', '', ''),
(134, 'ETHYL 4-NITROBENZOATE', 'Sigma-Aldrich', '100 G', '', '', ''),
(135, 'Ethyl Acetate', 'SRL', '2.5lts', '', '', ''),
(136, 'ETHYL ACETOACETATE', 'S D FINE', '500 ML', '', '', ''),
(137, 'ETHYL ACETOACETATE, 98%', 'SRL', '500 ML', '', '', ''),
(138, 'Ethyl Benzoate', 'SDFine', '500 ml', '', '', ''),
(139, 'ETHYL P-HYDROXYBENZOATE', 'S D FINE', '500 G', '', '', ''),
(140, 'Ethylacetate', 'SRL', '2.5lts', '', '', ''),
(141, 'ETHYLBENZOATE', 'SD Fine', '500g', '', '', ''),
(142, 'ETHYLENE GLYCOL', 'Loba Chemie', '500 ML', '', '', ''),
(143, 'Ethylenediamine', 'SD Fine', '500ml', '', '', ''),
(144, 'Ethylenediammine, 98 %', 'Spectrochem', '500ml', '', '', ''),
(145, 'Fehling A', 'SRL', '500ml', '', '', ''),
(146, 'Fehling B', 'SRL', '500ml', '', '', ''),
(147, 'FEHLING SOLUTION A', 'S D FINE', '500 mL', '', '', ''),
(148, 'FEHLING SOLUTION B', 'S D FINE', '500 mL', '', '', ''),
(149, 'FERRIC CHLORIDE', 'SRL', '500 G', '', '', ''),
(150, 'Ferric nitrate', 'Sigma Aldrich', '500 g', '', '', ''),
(151, 'Ferric sulphate', 'Molychem', '100 g', '', '', ''),
(152, 'FERRIC SULPHATE', 'MOLYCHEM', '500g', '', '', ''),
(153, 'Ferrous Sulfide Sticks,  pyrite', 'Sigma Aldrich', '1 kg', '', '', ''),
(154, 'FERROUS SULPHATE', 'SRL', '500 G', '', '', ''),
(155, 'Ferrous sulphate', 'Molychem', '100 g', '', '', ''),
(156, 'Formic Acid', 'Merck', '50 mL', '', '', ''),
(157, 'FORMIC ACID 98%', 'SPECTROCHEM', '500 ml', '', '', ''),
(158, 'Fructose', 'SRL', '500g', '', '', ''),
(159, 'FUMARIC ACID', 'SRL', '500 g ', '', '', ''),
(160, 'FURFURALALDEHYDE', 'Molychem', '500 ML', '', '', ''),
(161, 'Gelatin', 'Merck', '100 g', '', '', ''),
(162, 'Glucose', 'SD Fine', '500g', '', '', ''),
(163, 'Glycerol,AR', 'Molychem', '500 mL', '', '', ''),
(164, 'GLYCINE', 'Spectrochem', '100 G', '', '', ''),
(165, 'Gold Chloride trihydrate (HAuCl4, 3H2O)', 'alfa aesar', '1 g', '', '', ''),
(166, 'GUAIACOL (2-METHOXYPHENOL)', 'Spectrochem', '250 G', '', '', ''),
(167, 'Hexamethylenetetraamine', 'SRL', '100 g', '', '', ''),
(168, 'Hexane', 'SD Fine', '2.5lts', '', '', ''),
(169, 'HEXANE', 'Merck', '25 L', '', '', ''),
(170, 'Hydrochloric acid', 'SD Fine', '2.5 lts', '', '', ''),
(171, 'HYDROCHLORIC ACID (AR)', 'Molychem', '2.5 L', '', '', ''),
(172, 'Hydrogen peroxide 30%', 'Molychem', '500 mL', '', '', ''),
(173, 'Hydroquinone', 'SRL', '500 gm', '', '', ''),
(174, 'Iodine', 'SRL', '100g', '', '', ''),
(175, 'Iron (III) Chloride, Anhydrous', 'Molychem', '500 g', '', '', ''),
(176, 'Iron(II) Sulfate heptahydrate, 95%', 'SRL', '500 g', '', '', ''),
(177, 'Iron(II) Sulfate heptahydrate, 95%', 'SDFCL', '500 g', '', '', ''),
(178, 'Iron(III) sulfate hydrate', 'Sigma Aldrich', '500 g', '', '', ''),
(179, 'iso-AMYL ALCOHOL', 'SRL', '500 ML', '', '', ''),
(180, 'Isopropyl alcohol', 'Merck', '2.5 L', '', '', ''),
(181, 'L-Ascorbic Acid', 'Molychem', '100 g', '', '', ''),
(182, 'LEAD ACETATE', 'S D FINE', '500 G', '', '', ''),
(183, 'L-GLUTAMINE', 'SPECTROCHEM', '25g', '', '', ''),
(184, 'L-GLYCINE ', 'SPECTROCHEM', '500 g', '', '', ''),
(185, 'L-Histidine', 'SPECTROCHEM', '25 g', '', '', ''),
(186, 'L-PHENYL ALANINE', 'SPECTROCHEM', '25g', '', '', ''),
(187, 'L-Tryptophan', 'SPECTROCHEM', '25 g', '', '', ''),
(188, 'L-Tyrosine', 'SPECTROCHEM', '25 g', '', '', ''),
(189, 'Luminol', 'SRL', '5 g', '', '', ''),
(190, 'L-Valine', 'SPECTROCHEM', '25 g', '', '', ''),
(191, 'Magnesium nitrate hexahydrate', 'SRL', '500 g', '', '', ''),
(192, 'MALEIC ANHYDRIDE', 'Molychem', '500g', '', '', ''),
(193, 'Manganese(II) Chloride tetrahydrate, 98 %', 'SRL', '500 g', '', '', ''),
(194, 'm-BROMOBENZOIC ACID', 'SRL', '100 G', '', '', ''),
(195, 'm-CHLOROBENZOIC ACID', 'SRL', '100 G', '', '', ''),
(196, 'Mercury (II) Chloride', 'Merck', '250 g', '', '', ''),
(197, 'Methanol', 'SD Fine', '2.5lts', '', '', ''),
(198, 'METHANOL', 'S D FINE', '2.5 L', '', '', ''),
(199, 'Methanol', 'Merck', '2.5 L', '', '', ''),
(200, 'METHANOL FOR UV SPECTROSCOPY', 'SPECTROCHEM', '(1000 ml)', '', '', ''),
(201, 'METHANOL HPLC GRADE', 'SPECTROCHEM', '2.5 lit', '', '', ''),
(202, 'METHYL BENZOATE', 'SD fine', '500 ML', '', '', ''),
(203, 'Methyl red sodium salt', 'Sigma Aldrich', '25 g', '', '', ''),
(204, 'METHYL SALICYLATE', 'SRL', '500 ML', '', '', ''),
(205, 'm-NITROBENZALDEHYDE', 'SRL', '100 G', '', '', ''),
(206, 'm-NITROBENZOIC ACID', 'S D FINE', '100 G', '', '', ''),
(207, 'm-TOLUIC ACID', 'S D FINE', '500 G', '', '', ''),
(208, 'm-TOLUIDINE', 'SD fine', '500 ML', '', '', ''),
(209, 'Murexide', 'Molychem', '25 g', '', '', ''),
(210, 'N,N-DIMETHYL FORMAMIDE', 'SPECTROCHEM', '1 L', '', '', ''),
(211, 'NAPHTHALENE', 'Spectrochem', '500 G ', '', '', ''),
(212, 'n-BUTYL ALCOHOL', 'SPECTROCHEM', '1 L', '', '', ''),
(213, 'NESSLER REAGENT', 'SRL', '100 ML', '', '', ''),
(214, 'N-HEXANE FOR UV SPECTROSCOPY', 'SPECTROCHEM', '(1000 ml)', '', '', ''),
(215, 'N-HEXANE HPLC GRADE', 'SPECTROCHEM', '1 L', '', '', ''),
(216, 'NICKEL CHLORIDE', 'S D FINE', '500 G', '', '', ''),
(217, 'Nickel sulfate ', 'Sigma Aldrich', '500 g', '', '', ''),
(218, 'Nickel(II) Chloride hexahydrate, 98 %', 'SRL', '500 g', '', '', ''),
(219, 'NINHYDRIN', 'SPECTROCHEM', '10g', '', '', ''),
(220, 'NITRIC ACID', 'SD fine', '500 ML', '', '', ''),
(221, 'NITROBENZENE', 'Molychem', '500 ML', '', '', ''),
(222, 'o-AMINOACETOPHENONE', 'Loba Chemie', '100 G', '', '', ''),
(223, 'o-CRESOL', 'Molychem', '500 G', '', '', ''),
(224, 'Oil for saponification experiment', '', '5lit', '', '', ''),
(225, 'o-IODOBENZOIC ACID', 'Spectrrochem', '100 G', '', '', ''),
(226, 'o-PHENYL DIAMINE', 'Molychem', '100 G', '', '', ''),
(227, 'Orthophosphoric Acid, 86 %', 'Molychem', '500 ml', '', '', ''),
(228, 'Oxalic acid', 'SD Fine', '1 kg', '', '', ''),
(229, 'Oxalic Acid Dihydrate, AR', 'SRL', '100 g', '', '', ''),
(230, 'p-ANISALDEHYDE', 'Spectrochem', '250 ML', '', '', ''),
(231, 'PARAFFIN OIL LIGHT', 'Molychem', '500 ML', '', '', ''),
(232, 'p-BROMOANILINE', 'Avra', '500 G', '', '', ''),
(233, 'p-CHLOROANILINE', 'SD fine', '500 G', '', '', ''),
(234, 'p-CHLOROBENZALDEHYDE', 'SRL', '100 G ', '', '', ''),
(235, 'p-CHLOROBENZOIC ACID', 'SRL', '500 g ', '', '', ''),
(236, 'p-CRESOL', 'SRL', '500 G', '', '', ''),
(237, 'PHENOL', 'Molychem', '500 ML', '', '', ''),
(238, 'Phenolphthalein', 'SD Fine', '125ml', '', '', ''),
(239, 'Phenolphthalein indicator', 'SD Fine', '125 ml', '', '', ''),
(240, 'PHENYL HYDRAZINE', 'SRL', '100 G', '', '', ''),
(241, 'PHTHALIC ANHYDRIDE', 'SRL', '500 G', '', '', ''),
(242, 'p-HYDROXYACETOPHENONE', 'SRL', '250 G', '', '', ''),
(243, 'p-HYDROXYBENZALDEHYDE', 'SRL', '100 G', '', '', ''),
(244, 'PIPERIDINE', 'Spectrochem', '250 Ml', '', '', ''),
(245, 'p-NITROBENZALDEHYDE', 'Spectrochem', '100 G', '', '', ''),
(246, 'p-NITROBENZOIC ACID', 'Molychem', '500 G', '', '', ''),
(247, 'p-NITROBENZYL ALCOHOL', 'SD Fine', '100 G', '', '', ''),
(248, 'p-NITROPHTHALIC ACID', 'S D FINE', '100 G', '', '', ''),
(249, 'Polyvinylpyrrolidone pure ', 'Spectrochem', '100 g', '', '', ''),
(250, 'Potassium Acetate, 98 %', 'SRL', '500 g', '', '', ''),
(251, 'POTASSIUM BROMIDE FOR IR', 'MOLYCHEM', '100g', '', '', ''),
(252, 'Potassium Bromide, 99 %', 'Molychem', '500 g', '', '', ''),
(253, 'Potassium Carbonate, 98 %', 'SRL', '500 g', '', '', ''),
(254, 'Potassium Chloride', 'SD Fine', '500g', '', '', ''),
(255, 'Potassium chloride', 'SRL', '500 g', '', '', ''),
(256, 'POTASSIUM DICHROMATE', 'Molychem', '500 G', '', '', ''),
(257, 'Potassium dichromate, AR', 'SRL', '500 g', '', '', ''),
(258, 'Potassium dihydrogen phosphate', 'SRL', '500 g', '', '', ''),
(259, 'Potassium ferricyanide, LR', 'SRL', '500 g', '', '', ''),
(260, 'POTASSIUM FERROCYANIDE', 'Molychem', '500 G', '', '', ''),
(261, 'Potassium ferrocyanide trihydrate, AR', 'SRL', '500 g', '', '', ''),
(262, 'Potassium Fluoride', 'SRL', '500 g', '', '', ''),
(263, 'Potassium Hexacyanoferrate K3Fe(CN)6', 'Molychem', '500g', '', '', ''),
(264, 'Potassium hydroxide', 'SD Fine', '500g', '', '', ''),
(265, 'POTASSIUM HYDROXIDE', 'Molychem', '500 G', '', '', ''),
(266, 'POTASSIUM IODATE', 'Molychem', '100 G', '', '', ''),
(267, 'Potassium Iodide', 'SRL', '500g', '', '', ''),
(268, 'Potassium Oxalate', 'SRL', '500g', '', '', ''),
(269, 'POTASSIUM PERMANGANATE', 'S D FINE', '500 G', '', '', ''),
(270, 'Potassium phosphate dibasic', 'MOLYCHEM', '500 g', '', '', ''),
(271, 'Potassium sulphate, 99 %', 'SRL', '500 g', '', '', ''),
(272, 'Potassium Thiocyanate', 'SRL', '500g', '', '', ''),
(273, 'PROPAN-2-OL', 'Spectrochem', '1000 ML', '', '', ''),
(274, 'PYRIDINE', 'SD fine', '250 ML', '', '', ''),
(275, 'QUININE SULPHATE dihydrate', 'LOBA chemie', '25 g', '', '', ''),
(276, 'Resorcinol', 'SD Fine', '250gm', '', '', ''),
(277, 'Riboflavin', 'MOLYCHEM', '25 g', '', '', ''),
(278, 'SALICYLALDEHYDE', 'SD Fine', '250ML', '', '', ''),
(279, 'SCHIFF\'S REAGENT', 'Molychem', '500 ML', '', '', ''),
(280, 'SILICA GEL', 'S D FINE', '500 G', '', '', ''),
(281, 'SILICONE GREASE HIGH VACUUM', 'MOLYCHEM', '50 g', '', '', ''),
(282, 'Silicone oil', 'Molychem', '2.5 L', '', '', ''),
(283, 'Silver nitrate', 'SRL', '25g', '', '', ''),
(284, 'SODIUM ACETATE', 'S D FINE', '500 G', '', '', ''),
(285, 'Sodium bis (2-ethylhexyl) sulfosuccinate', 'sdfine', '500 g', '', '', ''),
(286, 'SODIUM BISULPHITE', 'S D FINE', '500 G', '', '', ''),
(287, 'SODIUM BOROHYDRIDE', 'Molychem', '100 G ', '', '', ''),
(288, 'Sodium Carbonate', 'SD Fine', '500g', '', '', ''),
(289, 'SODIUM CARBONATE', 'S D FINE', '500G', '', '', ''),
(290, 'Sodium carbonate monohydrate', 'SRL', '500 g', '', '', ''),
(291, 'Sodium Chloride, AR', 'SRL', '5 kg', '', '', ''),
(292, 'Sodium citrate dihydrate, 99 % ', 'SRL', '500 g', '', '', ''),
(293, 'Sodium diphenylamine sulfonate', 'SRL', '25 g', '', '', ''),
(294, 'Sodium Dodecylsulphate (SDS)', 'alfa aesar', '500 g', '', '', ''),
(295, 'Sodium hydrogen Carbonate', 'SRL', '500g', '', '', ''),
(296, 'Sodium Hydroxide', 'SRL', '500g', '', '', ''),
(297, 'SODIUM HYDROXIDE', 'S D FINE', '500 G', '', '', ''),
(298, 'SODIUM METAL', 'Molychem', '500 G', '', '', ''),
(299, 'Sodium Nitrate, 99 %', 'Molychem', '500 g', '', '', ''),
(300, 'SODIUM NITRITE', 'S D FINE', '500 G', '', '', ''),
(301, 'Sodium sulfate anhydrous', 'SDFCL', '1 kg', '', '', ''),
(302, 'SODIUM SULPHATE, ANHYD', 'S D FINE', '500 G', '', '', ''),
(303, 'Sodium Thiosulfate pentahydrate', 'Molychem', '500 g', '', '', ''),
(304, 'Sodium thiosulphate', 'SRL', '500g', '', '', ''),
(305, 'Sodium Tungstate dihydrate', 'Molychem', '100 g', '', '', ''),
(306, 'Starch', 'SRL', '500g', '', '', ''),
(307, 'Starch soluble AR', 'SRL', '100 g', '', '', ''),
(308, 'Succinic acid', 'SRL', '500g', '', '', ''),
(309, 'Sucrose', 'SRL', '500g', '', '', ''),
(310, 'Sulphuric acid', 'SD Fine', '2.5lts', '', '', ''),
(311, 'SULPHURIC ACID', 'Molychem', '2.5 L', '', '', ''),
(312, 'Tartaric acid', 'SD Fine', '500g', '', '', ''),
(313, 'TERT-BUTYL METHYL ETHER', 'Molychem', '500 ML', '', '', ''),
(314, 'Tetrabutylammonium bromide, 98 %', 'SRL', '100G', '', '', ''),
(315, 'Tetraoctylaammonium bromide', 'Sigma Aldrich', '25 g', '', '', ''),
(316, 'THIAMINE HYDROCHLORIDE', 'S D FINE', '100 GM', '', '', ''),
(317, 'THIN LAYER CHROMATOGRAPHY PLATES', 'Merck life sciences', 'Pkt', '', '', ''),
(318, 'THIOUREA', 'Spectrochem', '500 G', '', '', ''),
(319, 'Tin (II) Chloride', 'Merck', '100 g', '', '', ''),
(320, 'TIN METAL GRANULATED', 'SD Fine', '100 G', '', '', ''),
(321, 'TOLUENE', 'SRL', '500 ML', '', '', ''),
(322, 'Toluene, 99 %', 'Molychem', '2.5 L', '', '', ''),
(323, 'TRANS-CINNAMIC ACID', 'SRL', '1000 G ', '', '', ''),
(324, 'TRIETHYL AMINE', 'Molychem', '500 ML', '', '', ''),
(325, 'Urea, AR', 'Molychem', '500 g', '', '', ''),
(326, 'VANILLIC ACID', 'Spectrrochem', '25 G', '', '', ''),
(327, 'Vitamin C (tablets)', 'Spectrochem', '100g', '', '', ''),
(328, 'Water', 'Merck', '2.5 L', '', '', ''),
(329, 'Water for HPLC', 'SPECTROCHEM', '1 L', '', '', ''),
(330, 'XYLENE (SULPHUR FREE)', 'Molychem', '500 ML', '', '', ''),
(331, 'Zinc Acetate', 'SRL', '500 g', '', '', ''),
(332, 'ZINC CHLORIDE', 'MOLYCHEM', '500 g', '', '', ''),
(333, 'ZINC METAL dust', 'SD Fine', '500g', '', '', ''),
(334, 'Zinc nitrate', 'SRL', '500 g', '', '', ''),
(335, 'Zinc Sulfate heptahydrate', 'MOLYCHEM', '500 g', NULL, NULL, NULL),
(337, 'anoop', 'djsak f', '1 liter', '5', '3', '2202'),
(338, 'ask', 'hgl ', '20', '2', '12', '3201'),
(339, 'adf', 'adf', 'adf', '', '', ''),
(340, 'dsaf', 'adf', 'adf', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'lab_assistant', 'lab_assistant', 'lab_assistant'),
(2, 'lab_admin', 'lab_admin', 'lab_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chemicals`
--
ALTER TABLE `chemicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chemicals`
--
ALTER TABLE `chemicals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
