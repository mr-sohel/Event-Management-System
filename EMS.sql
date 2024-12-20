-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2024 at 07:15 PM
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
-- Database: `EMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `Attendee`
--

CREATE TABLE `Attendee` (
  `attendee_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(15) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Attendee`
--

INSERT INTO `Attendee` (`attendee_id`, `name`, `number`, `event_id`) VALUES
(1, 'Md. Sohel Rana', '01712345678', 1),
(2, 'Ayesha Siddique', '01812345679', 1),
(3, 'Hasan Mahmud', '01623456789', 2),
(4, 'Sharmin Akter', '01798765432', 3),
(5, 'Riaz Chowdhury', '01911223344', 3),
(6, 'Rokeya Begum', '01766554433', 4),
(7, 'Fahim Hossain', '01877889922', 5),
(8, 'Sharmeen Kabir', '01755667788', 5),
(9, 'Sadia Rahman', '01988997766', 6),
(10, 'Zahid Khan', '01644556677', 6),
(11, 'Rafiq Islam', '01711224455', 7),
(12, 'Asma Akter', '01866778899', 8),
(13, 'Nafis Anwar', '01988990011', 9),
(14, 'Lamia Hossain', '01733445566', 9),
(15, 'Morshed Alam', '01899887766', 10),
(16, 'Tahmina Sultana', '01666778899', 10),
(17, 'Adil Ahmed', '01944556677', 11),
(18, 'Shakil Hasan', '01833445566', 12),
(19, 'Sumiya Rahman', '01799887766', 13),
(20, 'Anika Sultana', '01933445577', 14),
(21, 'Afzal Karim', '01811224455', 15),
(22, 'Rubina Akter', '01999887766', 16),
(23, 'Hafiz Chowdhury', '01633445577', 17),
(24, 'Farzana Ahmed', '01822334455', 18),
(25, 'Nishat Jahan', '01788990011', 19),
(26, 'Mehedi Hassan', '01944556688', 20),
(27, 'Nazmul Haque', '01877889922', 21),
(28, 'Sajida Parveen', '01655667788', 22),
(29, 'Saif Hossain', '01966778899', 23),
(30, 'Tania Sultana', '01744556677', 24);

-- --------------------------------------------------------

--
-- Table structure for table `Budget`
--

CREATE TABLE `Budget` (
  `budget_id` int(11) NOT NULL,
  `total_budget` decimal(10,2) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Budget`
--

INSERT INTO `Budget` (`budget_id`, `total_budget`, `event_id`) VALUES
(1, 50000.00, 1),
(2, 75000.00, 2),
(3, 60000.00, 3),
(4, 100000.00, 4),
(5, 30000.00, 5),
(6, 20000.00, 6),
(7, 45000.00, 7),
(8, 70000.00, 8),
(9, 65000.00, 9),
(10, 55000.00, 10),
(11, 80000.00, 11),
(12, 90000.00, 12),
(13, 25000.00, 13),
(14, 30000.00, 14),
(15, 35000.00, 15),
(16, 40000.00, 16),
(17, 50000.00, 17),
(18, 60000.00, 18),
(19, 55000.00, 19),
(20, 70000.00, 20),
(21, 120000.00, 2),
(22, 30000.00, 6),
(23, 40000.00, 8),
(24, 75000.00, 14);

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--

CREATE TABLE `Event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Event`
--

