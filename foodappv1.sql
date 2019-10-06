-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.6-MariaDB-1:10.4.6+maria~bionic - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for foodapp
CREATE DATABASE IF NOT EXISTS `foodapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `foodapp`;

-- Dumping structure for table foodapp.ci_sessions
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table foodapp.ci_sessions: ~10 rows (approximately)
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('1dc747b80579a296a295b3a9b2b81630e60b7e3e', '::1', 1568134289, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133343238393B6964656E746974797C733A31383A226B6869736168616D40676D61696C2E636F6D223B656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F69647C733A313A2238223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353638313132363432223B6C6173745F636865636B7C693A313536383133343238393B),
	('264e8d9f0d38d1e3f7fddc2d1f98a06f344377af', '::1', 1568129866, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383132393836363B6964656E746974797C733A31383A226B6869736168616D40676D61696C2E636F6D223B656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F69647C733A313A2238223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353638303633363031223B6C6173745F636865636B7C693A313536383131323634323B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F666E616D657C733A353A226B68697361223B757365725F6C6E616D657C733A383A2248616D7068726579223B757365725F70686F6E657C733A31323A22323530373839343430363936223B757365725F70686F746F7C733A33393A2253637265656E73686F745F66726F6D5F323031392D30392D30355F31342D35352D32322E706E67223B),
	('2b0f8bebf4860cae7d07d415e88088aad81dfdec', '::1', 1568133096, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133333039363B6964656E746974797C733A31383A226B6869736168616D40676D61696C2E636F6D223B656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F69647C733A313A2238223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353638303633363031223B6C6173745F636865636B7C693A313536383131323634323B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F666E616D657C733A353A226B68697361223B757365725F6C6E616D657C733A383A2248616D7068726579223B757365725F70686F6E657C733A31323A22323530373839343430363936223B757365725F70686F746F7C733A33393A2253637265656E73686F745F66726F6D5F323031392D30392D30355F31342D35352D32322E706E67223B),
	('3bbb3ac603252d97414c33ca8e6878f1a83830a7', '::1', 1568134291, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133343238393B6964656E746974797C733A31383A226B6869736168616D40676D61696C2E636F6D223B656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F69647C733A313A2238223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353638313132363432223B6C6173745F636865636B7C693A313536383133343238393B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F666E616D657C733A353A226B68697361223B757365725F6C6E616D657C733A383A2248616D7068726579223B757365725F70686F6E657C733A31323A22323530373839343430363936223B757365725F70686F746F7C733A33393A2253637265656E73686F745F66726F6D5F323031392D30392D30355F31342D35352D32322E706E67223B),
	('67afe32ca5c67b0f3abe6601edb4ce2f3e165dfa', '::1', 1568133384, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133333338343B6964656E746974797C733A31373A22646F656A6F686E40676D61696C2E636F6D223B656D61696C7C733A31373A22646F656A6F686E40676D61696C2E636F6D223B757365725F69647C733A323A223131223B6F6C645F6C6173745F6C6F67696E7C4E3B6C6173745F636865636B7C693A313536383133333338343B),
	('7733e9f52e55067094b9488479c91dc5c3284394', '::1', 1568193473, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383139333437313B),
	('92644be1f879d374d11fa558efe139bc047152ee', '::1', 1568131963, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133313936333B6964656E746974797C733A31383A226B6869736168616D40676D61696C2E636F6D223B656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F69647C733A313A2238223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353638303633363031223B6C6173745F636865636B7C693A313536383131323634323B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F666E616D657C733A353A226B68697361223B757365725F6C6E616D657C733A383A2248616D7068726579223B757365725F70686F6E657C733A31323A22323530373839343430363936223B757365725F70686F746F7C733A33393A2253637265656E73686F745F66726F6D5F323031392D30392D30355F31342D35352D32322E706E67223B),
	('b0f886579b96c5d5d6404f5584bf2be6e8bf7bae', '::1', 1568133777, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133333737373B6964656E746974797C733A31373A22646F656A6F686E40676D61696C2E636F6D223B656D61696C7C733A31373A22646F656A6F686E40676D61696C2E636F6D223B757365725F69647C733A323A223131223B6F6C645F6C6173745F6C6F67696E7C4E3B6C6173745F636865636B7C693A313536383133333338343B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31373A22646F656A6F686E40676D61696C2E636F6D223B757365725F666E616D657C733A343A226A6F686E223B757365725F6C6E616D657C733A333A22646F65223B757365725F70686F6E657C733A31323A22323530373930393039383738223B757365725F70686F746F7C733A303A22223B),
	('c2567edffc7db7a58e2bd966a593f3835ef5e7b0', '::1', 1568132431, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133323433313B6964656E746974797C733A31383A226B6869736168616D40676D61696C2E636F6D223B656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F69647C733A313A2238223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353638303633363031223B6C6173745F636865636B7C693A313536383131323634323B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F666E616D657C733A353A226B68697361223B757365725F6C6E616D657C733A383A2248616D7068726579223B757365725F70686F6E657C733A31323A22323530373839343430363936223B757365725F70686F746F7C733A33393A2253637265656E73686F745F66726F6D5F323031392D30392D30355F31342D35352D32322E706E67223B),
	('c4072c66877c90eaabde7234fc5bbf922ffe3c1d', '::1', 1568134114, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383133343131343B6964656E746974797C733A31373A22646F656A6F686E40676D61696C2E636F6D223B656D61696C7C733A31373A22646F656A6F686E40676D61696C2E636F6D223B757365725F69647C733A323A223131223B6F6C645F6C6173745F6C6F67696E7C4E3B6C6173745F636865636B7C693A313536383133333338343B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31373A22646F656A6F686E40676D61696C2E636F6D223B757365725F666E616D657C733A343A226A6F686E223B757365725F6C6E616D657C733A333A22646F65223B757365725F70686F6E657C733A31323A22323530373930393039383738223B757365725F70686F746F7C733A303A22223B),
	('fdbc6ee4f98597ed3309705cc07e2868b8e8f549', '::1', 1568128714, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536383132383731343B6964656E746974797C733A31383A226B6869736168616D40676D61696C2E636F6D223B656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F69647C733A313A2238223B6F6C645F6C6173745F6C6F67696E7C733A31303A2231353638303633363031223B6C6173745F636865636B7C693A313536383131323634323B6D6573736167657C733A32393A223C703E4C6F6767656420496E205375636365737366756C6C793C2F703E223B757365725F656D61696C7C733A31383A226B6869736168616D40676D61696C2E636F6D223B757365725F666E616D657C733A353A226B68697361223B757365725F6C6E616D657C733A383A2248616D7068726579223B757365725F70686F6E657C733A31323A22323530373839343430363936223B757365725F70686F746F7C733A33393A2253637265656E73686F745F66726F6D5F323031392D30392D30355F31342D35352D32322E706E67223B);
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

-- Dumping structure for table foodapp.customer_cart
CREATE TABLE IF NOT EXISTS `customer_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.customer_cart: ~5 rows (approximately)
/*!40000 ALTER TABLE `customer_cart` DISABLE KEYS */;
INSERT INTO `customer_cart` (`cart_id`, `menu_id`, `quantity`, `user_id`, `date_created`) VALUES
	(50, 1, 1, 8, '2019-09-10 16:31:40'),
	(51, 2, 1, 8, '2019-09-10 16:31:41'),
	(52, 3, 1, 8, '2019-09-10 16:31:43'),
	(53, 1, 1, 11, '2019-09-10 16:37:08'),
	(54, 2, 1, 11, '2019-09-10 16:37:12');
