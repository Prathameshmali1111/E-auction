-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 05:51 AM
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
-- Database: `eauction`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(90) NOT NULL,
  `cust_nm` varchar(90) NOT NULL,
  `cust_addr` varchar(90) NOT NULL,
  `cust_phone` varchar(90) NOT NULL,
  `cust_email` varchar(90) NOT NULL,
  `cust_password` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_nm`, `cust_addr`, `cust_phone`, `cust_email`, `cust_password`) VALUES
(1, 'Prerna', 'Goa', '9978257310', 'prernapatil@gmail.com', 'prerna1232'),
(2, 'Pooja', 'Gujarat', '5366281640', 'pooja@gmail.com', 'pooja5002'),
(3, 'Siddhi', 'Kolhapur', '8933639707', 'siddhi@gmail.com', 'siddhi2525'),
(4, 'Aaditi', 'Pune', '9923647831', 'aaditi@gmail.com', 'aaditi31'),
(5, 'Prajakta', 'Solapur', '9413873212', 'prajakta@gmail.com', 'prajkta5050'),
(6, 'Apurva', 'Mumbai', '9912753275', 'apurva@gmail.com', 'apurva'),
(7, 'Namrata', 'Aasam', '9845763490', 'namarta@gmail.com', 'namarta23'),
(8, 'Rasika', 'Kolhapur', '9163693575', 'rasika@gmail.com', 'rasika2002'),
(9, 'Shruti', 'Satara', '9345628597', 'shruti@gmail.com', 'shruti6453'),
(10, 'Sayali', 'Rajasthan', '9712547583', 'sayali@gmail.com', 'sayali2121');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bidding`
--

CREATE TABLE `customer_bidding` (
  `bid_id` int(90) NOT NULL,
  `item_id` int(90) NOT NULL,
  `cust_id` int(90) NOT NULL,
  `bid_rate` int(90) NOT NULL,
  `bid_qty` int(90) NOT NULL,
  `bid_amt` int(90) NOT NULL,
  `bid_date` date NOT NULL,
  `approval` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_bidding`
--

INSERT INTO `customer_bidding` (`bid_id`, `item_id`, `cust_id`, `bid_rate`, `bid_qty`, `bid_amt`, `bid_date`, `approval`) VALUES
(1, 1, 1, 5000, 2, 10000, '2024-02-20', 'Approved'),
(2, 2, 1, 7000, 1, 7000, '2024-02-20', 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `item_cat`
--

CREATE TABLE `item_cat` (
  `cat_id` int(90) NOT NULL,
  `cat_nm` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_cat`
--

INSERT INTO `item_cat` (`cat_id`, `cat_nm`) VALUES
(1, 'Army Father'),
(2, 'Canvas Painting'),
(3, 'Coins'),
(4, 'Nature Painting'),
(5, 'Nautical antiques'),
(6, 'Machine'),
(7, 'wooden shelving'),
(8, 'Laptop'),
(9, 'Nautical antiques and tropical'),
(10, 'Antiques brass polished');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `item_id` int(90) NOT NULL,
  `user_id` int(90) NOT NULL,
  `cat_id` int(90) NOT NULL,
  `item_nm` varchar(90) NOT NULL,
  `rate` int(90) NOT NULL,
  `description` varchar(90) NOT NULL,
  `item_photo1` varchar(90) NOT NULL,
  `item_photo2` varchar(90) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`item_id`, `user_id`, `cat_id`, `item_nm`, `rate`, `description`, `item_photo1`, `item_photo2`, `stock`) VALUES
(1, 1, 1, 'Army Father', 5000, 'Painting of Army Father and his daughter', 'army1.jpg', 'army2.jpg', 3),
(2, 2, 2, 'Canvas Painting', 6000, 'Painting of Canvas', 'canvas painting1.jpg', 'canvas painting2.jpg', 10),
(4, 3, 3, 'Coins', 2000, ' Old Indian Coins', 'coin3.jpg', 'coin4.jpg', 4),
(5, 4, 4, 'Nature Painting', 10000, 'Nature Painting', 'naturepaint1.jpg', 'naturepaint2.jpg', 4),
(6, 5, 5, 'Nautical Antiques', 3000, 'Nautical Antiques', 'nauticalantiques1.jpg', 'vintagecoffeepercolator2.jpg', 3),
(7, 6, 6, 'Machine', 8000, 'Old Machine', 'machine1.jpg', 'machine2.jpg', 10),
(8, 7, 7, 'wooden shelving', 4000, 'wooden shelving', 'wooden shelving1.jpg', 'wooden shelving2.jpg', 5),
(9, 8, 8, 'Laptop', 15000, 'Laptop', 'laptop1.jpg', 'laptop2.jpg', 4),
(10, 9, 9, 'Nautical Antiques and Tropical', 1000, 'Nautical Antiques and Tropical', 'nautical antiques & tropical.jpg', 'nautical antiques tropical 1.jpg', 2),
(11, 10, 10, 'Krishna Painting', 7000, 'Painting of Lord Krishna', 'krishna1.jpg', 'krishna2.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(90) NOT NULL,
  `sales_date` date NOT NULL,
  `cust_id` int(90) NOT NULL,
  `bid_id` int(90) NOT NULL,
  `bid_amt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `sales_date`, `cust_id`, `bid_id`, `bid_amt`) VALUES
(1, '2024-02-20', 1, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `user_id` int(90) NOT NULL,
  `user_nm` varchar(90) NOT NULL,
  `user_addr` varchar(90) NOT NULL,
  `user_phone` varchar(90) NOT NULL,
  `user_email` varchar(90) NOT NULL,
  `user_pass` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`user_id`, `user_nm`, `user_addr`, `user_phone`, `user_email`, `user_pass`) VALUES
(1, 'Suhani', 'Kolhapur', '8999664620', 'suhani@gmail.com', 'suhani0525'),
(2, 'Atharv', 'Pune', '9579981420', 'atharv@gmail.com', 'atharv4477'),
(3, 'Aarvi', 'Sangali', '9599354620', 'aarvi@gmail.com', 'aarvi7779'),
(4, 'Radhika', 'Kolhapur', '8945626271', 'radhika@gmail.com', '3456'),
(5, 'Rutuja', 'Kolhapur', '9745728491', 'rutuja@gmail.com', '1414'),
(6, 'Sanika', 'Pune', '8235672368', 'sanika@gmail.com', '9292'),
(7, 'Neha', 'Satara', '9743657975', 'neha@gmail.com', '1515'),
(8, 'Manasi', 'Hupari', '8779661525', 'manasi@gmail.com', '0505'),
(9, 'Rohini', 'Pune', '9845275324', 'rohini@gmail.com', 'rohini2009'),
(10, 'Shweta', 'Solapur', '9952886232', 'shweta@gmail.com', 'shweta0679');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
