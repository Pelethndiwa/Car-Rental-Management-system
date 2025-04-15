-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 10:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--
CREATE DATABASE IF NOT EXISTS `carrental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carrental`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '2025-01-20 14:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `MerchantRequestID` varchar(255) NOT NULL,
  `CheckoutRequestID` varchar(255) NOT NULL,
  `payment_status` varchar(50) DEFAULT 'pending',
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'fella@gmail.com', 6, '01/20/2025', '02/20/2025', 'now', 1, '2025-01-20 14:36:35'),
(5, 'davido@gmail.com', 5, '01/20/2025', '02/20/2025', 'fewfwsdf', 0, '2025-01-28 12:18:11'),
(6, 'davido@gmail.com', 5, '01/20/2025', '02/20/2025', 'i want it ASAP', 0, '2025-01-29 14:11:39'),
(7, 'shee@gmail.com', 9, '01/20/2025', '02/20/2025', 'naitaka leo', 1, '2025-01-29 14:15:33'),
(8, 'eugine@gmail.com', 4, '06/02/2025', '10/02/2025', 'I have a family trip and really need this vehicle ASAP.', 0, '2025-02-06 15:42:06'),
(9, 'jonathan@gmail.com', 4, '3/11/2025', '31/3/2025', 'hello admin i need this SUV asap i have a family vacation', 0, '2025-03-11 12:27:13'),
(10, 'fella@gmail.com', 4, '06/02/2025', '10/02/2025', 'i need it in a hurry', 1, '2025-04-08 18:47:05'),
(11, 'fella@gmail.com', 12, '06/02/2025', '10/02/2025', 'asap', 1, '2025-04-09 04:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

DROP TABLE IF EXISTS `tblbrands`;
CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(10, 'Mercedes Benz', '2025-01-20 15:34:34', NULL),
(11, 'AUDI', '2025-01-21 12:11:29', NULL),
(12, 'Rangerover.', '2025-01-21 13:49:17', NULL),
(13, 'Ferrari', '2025-01-21 14:03:55', NULL),
(14, 'Toyota', '2025-02-06 15:43:31', NULL),
(15, 'BMW', '2025-02-06 15:44:02', NULL),
(16, 'Nissan', '2025-02-06 15:44:23', NULL),
(17, 'Buggati', '2025-02-06 15:44:43', NULL),
(18, 'Maserati', '2025-02-06 15:44:55', NULL),
(19, 'Cadillac escalade', '2025-02-06 15:45:21', NULL),
(20, 'GMC', '2025-02-06 15:46:15', NULL),
(21, 'Ford', '2025-02-06 15:46:33', NULL),
(22, 'Rolls Royce', '2025-02-06 16:04:02', NULL),
(23, 'JEEP', '2025-02-13 11:47:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

DROP TABLE IF EXISTS `tblcontactusinfo`;
CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Westlands, Nairobi																								', 'pelethndiwa653@gmail.com', '0748787996');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

DROP TABLE IF EXISTS `tblcontactusquery`;
CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Peleth ndiwa', 'pelethndiwa653@gmail.com', '+254 748 78', 'hello there', '2025-01-31 10:15:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Privacy Policy\r\nEffective Date: [1st JANUARY 2025]\r\n\r\nWelcome to our Online Car Rental, an automated car rental and fleet management system. Your privacy is important to us, and we are committed to protecting your personal data. This Privacy Policy explains how we collect, use, and safeguard your information.\r\n\r\n1. Information We Collect\r\nWe collect and process the following types of data when you use our system:\r\n\r\na) Personal Information\r\nFull Name\r\nEmail Address\r\nPhone Number\r\nPhysical Address\r\nGovernment-issued ID or Driver’s License\r\nPayment Details (for rental transactions)\r\nb) Rental & Vehicle Data\r\nRental Booking History\r\nVehicle Preferences\r\nPickup & Drop-off Locations\r\nPayment and Billing Records\r\nc) Technical & Usage Data\r\nIP Address\r\nDevice and Browser Information\r\nCookies and Tracking Data\r\nLog Files for Security Monitoring\r\n2. How We Use Your Information\r\nWe use your data to:\r\n\r\nProcess rental bookings and manage fleet availability\r\nVerify your identity and ensure compliance with rental policies\r\nProvide customer support and improve user experience\r\nSend notifications about bookings, payments, or policy updates\r\nEnhance system security and prevent fraudulent activities\r\nAnalyze system performance for service improvements\r\n3. Data Sharing & Security\r\nWe do not sell, rent, or share your personal data with third parties, except in the following cases:\r\n\r\nWhen required by law enforcement or legal processes\r\nWith payment processors for secure transactions\r\nWith third-party service providers for system maintenance and analytics\r\nWe implement strict security measures such as encryption, access controls, and secure data storage to protect your personal information.\r\n\r\n4. Cookies & Tracking Technologies\r\nWe use cookies and similar tracking technologies to:\r\n\r\nEnhance your browsing experience\r\nRemember user preferences\r\nAnalyze system usage\r\nYou can manage your cookie settings in your browser.\r\n\r\n5. Your Rights & Choices\r\nAs a user, you have the right to:\r\n\r\nAccess and update your personal information\r\nRequest deletion of your data (subject to legal retention requirements)\r\nOpt out of non-essential communications\r\nRequest a copy of your stored data\r\nFor any requests, contact us at pelethndiwa653@gmail.com.\r\n\r\n6. Changes to This Policy\r\nWe may update this Privacy Policy from time to time. Any significant changes will be communicated through email or system notifications.\r\n\r\n7. Contact Us\r\nFor questions or concerns regarding this Privacy Policy, please contact us:\r\n? [pelethndiwa653@gmail.com]\r\n? [+2547 4878 7996]\r\n\r\n</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Welcome to Travellers Online Rental, your ultimate Automated Car Rental and Fleet Management System designed to revolutionize the way vehicle rentals operate. Our platform ensures a seamless, efficient, and hassle-free experience for both customers and administrators.\r\n\r\nAt Travellers Online Rental, we prioritize convenience, affordability, and transparency by offering an intuitive system where users can browse, book, and manage car rentals in real-time. Our admin dashboard provides complete control over vehicle availability, booking status, fleet maintenance, and pricing, ensuring a well-managed and optimized rental business.\r\n\r\nWhy Choose Us?\r\n? Real-Time Booking: Instantly check and book available vehicles.\r\n? Smart Fleet Management: Keep track of car status (Available, Booked, or Under Maintenance).\r\n? User-Friendly Dashboard: Effortless admin control over vehicle listings, bookings, and pricing.\r\n? Secure & Reliable: Data protection and system security at the core of our operations.\r\n\r\nWhether you\'re a customer looking for a smooth rental experience or an administrator managing a growing fleet, [Your System Name] is built to simplify and enhance car rental operations.\r\n\r\n? Drive Smarter. Rent Faster. Manage Better! ?</span>'),
(11, 'FAQs', 'faqs', '										<div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-weight: bold;\">1. How do I book a car?</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">To book a car, log in to your account, browse the available vehicles, select your preferred car, choose the rental dates, and click \"Book Now\". You’ll receive a confirmation message once your booking is successful.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;<span style=\"font-weight: bold;\">2. Can I modify or cancel my booking?&nbsp;</span></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Yes, you can modify or cancel your booking through the \"My Bookings\" section in your dashboard. Please note that cancellations must be made at least 24 hours before the scheduled pickup time.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;<span style=\"font-weight: bold;\">3. What documents do I need to rent a car?</span></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;You’ll need a valid driver’s license, a form of identification (ID or passport), and a payment method for booking.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; font-weight: bold;\">&nbsp;4. Is there a limit to how long I can rent a car?</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;Yes, rental durations may vary depending on the car and availability. The maximum rental period will be specified during the booking process.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; font-weight: bold;\">&nbsp;5. How do I know if my booking is confirmed?&nbsp;</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">After completing your booking, you’ll receive a confirmation message in your dashboard and via email (if enabled). You can also check your booking status under \"My Bookings.\"</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; font-weight: bold;\">&nbsp;6. What happens if the car breaks down during my rental period?</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;In case of a breakdown, contact our 24/7 support team immediately. Assistance will be provided, and alternative arrangements will be made if necessary.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;<span style=\"font-weight: bold;\">7. Can I rent multiple cars at the same time?</span></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;Yes, depending on your account type, you can make multiple bookings simultaneously. Check the rental policy for any specific limits.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;<span style=\"font-weight: bold;\">8. How do I make payments for my booking?</span>&nbsp;</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Payments can be made through secure online methods such as credit/debit cards, mobile money, or other payment options provided on the platform.&nbsp;</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;<span style=\"font-weight: bold;\">9. Are there any hidden charges?</span></span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;No hidden charges. All costs, including rental fees, taxes, and additional services, will be clearly displayed during the booking process.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; font-weight: bold;\">&nbsp;10. How do I contact customer support?</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;You can reach our support team via the \"Help\" section in your dashboard or through our provided email and hotline numbers for immediate assistance.&nbsp; &nbsp;&nbsp;</span></div>\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

DROP TABLE IF EXISTS `tblsubscribers`;
CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

DROP TABLE IF EXISTS `tbltestimonial`;
CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'fella@gmail.com', 'Defintion of first class guys. ', '2025-01-20 14:39:42', 1),
(4, 'eugine@gmail.com', ' I just love everything about this guys. Very proffesional', '2025-02-10 11:35:47', 1),
(5, 'jonathan@gmail.com', 'This guys provide the most luxurious SUVs in town u should try them.', '2025-03-11 12:28:48', 1),
(6, 'kemboi@gmail.com', 'This guys are good,', '2025-03-18 18:51:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Peleth ndiwa', 'pelethndiwa653@gmail.com', '7552d1757f647cfa4571b365562a47f4', '0748787996', NULL, NULL, NULL, NULL, '2025-01-20 12:45:40', NULL),
(2, 'fella', 'fella@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0748787996', NULL, NULL, NULL, NULL, '2025-01-20 14:35:39', NULL),
(3, 'davido', 'davido@gmail.com', '968b15768f3d19770471e9436d97913c', '0748787996', NULL, NULL, NULL, NULL, '2025-01-28 12:17:22', NULL),
(4, 'Shee', 'shee@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0716471078', NULL, NULL, NULL, NULL, '2025-01-29 14:14:01', NULL),
(9, 'eugine wamalwa', 'eugine@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0700708650', NULL, NULL, NULL, NULL, '2025-02-06 15:39:55', NULL),
(10, 'jonathan david', 'jonathan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0700708650', NULL, NULL, NULL, NULL, '2025-03-11 12:25:13', NULL),
(11, 'Felix kemboi', 'kemboi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0700708650', NULL, NULL, NULL, NULL, '2025-03-18 18:50:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

DROP TABLE IF EXISTS `tblvehicles`;
CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'BMW M8', 2, 'clean and brand new', 345, 'Petrol', 2023, 6, 'M8.jpg', 'M8.jpg', 'M8.jpg', 'M8.jpg', 'M8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-20 14:32:40', NULL),
(2, 'Audi Q7', 3, 'The Audi Q7 is a luxurious, full-size SUV that combines advanced technology, a spacious interior, and powerful engine options for a refined and versatile driving experience.', 345, 'Petrol', 2023, 6, 'q7-auq7-23b.jpg', 'Glacier White Metallic-2Y2Y-229,230,229-640-en_US.jpg', 'audi-q7-side-view.png', 'WHITE_cc_2025AUS010004_01_1280_2Y2Y.jpg', 'msedge_g4C7G7bf0S.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-01-21 12:18:13', '2025-02-06 15:36:00'),
(3, 'Rollyce Royce', 2, 'The Rolls-Royce Ghost is an ultra-luxury sedan that blends timeless elegance, cutting-edge technology, and exceptional craftsmanship for an unparalleled driving and passenger experience.', 80000, 'Petrol', 2023, 6, 'Adriatic Blue-EXAB-50,71,103-640-en_US.jpg', '2017-rolls-royce-ghost-sedan-angular-rear.jpg', '2021-Rolls-Royce-Ghost-Base-SCATV0C06MU205807-hnetauto_SCATV0C06MU205807_25378-b9232eacc4a6507f6f0ab4cdb7e90948.jpg', '7056_37.jpg', 'images (1).jpg', 1, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, '2025-01-21 12:49:25', NULL),
(4, 'Rangerover velar', 12, 'The Range Rover Velar is a luxury SUV that combines minimalist elegance, advanced technology, and exceptional off-road capability with refined on-road performance.', 50000, 'Diesel', 2023, 6, 'range-rover-velar-exterior-right-front-three-quarter-4.jpeg', '640.jpg', 'test_EjSyeMY.png', 'range_rover_velar_rearview.jpg', 'land-rover-range-rover-velar-color-555139.jpg', 1, 1, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2025-01-21 13:55:32', NULL),
(5, 'Ferraari Purasongue', 13, 'The Ferrari Purosangue is Ferrari\'s first luxury SUV, blending breathtaking performance, sleek design, and cutting-edge technology for an unparalleled driving experience.', 100000, 'CNG', 2023, 4, 'purosangue-suv-exterior-right-front-three-quarter-14.jpeg', 'Grigio Alloy-GR7-181,177,160-640-en_US.jpg', 'ferrari-purosangue-trunk-spoiler-lower-2.jpg', 'Giallo Modena-GIA-217,181,76-640-en_US.jpg', 'Nero-NPA-10,8,9-640-en_US.jpg', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2025-01-21 14:10:53', NULL),
(11, 'BMW M8', 15, 'The BMW M8 is a high-performance luxury sports car that combines aggressive styling, a twin-turbo V8 engine with up to 617 horsepower, and advanced technology for an exhilarating driving experience. ????????', 80000, 'Petrol', 2023, 5, 'bmw-m8-brands-hatch-grey.jpeg', 'bmw-m8-rear-view.jpg', 'cosySec.webp', 'gt846-bmw-m8-gran-coupe-09.jpg', 'bmw-m8-gran-coupe-color-657805.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-02-06 15:55:30', NULL),
(12, 'Rollsroyce Ghost', 22, 'Rolls-Royce is a luxury automobile brand known for its exquisite craftsmanship, advanced technology, and unmatched comfort, symbolizing prestige and elegance. ?????\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 100000, 'Petrol', 2023, 5, 'Black-R01-1,1,1-640-en_US.jpg', 'Adriatic Blue-EXAB-50,71,103-640-en_US.jpg', 'Velvet Orchid-WR12-109,98,116-640-en_US.jpg', '2017-rolls-royce-ghost-sedan-angular-rear.jpg', 'Ghost.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-02-06 16:10:30', '2025-02-06 16:13:10'),
(13, 'JEEP wrangler', 23, 'The Jeep Wrangler is an iconic, rugged off-road SUV known for its unbeatable 4x4 capability, removable doors and roof, and adventurous spirit. ????????', 30000, 'Petrol', 2023, 4, 'jeep-wrangler-unlimited-2023-featured-arawheels-1677069557.jpg', 'enfqg3a_1573837.jpg', 'vrhkmdb_1742799.jpg', '2019_Jeep_Wrangler.jpg', 'wrangler-4-door-jewr-21.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-02-13 11:53:40', '2025-02-13 11:55:58'),
(14, 'JEEP grand wagonner', 23, 'The Jeep Grand Wagoneer is a luxurious full-size SUV that combines premium craftsmanship, powerful performance, and cutting-edge technology for an upscale yet adventurous driving experience. ?????', 50000, 'Petrol', 2023, 6, '2024_76.png', '0071cf960657201c58bcf9f1ca6569bf.png', 'cc_2024jes080022_02_1280_pxj.png', 'cc_2024JES290034_03_640_PW7QX8.jpg', '62fdb7b68670c7b7464d3c9a3a3221fb.jpg', 1, 1, NULL, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2025-02-13 12:06:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
