-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 10:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enaira`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `address_type`
--

CREATE TABLE `address_type` (
  `id` int(11) NOT NULL,
  `addressID` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `amount`
--

CREATE TABLE `amount` (
  `id` int(11) NOT NULL,
  `figure` float NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `base_conversion`
--

CREATE TABLE `base_conversion` (
  `id` int(11) NOT NULL,
  `base_id` int(11) NOT NULL,
  `conversion_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `base_matric`
--

CREATE TABLE `base_matric` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `sart_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_matric`
--

INSERT INTO `base_matric` (`id`, `name`, `sart_date`, `finish_date`, `finish_cause`) VALUES
(1, '', '2022-08-05 11:59:10', '2022-08-05 11:44:03', NULL),
(2, '', '2022-08-05 11:59:10', '2022-08-05 11:44:03', NULL),
(3, '', '2022-08-05 11:59:10', '2022-08-05 11:44:03', NULL),
(4, '', '2022-08-05 11:59:10', '2022-08-05 11:44:03', NULL),
(5, '', '2022-08-05 11:59:10', '2022-08-05 11:44:03', NULL),
(6, 'NGN', '2022-08-05 12:01:04', '2022-08-05 12:01:04', NULL),
(7, 'eNaira', '2022-08-05 12:01:04', '2022-08-05 12:01:04', NULL),
(8, 'USD', '2022-08-05 12:01:04', '2022-08-05 12:01:04', NULL),
(9, 'POUNDS STERLING', '2022-08-05 12:01:04', '2022-08-05 12:01:04', NULL),
(10, 'Euro', '2022-08-05 12:01:04', '2022-08-05 12:01:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bvn`
--

CREATE TABLE `bvn` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `bvn` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_options`
--

CREATE TABLE `category_options` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversion_matric`
--

CREATE TABLE `conversion_matric` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversion_matric`
--

INSERT INTO `conversion_matric` (`id`, `name`, `start_date`, `finish_date`, `finish_cause`) VALUES
(1, 'NGN', '2022-08-05 11:46:34', '2022-08-05 11:46:34', NULL),
(2, 'eNaira', '2022-08-05 11:46:34', '2022-08-05 11:46:34', NULL),
(3, 'USD', '2022-08-05 11:46:34', '2022-08-05 11:46:34', NULL),
(4, 'POUNDS STERLING', '2022-08-05 11:46:34', '2022-08-05 11:46:34', NULL),
(5, 'Euro', '2022-08-05 11:46:34', '2022-08-05 11:46:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

CREATE TABLE `entity` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entity_transaction`
--

CREATE TABLE `entity_transaction` (
  `id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `transaction_ad` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entity_type`
--

CREATE TABLE `entity_type` (
  `id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entity_type_base_conversion`
--

CREATE TABLE `entity_type_base_conversion` (
  `id` int(11) NOT NULL,
  `entity_type_id` int(11) NOT NULL,
  `base_conversion_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `function`
--

CREATE TABLE `function` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender_type`
--

CREATE TABLE `gender_type` (
  `id` int(11) NOT NULL,
  `genderID` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lga`
--

CREATE TABLE `lga` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `lga` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE `name` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `nationality` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nin`
--

CREATE TABLE `nin` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `start_date`, `finish_date`, `finish_cause`) VALUES
(1, 'Bank Channels', '2022-08-05 11:35:15', '2022-08-05 11:35:15', NULL),
(2, 'POS Channels', '2022-08-05 11:35:15', '2022-08-05 11:35:15', NULL),
(3, 'Online Mobile App', '2022-08-05 11:36:12', '2022-08-05 11:36:12', NULL),
(4, 'USSD Channel', '2022-08-05 11:36:12', '2022-08-05 11:36:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_transaction`
--

CREATE TABLE `person_transaction` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person_transaction_base_conversion`
--

CREATE TABLE `person_transaction_base_conversion` (
  `id` int(11) NOT NULL,
  `person_transaction_id` int(11) NOT NULL,
  `base_conversion_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `process`
--

CREATE TABLE `process` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `process_name` varchar(25) NOT NULL,
  `process_daisc` varchar(200) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `role_name` varchar(25) NOT NULL,
  `role_disc` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transation`
--

CREATE TABLE `transation` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transation_amount`
--

CREATE TABLE `transation_amount` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `amount_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transation_option`
--

CREATE TABLE `transation_option` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transation_type`
--

CREATE TABLE `transation_type` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `start_date`, `finish_date`, `finish_cause`) VALUES
(1, 'Deposit', '2022-08-05 11:40:01', '2022-08-05 11:40:01', NULL),
(2, 'Withdrowal', '2022-08-05 11:40:01', '2022-08-05 11:40:01', NULL),
(3, 'Funds Transfer', '2022-08-05 11:40:01', '2022-08-05 11:40:01', NULL),
(4, 'DBMs', '2022-08-05 11:40:01', '2022-08-05 11:40:01', NULL),
(5, 'MFBs', '2022-08-05 11:40:01', '2022-08-05 11:40:01', NULL),
(6, 'Mortgages', '2022-08-05 11:40:01', '2022-08-05 11:40:01', NULL),
(7, 'Investment Banks', '2022-08-05 11:40:01', '2022-08-05 11:40:01', NULL),
(8, 'Male', '2022-08-11 06:29:51', '2022-08-11 06:29:51', NULL),
(9, 'Female', '2022-08-11 06:29:51', '2022-08-11 06:29:51', NULL),
(10, 'Other', '2022-08-11 06:34:25', '2022-08-11 06:34:25', NULL),
(11, 'Prefer Not Say', '2022-08-11 06:34:25', '2022-08-11 06:34:25', NULL),
(12, 'Email Address', '2022-08-11 06:36:21', '2022-08-11 06:36:21', NULL),
(13, 'Physical Address', '2022-08-11 06:36:21', '2022-08-11 06:36:21', NULL),
(14, 'Mobile Number', '2022-08-11 06:58:12', '2022-08-11 06:58:12', NULL),
(15, 'Office Phone Number', '2022-08-11 06:58:12', '2022-08-11 06:58:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `walletaddress`
--

CREATE TABLE `walletaddress` (
  `id` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `entityID` int(11) NOT NULL,
  `walletaddress` varchar(50) NOT NULL,
  `strcrypt` varchar(100) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT current_timestamp(),
  `finish_cause` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `address_type`
--
ALTER TABLE `address_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressID` (`addressID`,`typeID`);

--
-- Indexes for table `amount`
--
ALTER TABLE `amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_conversion`
--
ALTER TABLE `base_conversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_id` (`base_id`),
  ADD KEY `conversion_id` (`conversion_id`);

--
-- Indexes for table `base_matric`
--
ALTER TABLE `base_matric`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bvn`
--
ALTER TABLE `bvn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_options`
--
ALTER TABLE `category_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `conversion_matric`
--
ALTER TABLE `conversion_matric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `start_date` (`start_date`);

--
-- Indexes for table `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entity_transaction`
--
ALTER TABLE `entity_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`),
  ADD KEY `transaction_ad` (`transaction_ad`);

--
-- Indexes for table `entity_type`
--
ALTER TABLE `entity_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `entity_type_base_conversion`
--
ALTER TABLE `entity_type_base_conversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_type_id` (`entity_type_id`),
  ADD KEY `base_conversion_id` (`base_conversion_id`);

--
-- Indexes for table `function`
--
ALTER TABLE `function`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`,`entityID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`);

--
-- Indexes for table `gender_type`
--
ALTER TABLE `gender_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genderID` (`genderID`,`typeID`),
  ADD KEY `typeID` (`typeID`);

--
-- Indexes for table `lga`
--
ALTER TABLE `lga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `personID_2` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `nin`
--
ALTER TABLE `nin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_transaction`
--
ALTER TABLE `person_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `category_id` (`transaction_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `person_transaction_base_conversion`
--
ALTER TABLE `person_transaction_base_conversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_transaction_id` (`person_transaction_id`),
  ADD KEY `base_conversion_id` (`base_conversion_id`);

--
-- Indexes for table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`,`entityID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`);

--
-- Indexes for table `transation`
--
ALTER TABLE `transation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transation_amount`
--
ALTER TABLE `transation_amount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `amount_id` (`amount_id`);

--
-- Indexes for table `transation_option`
--
ALTER TABLE `transation_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `transation_type`
--
ALTER TABLE `transation_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walletaddress`
--
ALTER TABLE `walletaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personID` (`personID`),
  ADD KEY `entityID` (`entityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_type`
--
ALTER TABLE `address_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amount`
--
ALTER TABLE `amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_conversion`
--
ALTER TABLE `base_conversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_matric`
--
ALTER TABLE `base_matric`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bvn`
--
ALTER TABLE `bvn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_options`
--
ALTER TABLE `category_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversion_matric`
--
ALTER TABLE `conversion_matric`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_transaction`
--
ALTER TABLE `entity_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_type`
--
ALTER TABLE `entity_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_type_base_conversion`
--
ALTER TABLE `entity_type_base_conversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `function`
--
ALTER TABLE `function`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender_type`
--
ALTER TABLE `gender_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lga`
--
ALTER TABLE `lga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `name`
--
ALTER TABLE `name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nin`
--
ALTER TABLE `nin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_transaction`
--
ALTER TABLE `person_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_transaction_base_conversion`
--
ALTER TABLE `person_transaction_base_conversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `process`
--
ALTER TABLE `process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transation`
--
ALTER TABLE `transation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transation_amount`
--
ALTER TABLE `transation_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transation_option`
--
ALTER TABLE `transation_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transation_type`
--
ALTER TABLE `transation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `walletaddress`
--
ALTER TABLE `walletaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `base_conversion`
--
ALTER TABLE `base_conversion`
  ADD CONSTRAINT `base_conversion_ibfk_1` FOREIGN KEY (`base_id`) REFERENCES `base_matric` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `base_conversion_ibfk_2` FOREIGN KEY (`conversion_id`) REFERENCES `conversion_matric` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `bvn`
--
ALTER TABLE `bvn`
  ADD CONSTRAINT `bvn_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `category_options`
--
ALTER TABLE `category_options`
  ADD CONSTRAINT `category_options_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `category_options_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `category_type`
--
ALTER TABLE `category_type`
  ADD CONSTRAINT `category_type_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `category_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `entity_transaction`
--
ALTER TABLE `entity_transaction`
  ADD CONSTRAINT `entity_transaction_ibfk_1` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `entity_transaction_ibfk_2` FOREIGN KEY (`transaction_ad`) REFERENCES `transation` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `entity_type`
--
ALTER TABLE `entity_type`
  ADD CONSTRAINT `entity_type_ibfk_1` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `entity_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `entity_type_base_conversion`
--
ALTER TABLE `entity_type_base_conversion`
  ADD CONSTRAINT `entity_type_base_conversion_ibfk_1` FOREIGN KEY (`entity_type_id`) REFERENCES `entity_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `entity_type_base_conversion_ibfk_2` FOREIGN KEY (`base_conversion_id`) REFERENCES `base_conversion` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `function`
--
ALTER TABLE `function`
  ADD CONSTRAINT `function_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `function_ibfk_2` FOREIGN KEY (`entityID`) REFERENCES `entity` (`id`);

--
-- Constraints for table `gender`
--
ALTER TABLE `gender`
  ADD CONSTRAINT `gender_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `gender_type`
--
ALTER TABLE `gender_type`
  ADD CONSTRAINT `gender_type_ibfk_1` FOREIGN KEY (`genderID`) REFERENCES `gender` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `gender_type_ibfk_2` FOREIGN KEY (`typeID`) REFERENCES `type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `lga`
--
ALTER TABLE `lga`
  ADD CONSTRAINT `lga_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lga_ibfk_2` FOREIGN KEY (`entityID`) REFERENCES `entity` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `name`
--
ALTER TABLE `name`
  ADD CONSTRAINT `name_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `name_ibfk_2` FOREIGN KEY (`entityID`) REFERENCES `entity` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `nationality`
--
ALTER TABLE `nationality`
  ADD CONSTRAINT `nationality_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nationality_ibfk_2` FOREIGN KEY (`entityID`) REFERENCES `entity` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `nin`
--
ALTER TABLE `nin`
  ADD CONSTRAINT `nin_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`id`) REFERENCES `walletaddress` (`personID`) ON UPDATE CASCADE;

--
-- Constraints for table `person_transaction`
--
ALTER TABLE `person_transaction`
  ADD CONSTRAINT `person_transaction_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `person_transaction_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transation` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `person_transaction_base_conversion`
--
ALTER TABLE `person_transaction_base_conversion`
  ADD CONSTRAINT `person_transaction_base_conversion_ibfk_1` FOREIGN KEY (`person_transaction_id`) REFERENCES `person_transaction` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `person_transaction_base_conversion_ibfk_2` FOREIGN KEY (`base_conversion_id`) REFERENCES `base_conversion` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `process`
--
ALTER TABLE `process`
  ADD CONSTRAINT `process_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `process_ibfk_2` FOREIGN KEY (`entityID`) REFERENCES `entity` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `role_ibfk_2` FOREIGN KEY (`entityID`) REFERENCES `entity` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `transation_amount`
--
ALTER TABLE `transation_amount`
  ADD CONSTRAINT `transation_amount_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transation` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transation_amount_ibfk_2` FOREIGN KEY (`amount_id`) REFERENCES `amount` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `transation_option`
--
ALTER TABLE `transation_option`
  ADD CONSTRAINT `transation_option_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transation` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transation_option_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `transation_type`
--
ALTER TABLE `transation_type`
  ADD CONSTRAINT `transation_type_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transation` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transation_type_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `walletaddress`
--
ALTER TABLE `walletaddress`
  ADD CONSTRAINT `walletaddress_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `walletaddress_ibfk_2` FOREIGN KEY (`entityID`) REFERENCES `entity` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
