-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2016 at 07:42 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbd33`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rut_admin` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `last_name_first` varchar(20) NOT NULL,
  `last_name_second` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `residency` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `rut_admin`, `name`, `last_name_first`, `last_name_second`, `age`, `residency`, `mail`) VALUES
(1, 1, '19123123-1', 'John', 'Cena', 'Mamani', 40, 'calle1', 'jcena@gmail.com'),
(2, 2, '13023345-6', 'Hideo', 'Kojima', 'Soto', 50, 'calle2', 'hkojima@konami.jp');

-- --------------------------------------------------------

--
-- Table structure for table `communes`
--

CREATE TABLE `communes` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `emergency_in_progress` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communes`
--

INSERT INTO `communes` (`id`, `admin_id`, `region_id`, `name`, `emergency_in_progress`) VALUES
(1, 2, 15, 'Putre', 1),
(2, 1, 8, 'Nuble', 0),
(3, 2, 13, 'Santiago', 0);

-- --------------------------------------------------------

--
-- Table structure for table `communes_volunteers`
--

CREATE TABLE `communes_volunteers` (
  `commune_id` int(11) NOT NULL,
  `volunteer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communes_volunteers`
--

INSERT INTO `communes_volunteers` (`commune_id`, `volunteer_id`) VALUES
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `emergencies`
--

CREATE TABLE `emergencies` (
  `id` int(11) NOT NULL,
  `commune_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(20) NOT NULL,
  `severity` varchar(20) NOT NULL,
  `description` text,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergencies`
--

INSERT INTO `emergencies` (`id`, `commune_id`, `admin_id`, `date`, `place`, `severity`, `description`, `status`) VALUES
(1, 1, 2, '2016-12-25', 'nuble chico', 'GRAVE', 'SE INUNDO EL PUEBLO', 'en progreso');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rut_manager` varchar(20) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `last_name_first` varchar(20) NOT NULL,
  `last_name_second` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `residency` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `user_id`, `rut_manager`, `admin_id`, `name`, `last_name_first`, `last_name_second`, `age`, `residency`, `mail`) VALUES
(1, 3, '18765398-4', 1, 'Nicolas', 'Roman', 'Marchant', 21, 'calle 69', 'nroman@gmail.com'),
(2, 4, '14567876-k', 2, 'Salvador', 'Allende', 'Gossens', 90, 'tumba 1', 'memate@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `emergency_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `mission_name` varchar(20) NOT NULL,
  `volunteer_amount` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `manager_id`, `emergency_id`, `admin_id`, `mission_name`, `volunteer_amount`, `status`) VALUES
(1, 1, 1, 2, 'rescatar gente', 2, 'en progreso');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `volunteer_id` int(11) NOT NULL,
  `detail` text,
  `urgency_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`) VALUES
(1, 'I REGION'),
(2, 'II REGION'),
(3, 'III REGION'),
(4, 'IV REGION'),
(5, 'V REGION'),
(6, 'VI REGION'),
(7, 'VII REGION'),
(8, 'VIII REGION'),
(9, 'IX REGION'),
(10, 'X REGION'),
(11, 'XI REGION'),
(12, 'XII REGION'),
(13, 'METROPOLITANA'),
(14, 'XIV REGION'),
(15, 'XV REGION');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `skill_type` varchar(20) NOT NULL,
  `skill_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `manager_id`, `skill_type`, `skill_name`) VALUES
(1, 1, 'fuerza bruta', 'levantamiento'),
(2, 2, 'Salud', 'primeros auxilios');

-- --------------------------------------------------------

--
-- Table structure for table `skills_volunteers`
--

CREATE TABLE `skills_volunteers` (
  `volunteer_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `domain_degree` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills_volunteers`
--

INSERT INTO `skills_volunteers` (`volunteer_id`, `skill_id`, `domain_degree`) VALUES
(1, 1, 10),
(2, 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `mission_id` int(11) NOT NULL,
  `task_name` varchar(20) NOT NULL,
  `volunteer_amount` int(11) NOT NULL,
  `task_status` varchar(20) NOT NULL,
  `guide_doc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `manager_id`, `mission_id`, `task_name`, `volunteer_amount`, `task_status`, `guide_doc`) VALUES
(1, 1, 1, 'levantar escombros', 1, 'en progreso', 'se levantan escombros con las manos.'),
(2, 1, 1, 'reanimar gente', 1, 'terminado', 'presionar fuertemente en el pecho.');

-- --------------------------------------------------------

--
-- Table structure for table `tasks_tools`
--

