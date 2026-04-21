-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2026 at 09:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `publisher` varchar(150) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isbn` varchar(20) DEFAULT NULL,
  `shelf_location` varchar(50) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `source_of_fund` varchar(150) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `title`, `author`, `category_id`, `publisher`, `publication_year`, `created_at`, `updated_at`, `isbn`, `shelf_location`, `remarks`, `class`, `pages`, `source_of_fund`, `cost_price`) VALUES
(1, 'asdasd', 'asdasd', 1, 'asdasd', 2020, '2026-02-07 09:44:44', '2026-03-26 11:52:30', '021301239012', 'a1-16', 'sikret', 'fadfadfads', 200, 'purchased', 7000.00),
(5, 'San.Jose', 'demash', 7, 'lorenzo', 2026, '2026-03-26 08:20:17', '2026-03-26 08:20:17', '1233441144', 'a1-19', '', 'k', 200, 'purchased', 1500.00),
(6, 'dsafadsf', 'adsfads', 6, 'asdfads', 2020, '2026-03-28 10:24:22', '2026-03-28 10:24:22', 'dsfads', 'a1-17', 'dafads', '2321s', 1000, 'purchased', 1500.00),
(7, 'adsfadsf', 'dfadsf', 6, 'asdedfads', 2020, '2026-03-28 12:59:25', '2026-03-28 12:59:25', '21312321', 'sdads', 'asdfadsf', 'asdfadsf', 1000, 'purchaedsed', 15000.00),
(8, 'dasfads', 'fadsfads', 6, 'adsfads', 2020, '2026-03-28 14:27:48', '2026-03-28 14:27:48', '123213123', 'dsfads', 'fadsfads', 'asdas', 1233, 'purchased', 1200.00),
(12, 'christbrown', 'christaw', 6, 'fadsfasddsfads', 2021, '2026-04-11 02:35:20', '2026-04-11 02:59:32', '123213211223', 'dfasdf', 'fasdfasd', 'fadsfasd', 100, 'adsfasdf', 1000.00),
(13, 'dfads', 'dfadsf', 6, 'fadsfads', 2026, '2026-04-12 07:07:52', '2026-04-12 07:07:52', '312312312', 'adsfadsffadsf', 'adsfadsfaadf', 'dsfadsfa', 100, 'purchased', 5000.00),
(15, 'Harry Potter ', 'JK Rowling', 7, 'New York Times', 1999, '2026-04-14 04:33:53', '2026-04-14 04:33:53', '20012322', 'A1-A2', 'WOW', 'N/A', 200, 'Purchased', 6500.00),
(16, 'asdfawds', 'adsfadsfadsf', 6, 'asdfadsfg', 2026, '2026-04-14 04:37:56', '2026-04-14 04:37:56', 'adsfasdg', 'asdf', 'wow', 'NA', 100, 'rematch', 100.00),
(17, 'kupal', 'hary', 7, 'lol', 2015, '2026-04-14 05:17:52', '2026-04-14 05:17:52', '2143455623', 'as-1', 'ambot', 'NONE', 20445, 'ambot', 2545.00),
(18, 'asdfg', 'asdgadb', 7, 'dsfh', 2026, '2026-04-14 05:18:52', '2026-04-14 05:18:52', '2332523', 'asdgcbv', 'sadg', 'dsf', 213, 'asdf', 124.00),
(19, 'sdaf', 'sadfg', 7, 'dsfg', 2026, '2026-04-14 05:22:27', '2026-04-14 05:22:27', '2341', 'adsf', 'dsaf', 'dfadf', 34, 'daf', 321.00),
(21, 'dictionary', 'michael alao', 9, 'dasdas', 1999, '2026-04-14 07:11:19', '2026-04-14 07:11:19', '3213213', 'dsfdsf', 'dsadas', 'adsdasd', 100, 'dasdas', 1500.00),
(23, 'adasd', 'asdfasdf', 6, 'fasdfasd', 2026, '2026-04-18 03:58:17', '2026-04-18 03:58:17', '12312312', 'fadsfasd', 'fadsfasd', 'adsfads', 123123, 'dsafsd', 12312.00);

-- --------------------------------------------------------

--
-- Table structure for table `book_copy`
--

CREATE TABLE `book_copy` (
  `copy_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `acquisition_number` varchar(50) DEFAULT NULL,
  `status` enum('Available','Borrowed') DEFAULT 'Available',
  `date_received` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_copy`
--

INSERT INTO `book_copy` (`copy_id`, `book_id`, `acquisition_number`, `status`, `date_received`, `created_at`, `updated_at`) VALUES
(1, 1, '012321312', 'Borrowed', '2020-10-10', '2026-02-08 08:55:34', '2026-04-14 07:16:55'),
(3, 1, '21321321', 'Available', '2026-03-20', '2026-03-20 07:48:13', '2026-04-14 04:28:40'),
(4, 1, '312312312', 'Available', '2026-04-13', '2026-03-20 07:48:24', '2026-04-14 04:00:22'),
(5, 1, '213123122314', 'Borrowed', '2026-03-20', '2026-03-20 07:48:57', '2026-04-14 07:17:12'),
(18, 6, '13213213', 'Available', '2026-03-28', '2026-03-28 12:38:34', '2026-04-14 05:16:05'),
(19, 5, '2312321', 'Available', '2026-04-13', '2026-03-29 17:07:15', '2026-04-14 05:16:41'),
(20, 1, '21321321344112', 'Available', '2026-03-30', '2026-03-29 17:31:39', '2026-04-13 16:15:01'),
(21, 1, '1232132132131', 'Available', '2026-03-30', '2026-03-29 17:40:02', '2026-04-24 15:03:09'),
(23, 7, '123124455123213', 'Available', '2026-04-14', '2026-04-13 16:16:10', '2026-04-22 07:21:06'),
(24, 1, '123213123444', 'Available', '2026-04-14', '2026-04-14 04:04:19', '2026-04-24 15:45:51'),
(25, 16, '2004213', 'Available', '2026-04-14', '2026-04-14 04:38:49', '2026-04-14 04:38:49'),
(26, 16, '12354', 'Available', '2026-04-14', '2026-04-14 05:19:37', '2026-04-14 05:19:37'),
(27, 13, '1243243', 'Available', '2026-04-14', '2026-04-14 06:12:18', '2026-04-14 06:12:18'),
(28, 21, '213213231231', 'Available', '2026-04-14', '2026-04-14 07:12:19', '2026-04-14 07:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `borrower_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `Id_number` varchar(50) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `borrower_type` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive','Blocked') DEFAULT 'Active',
  `borrow_limit` int(11) DEFAULT 3,
  `date_registered` date DEFAULT curdate(),
  `remarks` text DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`borrower_id`, `first_name`, `last_name`, `id_type`, `Id_number`, `email`, `phone_number`, `address`, `borrower_type`, `status`, `borrow_limit`, `date_registered`, `remarks`, `date_of_birth`, `gender`) VALUES
