-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 04:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ridealongv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmins`
--

CREATE TABLE `tbladmins` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `UserCrtd` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmins`
--

INSERT INTO `tbladmins` (`Username`, `Password`, `UserCrtd`) VALUES
('adminjeth@gmail.com', 'adminjeth', '2024-01-22 23:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `SelectionID` int(11) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`SelectionID`, `ProductID`, `Username`, `Quantity`) VALUES
(4, 21, 'japako1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `CategoryDescription` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CategoryID`, `CategoryName`, `CategoryDescription`) VALUES
(1, 'Body & Fenders', 'Body And Fenders will be avaialbel'),
(2, 'Control & Brakes', 'This category is now available'),
(3, 'Electrical', 'This category is now available'),
(4, 'Engine & Exhaust', 'This category is now available');

-- --------------------------------------------------------

--
-- Table structure for table `tbldelivery`
--

CREATE TABLE `tbldelivery` (
  `DeliveryID` int(15) NOT NULL,
  `RecipientName` varchar(50) NOT NULL,
  `RecipientPhone` varchar(50) NOT NULL,
  `DeliveryAddress` varchar(50) DEFAULT NULL,
  `DeliveryCity` varchar(50) NOT NULL,
  `LocationType` varchar(50) NOT NULL,
  `ShippingCharge` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `TotalPrice` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldelivery`
--

INSERT INTO `tbldelivery` (`DeliveryID`, `RecipientName`, `RecipientPhone`, `DeliveryAddress`, `DeliveryCity`, `LocationType`, `ShippingCharge`, `Username`, `TotalPrice`) VALUES
(7444, 'japako', '09521521312', ' BLK 10 LOT 8 LAS PINAS', 'TALON IV, LAS PINAS', 'home', 500, 'japako1', 475.0000),
(20492, 'japako3', '09502190512', 'BLK 9 LOT 9 LAS PINAS', 'MOLINO I, BACOOR', 'home', 0, 'japako1', 9600.0000),
(72232, 'Jethro', '09521312031', ' BLK 10 LOT 8 LAS PINAS', 'MOLINO V, BACOOR', 'workplace', 500, 'japako1', 12330.0000);

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `OrderID` int(15) NOT NULL,
  `ProductID` int(15) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `DeliveryID` int(15) NOT NULL,
  `OrderDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`OrderID`, `ProductID`, `Quantity`, `Username`, `DeliveryID`, `OrderDate`) VALUES
(210, 2, '1', 'japako1', 7444, '2024-01-22 23:26:26'),
(211, 30, '1', 'Guest', 38724, '2024-01-22 23:48:14'),
(212, 30, '1', 'Guest', 68418, '2024-01-22 23:49:15'),
(213, 30, '1', 'japako1', 20492, '2024-01-22 23:50:23'),
(214, 21, '1', 'Guest', 33755, '2024-01-22 23:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblordertrack`
--

CREATE TABLE `tblordertrack` (
  `TrackID` int(11) NOT NULL,
  `OrderID` int(15) NOT NULL,
  `DeliveryID` int(15) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Remark` mediumtext DEFAULT NULL,
  `RemarkedDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblordertrack`
--

INSERT INTO `tblordertrack` (`TrackID`, `OrderID`, `DeliveryID`, `Status`, `Remark`, `RemarkedDate`) VALUES
(4, 201, 50208, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-21 15:09:52'),
(5, 202, 50208, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-21 15:09:52'),
(7, 204, 90251, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-21 15:39:39'),
(8, 205, 90251, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-21 15:39:39'),
(9, 206, 90251, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-21 15:39:39'),
(10, 207, 72232, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-22 21:52:06'),
(11, 208, 72232, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-22 21:52:06'),
(13, 210, 7444, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-22 23:31:01'),
(14, 213, 20492, 'Pending', 'Orders Has Been Received And Is Currently Being Processed', '2024-01-22 23:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblproductreviews`
--

CREATE TABLE `tblproductreviews` (
  `ReviewID` int(11) NOT NULL,
  `ProductID` int(15) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Review` longtext DEFAULT NULL,
  `ReviewDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproductreviews`
--

INSERT INTO `tblproductreviews` (`ReviewID`, `ProductID`, `Username`, `Review`, `ReviewDate`) VALUES
(1, 15, 'japako1', 'Amazing', '2024-01-22 21:50:36'),
(2, 6, 'japako1', 'Solid yung kulay', '2024-01-22 23:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductPrice` decimal(13,1) DEFAULT NULL,
  `InitialProductPrice` decimal(13,1) DEFAULT NULL,
  `ProductImage` varchar(300) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `ProductBrand` varchar(50) NOT NULL,
  `Colour` varchar(50) DEFAULT NULL,
  `Dimensions` varchar(50) DEFAULT NULL,
  `ProductDesignType` varchar(50) DEFAULT NULL,
  `ProductDiscountAmount` varchar(50) NOT NULL,
  `ProductBikeType` varchar(50) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ProductAvailability` varchar(50) DEFAULT NULL,
  `UpdatedDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`ProductID`, `ProductName`, `ProductPrice`, `InitialProductPrice`, `ProductImage`, `CategoryID`, `ProductBrand`, `Colour`, `Dimensions`, `ProductDesignType`, `ProductDiscountAmount`, `ProductBikeType`, `CreatedDate`, `ProductAvailability`, `UpdatedDate`) VALUES
(1, 'Tank', 21660.0, 22800.0, 'Resources/products/Tank.jpg', 1, 'Bikers Choice', 'Chrome', '10 Inch', 'Diamond', '5', 'Tank', '2024-01-19 14:26:56', 'In Stock', NULL),
(2, 'Keiti Tank Protector', 475.0, 500.0, 'Resources/products/KeitiTankProtector.png', 1, 'Keiti', 'Black', '6 Inch', 'Heavy Duty', '5', 'Tank', '2024-01-19 14:26:56', 'In Stock', NULL),
(3, 'Mirror Adapters', 1330.0, 1400.0, 'Resources/products/MirrorAdapters.jpg', 1, 'Keiti', 'Chrome', '10 Inch', 'Smooth', '5', 'Adapter', '2024-01-19 14:26:56', 'In Stock', NULL),
(4, 'Supersport Mirrors', 2090.0, 2200.0, 'Resources/products/SupersportMirrors.jpg', 1, 'Bikemaster', 'Black', '10 Inch', 'Left', '5', 'Mirror', '2024-01-19 14:26:56', 'In Stock', NULL),
(5, 'Tire', 14288.0, 15040.0, 'Resources/products/Tire.jpg', 1, 'Dunlop', 'Black', '6 Inch', 'Sport', '5', 'Tire', '2024-01-19 14:26:56', 'In Stock', NULL),
(6, 'Fuel Gauge Cap', 1757.5, 1850.0, 'Resources/products/FuelGaugeCap.jpg', 1, 'Bikemaster', 'Black', '6 Inch', 'Heavyduty', '5', 'Gauge', '2024-01-19 14:26:56', 'In Stock', NULL),
(7, 'Mid Controls', 9837.3, 10355.0, 'Resources/products/MidControls.jpg', 2, 'Roland', 'Silver', '6 Inch', 'Black Ops', '5', 'Controls', '2024-01-19 14:26:56', 'In Stock', NULL),
(8, 'Control Extension Set', 17385.0, 18300.0, 'Resources/products/FootControlExtensionSet.jpg', 2, 'Baron', 'Silver', '6 Inch', 'Floorboards Forward', '5', 'Controls', '2024-01-19 14:26:56', 'In Stock', NULL),
(9, 'Cruise Control', 3681.3, 3875.0, 'Resources/products/CruiseControl.jpg', 2, 'Nep', 'Silver', '10 Inch', 'Wrench', '5', 'Controls', '2024-01-19 14:26:56', 'In Stock', NULL),
(10, 'Fuel Controller', 29845.2, 31416.0, 'Resources/products/FuelManagementController.jpg', 2, 'Wiseco', 'Silver', '10 Inch', 'Pushbutton Operation', '5', 'Controller', '2024-01-19 14:26:56', 'In Stock', NULL),
(11, 'Control Lever', 735.0, 1470.0, 'Resources/products/ControlLever.jpg', 2, 'Motion Pro', 'Silver Polished', '10 Inch', 'Lever', '50', 'Controls', '2024-01-19 14:26:56', 'In Stock', NULL),
(12, 'Dual Control Brake System', 1600.0, 3200.0, 'Resources/products/DualControlBrakeSystem.jpg', 2, 'Altrider', 'Silver', '22mm/32mm Kit', 'Stainless Steel', '50', 'Controls', '2024-01-19 14:26:56', 'In Stock', NULL),
(13, 'Control Cable', 925.0, 1850.0, 'Resources/products/ControlCable.jpg', 2, 'Altrider', 'Silver', '10 Inch', 'Brake Choke', '50', 'Controls', '2024-01-19 14:26:56', 'In Stock', NULL),
(14, 'Brake Shoes', 1850.0, 3700.0, 'Resources/products/BrakeShoes.jpg', 2, 'Dp Brakes', 'Silver', '10 Inch', 'Lasting Durability', '50', 'Brake', '2024-01-19 14:26:56', 'In Stock', NULL),
(15, 'Brake Pads', 1800.0, 3600.0, 'Resources/products/BrakePads.jpg', 2, 'Braking', 'Silver', '10 Inch', 'Semi Metallic', '50', 'Brake', '2024-01-19 14:26:56', 'In Stock', NULL),
(16, 'Brake Disk', 5400.0, 18000.0, 'Resources/products/BrakeDisk.jpg', 2, 'Braking', 'Silver', '10 Inch', 'Fade Free', '50', 'Brake', '2024-01-19 14:26:56', 'In Stock', NULL),
(17, 'Headlight', 2775.0, 9250.0, 'Resources/products/Headlight.jpg', 3, 'Emgo', 'Black Chrome', '4 Inch', 'Floating', '20', 'Headlight', '2024-01-19 14:26:56', 'In Stock', NULL),
(18, 'Turn Signal', 943.5, 3145.0, 'Resources/products/TurnSignal.jpg', 3, 'Bikemaster', 'Black', '0.22 Inch', 'Lasting Durability', '20', 'Signal', '2024-01-19 14:26:56', 'In Stock', NULL),
(19, 'MultiSwitch', 3240.0, 10800.0, 'Resources/products/MultiSwitch.jpg', 3, 'K&S', 'Black', '8 Inch', 'Right', '20', 'Switch', '2024-01-19 14:26:56', 'In Stock', NULL),
(20, 'Solenoid', 1200.0, 4000.0, 'Resources/products/Solenoid.jpg', 3, 'Quadboss', 'Black', '0.22 Inch', 'Round Housing', '20', 'Solenoid', '2024-01-19 14:26:56', 'In Stock', NULL),
(21, 'Battery', 5197.5, 9450.0, 'Resources/products/Battery.jpg', 3, 'Yuasa', 'Black', '6 Inch', 'Maintenance Free', '20', 'Battery', '2024-01-19 14:26:56', 'In Stock', NULL),
(22, 'Rectifier', 3465.0, 6300.0, 'Resources/products/Rectifier.jpg', 3, 'Moose Racing', 'Black', '0.22 Inch', 'Oem Style', '20', 'Rectifier', '2024-01-19 14:26:56', 'In Stock', NULL),
(23, 'CDI Boxes', 1595.0, 2900.0, 'Resources/products/CDIBoxes.jpg', 3, 'Quadboss', 'Red', '10 Inch', 'Monocurve', '20', 'Boxes', '2024-01-19 18:47:26', 'In Stock', NULL),
(24, 'ECU Box', 13736.3, 24975.0, 'Resources/products/ECUBox.jpg', 3, 'Quadboss', 'Green', '10 Inch', 'Completely Reprogrammable', '0', 'Boxes', '2024-01-19 18:47:26', 'In Stock', NULL),
(25, 'Starter Motor', 12375.0, 22500.0, 'Resources/products/StarterMotor.jpg', 3, 'Twin Power', 'Black', '10 Inch', 'O.E.M. Interchangeable', '0', 'Motor', '2024-01-19 14:26:56', 'In Stock', NULL),
(26, 'Fuel Pump', 5900.0, 5900.0, 'Resources/products/FuelPump.jpg', 3, 'Mikuni', 'Black', '10 Inch', 'Round Multicurve', '0', 'Pump', '2024-01-19 18:47:26', 'In Stock', NULL),
(27, 'Oil Filter', 2516.0, 3145.0, 'Resources/products/OilFilter.jpg', 4, 'K&A', 'Black', '10 Inch', 'High Quality Metal', '2', 'Filter', '2024-01-19 18:47:26', 'In Stock', NULL),
(28, 'Cylinder bore', 45732.0, 57165.0, 'Resources/products/Cylinderbore.jpg', 4, 'Cylinder Works', 'Black', '255CC', 'Standard & Big Bore', '2', 'Bore', '2024-01-19 18:47:26', 'In Stock', NULL),
(29, 'Cylinder sleeve', 14652.0, 18315.0, 'Resources/products/Cylindersleeve.jpg', 4, 'L.A.', 'Black', '255CC', 'High Quality Steel', '2', 'Sleeve', '2024-01-19 18:47:26', 'In Stock', NULL),
(30, 'Rods Crankshaft', 9600.0, 12000.0, 'Resources/products/RodsCrankshaft.jpg', 4, 'Hot Rods', 'Black', '3 Inch', 'Crankshafts', '2', 'Rod', '2024-01-19 18:47:26', 'In Stock', NULL),
(31, 'Valve and Spring Intake Kit', 18000.0, 22500.0, 'Resources/products/ValveandSpringIntakeKit.jpg', 4, 'Pro X', 'Black', '3 Inch', 'High Quality Steel', '2', 'Kit', '2024-01-19 18:47:26', 'In Stock', NULL),
(32, 'R304 Shorty TI2 Silencer', 24000.0, 24000.0, 'Resources/products/R304ShortyTI2Silencer.jpg', 4, 'Pro Circuit', 'Black', '3 Inch', 'Lightweight 6061T6 Aluminum', '2', 'Silencer', '2024-01-19 18:47:26', 'In Stock', NULL),
(33, 'Spark Plug', 540.0, 540.0, 'Resources/products/SparkPlug.jpg', 4, 'Ngk', 'Black', '3 Inch', 'Superior Construction', '2', 'Plug', '2024-01-19 18:47:26', 'In Stock', NULL),
(34, 'Bearing Seal Kit', 4400.0, 4400.0, 'Resources/products/CrankshaftBearingandSealKits.jpg', 4, 'Ngk', 'Black', '10 Inch', 'High Quality Metal', '2', 'Kit', '2024-01-19 18:47:26', 'In Stock', NULL),
(35, 'Cam Chains', 8600.0, 8600.0, 'Resources/products/CamChains.JPG', 4, 'Wiseco', 'Black', '10 Inch', 'Material Reduce Friction', '2', 'Chains', '2024-01-19 18:47:26', 'In Stock', NULL),
(36, 'Top End Bearing', 3135.0, 3135.0, 'Resources/products/TopEndBearing.jpg', 4, 'Wiseco', 'Black', '14.5 Inch', 'Maximum Perfomance', '2', 'Bearing', '2024-01-19 18:47:26', 'In Stock', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `Username` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `EmailAddress` varchar(50) NOT NULL,
  `PhoneNumber` varchar(40) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `SecurityQuestion` varchar(250) DEFAULT NULL,
  `SecurityAnswer` varchar(250) DEFAULT NULL,
  `UserCrtd` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`Username`, `FirstName`, `LastName`, `EmailAddress`, `PhoneNumber`, `Password`, `SecurityQuestion`, `SecurityAnswer`, `UserCrtd`) VALUES
('japako1', 'japako', 'japako', 'japako1@gmail.com', '0952131231', '403706c502677d67ab95c1dbbb8f7126', '', '', '2024-01-20 19:58:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmins`
--
ALTER TABLE `tbladmins`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`SelectionID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `tbldelivery`
--
ALTER TABLE `tbldelivery`
  ADD PRIMARY KEY (`DeliveryID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `DeliveryID` (`DeliveryID`);

--
-- Indexes for table `tblordertrack`
--
ALTER TABLE `tblordertrack`
  ADD PRIMARY KEY (`TrackID`);

--
-- Indexes for table `tblproductreviews`
--
ALTER TABLE `tblproductreviews`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `SelectionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `OrderID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `tblordertrack`
--
ALTER TABLE `tblordertrack`
  MODIFY `TrackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblproductreviews`
--
ALTER TABLE `tblproductreviews`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
