-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 10, 2010 at 05:01 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `jobscope`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `applicants`
-- 

CREATE TABLE `applicants` (
  `a_id` int(8) NOT NULL auto_increment,
  `a_uid` varchar(30) NOT NULL,
  `a_jid` varchar(30) NOT NULL,
  PRIMARY KEY  (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=300008 ;

-- 
-- Dumping data for table `applicants`
-- 

INSERT INTO `applicants` (`a_id`, `a_uid`, `a_jid`) VALUES 
(300001, '400002', '200001'),
(300002, '400001', '200002'),
(300003, '400003', '200003'),


-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
  `cat_id` int(8) NOT NULL auto_increment,
  `cat_nm` varchar(30) NOT NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=400006 ;

-- 
-- Dumping data for table `categories`
-- 

INSERT INTO `categories` (`cat_id`, `cat_nm`) VALUES 
(400001, 'IT-Software'),
(400002, 'IT-Hardware'),
(400003, 'Import-Export'),
(400004, 'Banking'),
(400005, 'Finance');

-- --------------------------------------------------------

-- 
-- Table structure for table `contact`
-- 

CREATE TABLE `contact` (
  `cont_id` int(8) NOT NULL auto_increment,
  `cont_fnm` varchar(30) NOT NULL,
  `cont_email` varchar(20) NOT NULL,
  `cont_query` varchar(300) NOT NULL,
  PRIMARY KEY  (`cont_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=100002 ;

-- 
-- Dumping data for table `contact`
-- 

INSERT INTO `contact` (`cont_id`, `cont_fnm`, `cont_email`, `cont_query`) VALUES 
(100000, 'Riddhi', 'riddhi_patel@gmail.c', 'xyz'),
(100001, 'Amir', 'Amir@yahoo.com', 'abc');

-- --------------------------------------------------------

-- 
-- Table structure for table `employees`
-- 

CREATE TABLE `employees` (
  `ee_id` int(8) NOT NULL auto_increment,
  `ee_fnm` varchar(30) NOT NULL,
  `ee_pwd` varchar(10) NOT NULL,
  `ee_gender` varchar(1) NOT NULL,
  `ee_email` varchar(30) NOT NULL,
  `ee_add` varchar(300) NOT NULL,
  `ee_phno` varchar(10) NOT NULL,
  `ee_mobileno` varchar(10) NOT NULL,
  `ee_current_location` varchar(20) NOT NULL,
  `ee_annualsalary` int(10) NOT NULL,
  `ee_current_industry` varchar(20) NOT NULL,
  `ee_qualification` varchar(10) NOT NULL,
  `ee_profile` varchar(300) NOT NULL,
  `ee_resume` longtext NOT NULL,
  PRIMARY KEY  (`ee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=10004;

-- 
-- Dumping data for table `employees`
-- 

INSERT INTO `employees` (`ee_id`, `ee_fnm`, `ee_pwd`, `ee_gender`, `ee_email`, `ee_add`, `ee_phno`, `ee_mobileno`, `ee_current_location`, `ee_annualsalary`, `ee_current_industry`, `ee_qualification`, `ee_profile`, `ee_resume`) VALUES 
(10000, 'Amir', 'megha11', 'f', 'megha_patel@gmail.com', '"megha",2nd floor ,rajkot', '0281257254', '9934235456', 'rajkot', 45000, 'infosys', 'mba', 'xyz', 'uploads/megha.doc'),
(10001, 'Adhira', 'darshana', 'f', 'darshana_\\@yahoo.com', '"darshana",ahemadabad', '0792345672', '9423456789', 'mumbai', 35000, 'tcs', 'mtec', 'xyz', 'uploads/darshana.doc'),
(10002, 'Nithes', 'parth1111', 'M', 'parth@gmail.com', '"parth",bhavnagar.', '0278213355', '9923555676', 'bhavnagar', 40000, 'tata', 'mba', 'xyz', 'uploads/parth.doc'),
(10003, 'Deekshana',123123', 'M', 'samir@gmail.com', '"samin",borivaly,mumbai.', '0112345678', '9987766554', 'mumbai', 40000, 'birla', 'mba', 'xyz', 'uploads/samin.doc');

-- --------------------------------------------------------

-- 
-- Table structure for table `employers`
-- 

CREATE TABLE `employers` (
  `er_id` int(8) NOT NULL auto_increment,
  `er_fnm` varchar(30) NOT NULL,
  `er_pwd` varchar(10) NOT NULL,
  `er_company` varchar(30) NOT NULL,
  `er_add` varchar(100) NOT NULL,
  `er_ph` varchar(10) NOT NULL,
  `er_email` varchar(30) NOT NULL,
  `er_company_profile` varchar(300) NOT NULL,
  PRIMARY KEY  (`er_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `employers`
-- 

INSERT INTO `employers` (`er_id`, `er_fnm`, `er_pwd`, `er_company`, `er_add`, `er_ph`, `er_email`, `er_company_profile`) VALUES 
(1, 'Admin', '1111111', 'infosys', '"Infosys",Bangalore', '0112345678', 'infosys_company@gmail.com', 'abc'),
(2, 'Riddhi', '1234567', 'infosys', 'Infosys,Chennai.', '9925361132', 'riddhi@gmail.com', 'abc'),
(3, 'Vishwa', '12345678', 'tcs', '"TCS",Bangalore.', '0792143576', 'vishwa_patel@gmail.com', 'abc'),
(4, 'Pradhiksha', '12121212', 'Honeybee', 'Honeybee,Madurai.', '0798765432', 'patny_company@yahoo.com', 'abc'),
(5, 'Sam', '2222222', 'TCS', 'TCS,Bangalore', '0792345677', 'sagar@gmail.com', 'dsfg');

-- --------------------------------------------------------

-- 
-- Table structure for table `jobs`
-- 

CREATE TABLE `jobs` (
  `j_id` int(8) NOT NULL auto_increment,
  `j_category` varchar(40) NOT NULL,
  `j_owner_name` varchar(30) NOT NULL,
  `j_title` varchar(30) NOT NULL,
  `j_hours` float(3,1) NOT NULL,
  `j_salary` int(10) NOT NULL,
  `j_experience` int(3) NOT NULL,
  `j_discription` varchar(300) NOT NULL,
  `j_city` varchar(20) NOT NULL,
  `j_active` int(1) NOT NULL default '0',
  PRIMARY KEY  (`j_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=200008 ;

-- 
-- Dumping data for table `jobs`
-- 

INSERT INTO `jobs` (`j_id`, `j_category`, `j_owner_name`, `j_title`, `j_hours`, `j_salary`, `j_experience`, `j_discription`, `j_city`, `j_active`) VALUES 
(200001, 'IT-Software', 'Riddhi', 'Need for the manager', 10.0, 40000, 2, 'abc', 'pune', 1),
(200002, 'Banking', 'Riddhi', 'Need for the ca', 8.0, 45000, 4, 'dff', 'ahmedabad', 1),
(200003, 'IT-Hardware', 'Vishwa', 'Need for the manager', 10.0, 34000, 2, 'fdrf', 'pune', 1),
(200004, 'Import-Export', 'Vishwa', 'Need for thr tredar', 12.0, 25000, 3, 'sdsdf', 'rajkot', 0),
(200005, 'Finance', 'Prathiksha', 'Need for the assistent', 8.0, 34667, 3, 'wrert', 'pune', 0),
(200006, 'Banking', 'Prathiksha', 'Need for the manager', 10.0, 45000, 5, 'dsd', 'kolkota', 0),
(200007, 'Import-Export', 'Riddhi', 'Need for the assistent', 12.0, 10000, 1, 'abv', 'porbunder', 0);