/*!40000 ALTER TABLE `customer_cart` ENABLE KEYS */;

-- Dumping structure for table foodapp.food_category
CREATE TABLE IF NOT EXISTS `food_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '0',
  `picture` varchar(200) NOT NULL DEFAULT '0',
  `restaurant_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='This table holds all the categories for food served in different restaurants';

-- Dumping data for table foodapp.food_category: ~2 rows (approximately)
/*!40000 ALTER TABLE `food_category` DISABLE KEYS */;
INSERT INTO `food_category` (`id`, `name`, `picture`, `restaurant_id`, `is_active`, `date_created`) VALUES
	(1, 'SNACKS', '', 1, 1, '2019-09-04 03:01:32'),
	(2, 'SOFT DRINKS', '', 1, 1, '2019-09-04 03:02:10'),
	(3, 'BANANA CAKE', '', 1, 1, '2019-09-04 03:11:41');
/*!40000 ALTER TABLE `food_category` ENABLE KEYS */;

-- Dumping structure for table foodapp.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(123) DEFAULT NULL,
  `description` varchar(123) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.groups: ~2 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `description`) VALUES
	(1, 'customers', 'for customers or clients'),
	(2, 'administrator', 'back office administrator'),
	(3, 'restaurant', 'for cafeterias');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table foodapp.language
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `russian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `french` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `greek` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `german` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `italian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thai` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `latin` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `kiswahili` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `korean` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2039 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table foodapp.language: 6 rows
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `hindi`, `latin`, `kiswahili`, `japanese`, `korean`) VALUES
	(2033, 'login', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2034, 'forgot_your_password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2035, 'reset_password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2036, 'return_to_login_page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2037, 'student_dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2038, 'customer_dashboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dumping structure for table foodapp.login_attempts
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(123) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.login_attempts: ~0 rows (approximately)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
	(1, '::1', 'john@gmail.com', 1568133366);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- Dumping structure for table foodapp.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `buying_price` double NOT NULL DEFAULT 0,
  `selling_price` double NOT NULL DEFAULT 0,
  `restaurant_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `available` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `units` varchar(50) DEFAULT '0',
  `picture1` varchar(150) DEFAULT '0',
  `picture2` varchar(150) DEFAULT '0',
  `picture3` varchar(150) DEFAULT '0',
  `picture4` varchar(150) DEFAULT '0',
  `served_with` varchar(150) DEFAULT '0',
  `descriptions` varchar(150) DEFAULT '0',
  `take_away` varchar(150) DEFAULT '0',
  `time_to_be_ready` float DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Holds all the menu.';

