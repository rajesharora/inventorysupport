-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 07:45 PM
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
-- Database: `drupaldb`
--
CREATE DATABASE IF NOT EXISTS `drupaldb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `drupaldb`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"user_management\",\"table\":\"investmentcatg\"},{\"db\":\"user_management\",\"table\":\"investmentsubcatg\"},{\"db\":\"user_management\",\"table\":\"invstproductrevenue\"},{\"db\":\"user_management\",\"table\":\"invstproductexpense\"},{\"db\":\"user_management\",\"table\":\"investmentproduct\"},{\"db\":\"user_management\",\"table\":\"expenses\"},{\"db\":\"user_management\",\"table\":\"expense_type\"},{\"db\":\"user_management\",\"table\":\"expense_factors\"},{\"db\":\"user_management\",\"table\":\"revenuetype\"},{\"db\":\"user_management\",\"table\":\"expert\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'user_management', 'expenses', '{\"CREATE_TIME\":\"2024-07-09 08:33:22\",\"col_order\":[1,0,4,2,3],\"col_visib\":[1,1,1,1,1]}', '2024-07-11 16:17:17'),
('root', 'user_management', 'investmentcatg', '{\"sorted_col\":\"`investmentcatg`.`Investementcatgid` DESC\"}', '2024-07-20 07:02:30'),
('root', 'user_management', 'investmentsubcatg', '{\"sorted_col\":\"`investmentsubcatg`.`name` ASC\"}', '2024-07-20 06:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-07-24 17:45:07', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":198}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `user_management`
--
CREATE DATABASE IF NOT EXISTS `user_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user_management`;

-- --------------------------------------------------------

--
-- Table structure for table `admindetail`
--

CREATE TABLE `admindetail` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admindetail`
--