CREATE TABLE `tasks_tools` (
  `task_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks_tools`
--

INSERT INTO `tasks_tools` (`task_id`, `tool_id`) VALUES
(2, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `name`) VALUES
(1, 'Desfibrilador'),
(2, 'Pala');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `attributes` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `attributes`) VALUES
(1, 'jcena', '$2y$10$OSr.EQWu02zZZBDyaLL0qeUkpa4M9RIxkesK42CN3xz7BRvSW7JOS', 'A'),
(2, 'hkojima', '$2y$10$sEDY9yLXrBwyZECBFJZVHufYXNwre8OPaCT1QauFPwLB6XwFe7WR2', 'A'),
(3, 'nroman', '$2y$10$kQEgRZmOgvouL7kxbm5jKup/OtAc7L.P/u6JuMg1CE.B.GBMdjYa.', 'M'),
(4, 'sallende', '$2y$10$fy.6POoRnWmD9wmmWIZ2/.CtY4/sZyOnDOodJhwsN5vkuB2Axe866', 'M'),
(5, 'jmaden', '$2y$10$cM4yfpbXi2WAbVR9yyMkheIBHWT7MgVY0Vpl7RgH42rAVvx1G1Hn2', 'V'),
(6, 'ncage', '$2y$10$eRxThlvi3y2fFC54fQZ71Oo8/6saBBfixRVABpAUBqWv/M5CBToWS', 'V');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(11) NOT NULL,
  `rut_volunteer` varchar(20) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `last_name_first` varchar(20) NOT NULL,
  `last_name_second` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `residency` varchar(50) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `disponibility` tinyint(1) NOT NULL,
  `performance_area` varchar(20) NOT NULL,
  `experience` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL,
  `actual_ubication` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `rut_volunteer`, `task_id`, `user_id`, `name`, `last_name_first`, `last_name_second`, `age`, `residency`, `mail`, `disponibility`, `performance_area`, `experience`, `phone`, `actual_ubication`) VALUES
(1, '19328734-0', NULL, 5, 'John', 'Maden', 'Maden', 34, 'the moon', 'johnmaden@johnmaden.jm', 1, 'Santiago', 0, '956632458', 'Santiago'),
(2, '10000999-8', NULL, 6, 'Nicolas', 'Cage', 'Cage', 55, 'calle 34', 'ncage@tnt.com', 1, 'Santiago', 0, '955687443', 'Santiago');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_RELATIONSHIP_24` (`user_id`);

--
-- Indexes for table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DEFINE_` (`admin_id`),
  ADD KEY `FK_TIENE1` (`region_id`);

--
-- Indexes for table `communes_volunteers`
--
ALTER TABLE `communes_volunteers`
  ADD PRIMARY KEY (`commune_id`,`volunteer_id`),
  ADD KEY `FK_DECLARA_2` (`volunteer_id`);

--
-- Indexes for table `emergencies`
--
ALTER TABLE `emergencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DEFINE_ACTUALIZA` (`admin_id`),
  ADD KEY `FK_OCURREN` (`commune_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DEFINE` (`admin_id`),
  ADD KEY `FK_RELATIONSHIP_22` (`user_id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DEFINE_DECLARA` (`admin_id`),
  ADD KEY `FK_ES_ASIGNADO2` (`manager_id`),
  ADD KEY `FK_SE_COMPONE_DE` (`emergency_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_REALIZA_RECIBE` (`volunteer_id`),
  ADD KEY `FK_RECIBE_REALIZA` (`manager_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DEFINidAS_POR` (`manager_id`);

--
-- Indexes for table `skills_volunteers`
--
ALTER TABLE `skills_volunteers`
  ADD PRIMARY KEY (`volunteer_id`,`skill_id`),
  ADD KEY `FK_POSEE` (`skill_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DECLARA_DEFINE` (`manager_id`),
  ADD KEY `FK_SE_COMPONE` (`mission_id`);

--
-- Indexes for table `tasks_tools`
--
ALTER TABLE `tasks_tools`
  ADD PRIMARY KEY (`task_id`,`tool_id`),
  ADD KEY `FK_SE_OCUPA` (`tool_id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_REALIZA` (`task_id`),
  ADD KEY `FK_RELATIONSHIP_23` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `communes`
--
ALTER TABLE `communes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `emergencies`
--
ALTER TABLE `emergencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `FK_RELATIONSHIP_24` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `FK_DEFINE_` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TIENE1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communes_volunteers`
--
ALTER TABLE `communes_volunteers`
  ADD CONSTRAINT `FK_DECLARA_` FOREIGN KEY (`commune_id`) REFERENCES `communes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DECLARA_2` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emergencies`
--
ALTER TABLE `emergencies`
  ADD CONSTRAINT `FK_DEFINE_ACTUALIZA` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OCURREN` FOREIGN KEY (`commune_id`) REFERENCES `communes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `FK_DEFINE` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELATIONSHIP_22` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `missions`
--
ALTER TABLE `missions`
  ADD CONSTRAINT `FK_DEFINE_DECLARA` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ES_ASIGNADO2` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SE_COMPONE_DE` FOREIGN KEY (`emergency_id`) REFERENCES `emergencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK_REALIZA_RECIBE` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RECIBE_REALIZA` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `FK_DEFINidAS_POR` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills_volunteers`
--
ALTER TABLE `skills_volunteers`
  ADD CONSTRAINT `FK_DECLARA` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POSEE` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `FK_DECLARA_DEFINE` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SE_COMPONE` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tasks_tools`
--
ALTER TABLE `tasks_tools`
  ADD CONSTRAINT `FK_SE_OCUPA` FOREIGN KEY (`tool_id`) REFERENCES `tools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TIENE` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `FK_REALIZA` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELATIONSHIP_23` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