-- Dumping data for table foodapp.menu: ~2 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`id`, `name`, `buying_price`, `selling_price`, `restaurant_id`, `category_id`, `available`, `quantity`, `units`, `picture1`, `picture2`, `picture3`, `picture4`, `served_with`, `descriptions`, `take_away`, `time_to_be_ready`) VALUES
	(1, 'Banana Cake', 120, 220, 1, 1, 1, 21, '', 'default1.png', 'default2.png', 'default3.png', 'default4.png', '', 'Banana cake baked from ripe bananas ', '0', 0),
	(2, 'FRIED POTATOES', 120, 220, 1, 1, 1, 21, '', 'default1.png', 'default2.png', 'default3.png', 'default4.png', '', 'Banana cake baked from ripe bananas ', '0', 0),
	(3, 'BEEF CHIPS', 720, 1020, 1, 1, 1, 21, '', 'default1.png', 'default2.png', 'default3.png', 'default4.png', '', 'Beef with fried chips ', '0', 0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- Dumping structure for table foodapp.mobile_banking
CREATE TABLE IF NOT EXISTS `mobile_banking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `column_5` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`column_5`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.mobile_banking: ~2 rows (approximately)
/*!40000 ALTER TABLE `mobile_banking` DISABLE KEYS */;
INSERT INTO `mobile_banking` (`id`, `user_id`, `amount`, `timestamp`, `column_5`) VALUES
	(1, 8, 7380, '2019-09-09 14:10:42', NULL),
	(2, 11, 9560, '2019-09-10 16:37:40', NULL);
/*!40000 ALTER TABLE `mobile_banking` ENABLE KEYS */;

-- Dumping structure for table foodapp.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_code` varchar(50) NOT NULL,
  `cafe_id` int(11) NOT NULL DEFAULT 0,
  `amount_to_pay` double NOT NULL DEFAULT 0,
  `our_commission` double NOT NULL DEFAULT 0,
  `amount_paid` double NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `datetime_ordered` datetime NOT NULL DEFAULT current_timestamp(),
  `datetime_delivered` datetime NOT NULL,
  `delivered` int(11) NOT NULL DEFAULT 0 COMMENT 'if 0 = pending, 1 = delivered, 2 = rejected',
  `rider_id` int(11) NOT NULL DEFAULT 1,
  `order_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = not ready, 1 = ready to pick, 2 = picked either by rider or customer who place the order',
  `pickup_point` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pickup_point`)),
  `dropoff_point` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`dropoff_point`)),
  `order_map` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`order_map`)),
  `description` text DEFAULT NULL,
  `parent_order` varchar(150) DEFAULT NULL,
  `extra_info_from_customer` text DEFAULT NULL,
  `datetime_to_pick` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_code` (`order_code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.orders: ~2 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `order_code`, `cafe_id`, `amount_to_pay`, `our_commission`, `amount_paid`, `customer_id`, `datetime_ordered`, `datetime_delivered`, `delivered`, `rider_id`, `order_status`, `pickup_point`, `dropoff_point`, `order_map`, `description`, `parent_order`, `extra_info_from_customer`, `datetime_to_pick`) VALUES
	(24, 'c3862cd', 1, 1460, 146, 1460, 8, '2019-09-10 16:31:50', '0000-00-00 00:00:00', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, '', '2019-09-10 20:31:00'),
	(25, '65c8386', 1, 1460, 146, 1460, 8, '2019-09-10 16:34:15', '0000-00-00 00:00:00', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'No salt on stew', '2019-09-10 20:31:00'),
	(26, '6c6913a', 1, 440, 44, 440, 11, '2019-09-10 16:37:48', '0000-00-00 00:00:00', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, '', '2019-09-10 20:36:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table foodapp.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `chef_instructions` text DEFAULT NULL,
  `isReady` int(11) DEFAULT NULL,
  `amount_per_unit` double DEFAULT NULL,
  `serve_with` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.order_details: ~8 rows (approximately)
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`, `order_id`, `menu_id`, `quantity`, `notes`, `chef_instructions`, `isReady`, `amount_per_unit`, `serve_with`) VALUES
	(3, 24, 1, '1', '', NULL, NULL, 1460, NULL),
	(4, 24, 2, '1', '', NULL, NULL, 1460, NULL),
	(5, 24, 3, '1', '', NULL, NULL, 1460, NULL),
	(6, 25, 1, '1', 'No salt on stew', NULL, NULL, 1460, NULL),
	(7, 25, 2, '1', 'No salt on stew', NULL, NULL, 1460, NULL),
	(8, 25, 3, '1', 'No salt on stew', NULL, NULL, 1460, NULL),
	(9, 26, 1, '1', '', NULL, NULL, 440, NULL),
	(10, 26, 2, '1', '', NULL, NULL, 440, NULL);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

-- Dumping structure for table foodapp.restaurants
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `opens_on` varchar(150) DEFAULT NULL,
  `extra_services` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_closed` int(11) DEFAULT 0,
  `picture1` varchar(123) DEFAULT NULL,
  `picture2` varchar(123) DEFAULT NULL,
  `picture3` varchar(123) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.restaurants: ~3 rows (approximately)
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` (`id`, `name`, `city`, `country`, `location`, `phone_number`, `email`, `password`, `opens_on`, `extra_services`, `description`, `is_closed`, `picture1`, `picture2`, `picture3`) VALUES
	(1, 'Milanova Restaurant', 'kigali', 'Rwanda', 'Kicukiro', '121091919', 'khisham@gmail.com', 'aksasdsdjnjkUJ8990Jkk', 'Monday to Friday', '', 'Sample hotel description here', 0, NULL, NULL, NULL),
	(2, 'Viall Rosa Kempiski Restaurant', 'kigali', 'Rwanda', 'Kacyiru', '12109091919', 'villarosa@gmail.com', 'aksasdsdjnjkUJ8990Jkk', 'Monday to Friday', '', 'Sample hotel description here', 0, NULL, NULL, NULL),
	(3, 'Parklands First Class Restaurant', 'Nairobi', 'Kenya', 'Nairobi', '071256556534', 'parklands@gmail.com', '45HHS0--=_+_jsjd{}9(76576%', 'Monday to Friday', '', 'Sample hotel description here', 0, NULL, NULL, NULL);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;

-- Dumping structure for table foodapp.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.settings: 2 rows
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
	(22, 'system_name', 'UNI PAY'),
	(23, 'system_title', 'UNI PAY');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table foodapp.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mode` varchar(50) NOT NULL DEFAULT 'cash',
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `amount_for` varchar(50) NOT NULL DEFAULT 'savings' COMMENT 'savings, deposit, withdrawal',
  `amount` double NOT NULL DEFAULT 0 COMMENT 'withdraw is - amount',
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `activity` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.transactions: ~50 rows (approximately)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `payment_mode`, `customer_id`, `amount_for`, `amount`, `datetime`, `activity`, `description`) VALUES
	(1, 'cash', 8, 'order_payment', 220, '2019-09-09 14:46:40', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(2, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:47:01', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(3, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:47:58', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(4, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:48:29', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(5, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:50:38', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(6, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:50:46', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(7, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:51:44', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(8, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:51:48', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(9, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:54:15', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(10, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:54:42', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(11, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:55:56', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(12, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:55:58', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(13, 'from_personal_account', 8, 'order_payment', 440, '2019-09-09 14:56:02', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(14, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:07', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(15, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:08', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(16, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:09', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(17, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:10', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(18, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:10', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(19, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:11', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(20, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:11', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(21, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:12', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(22, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:13', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(23, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:14', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(24, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:14', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(25, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:15', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(26, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:15', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(27, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:17', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(28, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:17', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(29, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:18', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(30, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:18', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(31, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:18', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(32, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:18', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(33, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:19', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(34, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:19', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(35, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-09 14:56:19', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(36, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 14:57:35', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(37, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 21:13:34', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(38, 'from_personal_account', 8, 'order_payment', 440, '2019-09-09 21:13:46', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(39, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 21:26:01', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(40, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 21:26:21', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(41, 'from_personal_account', 8, 'order_payment', 220, '2019-09-09 21:28:11', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(42, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 12:24:28', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(43, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 12:26:55', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(44, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 13:12:41', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(45, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 15:18:55', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(46, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 15:37:57', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(47, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 16:13:00', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(48, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 16:15:05', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(49, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 16:16:39', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(50, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 16:20:39', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(51, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 16:21:29', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(52, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 16:22:33', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(53, 'from_personal_account', 8, 'order_payment', 220, '2019-09-10 16:24:35', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(54, 'from_personal_account', 8, 'order_payment', 1460, '2019-09-10 16:31:47', 'json_encode($dataInsert)', 'Order payment using personal account'),
	(55, 'from_personal_account', 11, 'order_payment', 440, '2019-09-10 16:37:44', 'json_encode($dataInsert)', 'Order payment using personal account');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

-- Dumping structure for table foodapp.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table foodapp.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `phone`, `photo`) VALUES
	(8, '::1', 'khisaham@gmail.com', '$2y$10$/u7TKfyhA19xO6PiO4okZe1kSOZgJ.4q/wAfShjpk/2PWx5Ng3N4u', 'khisaham@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1567939216, 1568134289, 1, 'khisa', 'Hamphrey', '250789440696', 'Screenshot_from_2019-09-05_14-55-22.png'),
	(9, '::1', 'cafe@gmail.com', '$2y$10$26DYEyv.GXbH60p7zJ3e6OU94rLMetrnS6XjVj9OTjaLXI3cT.kEu', 'cafe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1568061366, 1568063544, 1, 'cafe', 'cafe', '250790909090', ''),
	(10, '::1', 'mila@gmail.com', '$2y$10$Sl6KuhXqSjMzo96Yq2ttQOkSkxaAomwYst9Tr4zOGVPhIvBuLB8ou', 'mila@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1568061934, 1568063506, 1, 'Milanova', 'milanova', '250789898989', ''),
	(11, '::1', 'doejohn@gmail.com', '$2y$10$IuKM/I393ESAWLobMfslLeN/w5r2TKO0p5mzrMO7ul020vwiIpJIm', 'doejohn@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1568133355, 1568133384, 1, 'john', 'doe', '250790909878', '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table foodapp.users_groups
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.users_groups: ~3 rows (approximately)
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
	(1, 8, 1),
	(2, 9, 2),
	(3, 10, 3),
	(4, 11, 1);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;

-- Dumping structure for table foodapp.version_code
CREATE TABLE IF NOT EXISTS `version_code` (
  `minimum_version_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table foodapp.version_code: ~0 rows (approximately)
/*!40000 ALTER TABLE `version_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `version_code` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
