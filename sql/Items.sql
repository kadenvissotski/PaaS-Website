-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com
-- Generation Time: May 02, 2025 at 06:58 PM
-- Server version: 8.0.35
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kadenvissotski`
--

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `id` int NOT NULL,
  `material_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total_needed` int NOT NULL,
  `locations` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`id`, `material_name`, `total_needed`, `locations`) VALUES
(1, 'Copper Ore', 90, 'Dropped by Small Stubbys and Small Flyers.'),
(2, 'Iron Ore', 65, 'Found from chests.'),
(3, 'Silver Ore', 30, 'Can be looted from the Desert Zone.'),
(4, 'Gold Ore', 20, 'Can be looted from Flooded Forest Zone.'),
(5, 'Rusted Clump', 85, 'Common drop from defeated machines.'),
(6, 'Dented Plate', 70, 'Dropped by Small Stubbys and Small Flyers.'),
(8, 'Titanium Alloy', 30, 'Dropped by Linked-Sphere Type.'),
(9, 'Memory Alloy', 20, 'Dropped by Medium Biped.'),
(10, 'Beast Hide', 20, 'Dropped by beasts such as Boar and Moose.'),
(11, 'Broken Key', 35, 'Dropped by Small Stubbys.'),
(12, 'Warped Wire', 23, 'Can be looted in the Desert Zone.'),
(13, 'Stretched Coil', 23, 'Dropped by Reverse-jointed Goliath.'),
(14, 'Broken Circuit', 35, 'Can be looted in the Desert Zone.'),
(15, 'Stripped Screw', 32, 'Can be found from Giant Robots in the City Center.'),
(16, 'Pristine Screw', 12, 'Dropped by Goliath Biped.'),
(17, 'Small Gear', 40, 'Dropped by Small Stubbys.'),
(18, 'Large Gear', 15, 'Sold by Emil for 11,250G.'),
(19, 'Rusty Bolt', 40, 'Dropped by Small Flyers.'),
(20, 'New Bolt', 15, 'Sold by Emil for 11,250G.'),
(21, 'Crushed Nut', 40, 'Dropped by Linked-sphere type enemy.'),
(22, 'Clean Nut', 15, 'Sold by Emil for 11,250G.'),
(23, 'Dented Socket', 20, 'Dropped by Multi-Leg Medium Models.'),
(24, 'Sturdy Socket', 15, 'Dropped by Multi-Leg Medium Models.'),
(25, 'Severed Cable', 45, 'Dropped by passive enemies in the Amusement Park.'),
(26, 'Pristine Cable', 20, 'Can be dropped by the Rampaging Small Bipeds.'),
(27, 'Broken Battery', 30, 'Reward for misc. quests.'),
(28, 'Large Battery', 15, 'Dropped by Medium Quadrupeds.'),
(29, 'Machine Arm', 20, 'Uncommon drop from Pascal\'s machines.'),
(30, 'Machine Leg', 20, 'Uncommon drop from Pascal\'s machines.'),
(31, 'Machine Leg', 20, 'Uncommon drop from Pascal\'s machines.'),
(32, 'Machine Torso', 20, 'Uncommon drop from Pascal\'s machines.'),
(33, 'Machine Head', 20, 'Uncommon drop from Pascal\'s machines.'),
(34, 'Crystal', 50, 'Found at harvest points of City Ruins, Desert Zone, Forest Zone, and Amusement Park.'),
(35, 'Pearl', 35, 'Can be found at harvest points of the Flooded City.'),
(36, 'Black Pearl', 20, 'Can be found at harvest points of the Flooded City.'),
(37, 'Pyrite', 32, 'Dropped by Desert Zone\'s Small Stubby.'),
(38, 'Amber', 40, 'Dropped by Small Flyers.'),
(39, 'Moldavite', 15, 'Can be found at harvest points of the Flooded City.'),
(40, 'Meteorite', 15, 'Reward for misc. quests.'),
(41, 'Meteorite Shard', 6, 'Sold from Half-wit Inventor for 6,000G after completing his quest.'),
(42, 'Simple Gadget', 20, 'Looted from misc. treasure drop locations.'),
(43, 'Complex Gadget', 6, 'Looted from misc. treasure drop locations.'),
(44, 'Powerup Part S', 3, 'Dropped by the Courageous Brother after defeating it and the two Gold Goliath Bipeds in the City Ruins.'),
(45, 'Powerup Part M', 3, 'Found in hidden chests.'),
(46, 'Powerup Part L', 3, 'Obtained from hidden quests.'),
(47, 'Tree Seed', 20, 'Can be found in various locations around the world, typically at the base of trees and foliage.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Items`
--
ALTER TABLE `Items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
