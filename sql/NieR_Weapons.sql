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
-- Table structure for table `NieR_Weapons`
--

CREATE TABLE `NieR_Weapons` (
  `id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `damage` int NOT NULL,
  `effect` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `NieR_Weapons`
--

INSERT INTO `NieR_Weapons` (`id`, `type`, `name`, `damage`, `effect`) VALUES
(1, 'Small Sword', 'Beastbane', 210, 'Beast\'s Roar (increased range)'),
(2, 'Large Sword', 'Virtuous Treaty', 330, 'Holy Blessing (increased attack at full HP)'),
(3, 'Spear', 'Spear of the Usurper', 270, 'Turncoat (chance to subjugate enemies)'),
(4, 'Combat Bracer', 'Demon\'s Cry', 180, 'Devil\'s Hatred (adds addtional attack after defeating an enemy)'),
(5, 'Large Sword', 'Cruel Blood Oath', 330, 'Dark Impulse (increased attack at low HP)'),
(6, 'Small Sword', 'Engine Blade', 200, 'Shift Avoid (stun increase)'),
(7, 'Small Sword', 'Faith', 190, 'Bullet Absorb (heal on projectile break)'),
(8, 'Small Sword', 'Type-4O Sword', 180, 'Energy Charge (increased damage on standby)'),
(9, 'Small Sword', 'Type-3 Sword', 220, 'Finish Blast (additional attack in combo)'),
(10, 'Small Sword', 'Ancient Overlord', 185, 'Bullet Rupture (explode projectiles on hit)'),
(11, 'Small Sword', 'Virtuous Contact', 180, 'Holy Blessing (increased attack at full HP)'),
(12, 'Small Sword', 'Cruel Oath', 180, 'Dark Impulse (increased attack at low HP)'),
(13, 'Small Sword', 'YoRHa-issue Blade', 180, 'Pod Charge (melee attacks lowers Pod CD)'),
(14, 'Small Sword', 'Phoenix Dagger', 190, 'Phoenix Flash (sometimes restores HP on hit)'),
(15, 'Small Sword', 'Machine Sword', 210, 'Machine Brand (more damage gained proportional to enemies defeated'),
(16, 'Small Sword', 'Iron Pipe', 220, 'High Stun'),
(17, 'Small Sword', 'Cypress Stick', 80, 'Hero Sigil (cosmetic changes to damage numbers)'),
(18, 'Large Sword', 'Iron Will', 400, 'Steel Spine (enhanced stagger resistance)'),
(19, 'Large Sword', 'Fang of the Twins', 320, 'Bullet Rupture (explode projectiles on hit)'),
(20, 'Large Sword', 'Beastlord', 350, 'Beast\'s Roar (increased range)'),
(21, 'Large Sword', 'Phoenix Sword', 340, 'Phoenix Flash (sometimes restores HP on hit)'),
(22, 'Large Sword', 'Type-4O Blade', 330, 'Energy Charge (increased damage on standby)'),
(23, 'Large Sword', 'Type-3 Blade', 360, 'Finish Blast (additional attack in combo)'),
(24, 'Large Sword', 'Machine Axe', 350, 'Machine Brand (more damage gained proportional to enemies defeated)'),
(25, 'Spear', 'Beastcurse', 265, 'Beast\'s Roar (increased range)'),
(26, 'Spear', 'Dragoon Lance', 260, 'Dragon Wings (increased aerial damage)'),
(27, 'Spear', 'Phoenix Lance', 250, 'Phoenix Flash (sometimes restores HP on hit)'),
(28, 'Spear', 'Type-4O Lance', 250, 'Energy Charge (increased damage on standby)'),
(29, 'Spear', 'Type-3 Lance', 280, 'Finish Blast (additional attack in combo)'),
(30, 'Spear', 'Virtuous Dignity', 240, 'Holy Blessing (increased attack at full HP)'),
(31, 'Spear', 'Cruel Arrogance', 240, 'Dark Impulse (increased attack at low HP)'),
(32, 'Spear', 'Machine Spear', 260, 'Machine Brand (more damage gained proportional to enemies defeated)'),
(33, 'Combat Bracer', 'Bare Fists', 100, 'None'),
(34, 'Combat Bracer', 'Angel\'s Folly', 627, 'Angel\'s Mercy (HP restored when defeating enemies)'),
(35, 'Combat Bracer', 'Type-4O Fists', 150, 'Energy Charge (increased damage on standby)'),
(36, 'Combat Bracer', 'Type-3 Fists', 646, 'Finish Blast (additional attack in combo)'),
(37, 'Combat Bracer', 'Virtuous Grief', 150, 'Holy Blessing (increased attack at full HP)'),
(38, 'Combat Bracer', 'Cruel Lament', 150, 'Dark Impulse (increased attack at low HP)'),
(39, 'Combat Bracer', 'Machine Heads', 210, 'Machine Brand (more damage gained proportional to enemies defeated)'),
(40, 'Combat Bracer', 'Emil Heads', 150, 'Insanity (drives the player insane)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `NieR_Weapons`
--
ALTER TABLE `NieR_Weapons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `NieR_Weapons`
--
ALTER TABLE `NieR_Weapons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