INSERT INTO `Event` (`event_id`, `event_name`, `event_date`) VALUES
(1, 'Startup Meetup Dhaka', '2024-12-15'),
(2, 'Tech Conference 2024', '2024-12-10'),
(3, 'Food Fest Chattogram', '2024-11-25'),
(4, 'Eid Carnival Sylhet', '2024-05-01'),
(5, 'Winter Charity Gala', '2023-12-05'),
(6, 'Cultural Heritage Fair', '2024-04-14'),
(7, 'Bangladesh Film Festival', '2023-10-20'),
(8, 'Women in Leadership Summit', '2024-09-12'),
(9, 'Art & Photography Exhibition', '2024-01-20'),
(10, 'Volunteer Appreciation Day', '2024-06-05'),
(11, 'Small Business Forum', '2024-07-01'),
(12, 'Green Bangladesh Summit', '2024-08-15'),
(13, 'Freelancers Meetup', '2024-02-20'),
(14, 'Cycling Day Dhaka', '2024-03-10'),
(15, 'Education Expo', '2023-11-15'),
(16, 'Independence Day Celebration', '2024-03-26'),
(17, 'National Youth Festival', '2024-07-15'),
(18, 'Sustainable Living Workshop', '2024-04-01'),
(19, 'Public Speaking Workshop', '2024-09-05'),
(20, 'Dhaka Marathon', '2024-06-06'),
(21, 'Robotics Exhibition', '2023-12-20'),
(22, 'Job Fair Dhaka', '2024-07-10'),
(23, 'Coding Marathon 2024', '2024-08-20'),
(24, 'Film Critics Meetup', '2023-12-10'),
(25, 'Bangladesh Music Night', '2024-03-15'),
(26, 'Health & Wellness Fair', '2024-06-01'),
(27, 'Innovation Summit', '2024-12-12'),
(28, 'Barisal Food Festival', '2024-01-25'),
(29, 'National Science Fair', '2024-08-01'),
(30, 'Open Air Music Fest', '2024-05-15'),
(31, 'Startup Bootcamp', '2024-10-05'),
(32, 'NGO Networking Night', '2024-11-01'),
(33, 'Chattogram Tech Talk', '2024-02-25'),
(34, 'E-Commerce Expo', '2024-06-15'),
(35, 'Dhaka Book Fair', '2024-01-01'),
(36, 'Winter Wonderland Festival', '2024-12-25'),
(37, 'Film Awards Night', '2024-04-30'),
(38, 'Cycling Championship', '2024-07-05'),
(39, 'National Science Olympiad', '2024-09-25'),
(40, 'Bengali New Year Celebration', '2024-04-14'),
(41, 'Startup Investors Meetup', '2024-08-10'),
(42, 'Regional Tech Summit', '2024-03-20'),
(43, 'Fashion Expo Dhaka', '2024-05-20'),
(44, 'Dhaka Arts Festival', '2024-06-25'),
(45, 'Chattogram Startup Fest', '2024-11-20'),
(46, 'NGO Volunteer Summit', '2024-12-05'),
(47, 'Rajshahi Literature Fest', '2024-01-15'),
(48, 'Sylhet Cultural Day', '2024-02-10'),
(49, 'Gazipur Sports Carnival', '2023-12-18'),
(50, 'Digital Bangladesh Expo', '2024-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `Hosts`
--

CREATE TABLE `Hosts` (
  `venue_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Hosts`
--

INSERT INTO `Hosts` (`venue_id`, `event_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 3),
(3, 6),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Requires`
--

CREATE TABLE `Requires` (
  `vendor_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Requires`
--

INSERT INTO `Requires` (`vendor_id`, `event_id`) VALUES
(1, 1),
(1, 7),
(2, 1),
(2, 8),
(3, 2),
(3, 9),
(4, 2),
(4, 10),
(5, 3),
(5, 11),
(6, 3),
(6, 12),
(7, 4),
(8, 4),
(9, 5),
(10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Schedule`
--

CREATE TABLE `Schedule` (
  `schedule_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Schedule`
--

INSERT INTO `Schedule` (`schedule_id`, `start_date`, `end_date`, `event_id`) VALUES
(1, '2023-10-01', '2023-10-03', 1),
(2, '2023-11-10', '2023-11-12', 2),
(3, '2023-12-05', '2023-12-07', 3),
(4, '2024-01-15', '2024-01-17', 4),
(5, '2024-02-10', '2024-02-12', 5),
(6, '2024-03-20', '2024-03-22', 6),
(7, '2023-12-20', '2023-12-22', 7),
(8, '2024-01-10', '2024-01-15', 8),
(9, '2024-04-01', '2024-04-04', 9),
(10, '2024-05-01', '2024-05-03', 10),
(11, '2023-09-25', '2023-09-27', 11),
(12, '2024-06-15', '2024-06-17', 12),
(13, '2024-03-01', '2024-03-04', 13),
(14, '2023-12-01', '2023-12-03', 14),
(15, '2024-02-20', '2024-02-22', 15),
(16, '2024-07-10', '2024-07-12', 16),
(17, '2023-11-15', '2023-11-17', 17),
(18, '2024-03-10', '2024-03-13', 18),
(19, '2024-05-20', '2024-05-22', 19),
(20, '2023-08-25', '2023-08-27', 20),
(21, '2023-12-10', '2024-12-12', 2),
(22, '2024-06-22', '2024-12-25', 4),
(23, '2023-11-10', '2023-11-12', 7),
(24, '2024-01-25', '2024-01-28', 15);

-- --------------------------------------------------------

--
-- Table structure for table `Task`
--

CREATE TABLE `Task` (
  `task_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Task`
--

INSERT INTO `Task` (`task_id`, `name`, `event_id`) VALUES
(1, 'Stage Setup', 1),
(2, 'Catering', 1),
(3, 'Decorations', 1),
(4, 'Guest Coordination', 2),
(5, 'Agenda Planning', 2),
(6, 'Food Stalls', 3),
(7, 'Volunteer Management', 3),
(8, 'Venue Cleaning', 4),
(9, 'Speaker Management', 4),
(10, 'Booth Setup', 5),
(11, 'Program Scheduling', 6),
(12, 'Live Streaming', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Vendor`
--

CREATE TABLE `Vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `availability` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Vendor`
--

INSERT INTO `Vendor` (`vendor_id`, `name`, `availability`) VALUES
(1, 'Dhaka Event Planners', 'Available'),
(2, 'Chattogram Caterers', 'Booked'),
(3, 'Sylhet Sound Systems', 'Available'),
(4, 'Rajshahi Decorators', 'Available'),
(5, 'Gazipur Management Services', 'Available'),
(6, 'Barisal Event Solutions', 'Booked'),
(7, 'Kushtia Light & Sound', 'Available'),
(8, 'Mymensingh Event Managers', 'Booked'),
(9, 'Khulna Catering', 'Available'),
(10, 'Dhaka Premium Rentals', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `Venue`
--

CREATE TABLE `Venue` (
  `venue_id` int(11) NOT NULL,
  `venue_name` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Venue`
--

INSERT INTO `Venue` (`venue_id`, `venue_name`, `capacity`) VALUES
(1, 'International Convention City', 1000),
(2, 'Bangabandhu International Conference Center', 500),
(3, 'Sheraton Dhaka', 300),
(4, 'Radisson Blu Dhaka', 400),
(5, 'The Westin Dhaka', 200),
(6, 'BICC Chattogram', 700),
(7, 'Dhaka Arts Center', 300),
(8, 'Jatiya Sangsad Bhaban', 800),
(9, 'Sylhet Grand Palace', 500),
(10, 'Chattogram Trade Center', 600),
(11, 'Rajshahi Community Center', 400),
(12, 'Khulna Sports Complex', 1000),
(13, 'Mymensingh Cultural Center', 300),
(14, 'Gazipur Convention Hall', 400),
(15, 'Barisal Event Hall', 300),
(16, 'Noakhali Expo Center', 350),
(17, 'Pabna Auditorium', 200),
(18, 'Narsingdi Multipurpose Hall', 250),
(19, 'Cox’s Bazar Conference Center', 500),
(20, 'Hotel Sea Crown', 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Attendee`
--
ALTER TABLE `Attendee`
  ADD PRIMARY KEY (`attendee_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `Budget`
--
ALTER TABLE `Budget`
  ADD PRIMARY KEY (`budget_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `Event`
--
ALTER TABLE `Event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `Hosts`
--
ALTER TABLE `Hosts`
  ADD PRIMARY KEY (`venue_id`,`event_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `Requires`
--
ALTER TABLE `Requires`
  ADD PRIMARY KEY (`vendor_id`,`event_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `Schedule`
--
ALTER TABLE `Schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `Task`
--
ALTER TABLE `Task`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `Vendor`
--
ALTER TABLE `Vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `Venue`
--
ALTER TABLE `Venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Attendee`
--
ALTER TABLE `Attendee`
  ADD CONSTRAINT `Attendee_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`);

--
-- Constraints for table `Budget`
--
ALTER TABLE `Budget`
  ADD CONSTRAINT `Budget_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`);

--
-- Constraints for table `Hosts`
--
ALTER TABLE `Hosts`
  ADD CONSTRAINT `Hosts_ibfk_1` FOREIGN KEY (`venue_id`) REFERENCES `Venue` (`venue_id`),
  ADD CONSTRAINT `Hosts_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`);

--
-- Constraints for table `Requires`
--
ALTER TABLE `Requires`
  ADD CONSTRAINT `Requires_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `Vendor` (`vendor_id`),
  ADD CONSTRAINT `Requires_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`);

--
-- Constraints for table `Schedule`
--
ALTER TABLE `Schedule`
  ADD CONSTRAINT `Schedule_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`);

--
-- Constraints for table `Task`
--
ALTER TABLE `Task`
  ADD CONSTRAINT `Task_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