(1, 'clifford', 'leagspit', 'Driver’s License', '3213213', 'clifford.legaspi@wlcormoc.edu.ph', '09208878204', 'brgy.bagong buhay ormoc, ormoc', 'Student', 'Active', 4, '2026-03-05', NULL, '2025-06-03', 'Other'),
(10, 'michael', 'alao', 'Student ID', '321312312', 'michaelAlao@gmail.com', '21312312', 'brgy.westerrn dado ormoc city', 'Student', 'Active', 4, '2026-03-18', NULL, '2026-04-13', 'Male'),
(11, 'Christian', 'Dedil', 'Student ID', '123213213', 'christiandedil@gmail.com', '02312312', 'bagiong buhay', 'Student', 'Active', 4, '2026-03-24', NULL, '2026-04-13', 'Male'),
(12, 'christian', 'malinao', 'Student ID', '32132134', 'christianmalinao@gmail.com', '09208868203', 'brgy tambulilid', 'Student', 'Active', 4, '2026-03-29', NULL, '2025-06-03', 'Male'),
(14, 'angelica', 'bulante', 'Student ID', '1111', 'bulante@gmail.com', '90291302', 'brgy.mabini ormoc ormoc', 'Student', 'Active', 4, '2026-04-14', NULL, '2006-09-04', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(6, 'General'),
(7, 'Information Technology'),
(1, 'negativity'),
(8, 'new'),
(9, 'new category');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `fine_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `days_overdue` int(11) NOT NULL,
  `fine_date` date NOT NULL,
  `status` enum('Unpaid','Paid','Waived') DEFAULT 'Unpaid',
  `payment_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`fine_id`, `transaction_id`, `borrower_id`, `amount`, `days_overdue`, `fine_date`, `status`, `payment_date`, `remarks`) VALUES