INSERT INTO `admindetail` (`id`, `username`, `password`, `email`, `phone`, `dob`, `state`, `city`) VALUES
(1, 'Aditiup', '$2b$12$eEHnKf80mUG5yfQ7J7Vp9.38B/Txg5Q3WH.n38s9a2U2BzkrRunku', 'upadhyayaditi051@gmail.com', '8769444440', '2003-03-18', 'Rajasthan', 'Jaipur'),
(2, 'Aditiup', '$2b$12$XCMmT8vLQqtogj0aA0kztejk9qnK0Sr6GL2ez44F0P.If.Apf2hFS', 'upadhyaayaditi051@gmail.com', '8769444440', '2012-12-12', 'Rajasthan', 'Jaipur'),
(3, 'Aditiupadhyay', '$2b$12$xp3beP6Hj4b/bTRF3MLjG.ZMxvwiTsrM.MF0O2Phd72Gmbh5TMZZW', 'deepakup@gmail.com', '9785643455', '2024-07-27', 'Tamil Nadu', 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `Expenseid` int(11) NOT NULL,
  `Expensetypeid` int(11) NOT NULL,
  `Expensefactorid` int(11) NOT NULL,
  `Expensetitle` varchar(255) NOT NULL,
  `Expensedetail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`Expenseid`, `Expensetypeid`, `Expensefactorid`, `Expensetitle`, `Expensedetail`) VALUES
(1, 4, 5, 'stationery items', 'few stationery items used as raw material'),
(2, 6, 6, 'all_in_one computer system', 'all_in_one computer system');

-- --------------------------------------------------------

--
-- Table structure for table `expense_factors`
--

CREATE TABLE `expense_factors` (
  `factorid` int(11) NOT NULL,
  `factorname` varchar(100) DEFAULT NULL,
  `factordescription` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_factors`
--

INSERT INTO `expense_factors` (`factorid`, `factorname`, `factordescription`) VALUES
(1, 'xyz', 'xyz'),
(2, 'xyz', 'xyz'),
(3, 'xyz', 'cvbn'),
(4, 'sdfg', 'dfgdfh'),
(5, 'one time expense', 'one time expense'),
(6, 'growing demand for computer rich resources', 'growing demand for computer rich resources');

-- --------------------------------------------------------

--
-- Table structure for table `expense_type`
--

CREATE TABLE `expense_type` (
  `expense_type_id` int(11) NOT NULL,
  `expense_type_title` varchar(100) NOT NULL,
  `expense_type_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_type`
--

INSERT INTO `expense_type` (`expense_type_id`, `expense_type_title`, `expense_type_description`) VALUES
(1, 'xyz', 'xyz'),
(2, 'xyz', 'avbn'),
(3, 'xyz', 'asdfg'),
(4, 'raw material expenses', 'raw material expenses'),
(5, 'raw material expenses', 'raw material expenses'),
(6, 'one_time_investment', 'for lab setup');

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE `expert` (
  `expertid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`expertid`, `username`, `password`, `email`, `phone`, `dob`, `state`, `city`) VALUES
(1, 'Adiuuu', '$2b$12$YyKzuYmUa1dIZ151yb9hteOQbnK8Mgdcy0pXO0q.sv5WmqyPoo81O', 'upadhyayadditi051@gmail.com', '8769444440', '2024-07-13', 'Rajasthan', 'Jaipur');

-- --------------------------------------------------------

--
-- Table structure for table `investmentcatg`
--

CREATE TABLE `investmentcatg` (
  `Investementcatgid` int(11) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investmentcatg`
--

INSERT INTO `investmentcatg` (`Investementcatgid`, `Category`, `Description`) VALUES
(1, 'gold', 'xyz'),
(4, 'education', 'education investment'),
(5, 'lab setup', 'lab setup equipments');

-- --------------------------------------------------------

--
-- Table structure for table `investmentproduct`
--

CREATE TABLE `investmentproduct` (
  `Ipid` int(11) NOT NULL,
  `Investmentsubcatgid` int(11) DEFAULT NULL,
  `Productname` varchar(255) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Enteredon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investmentproduct`
--

INSERT INTO `investmentproduct` (`Ipid`, `Investmentsubcatgid`, `Productname`, `Details`, `Status`, `Enteredon`) VALUES
(1, 2, 'books', 'books', 1, '2024-07-15'),
(2, 2, 'books', 'books', 1, '2024-07-15'),
(3, 2, 'books', 'books', 1, '2024-07-09'),
(4, 2, 'books', 'books', 1, '2024-07-16'),
(5, 1, 'hello', 'hello', 1, '2024-07-16'),
(6, 2, 'hello', 'nice to meet you', 1, '2024-07-20'),
(7, 2, 'books', 'hiii', 1, '2024-07-16'),
(8, 1, 'books', 'huoo', 1, '2024-07-12'),
(9, 1, 'books', 'jkdfvn', 1, '2024-07-19'),
(10, 2, 'books', 'huiio', 1, '2009-09-09'),
(11, 1, 'ghkjadsl', 'efklcerlmf', 1, '2024-08-03'),
(12, 2, 'books', 'erjkn,mwd', 1, '2024-07-19'),
(13, 2, 'booksjwejdk', 'erwjlfcmed,f', 1, '2024-07-27'),
(14, 2, 'booksjwejdk', 'erwjlfcmed,f', 1, '2024-07-27'),
(15, 2, 'booksjwejdk', 'erwjlfcmed,f', 1, '2024-07-27'),
(16, 2, 'abcde', 'fghijklmnopqrst', 1, '2024-07-18'),
(17, 2, '1234567', 'asdfghjkl', 1, '2024-07-17'),
(18, 2, '1234567', 'asdfghjkl', 1, '2024-07-17'),
(19, 2, '1234567', 'asdfghjkl', 1, '2024-07-17'),
(20, 2, 'ghkjadsl', '43twrwrgttrse', 1, '2024-07-18'),
(21, 2, 'hello', '123', 1, '2024-07-13'),
(22, 2, 'books', 'books to study', 1, '2024-07-16'),
(23, 2, 'hello', 'heyyyaaa', 1, '2024-07-17'),
(24, 2, 'hello', 'heyyyaaa', 1, '2024-07-17'),
(25, 2, 'hello', 'trdfxtr', 1, '2024-07-17'),
(26, 2, 'hello', 'trdfxtr', 1, '2024-07-17'),
(27, 2, 'hello', 'trdfxtr', 1, '2024-07-17'),
(28, 2, 'hello', 'trdfxtr', 1, '2024-07-17'),
(29, 2, 'hello', 'trdfxtr', 1, '2024-07-17'),
(30, 2, 'books', 'books', 1, '2024-07-17'),
(31, 2, 'ghkjadsl', 'er', 1, '2024-07-17'),
(32, 2, 'ghkjadsl', 'wsrjn,kate', 1, '2024-07-18'),
(33, 2, 'ghkjadsl', 'wsrjn,kate', 1, '2024-07-18'),
(34, 2, 'ghkjadsl', 'wsrjn,kate', 1, '2024-07-18'),
(35, 2, 'books', 'rfgcnh', 1, '2024-07-18'),
(36, 2, 'books', 'books', 1, '2024-07-18'),
(37, 1, 'books', 'books', 1, '2024-07-18'),
(38, 3, 'monitor', 'monitor for computer la seup', 1, '2024-07-19'),
(39, 3, 'monitor', 'monitor for computer la seup', 1, '2024-07-19'),
(40, 3, 'monitor', 'monitor for computer la seup', 1, '2024-07-19'),
(41, 3, 'monitor', 'monnitor for computers', 1, '2024-07-20'),
(42, 3, 'monitor', 'monitor', 1, '2024-07-20'),
(43, 3, 'books', 'jhhk', 1, '2024-07-20'),
(44, 3, 'books', 'monitoe', 1, '2024-07-20'),
(45, 3, 'books', 'monitoe', 1, '2024-07-20'),
(46, 3, 'books', 'monitoe', 1, '2024-07-20'),
(47, 3, 'books', 'hello how are you', 1, '2024-07-20'),
(48, 3, 'books', 'hello how are you', 1, '2024-07-20'),
(49, 3, 'mouse', 'mouse setups for computers', 1, '2024-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `investmentsubcatg`
--

CREATE TABLE `investmentsubcatg` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `investmentsubcatg`
--

INSERT INTO `investmentsubcatg` (`id`, `category_id`, `name`, `description`) VALUES
(1, 4, 'abc', 'hello'),
(2, 4, 'coaching institute', 'investment in coaching institute'),
(3, 5, 'computer sysem', 'monitor, CPU, Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `invstproductexpense`
--

CREATE TABLE `invstproductexpense` (
  `Ipexpnsid` int(11) NOT NULL,
  `Ipid` int(11) DEFAULT NULL,
  `Expenseid` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invstproductexpense`
--

INSERT INTO `invstproductexpense` (`Ipexpnsid`, `Ipid`, `Expenseid`, `Amount`) VALUES
(1, 5, 1, 567.00),
(2, 5, 1, 1200.00),
(3, 6, 1, 560.00),
(4, 6, 1, 300.00),
(5, 21, 1, 1000.00),
(6, 28, 1, 100.00),
(7, 46, 1, 5000.00),
(8, 47, 1, 5400.00),
(10, 48, 1, 5400.00),
(13, 49, 2, 1000.00),
(14, 49, 1, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `invstproductrevenue`
--

CREATE TABLE `invstproductrevenue` (
  `Prdrevenue` int(11) NOT NULL,
  `ipid` int(11) DEFAULT NULL,
  `Revenuetypeid` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invstproductrevenue`
--

INSERT INTO `invstproductrevenue` (`Prdrevenue`, `ipid`, `Revenuetypeid`, `Amount`) VALUES
(1, 44, 1, 500.00),
(2, 45, 1, 700.00),
(3, 47, 1, 7600.00),
(4, 47, 1, 6700.00),
(6, 48, 1, 6500.00),
(9, 49, 6, 5400.00),
(10, 49, 1, 800.00);

-- --------------------------------------------------------

--
-- Table structure for table `revenuetype`
--

CREATE TABLE `revenuetype` (
  `revenuetypeid` int(11) NOT NULL,
  `Investmentsubcatgid` int(11) DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `revenuetype`
--

INSERT INTO `revenuetype` (`revenuetypeid`, `Investmentsubcatgid`, `revenue`) VALUES
(1, 2, 'wetsettrs'),
(2, 2, 'wetsettrs'),
(6, 3, 'from the coaching institute');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone`, `dob`, `state`, `city`) VALUES
(6, 'Aditiup', '$2b$12$v97x1XyzLaqhutQdZeiC7ePCbspGAskhspswI4ie91T3pXCt1L4OS', 'deepakup@gmail.com', '8769444440', '2024-07-24', 'Rajasthan', 'Jaipur'),
(7, 'Aditiup', '$2b$12$MBakMqUgHszItGaglJGBIOfeyVed4tlYjW0ZjT.9y4wMLrpgsFoHa', 'upadhyayaditi051@gmaail.com', '8769444440', '2024-07-17', 'Rajasthan', 'Jaipur');

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `Userid` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Mobileno` varchar(20) NOT NULL,
  `Emailid` varchar(255) NOT NULL,
  `Dob` date NOT NULL,
  `Loginid` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindetail`
--
ALTER TABLE `admindetail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`Expenseid`),
  ADD KEY `Expensetypeid` (`Expensetypeid`),
  ADD KEY `Expensefactorid` (`Expensefactorid`);

--
-- Indexes for table `expense_factors`
--
ALTER TABLE `expense_factors`
  ADD PRIMARY KEY (`factorid`);

--
-- Indexes for table `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`expense_type_id`);

--
-- Indexes for table `expert`
--
ALTER TABLE `expert`
  ADD PRIMARY KEY (`expertid`);

--
-- Indexes for table `investmentcatg`
--
ALTER TABLE `investmentcatg`
  ADD PRIMARY KEY (`Investementcatgid`);

--
-- Indexes for table `investmentproduct`
--
ALTER TABLE `investmentproduct`
  ADD PRIMARY KEY (`Ipid`),
  ADD KEY `Investmentsubcatgid` (`Investmentsubcatgid`);

--
-- Indexes for table `investmentsubcatg`
--
ALTER TABLE `investmentsubcatg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `invstproductexpense`
--
ALTER TABLE `invstproductexpense`
  ADD PRIMARY KEY (`Ipexpnsid`),
  ADD KEY `Ipid` (`Ipid`),
  ADD KEY `Expenseid` (`Expenseid`);

--
-- Indexes for table `invstproductrevenue`
--
ALTER TABLE `invstproductrevenue`
  ADD PRIMARY KEY (`Prdrevenue`),
  ADD KEY `ipid` (`ipid`),
  ADD KEY `Revenuetypeid` (`Revenuetypeid`);

--
-- Indexes for table `revenuetype`
--
ALTER TABLE `revenuetype`
  ADD PRIMARY KEY (`revenuetypeid`),
  ADD KEY `Investmentsubcatgid` (`Investmentsubcatgid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`Userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindetail`
--
ALTER TABLE `admindetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `Expenseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_factors`
--
ALTER TABLE `expense_factors`
  MODIFY `factorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `expense_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expert`
--
ALTER TABLE `expert`
  MODIFY `expertid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investmentcatg`
--
ALTER TABLE `investmentcatg`
  MODIFY `Investementcatgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `investmentproduct`
--
ALTER TABLE `investmentproduct`
  MODIFY `Ipid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `investmentsubcatg`
--
ALTER TABLE `investmentsubcatg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invstproductexpense`
--
ALTER TABLE `invstproductexpense`
  MODIFY `Ipexpnsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invstproductrevenue`
--
ALTER TABLE `invstproductrevenue`
  MODIFY `Prdrevenue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `revenuetype`
--
ALTER TABLE `revenuetype`
  MODIFY `revenuetypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `Userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`Expensetypeid`) REFERENCES `expense_type` (`expense_type_id`),
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`Expensefactorid`) REFERENCES `expense_factors` (`factorid`);

--
-- Constraints for table `investmentproduct`
--
ALTER TABLE `investmentproduct`
  ADD CONSTRAINT `investmentproduct_ibfk_1` FOREIGN KEY (`Investmentsubcatgid`) REFERENCES `investmentsubcatg` (`id`);

--
-- Constraints for table `investmentsubcatg`
--
ALTER TABLE `investmentsubcatg`
  ADD CONSTRAINT `investmentsubcatg_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `investmentcatg` (`Investementcatgid`);

--
-- Constraints for table `invstproductexpense`
--
ALTER TABLE `invstproductexpense`
  ADD CONSTRAINT `invstproductexpense_ibfk_1` FOREIGN KEY (`Ipid`) REFERENCES `investmentproduct` (`Ipid`),
  ADD CONSTRAINT `invstproductexpense_ibfk_2` FOREIGN KEY (`Expenseid`) REFERENCES `expenses` (`Expenseid`);

--
-- Constraints for table `invstproductrevenue`
--
ALTER TABLE `invstproductrevenue`
  ADD CONSTRAINT `invstproductrevenue_ibfk_1` FOREIGN KEY (`ipid`) REFERENCES `investmentproduct` (`Ipid`),
  ADD CONSTRAINT `invstproductrevenue_ibfk_2` FOREIGN KEY (`Revenuetypeid`) REFERENCES `revenuetype` (`revenuetypeid`);

--
-- Constraints for table `revenuetype`
--
ALTER TABLE `revenuetype`
  ADD CONSTRAINT `revenuetype_ibfk_1` FOREIGN KEY (`Investmentsubcatgid`) REFERENCES `investmentsubcatg` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
