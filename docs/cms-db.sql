-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 12:39 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(2, 'admin@giki.edu.pk', '$2a$10$7SzIgtJP69.hsrpUDMyMvef8LjIaHmmkjc4Iodow6b5/x7/GPVM5e', '2021-01-02 12:21:53', '2021-01-02 13:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `reg_no` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `lecture_no` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `reg_no`, `section_id`, `lecture_no`, `date`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 2017287, 1, 1, '2021-01-31 19:00:00', 1, '2021-01-02 12:05:57', '2021-01-02 12:05:57'),
(2, 2017287, 1, 2, '2021-02-28 19:00:00', 1, '2021-01-02 12:06:24', '2021-01-02 12:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(255) NOT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `credit_hours` int(11) NOT NULL,
  `description` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `faculty_name`, `name`, `credit_hours`, `description`, `createdAt`, `updatedAt`) VALUES
('CS101', 'FCSE', 'Intro to Programming', 3, 'Lorem Ipsum description', '2021-01-01 23:25:42', '2021-01-01 23:25:42'),
('CS311', 'FCSE', 'System Programming', 3, 'Lorem Ipsum description', '2021-01-01 23:26:15', '2021-01-01 23:26:15'),
('ME101', 'FME', 'Enggineering Drawing', 3, 'Lorem Ipsum description', '2021-01-01 23:26:37', '2021-01-01 23:26:37'),
('ME102', 'FME', 'ME Workshop', 1, 'Lorem Ipsum description', '2021-01-01 23:26:53', '2021-01-01 23:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `reg_no` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `academic_year` int(11) NOT NULL,
  `date_enrolled` datetime NOT NULL,
  `semester` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `reg_no`, `section_id`, `grade`, `academic_year`, `date_enrolled`, `semester`, `createdAt`, `updatedAt`) VALUES
(1, 2017403, 5, NULL, 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:39:56', '2021-01-01 23:39:56'),
(2, 2017042, 6, NULL, 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:40:12', '2021-01-01 23:40:12'),
(3, 2017042, 8, NULL, 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:40:16', '2021-01-01 23:40:16'),
(4, 2017403, 7, NULL, 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:40:24', '2021-01-01 23:40:24'),
(5, 2017287, 1, 'A-', 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:40:31', '2021-01-01 23:40:31'),
(6, 2017287, 3, 'A-', 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:40:35', '2021-01-01 23:40:35'),
(7, 2017261, 2, 'B+', 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:40:40', '2021-01-01 23:40:40'),
(8, 2017261, 4, 'B+', 2021, '2021-01-01 00:00:00', 'Fall', '2021-01-01 23:40:46', '2021-01-01 23:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `dean_id` int(11) DEFAULT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`name`, `location`, `dean_id`, `contact_phone`, `contact_email`, `createdAt`, `updatedAt`) VALUES
('FCSE', NULL, 1, '+92 308 897479', 'fcse@giki.edu.pk', '2021-01-01 23:14:25', '2021-01-01 23:14:25'),
('FES', NULL, NULL, '+92 308 897479', 'fes@giki.edu.pk', '2021-01-02 18:34:02', '2021-01-02 18:34:02'),
('FME', NULL, 2, '+92 308 897479', 'fme@giki.edu.pk', '2021-01-01 23:14:47', '2021-01-01 23:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_members`
--

CREATE TABLE `faculty_members` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` datetime NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_members`
--

INSERT INTO `faculty_members` (`id`, `faculty_name`, `name`, `phone`, `email`, `password`, `dob`, `address`, `designation`, `createdAt`, `updatedAt`) VALUES
(1, 'FCSE', 'Muhammad Kashif', '+92 308 897479', 'kashif@giki.edu.pk', '$2a$10$D3jkxw1lznqtz1T2xVic4OEoHjlWLZnB7bhBSRIKggZ40UtNo/UkG', '1999-06-14 19:00:00', 'Kamra, Attock', 'Professor', '2021-01-01 23:18:31', '2021-01-01 23:18:31'),
(2, 'FME', 'Ahsen', '+92 308 897479', 'ahsen@giki.edu.pk', '$2a$10$AUTz80FYfy.4r/upG6lFzOxNmPrYQRwUZkwROTXpmvtqsJDnXRuJu', '1999-06-14 19:00:00', 'Kamra, Attock', 'Professor', '2021-01-01 23:23:15', '2021-01-01 23:23:15'),
(3, 'FME', 'Asif', '+92 308 897479', 'asif@giki.edu.pk', '$2a$10$7FuoesUYrO82PIUC4W1n8u7SMdLKCGOA2mOnNiNfzkmygsjkiMocC', '1999-06-14 19:00:00', 'Kamra, Attock', 'Professor', '2021-01-01 23:29:49', '2021-01-01 23:29:49'),
(4, 'FCSE', 'Hamza', '+92 308 897479', 'hamza@giki.edu.pk', '$2a$10$PKoqCV7ppSyc5IWsNjJbleUhdlSw0voC8vUReiM9lSgPjqtxxlECi', '1999-06-14 19:00:00', 'Kamra, Attock', 'Professor', '2021-01-01 23:30:11', '2021-01-01 23:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `reg_no` int(11) DEFAULT NULL,
  `semester` varchar(255) NOT NULL,
  `gpa` float NOT NULL,
  `scholistic_status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `reg_no`, `semester`, `gpa`, `scholistic_status`, `createdAt`, `updatedAt`) VALUES
(1, 2017287, 'Fall', 3.67, 'Distinction', '2021-01-02 11:54:10', '2021-01-02 11:54:10'),
(3, 2017261, 'Fall', 3.33, 'Good', '2021-01-02 12:00:35', '2021-01-02 12:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty_member_id` int(11) DEFAULT NULL,
  `room_no` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `course_code`, `name`, `faculty_member_id`, `room_no`, `createdAt`, `updatedAt`) VALUES
(1, 'CS101', 'A', 1, 1, '2021-01-01 23:28:57', '2021-01-01 23:28:57'),
(2, 'CS101', 'B', 4, 1, '2021-01-01 23:30:46', '2021-01-01 23:30:46'),
(3, 'CS311', 'A', 1, 1, '2021-01-01 23:31:09', '2021-01-01 23:31:09'),
(4, 'CS311', 'B', 4, 1, '2021-01-01 23:31:19', '2021-01-01 23:31:19'),
(5, 'ME101', 'A', 2, 1, '2021-01-01 23:31:47', '2021-01-01 23:31:47'),
(6, 'ME101', 'B', 3, 1, '2021-01-01 23:31:53', '2021-01-01 23:31:53'),
(7, 'ME102', 'B', 3, 1, '2021-01-01 23:32:00', '2021-01-01 23:32:00'),
(8, 'ME102', 'A', 2, 1, '2021-01-01 23:32:06', '2021-01-01 23:32:06'),
(9, 'CS311a', 'B', 4, 1, '2021-01-02 19:23:55', '2021-01-02 19:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20201230193647-create-faculty.js'),
('20201230201608-create-student.js'),
('20201230201907-create-faculty-member.js'),
('20201230202330-create-course.js'),
('20201230202605-create-section.js'),
('20201230202933-create-result.js'),
('20201231170016-create-enrollment.js'),
('20201231171456-create-attendance.js'),
('20210101234336-create-admin.js');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `reg_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` datetime NOT NULL,
  `batch` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`reg_no`, `name`, `phone`, `email`, `password`, `dob`, `batch`, `address`, `faculty_name`, `gender`, `cgpa`, `createdAt`, `updatedAt`) VALUES
(2017042, 'Ahmed', '+92 308 897479', 'ahmed@giki.edu.pk', '$2a$10$eLBSvPq3nIGywGebkhMB3OzbzUXaLH4B7WIW1YVVRnOaczT2uS5MO', '1999-06-14 19:00:00', 27, 'Kamra, Attock', 'FME', 'M', NULL, '2021-01-01 23:35:52', '2021-01-01 23:35:52'),
(2017261, 'Muhammad Hamza', '+92 308 897479', 'hamza@giki.edu.pk', '$2a$10$TzcRbMvN8/wC/mAjRCQ0YOhxGvtzl50E4sCMCVcaxtYtm9TDJjJ72', '1999-06-14 19:00:00', 27, 'Kamra, Attock', 'FCSE', 'M', 3.33, '2021-01-01 23:35:04', '2021-01-01 23:35:04'),
(2017287, 'Muhammad Kashif', '+92 308 897479', 'kashif@giki.edu.pk', '$2a$10$KOADSm8g.gurz7e3uYYhP.SFhKtAOvPkfu5INUYn7k6.jq4efKD1C', '1999-06-14 19:00:00', 27, 'Kamra, Attock', 'FCSE', 'M', 3.67, '2021-01-01 23:34:34', '2021-01-01 23:34:34'),
(2017403, 'Saif', '+92 308 897479', 'saif@giki.edu.pk', '$2a$10$lXe6x2gk9G7oWOVI952tYeyudYnxFNDNfTA1ZuuPkeZcjwcBjhXYm', '1999-06-14 19:00:00', 27, 'Kamra, Attock', 'FME', 'M', NULL, '2021-01-01 23:36:06', '2021-01-01 23:36:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`),
  ADD UNIQUE KEY `course_code` (`course_code`),
  ADD KEY `faculty_name` (`faculty_name`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reg_no` (`reg_no`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `faculty_members`
--
ALTER TABLE `faculty_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `faculty_name` (`faculty_name`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reg_no` (`reg_no`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_member_id` (`faculty_member_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`reg_no`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `faculty_name` (`faculty_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty_members`
--
ALTER TABLE `faculty_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`reg_no`) REFERENCES `students` (`reg_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`faculty_name`) REFERENCES `faculties` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`reg_no`) REFERENCES `students` (`reg_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faculty_members`
--
ALTER TABLE `faculty_members`
  ADD CONSTRAINT `faculty_members_ibfk_1` FOREIGN KEY (`faculty_name`) REFERENCES `faculties` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`reg_no`) REFERENCES `students` (`reg_no`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`faculty_member_id`) REFERENCES `faculty_members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`faculty_name`) REFERENCES `faculties` (`name`) ON DELETE CASCADE;

--
-- Constraints for table `faculties`
--
ALTER TABLE `faculties`
 ADD CONSTRAINT `faculties_ibfk_1` FOREIGN KEY (`dean_id`) REFERENCES `faculty_members` (`id`) ON DELETE SET NULL;
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
