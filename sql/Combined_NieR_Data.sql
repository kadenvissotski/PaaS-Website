-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com
-- Generation Time: May 05, 2025 at 06:36 PM
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
-- Table structure for table `Combined_NieR_Data`
--

CREATE TABLE `Combined_NieR_Data` (
  `weapon_id` int NOT NULL DEFAULT '0',
  `weapon_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `damage` int NOT NULL,
  `effect` varchar(255) NOT NULL,
  `material_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `total_needed` int NOT NULL,
  `locations` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Combined_NieR_Data`
--

INSERT INTO `Combined_NieR_Data` (`weapon_id`, `weapon_name`, `type`, `damage`, `effect`, `material_name`, `total_needed`, `locations`) VALUES
(1, 'Beastbane', 'Small Sword', 210, 'Beast\'s Roar (increased range)', 'Copper Ore', 90, 'Dropped by Small Stubbys and Small Flyers.'),
(2, 'Virtuous Treaty', 'Large Sword', 330, 'Holy Blessing (increased attack at full HP)', 'Iron Ore', 65, 'Found from chests.'),
(3, 'Spear of the Usurper', 'Spear', 270, 'Turncoat (chance to subjugate enemies)', 'Silver Ore', 30, 'Can be looted from the Desert Zone.'),
(4, 'Demon\'s Cry', 'Combat Bracer', 180, 'Devil\'s Hatred (adds addtional attack after defeating an enemy)', 'Gold Ore', 20, 'Can be looted from Flooded Forest Zone.'),
(5, 'Cruel Blood Oath', 'Large Sword', 330, 'Dark Impulse (increased attack at low HP)', 'Rusted Clump', 85, 'Common drop from defeated machines.'),
(6, 'Engine Blade', 'Small Sword', 200, 'Shift Avoid (stun increase)', 'Dented Plate', 70, 'Dropped by Small Stubbys and Small Flyers.'),
(8, 'Type-4O Sword', 'Small Sword', 180, 'Energy Charge (increased damage on standby)', 'Titanium Alloy', 30, 'Dropped by Linked-Sphere Type.'),
(9, 'Type-3 Sword', 'Small Sword', 220, 'Finish Blast (additional attack in combo)', 'Memory Alloy', 20, 'Dropped by Medium Biped.'),
(10, 'Ancient Overlord', 'Small Sword', 185, 'Bullet Rupture (explode projectiles on hit)', 'Beast Hide', 20, 'Dropped by beasts such as Boar and Moose.'),
(11, 'Virtuous Contact', 'Small Sword', 180, 'Holy Blessing (increased attack at full HP)', 'Broken Key', 35, 'Dropped by Small Stubbys.'),
(12, 'Cruel Oath', 'Small Sword', 180, 'Dark Impulse (increased attack at low HP)', 'Warped Wire', 23, 'Can be looted in the Desert Zone.'),
(13, 'YoRHa-issue Blade', 'Small Sword', 180, 'Pod Charge (melee attacks lowers Pod CD)', 'Stretched Coil', 23, 'Dropped by Reverse-jointed Goliath.'),
(14, 'Phoenix Dagger', 'Small Sword', 190, 'Phoenix Flash (sometimes restores HP on hit)', 'Broken Circuit', 35, 'Can be looted in the Desert Zone.'),
(15, 'Machine Sword', 'Small Sword', 210, 'Machine Brand (more damage gained proportional to enemies defeated', 'Stripped Screw', 32, 'Can be found from Giant Robots in the City Center.'),
(16, 'Iron Pipe', 'Small Sword', 220, 'High Stun', 'Pristine Screw', 12, 'Dropped by Goliath Biped.'),
(17, 'Cypress Stick', 'Small Sword', 80, 'Hero Sigil (cosmetic changes to damage numbers)', 'Small Gear', 40, 'Dropped by Small Stubbys.'),
(18, 'Iron Will', 'Large Sword', 400, 'Steel Spine (enhanced stagger resistance)', 'Large Gear', 15, 'Sold by Emil for 11,250G.'),
(19, 'Fang of the Twins', 'Large Sword', 320, 'Bullet Rupture (explode projectiles on hit)', 'Rusty Bolt', 40, 'Dropped by Small Flyers.'),
(20, 'Beastlord', 'Large Sword', 350, 'Beast\'s Roar (increased range)', 'New Bolt', 15, 'Sold by Emil for 11,250G.'),
(21, 'Phoenix Sword', 'Large Sword', 340, 'Phoenix Flash (sometimes restores HP on hit)', 'Crushed Nut', 40, 'Dropped by Linked-sphere type enemy.'),
(22, 'Type-4O Blade', 'Large Sword', 330, 'Energy Charge (increased damage on standby)', 'Clean Nut', 15, 'Sold by Emil for 11,250G.'),
(23, 'Type-3 Blade', 'Large Sword', 360, 'Finish Blast (additional attack in combo)', 'Dented Socket', 20, 'Dropped by Multi-Leg Medium Models.'),
(24, 'Machine Axe', 'Large Sword', 350, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Sturdy Socket', 15, 'Dropped by Multi-Leg Medium Models.'),
(25, 'Beastcurse', 'Spear', 265, 'Beast\'s Roar (increased range)', 'Severed Cable', 45, 'Dropped by passive enemies in the Amusement Park.'),
(26, 'Dragoon Lance', 'Spear', 260, 'Dragon Wings (increased aerial damage)', 'Pristine Cable', 20, 'Can be dropped by the Rampaging Small Bipeds.'),
(27, 'Phoenix Lance', 'Spear', 250, 'Phoenix Flash (sometimes restores HP on hit)', 'Broken Battery', 30, 'Reward for misc. quests.'),
(28, 'Type-4O Lance', 'Spear', 250, 'Energy Charge (increased damage on standby)', 'Large Battery', 15, 'Dropped by Medium Quadrupeds.'),
(29, 'Type-3 Lance', 'Spear', 280, 'Finish Blast (additional attack in combo)', 'Machine Arm', 20, 'Uncommon drop from Pascal\'s machines.'),
(30, 'Virtuous Dignity', 'Spear', 240, 'Holy Blessing (increased attack at full HP)', 'Machine Leg', 20, 'Uncommon drop from Pascal\'s machines.'),
(31, 'Cruel Arrogance', 'Spear', 240, 'Dark Impulse (increased attack at low HP)', 'Machine Leg', 20, 'Uncommon drop from Pascal\'s machines.'),
(32, 'Machine Spear', 'Spear', 260, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Machine Torso', 20, 'Uncommon drop from Pascal\'s machines.'),
(33, 'Bare Fists', 'Combat Bracer', 100, 'None', 'Machine Head', 20, 'Uncommon drop from Pascal\'s machines.'),
(34, 'Angel\'s Folly', 'Combat Bracer', 627, 'Angel\'s Mercy (HP restored when defeating enemies)', 'Crystal', 50, 'Found at harvest points of City Ruins, Desert Zone, Forest Zone, and Amusement Park.'),
(35, 'Type-4O Fists', 'Combat Bracer', 150, 'Energy Charge (increased damage on standby)', 'Pearl', 35, 'Can be found at harvest points of the Flooded City.'),
(36, 'Type-3 Fists', 'Combat Bracer', 646, 'Finish Blast (additional attack in combo)', 'Black Pearl', 20, 'Can be found at harvest points of the Flooded City.'),
(37, 'Virtuous Grief', 'Combat Bracer', 150, 'Holy Blessing (increased attack at full HP)', 'Pyrite', 32, 'Dropped by Desert Zone\'s Small Stubby.'),
(38, 'Cruel Lament', 'Combat Bracer', 150, 'Dark Impulse (increased attack at low HP)', 'Amber', 40, 'Dropped by Small Flyers.'),
(39, 'Machine Heads', 'Combat Bracer', 210, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Moldavite', 15, 'Can be found at harvest points of the Flooded City.'),
(40, 'Emil Heads', 'Combat Bracer', 100, 'Insanity (drives the player insane)', 'Meteorite', 15, 'Reward for misc. quests.'),
(46, 'test', 'test', 0, '', 'Powerup Part L', 3, 'Obtained from hidden quests.'),
(41, 'Phoenix Fists', 'Combat Bracer', 160, 'Phoenix Flash (sometimes restores HP on hit)', 'Meteorite Shard', 25, 'Dropped by Medium Flyers.'),
(42, 'Demon\'s Embrace', 'Combat Bracer', 180, 'Devil\'s Hatred (adds additional attack after defeating an enemy)', 'Rusted Clump', 30, 'Dropped by Small Stubbys in the Desert Zone.'),
(43, 'Beastclaw', 'Combat Bracer', 200, 'Beast\'s Roar (increased range)', 'Beast Hide', 40, 'Dropped by Boars in the Forest Zone.'),
(44, 'Virtuous Fury', 'Combat Bracer', 220, 'Holy Blessing (increased attack at full HP)', 'Broken Key', 35, 'Dropped by Small Flyers in the City Ruins.'),
(45, 'Cruel Torment', 'Combat Bracer', 240, 'Dark Impulse (increased attack at low HP)', 'Warped Wire', 20, 'Dropped by Medium Bipeds in the Flooded City.'),
(47, 'Machine Claws', 'Combat Bracer', 190, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Machine Arm', 25, 'Dropped by Pascal\'s machines.'),
(48, 'Type-4O Claws', 'Combat Bracer', 210, 'Energy Charge (increased damage on standby)', 'Titanium Alloy', 30, 'Dropped by Linked-Sphere Type enemies.'),
(49, 'Type-3 Claws', 'Combat Bracer', 230, 'Finish Blast (additional attack in combo)', 'Memory Alloy', 20, 'Dropped by Medium Bipeds in the Forest Zone.'),
(50, 'Angel\'s Wrath', 'Combat Bracer', 250, 'Angel\'s Mercy (HP restored when defeating enemies)', 'Crystal', 50, 'Found at harvest points in the Amusement Park.'),
(51, 'Phoenix Lance+', 'Spear', 300, 'Phoenix Flash (sometimes restores HP on hit)', 'Broken Battery', 35, 'Reward for completing side quests.'),
(52, 'Dragoon Lance+', 'Spear', 320, 'Dragon Wings (increased aerial damage)', 'Pristine Cable', 25, 'Dropped by Rampaging Small Bipeds.'),
(53, 'Virtuous Dignity+', 'Spear', 280, 'Holy Blessing (increased attack at full HP)', 'Machine Leg', 25, 'Dropped by Pascal\'s machines.'),
(54, 'Cruel Arrogance+', 'Spear', 300, 'Dark Impulse (increased attack at low HP)', 'Machine Leg', 25, 'Dropped by Pascal\'s machines.'),
(55, 'Machine Spear+', 'Spear', 320, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Machine Torso', 25, 'Dropped by Pascal\'s machines.'),
(56, 'Beastlord+', 'Large Sword', 400, 'Beast\'s Roar (increased range)', 'New Bolt', 20, 'Sold by Emil for 15,000G.'),
(57, 'Iron Will+', 'Large Sword', 450, 'Steel Spine (enhanced stagger resistance)', 'Large Gear', 20, 'Sold by Emil for 15,000G.'),
(58, 'Phoenix Sword+', 'Large Sword', 380, 'Phoenix Flash (sometimes restores HP on hit)', 'Crushed Nut', 45, 'Dropped by Linked-Sphere Type enemies.'),
(59, 'Type-4O Blade+', 'Large Sword', 400, 'Energy Charge (increased damage on standby)', 'Clean Nut', 20, 'Sold by Emil for 15,000G.'),
(60, 'Type-3 Blade+', 'Large Sword', 420, 'Finish Blast (additional attack in combo)', 'Dented Socket', 25, 'Dropped by Multi-Leg Medium Models.'),
(61, 'Machine Axe+', 'Large Sword', 400, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Sturdy Socket', 20, 'Dropped by Multi-Leg Medium Models.'),
(62, 'Beastcurse+', 'Spear', 320, 'Beast\'s Roar (increased range)', 'Severed Cable', 50, 'Dropped by passive enemies in the Amusement Park.'),
(63, 'Virtuous Treaty+', 'Large Sword', 400, 'Holy Blessing (increased attack at full HP)', 'Iron Ore', 70, 'Found in hidden chests.'),
(64, 'Demon\'s Cry+', 'Combat Bracer', 250, 'Devil\'s Hatred (adds additional attack after defeating an enemy)', 'Gold Ore', 25, 'Dropped by Medium Flyers in the Flooded Forest Zone.'),
(65, 'Engine Blade+', 'Small Sword', 250, 'Shift Avoid (stun increase)', 'Dented Plate', 80, 'Dropped by Small Stubbys and Small Flyers.'),
(66, 'YoRHa-issue Blade+', 'Small Sword', 230, 'Pod Charge (melee attacks lower Pod CD)', 'Stretched Coil', 30, 'Dropped by Reverse-jointed Goliath.'),
(67, 'Phoenix Dagger+', 'Small Sword', 240, 'Phoenix Flash (sometimes restores HP on hit)', 'Broken Circuit', 40, 'Dropped in the Desert Zone.'),
(68, 'Iron Pipe+', 'Small Sword', 270, 'High Stun', 'Pristine Screw', 15, 'Dropped by Goliath Biped.'),
(69, 'Cypress Stick+', 'Small Sword', 100, 'Hero Sigil (cosmetic changes to damage numbers)', 'Small Gear', 50, 'Dropped by Small Stubbys.'),
(70, 'Machine Sword+', 'Small Sword', 260, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Stripped Screw', 40, 'Dropped by Giant Robots in the City Center.'),
(71, 'Virtuous Contract+', 'Small Sword', 230, 'Holy Blessing (increased attack at full HP)', 'Broken Key', 40, 'Dropped by Small Stubbys.'),
(72, 'Cruel Oath+', 'Small Sword', 230, 'Dark Impulse (increased attack at low HP)', 'Warped Wire', 30, 'Dropped in the Desert Zone.'),
(73, 'Beastbane+', 'Small Sword', 260, 'Beast\'s Roar (increased range)', 'Copper Ore', 100, 'Dropped by Small Stubbys and Small Flyers.'),
(74, 'Fang of the Twins+', 'Large Sword', 380, 'Bullet Rupture (explode projectiles on hit)', 'Rusty Bolt', 50, 'Dropped by Small Flyers.'),
(75, 'Phoenix Lance++', 'Spear', 350, 'Phoenix Flash (sometimes restores HP on hit)', 'Broken Battery', 40, 'Reward for completing advanced quests.'),
(76, 'Dragoon Lance++', 'Spear', 370, 'Dragon Wings (increased aerial damage)', 'Pristine Cable', 30, 'Dropped by Rampaging Small Bipeds.'),
(77, 'Virtuous Dignity++', 'Spear', 330, 'Holy Blessing (increased attack at full HP)', 'Machine Leg', 30, 'Dropped by Pascal\'s machines.'),
(78, 'Cruel Arrogance++', 'Spear', 350, 'Dark Impulse (increased attack at low HP)', 'Machine Leg', 30, 'Dropped by Pascal\'s machines.'),
(79, 'Machine Spear++', 'Spear', 370, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Machine Torso', 30, 'Dropped by Pascal\'s machines.'),
(80, 'Beastlord++', 'Large Sword', 450, 'Beast\'s Roar (increased range)', 'New Bolt', 25, 'Sold by Emil for 20,000G.'),
(81, 'Iron Will++', 'Large Sword', 500, 'Steel Spine (enhanced stagger resistance)', 'Large Gear', 25, 'Sold by Emil for 20,000G.'),
(82, 'Phoenix Sword++', 'Large Sword', 430, 'Phoenix Flash (sometimes restores HP on hit)', 'Crushed Nut', 50, 'Dropped by Linked-Sphere Type enemies.'),
(83, 'Type-4O Blade++', 'Large Sword', 450, 'Energy Charge (increased damage on standby)', 'Clean Nut', 25, 'Sold by Emil for 20,000G.'),
(84, 'Type-3 Blade++', 'Large Sword', 470, 'Finish Blast (additional attack in combo)', 'Dented Socket', 30, 'Dropped by Multi-Leg Medium Models.'),
(85, 'Machine Axe++', 'Large Sword', 450, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Sturdy Socket', 25, 'Dropped by Multi-Leg Medium Models.'),
(86, 'Beastcurse++', 'Spear', 370, 'Beast\'s Roar (increased range)', 'Severed Cable', 55, 'Dropped by passive enemies in the Amusement Park.'),
(87, 'Virtuous Treaty++', 'Large Sword', 450, 'Holy Blessing (increased attack at full HP)', 'Iron Ore', 80, 'Found in hidden chests.'),
(88, 'Demon\'s Cry++', 'Combat Bracer', 300, 'Devil\'s Hatred (adds additional attack after defeating an enemy)', 'Gold Ore', 30, 'Dropped by Medium Flyers in the Flooded Forest Zone.'),
(89, 'Engine Blade++', 'Small Sword', 300, 'Shift Avoid (stun increase)', 'Dented Plate', 90, 'Dropped by Small Stubbys and Small Flyers.'),
(90, 'YoRHa-issue Blade++', 'Small Sword', 280, 'Pod Charge (melee attacks lower Pod CD)', 'Stretched Coil', 35, 'Dropped by Reverse-jointed Goliath.'),
(91, 'Phoenix Dagger++', 'Small Sword', 290, 'Phoenix Flash (sometimes restores HP on hit)', 'Broken Circuit', 45, 'Dropped in the Desert Zone.'),
(92, 'Iron Pipe++', 'Small Sword', 320, 'High Stun', 'Pristine Screw', 20, 'Dropped by Goliath Biped.'),
(93, 'Cypress Stick++', 'Small Sword', 120, 'Hero Sigil (cosmetic changes to damage numbers)', 'Small Gear', 60, 'Dropped by Small Stubbys.'),
(94, 'Machine Sword++', 'Small Sword', 310, 'Machine Brand (more damage gained proportional to enemies defeated)', 'Stripped Screw', 50, 'Dropped by Giant Robots in the City Center.'),
(95, 'Virtuous Contract++', 'Small Sword', 280, 'Holy Blessing (increased attack at full HP)', 'Broken Key', 50, 'Dropped by Small Stubbys.'),
(96, 'Cruel Oath++', 'Small Sword', 280, 'Dark Impulse (increased attack at low HP)', 'Warped Wire', 35, 'Dropped in the Desert Zone.'),
(97, 'Beastbane++', 'Small Sword', 310, 'Beast\'s Roar (increased range)', 'Copper Ore', 110, 'Dropped by Small Stubbys and Small Flyers.'),
(98, 'Fang of the Twins++', 'Large Sword', 430, 'Bullet Rupture (explode projectiles on hit)', 'Rusty Bolt', 60, 'Dropped by Small Flyers.'),
(99, 'Angel\'s Folly+', 'Combat Bracer', 700, 'Angel\'s Mercy (HP restored when defeating enemies)', 'Crystal', 60, 'Found at harvest points in the Amusement Park.'),
(100, 'Emil Heads+', 'Combat Bracer', 150, 'Insanity (drives the player insane)', 'Meteorite', 20, 'Reward for advanced quests.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
