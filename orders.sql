-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 02:43 AM
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
-- Database: `bookworm_haven_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `book_id`, `customer_id`, `order_date`, `customer_name`, `customer_email`, `quantity`, `subtotal`) VALUES
(3, 1, 1, '2023-10-05 14:20:28', 'hello', 'asihdqio@g.com', 1, 12.99),
(4, 2, 1, '2023-10-05 14:20:28', 'world', 'asdiw@gm.con', 2, 29.98),
(5, 5, 1, '2023-10-05 14:20:28', 'SJFIOS', 'aihd@fg.com', 2, 49.98),
(6, 1, 1, '2023-10-05 14:36:28', 'asiurhfo', 'sau@GM.COM', 3, 38.97),
(7, 1, 1, '2023-10-05 16:58:15', 'jsfpoj', 'sopfj@fma.com', 2, 25.98),
(8, 1, 1, '2023-10-06 00:03:48', 'abc', 'abs@g.com', 1, 12.99),
(9, 2, 1, '2023-10-06 00:03:48', 'abc', 'abs@g.com', 1, 14.99),
(10, 3, 1, '2023-10-06 00:03:48', 'abc', 'abs@g.com', 1, 10.99),
(11, 4, 1, '2023-10-06 00:03:48', 'abc', 'abs@g.com', 1, 19.99),
(12, 5, 1, '2023-10-06 00:03:48', 'abc', 'abs@g.com', 1, 24.99),
(13, 1, 1, '2023-10-06 00:23:00', 'jsfpoj', 'dask@gm.com', 2, 25.98),
(14, 1, 1, '2023-10-06 00:24:07', 'jsfpoj', 'checklast@gmail.com', 2, 25.98),
(15, 5, 1, '2023-10-06 00:40:10', 'assignment', 'assignment@gmail.com', 3, 74.97);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