(2, 28, 14, 30.00, 3, '2026-04-24', 'Paid', '2026-04-24', NULL),
(3, 25, 10, 30.00, 3, '2026-04-24', 'Paid', '2026-04-19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `copy_id` int(11) NOT NULL,
  `rental_date` date NOT NULL,
  `due_date` date NOT NULL,
  `returned_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `cancelled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `borrower_id`, `book_id`, `copy_id`, `rental_date`, `due_date`, `returned_date`, `status`, `cancelled_date`) VALUES
(5, 1, 1, 4, '2026-03-20', '2026-03-20', '2026-04-14', 'Returned', NULL),
(7, 1, 1, 5, '2026-03-20', '2026-03-28', '2026-04-14', 'Returned', NULL),
(11, 10, 1, 21, '2026-04-13', '2026-04-20', NULL, 'Cancelled', NULL),
(12, 11, 1, 20, '2026-04-16', '2026-04-23', NULL, 'Cancelled', NULL),
(13, 11, 1, 20, '2026-04-15', '2026-04-22', NULL, 'Cancelled', NULL),
(14, 1, 1, 20, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(15, 1, 5, 19, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(16, 10, 5, 19, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(17, 11, 5, 19, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(18, 11, 5, 19, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(19, 12, 1, 1, '2026-04-14', '2026-04-21', '2026-04-14', 'Returned', NULL),
(20, 11, 5, 19, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(21, 11, 5, 19, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(22, 11, 5, 19, '2026-04-14', '2026-04-21', NULL, 'Cancelled', NULL),
(23, 11, 5, 19, '2026-04-14', '2026-04-21', '2026-04-14', 'Returned', NULL),
(24, 12, 6, 18, '2026-04-14', '2026-04-30', '2026-04-14', 'Returned', NULL),
(25, 10, 1, 24, '2026-04-14', '2026-04-21', '2026-04-24', 'Returned', NULL),
(26, 14, 7, 23, '2026-04-14', '2026-04-21', '2026-04-22', 'Returned', NULL),
(27, 14, 1, 1, '2026-04-14', '2026-04-21', NULL, 'Borrowed', NULL),
(28, 14, 1, 21, '2026-04-14', '2026-04-21', '2026-04-24', 'Returned', NULL),
(29, 14, 1, 5, '2026-04-14', '2026-04-21', NULL, 'Borrowed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_role`) VALUES
(1, 'admin', 'admin123', 'admin'),
(5, 'michael', 'WLC', 'admin'),
(6, 'clifford', 'wlc', 'User'),
(7, 'willbitoy', '123', 'admin'),
(8, 'kyleSamson', '1234', 'User'),
(9, 'dedil', 'dedil123', 'Admin'),
(10, 'alao', 'alao123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `unique_title` (`title`),
  ADD KEY `fk_book_category` (`category_id`);

--
-- Indexes for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD PRIMARY KEY (`copy_id`),
  ADD UNIQUE KEY `unique_book_copy` (`book_id`,`acquisition_number`),
  ADD KEY `idx_book_id` (`book_id`),
  ADD KEY `idx_isbn` (`acquisition_number`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`borrower_id`),
  ADD UNIQUE KEY `unique_fullname` (`first_name`,`last_name`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`fine_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `borrower_id` (`borrower_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `copy_id` (`copy_id`),
  ADD KEY `borrower_id` (`borrower_id`),
  ADD KEY `fk_book` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `book_copy`
--
ALTER TABLE `book_copy`
  MODIFY `copy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `borrower`
--
ALTER TABLE `borrower`
  MODIFY `borrower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `fine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL;

--
-- Constraints for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD CONSTRAINT `fk_book_copy` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE;

--
-- Constraints for table `fine`
--
ALTER TABLE `fine`
  ADD CONSTRAINT `fine_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`transaction_id`),
  ADD CONSTRAINT `fine_ibfk_2` FOREIGN KEY (`borrower_id`) REFERENCES `borrower` (`borrower_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`copy_id`) REFERENCES `book_copy` (`copy_id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`borrower_id`) REFERENCES `borrower` (`borrower_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
