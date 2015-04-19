-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2015 at 07:35 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ccare`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_type` varchar(20) DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `address_landmark` varchar(25) DEFAULT NULL,
  `street_name` varchar(25) DEFAULT NULL,
  `customer_city` varchar(25) DEFAULT NULL,
  `customer_zipcode` varchar(6) DEFAULT NULL,
  `customer_state` varchar(25) DEFAULT NULL,
  `customer_country` varchar(25) DEFAULT NULL,
  `customer_email` varchar(50) DEFAULT NULL,
  `customer_mobile` varchar(12) DEFAULT NULL,
  `alternate_number` varchar(12) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_url` varchar(60) DEFAULT NULL,
  `customer_incontract` int(11) DEFAULT NULL,
  `customer_status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `customer_name`, `customer_type`, `address_line1`, `address_line2`, `address_landmark`, `street_name`, `customer_city`, `customer_zipcode`, `customer_state`, `customer_country`, `customer_email`, `customer_mobile`, `alternate_number`, `company_name`, `company_url`, `customer_incontract`, `customer_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Singh Dinesh ', 'Organization', '7A/504', 'Shashtri Nagar', 'Near Dadar Post office', 'HN Road', 'Mumbai', '400031', 'Maharashtra', 'India', 'singhdinesh@gmail.com', '7867676543', '022365476534', 'Singh enterprises', 'singham.in', 1, 1, 1, 1, '2015-04-14 13:01:27', '2015-04-15 05:24:27'),
(2, 'Dinesh Jain', 'Individual', '3A/504', 'Vishnu Nagar', 'Near Dadar Post office', 'Kelkar marg', 'Mumbai', '400031', 'Maharashtra', NULL, 'jain@gmail.com', '8867676543', NULL, NULL, NULL, 1, 1, 1, 0, '2015-04-14 13:07:13', '2015-04-14 13:07:13'),
(3, 'Dinesh Jain', 'Individual', '3A/504', 'Vishnu Nagar', 'Near Dadar Post office', 'Kelkar marg', 'Mumbai', '400031', 'Maharashtra', 'India', 'dineshjain1@gmail.com', '7867676543', NULL, NULL, NULL, 1, 1, 1, 0, '2015-04-14 13:09:44', '2015-04-14 13:09:44'),
(4, 'Sunil Gupta', 'Organization', '3A/504', 'Vishnu Nagar', 'Near Dadar Post office', 'Kelkar marg', 'Mumbai', '400031', 'Maharashtra', 'India', 'rockerz@gmail.com', '9867676543', NULL, NULL, NULL, 1, 1, 1, 0, '2015-04-14 15:06:36', '2015-04-14 15:06:36'),
(5, 'Swapnil Mehta', 'Institution', '3A/504', 'Vishnu Nagar', 'Near Dadar Post office', 'Kelkar marg', 'Mumbai', '400031', 'Maharashtra', 'India', 'swapnil@gmail.com', '7867676543', '2365476534', 'swapnil classes', 'swapnileducare.org', 1, 1, 1, 0, '2015-04-14 15:13:18', '2015-04-14 15:13:18'),
(6, 'Rakesh Sahu', 'Individual', '3A/504', 'Vishnu Nagar', 'Near Dadar Post office', 'Kelkar marg', 'Mumbai', '400031', 'Maharashtra', 'India', 'rakesh@yahoo.com', '7867676543', '2365476534', 'ABC', 'abc.com', 1, 1, 1, 0, '2015-04-14 15:52:07', '2015-04-14 15:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `password_temp` varchar(60) DEFAULT NULL,
  `code` varchar(60) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `remember_token` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `email`, `username`, `password`, `password_temp`, `code`, `role_id`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'sanjaiswar@gmail.com', 'Sanjay Jaiswar', '$2y$10$o6ooEvxcvJ224zKRXqmrrOncgCHcLaHwjMR.rPJBwcpRqgl.NxGHm', NULL, '', 1, 1, '', NULL, NULL),
(2, 1, 'sporteewear2003@gmail.com', 'Little Angle', '$2y$10$OSYKXWeUYtniwcpgnkoDn.xQS8K0qS8AptZRY9AID.Tgk6bowXc0G', NULL, '', 2, 1, '', '2015-03-30 17:14:48', '2015-03-30 17:14:48'),
(3, 1, 'parschawda12@gmail.com', 'Pars Chawda', '$2y$10$Um0TWSGZ7XUZtknurmKG8Owsf4/.4NXnIlO/ukdAlgGjJprVCHKbm', NULL, 'yxR945YRoJfBoyzV1G6t3Q8mWpppL2klGyoFZRjngqvMfRxz81eSJktdVbYH', 4, 0, '', '2015-03-30 17:22:57', '2015-03-30 17:22:57');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
