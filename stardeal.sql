-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2024 at 08:48 AM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stardeal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userId` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `profile` varchar(255) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint DEFAULT '1' COMMENT '1(Active), 0(Deactive)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userId`, `name`, `username`, `email`, `password`, `profile`, `created`, `edited`, `status`) VALUES
(1, 'Super Admin', 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2018-06-19 07:31:31', '2022-01-17 06:52:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `compose_email`
--

CREATE TABLE `compose_email` (
  `id` int NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `employer_id` text COLLATE utf8mb4_general_ci,
  `type` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compose_email`
--

INSERT INTO `compose_email` (`id`, `subject`, `body`, `attachment`, `employer_id`, `type`, `status`, `created_date`, `update_date`) VALUES
(2, 'Testing Email System', '<p>Testing Email System<br></p>', '', '11', 'send', 1, '2024-05-16 14:37:04', '2024-05-16 14:37:04'),
(3, 'TEST EMAIL MARKETING', '<p>TEST.....TEST</p>', NULL, '12', 'send', 1, '2024-05-16 14:45:49', '2024-05-16 14:45:49'),
(4, 'Testing Email System', '<p>Testing Email System<br></p>', '', '11', 'send', 1, '2024-05-16 15:01:00', '2024-05-16 15:01:00'),
(5, 'test', '<p>TEST</p>', NULL, '13', 'send', 1, '2024-05-16 15:06:42', '2024-05-16 15:06:42'),
(28, 'Demo Email', '<p>Demo Email</p>', '', '13', 'send', 1, '2024-05-17 16:24:21', '2024-05-17 16:24:21'),
(29, 'Demo Email', '<p>Demo Email</p>', '', '13', 'send', 1, '2024-05-17 16:24:49', '2024-05-17 16:24:49'),
(86, 'test', '', 'mail36169-Cuisinart.pdf', '11', 'send', 1, '2024-05-21 14:28:35', '2024-05-21 14:28:35'),
(87, 'Test', '<p>email from goigi.com</p>\r\n', '', '11,13,59', 'send', 1, '2024-05-22 10:14:03', '2024-05-22 10:14:03'),
(88, 'TEST****', '', 'mail54876-PETWETWIPES.pdf', '72', 'send', 1, '2024-05-22 15:08:02', '2024-05-22 15:08:02'),
(89, 'Test', '<p>Test</p>\r\n', '', '11,59,72', 'send', 1, '2024-05-22 15:16:37', '2024-05-22 15:16:37'),
(90, 'Test', '<p>Test</p>\r\n', '', '11,59,72', 'send', 1, '2024-05-22 15:16:59', '2024-05-22 15:16:59'),
(91, 'Testing D Team', '<p>testing, please void it..!!</p>\r\n', '', '13,27', 'send', 1, '2024-05-23 06:17:38', '2024-05-23 06:17:38'),
(92, 'demo test', '<p>demo test</p>\r\n\r\n<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/pexels-photo-1563356.jpeg\" style=\"height:333px; width:500px\" /></p>\r\n', 'mail81988-sample_document.pdf', '13,27', 'send', 1, '2024-05-23 06:56:33', '2024-05-23 06:56:33'),
(93, 'demo test', '<p>demo test</p>\r\n\r\n<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/pexels-photo-1563356.jpeg\" style=\"height:333px; width:500px\" /></p>\r\n', 'mail17696-sample_document.pdf', '13,27', 'send', 1, '2024-05-23 07:16:36', '2024-05-23 07:16:36'),
(94, 'Testing D Team', '<p>testing, please void it..!!</p>\r\n', '', '13,27', 'send', 1, '2024-05-23 07:17:33', '2024-05-23 07:17:33'),
(95, 'Testing D Team Again', '<p>testing, please void it...!!</p>\r\n', '', '13,27', 'send', 1, '2024-05-23 07:19:07', '2024-05-23 07:19:07'),
(96, 'Testing from GOIGI', '<p>Testing, please void it..!!</p>\r\n', '', '11,59', 'send', 1, '2024-05-23 07:26:07', '2024-05-23 07:26:07'),
(97, 'dealsonlyonline.com testing', '<p>testing, please void it..!!</p>\r\n', '', '11,59', 'send', 1, '2024-05-23 07:31:11', '2024-05-23 07:31:11'),
(98, 'TEST-----', '', 'mail34027-Cuisinart.pdf', '11,72', 'send', 1, '2024-05-28 14:37:48', '2024-05-28 14:37:48'),
(99, 'NEW TEST', '<p>TEST FOR EMAIL ADDRESS</p>\r\n', 'mail17983-1182pink.jpg', '11,72', 'send', 1, '2024-05-28 19:58:31', '2024-05-28 19:58:31'),
(100, 'Demo email to check New SMTP ', '<p>Demo email to check New SMTP&nbsp;</p>\r\n', 'mail81572-file-example_PDF_1MB.pdf', '13,27', 'send', 1, '2024-06-07 06:21:27', '2024-06-07 06:21:27'),
(101, 'test', '<p>test</p>\r\n', 'mail83153-DIPPERSPONGEBOB.pdf', '11', 'send', 1, '2024-06-10 14:27:03', '2024-06-10 14:27:03'),
(102, 'teste email', '<p>this is a test email</p>\r\n', '', '13,27', 'send', 1, '2024-06-11 09:08:26', '2024-06-11 09:08:26'),
(103, 'Cuisinart 6pc Knife Set', '', 'mail90280-CUISINART6PCKNIFESET.pdf', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299', 'send', 1, '2024-07-08 21:56:26', '2024-07-08 21:56:26'),
(104, 'Cuisinart Knife Set', '<p>CLOSEOUT CUSINART ADBANTAGE KNIFE SET.</p>\r\n', 'mail95777-CUISINART6PCKNIFESET.jpg', '11', 'send', 1, '2024-07-09 16:36:29', '2024-07-09 16:36:29'),
(105, 'Cuisinart Knife Set ', '<p><strong>&nbsp;CLOSEOUT CUISINART ADVANTAGE KNIFE SET</strong></p>\r\n', 'mail96960-CUISINART6PCKNIFESET.jpg', '1,2,3,4,5,6,7,8,9,10,12,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299', 'send', 1, '2024-07-09 16:40:42', '2024-07-09 16:40:42'),
(106, 'Cuisinart Knife Set ', '<p><strong>&nbsp;CLOSEOUT CUISINART ADVANTAGE KNIFE SET</strong></p>\r\n', 'mail97531-CUISINART6PCKNIFESET.jpg', '1,2,3,4,5,6,7,8,9,10,12,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299', 'send', 1, '2024-07-09 16:41:43', '2024-07-09 16:41:43'),
(107, 'TEST', '<p><a href=\"Z:\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" target=\"_self\"><img alt=\"\" src=\"Z:\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" /></a></p>\r\n', '', '', 'send', 1, '2024-07-17 14:54:27', '2024-07-17 14:54:27'),
(108, 'test', '<p><a href=\"Z:\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" target=\"_top\"><img alt=\"\" src=\"Z:\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" /></a></p>\r\n', '', '', 'send', 1, '2024-07-17 15:02:03', '2024-07-17 15:02:03'),
(109, 'test', '<p><a href=\"\\\\10.1.10.200\\g\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" target=\"_top\"><img alt=\"\" src=\"\\\\10.1.10.200\\g\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" /></a><a href=\"\\\\10.1.10.200\\g\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" target=\"_self\"><img alt=\"\" src=\"\\\\10.1.10.200\\g\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\" /></a>\\\\10.1.10.200\\g\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024</p>\r\n', '', '', 'send', 1, '2024-07-17 16:40:01', '2024-07-17 16:40:01'),
(110, 'TEST', '<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\" style=\"height:76px; width:155px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em><a name=\"Slide_1\"></a>LAS VEGAS SHOW SPECIALS</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PRICES ARE GOOD UNTIL AUGUST 30th 2024</p>\r\n\r\n<p>Minium Order $1000</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<p>0641</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"American Stars &amp; Stripes Page Border Prawny Frame Clip Art ...\" src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image007.jpg\" style=\"height:378px; width:366px\" />3500 N. Milwaukee Ave. Chicago IL 6 PH: (773) 725-7770</p>\r\n\r\n<p>Email: <a href=\"mailto:stardeals@aol.com\">stardeals@aol.com</a> <a href=\"http://www.stardeals.com/\">www.stardeals.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image009.jpg\" style=\"height:167px; width:144px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"Slide_2\"></a>CUISINART ITEMS SPECIAL</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item 68I45-26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min: 8pcs</p>\r\n\r\n<p><strong>Dutch Oven W/Glass Lid</strong>.</p>\r\n\r\n<p>HARD ANODIZED, 5qt</p>\r\n\r\n<h3>PRICE $12.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item 68I22-30H&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min: 8pcs <strong>Skillet 12&rdquo; </strong>DS Induction W/Side Handles</p>\r\n\r\n<h3>PRICE $12.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item 6330-20&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min: 6pcs</p>\r\n\r\n<p><strong>11&rdquo; Griddle Pan</strong></p>\r\n\r\n<p>Hard Anodized</p>\r\n\r\n<h3>PRICE $12.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image019.jpg\" style=\"height:131px; width:242px\" /><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image021.jpg\" style=\"height:80px; width:188px\" />Min: 8pcs Item - 76I55-30 5QT</p>\r\n\r\n<p><strong>CASSEROLE PAN W/</strong></p>\r\n\r\n<p><strong>GLASS LID</strong></p>\r\n\r\n<p><strong>PRICE $14.90</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"Slide_3\"></a>CUISINART KNIFE SET</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td rowspan=\"2\" style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image024.jpg\" style=\"height:481px; width:230px\" /></td>\r\n			<td>&nbsp;</td>\r\n			<td style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image025.jpg\" style=\"height:411px; width:413px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#C556PRC2-</strong><strong>320</strong></p>\r\n\r\n<p><strong>6PC Cuisinart advantage Knife Set</strong></p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image027.gif\" style=\"height:165px; width:213px\" /><strong>3.5&rdquo;</strong><strong> </strong><strong>paring</strong><strong> </strong><strong>Knife</strong></p>\r\n\r\n<p><strong>5.5&rdquo;</strong><strong> </strong><strong>Serrated</strong><strong> </strong><strong>Utility</strong><strong> </strong><strong>Knife </strong><strong>4&rdquo; Paring Knife</strong></p>\r\n\r\n<p><strong>Life Time Warranty Min: 24Sets</strong></p>\r\n\r\n<p><strong>While</strong><strong> </strong><strong>Quantity</strong><strong> </strong><strong>last</strong></p>\r\n\r\n<p><strong>PRICE $4.75/SET</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"Slide_4\"></a>CUISINART ITEMS SPECIAL</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image029.jpg\" style=\"height:246px; width:379px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#CTG-00-</strong><strong>SSAS</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4pc/CS</strong></p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image031.jpg\" style=\"height:105px; width:146px\" /><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image033.jpg\" style=\"height:111px; width:154px\" /><strong>Salad Spinner 3qt </strong><strong>PRICE $7.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image035.jpg\" style=\"height:254px; width:234px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#KS-06B</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pc/CS </strong><strong>DIGITAL KITCHEN SCALE </strong><strong>PRICE $9.90</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image037.jpg\" style=\"height:169px; width:238px\" /><a name=\"Slide_5\"></a>Item # 92037&nbsp;&nbsp; 15pc/cs</p>\r\n\r\n<p>S/S Hammered Rect. Tray 17&rdquo;x12&rdquo;</p>\r\n\r\n<p>PRICE $5.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image039.jpg\" style=\"height:177px; width:281px\" />Item 2005 6set/cs</p>\r\n\r\n<p>5pc S/S Mixing Bowl Set 16-18-20-24-30CM PRICE $8.75</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image041.jpg\" style=\"height:154px; width:261px\" />Item 10165 12pc/cs</p>\r\n\r\n<p>Copper Plated Hammered Iron Bowl</p>\r\n\r\n<p>11&rdquo;/ 28cm&nbsp;&nbsp;&nbsp;&nbsp; PRICE $5.90</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image042.jpg\" style=\"height:180px; width:272px\" />Item 2285&nbsp;&nbsp; 6sets/cs</p>\r\n\r\n<p>3pc S/S German Deep Bowl Set 18-22-26cm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRICE $7.20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"PARTY TUB HAMMERED D.WALL.JPG\" src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image044.jpg\" style=\"height:255px; width:268px\" /><a name=\"Slide_6\"></a>S/S Party Tub</p>\r\n\r\n<p>Item # 92228 15&rdquo;x15&rdquo;x9.84&rdquo; 1pc/cs</p>\r\n\r\n<p>PRICE $65.00</p>\r\n\r\n<p>Item # 92229 21&rdquo;x21&rdquo;x11.81&rdquo; 1pc/cs</p>\r\n\r\n<p>PRICE $74.00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image046.jpg\" style=\"height:197px; width:383px\" />Item# 92117 8pc/cs</p>\r\n\r\n<p>Iron Copper Antique Party Tub 16x11x7&rdquo;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRICE $11.25</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image048.jpg\" style=\"height:257px; width:201px\" />Item#92120&nbsp;&nbsp; 4pc/cs</p>\r\n\r\n<p>S/S D/Wall Designer Ice Bucket 2qt PRICE $11.50</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image050.jpg\" style=\"height:203px; width:143px\" /><a name=\"Slide_7\"></a>Item # 92022&nbsp;&nbsp;&nbsp;&nbsp; 12pc/cs</p>\r\n\r\n<p>S/S D/Wall Wine Glass 4.25&rdquo;</p>\r\n\r\n<p>PRICE $1.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image052.jpg\" style=\"height:210px; width:225px\" />Item# 92014 24set/cs 3pc Measuring Cup Set PRICE $1.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image054.jpg\" style=\"height:179px; width:225px\" />Item#92057&nbsp; 8pc/cs</p>\r\n\r\n<p>Alum. Nut Bowl w/ Gold finish PRICE $5.25</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image056.jpg\" style=\"height:192px; width:158px\" />Item#92069&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25pc/cs S/S Fries Cup Gold Finish PRICE $1.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image058.jpg\" style=\"height:223px; width:230px\" /><a name=\"Slide_8\"></a>Item # 92033&nbsp;&nbsp; 12set/cs</p>\r\n\r\n<p>S/S 4pc Cheese Knife Set 6.25&rdquo;</p>\r\n\r\n<p>PRICE $5.25</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image060.jpg\" style=\"height:261px; width:115px\" />Item# 92034&nbsp;&nbsp;&nbsp; 24pc/cs</p>\r\n\r\n<p>S/S Recipe Cocktail Shaker 22oz</p>\r\n\r\n<p>PRICE $8.65</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image062.jpg\" style=\"height:254px; width:208px\" />Item#92076&nbsp;&nbsp; 12set/cs</p>\r\n\r\n<p>S/S 7pc Bar Shaker , Mirror Finish PRICE $9.90</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image064.jpg\" style=\"height:292px; width:242px\" /><a name=\"Slide_9\"></a>ASST ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#OT21-51922-HSW 6PC/CS AUTOMATIC WINE OPENER B/O W/</p>\r\n\r\n<p>Foil cutter</p>\r\n\r\n<h3>PRICE $4.50</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image066.jpg\" style=\"height:184px; width:290px\" />Microfiber 4pc Bed Sheet Set Queen Size, w/19&rdquo; Deep Pocket, Spa Blue Solid Color</p>\r\n\r\n<h3><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image068.jpg\" style=\"height:284px; width:229px\" />PRICE $8.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item#TAD1678&nbsp;&nbsp; 36PK/CS</p>\r\n\r\n<p>10ct Pet Wipes 7&rdquo;x7.75&rdquo;</p>\r\n\r\n<p><strong>PRICE $7.50/CS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image070.jpg\" style=\"height:212px; width:147px\" /><a name=\"Slide_10\"></a>PLASTIC ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#1182 12PC/CS</p>\r\n\r\n<p>Sterling Laundry Basket W/Lid, Asst Color</p>\r\n\r\n<p>17.52x26.30&rdquo;</p>\r\n\r\n<h3>PRICE $3.25</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image072.jpg\" style=\"height:154px; width:261px\" />#1261 24PC/CS</p>\r\n\r\n<p>Hipster Rect. Laundry Basket, Asst Color</p>\r\n\r\n<h3>PRICE $3.25</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image074.jpg\" style=\"height:154px; width:262px\" />Item#1220&nbsp;&nbsp; 12pc/CS</p>\r\n\r\n<p>Round Aqua Tub 15&rdquo;/ 15.5Ltr, Asst Color</p>\r\n\r\n<p><strong>PRICE $1.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img alt=\"IMG_2630 1.jpg\" src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image076.jpg\" style=\"height:258px; width:115px\" /><a name=\"Slide_11\"></a>Bluetooth Headphone</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image078.jpg\" style=\"height:99px; width:224px\" />#574 20PC/CS</p>\r\n\r\n<p>Bluetooth Mono Ear Buds</p>\r\n\r\n<h3>PRICE $3.50</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#576&nbsp;&nbsp;&nbsp;&nbsp; 24PC/CS</p>\r\n\r\n<p>Bluetooth Foldable Headphone</p>\r\n\r\n<p><strong>PRICE $3.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image083.jpg\" style=\"height:196px; width:218px\" /><a name=\"Slide_12\"></a>ASST ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#1778&nbsp;&nbsp;&nbsp;&nbsp; 72PC/CS</p>\r\n\r\n<p>Chafing Fuel/ Methanol Gel 2.5hr</p>\r\n\r\n<h3>PRICE $0.52</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image085.jpg\" style=\"height:246px; width:183px\" />#15422&nbsp;&nbsp;&nbsp;&nbsp; 72PC/CS</p>\r\n\r\n<p>1pc Knee Support</p>\r\n\r\n<p><strong>PRICE $0.55</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image088.jpg\" style=\"height:197px; width:264px\" /></td>\r\n			<td>&nbsp;</td>\r\n			<td rowspan=\"2\" style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image089.jpg\" style=\"height:239px; width:72px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>#4586 20pc/cs</h2>\r\n\r\n<p>Broom W/ Spinning 360&deg; Brushes w/ ABS Plastic , S/S Handle</p>\r\n\r\n<p><strong>PRICE $5.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image091.jpg\" style=\"height:272px; width:348px\" /><a name=\"Slide_13\"></a>ASST ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item#BBDC02-00 24pc/cs Anti Fatigue Mat, 18&rdquo;x30&rdquo; Asst Design &amp; Color</p>\r\n\r\n<h2>Price $3.25</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image093.jpg\" style=\"height:257px; width:308px\" />Item# 4073&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1set/cs 3pc Boarding Case Soft w/combination Lock Cabin/Medium/Large <strong>PRICE $69.90</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image095.jpg\" style=\"height:237px; width:308px\" />Item# 4078&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1set/cs 3pc Boarding Case Hard W/Combination Lock Cabin/Medium/Large <strong>PRICE $69.90</strong></p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\" style=\"height:76px; width:155px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em><a name=\"Slide_1\"></a>LAS VEGAS SHOW SPECIALS</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PRICES ARE GOOD UNTIL AUGUST 30th 2024</p>\r\n\r\n<p>Minium Order $1000</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<p>0641</p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"American Stars &amp; Stripes Page Border Prawny Frame Clip Art ...\" src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image007.jpg\" style=\"height:378px; width:366px\" />3500 N. Milwaukee Ave. Chicago IL 6 PH: (773) 725-7770</p>\r\n\r\n<p>Email: <a href=\"mailto:stardeals@aol.com\">stardeals@aol.com</a> <a href=\"http://www.stardeals.com/\">www.stardeals.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image009.jpg\" style=\"height:167px; width:144px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"Slide_2\"></a>CUISINART ITEMS SPECIAL</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item 68I45-26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min: 8pcs</p>\r\n\r\n<p><strong>Dutch Oven W/Glass Lid</strong>.</p>\r\n\r\n<p>HARD ANODIZED, 5qt</p>\r\n\r\n<h3>PRICE $12.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item 68I22-30H&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min: 8pcs <strong>Skillet 12&rdquo; </strong>DS Induction W/Side Handles</p>\r\n\r\n<h3>PRICE $12.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item 6330-20&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min: 6pcs</p>\r\n\r\n<p><strong>11&rdquo; Griddle Pan</strong></p>\r\n\r\n<p>Hard Anodized</p>\r\n\r\n<h3>PRICE $12.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image019.jpg\" style=\"height:131px; width:242px\" /><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image021.jpg\" style=\"height:80px; width:188px\" />Min: 8pcs Item - 76I55-30 5QT</p>\r\n\r\n<p><strong>CASSEROLE PAN W/</strong></p>\r\n\r\n<p><strong>GLASS LID</strong></p>\r\n\r\n<p><strong>PRICE $14.90</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"Slide_3\"></a>CUISINART KNIFE SET</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td rowspan=\"2\" style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image024.jpg\" style=\"height:481px; width:230px\" /></td>\r\n			<td>&nbsp;</td>\r\n			<td style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image025.jpg\" style=\"height:411px; width:413px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#C556PRC2-</strong><strong>320</strong></p>\r\n\r\n<p><strong>6PC Cuisinart advantage Knife Set</strong></p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image027.gif\" style=\"height:165px; width:213px\" /><strong>3.5&rdquo;</strong><strong> </strong><strong>paring</strong><strong> </strong><strong>Knife</strong></p>\r\n\r\n<p><strong>5.5&rdquo;</strong><strong> </strong><strong>Serrated</strong><strong> </strong><strong>Utility</strong><strong> </strong><strong>Knife </strong><strong>4&rdquo; Paring Knife</strong></p>\r\n\r\n<p><strong>Life Time Warranty Min: 24Sets</strong></p>\r\n\r\n<p><strong>While</strong><strong> </strong><strong>Quantity</strong><strong> </strong><strong>last</strong></p>\r\n\r\n<p><strong>PRICE $4.75/SET</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"Slide_4\"></a>CUISINART ITEMS SPECIAL</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image029.jpg\" style=\"height:246px; width:379px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#CTG-00-</strong><strong>SSAS</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4pc/CS</strong></p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image031.jpg\" style=\"height:105px; width:146px\" /><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image033.jpg\" style=\"height:111px; width:154px\" /><strong>Salad Spinner 3qt </strong><strong>PRICE $7.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image035.jpg\" style=\"height:254px; width:234px\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>#KS-06B</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pc/CS </strong><strong>DIGITAL KITCHEN SCALE </strong><strong>PRICE $9.90</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image037.jpg\" style=\"height:169px; width:238px\" /><a name=\"Slide_5\"></a>Item # 92037&nbsp;&nbsp; 15pc/cs</p>\r\n\r\n<p>S/S Hammered Rect. Tray 17&rdquo;x12&rdquo;</p>\r\n\r\n<p>PRICE $5.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image039.jpg\" style=\"height:177px; width:281px\" />Item 2005 6set/cs</p>\r\n\r\n<p>5pc S/S Mixing Bowl Set 16-18-20-24-30CM PRICE $8.75</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image041.jpg\" style=\"height:154px; width:261px\" />Item 10165 12pc/cs</p>\r\n\r\n<p>Copper Plated Hammered Iron Bowl</p>\r\n\r\n<p>11&rdquo;/ 28cm&nbsp;&nbsp;&nbsp;&nbsp; PRICE $5.90</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image042.jpg\" style=\"height:180px; width:272px\" />Item 2285&nbsp;&nbsp; 6sets/cs</p>\r\n\r\n<p>3pc S/S German Deep Bowl Set 18-22-26cm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRICE $7.20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"PARTY TUB HAMMERED D.WALL.JPG\" src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image044.jpg\" style=\"height:255px; width:268px\" /><a name=\"Slide_6\"></a>S/S Party Tub</p>\r\n\r\n<p>Item # 92228 15&rdquo;x15&rdquo;x9.84&rdquo; 1pc/cs</p>\r\n\r\n<p>PRICE $65.00</p>\r\n\r\n<p>Item # 92229 21&rdquo;x21&rdquo;x11.81&rdquo; 1pc/cs</p>\r\n\r\n<p>PRICE $74.00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image046.jpg\" style=\"height:197px; width:383px\" />Item# 92117 8pc/cs</p>\r\n\r\n<p>Iron Copper Antique Party Tub 16x11x7&rdquo;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRICE $11.25</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image048.jpg\" style=\"height:257px; width:201px\" />Item#92120&nbsp;&nbsp; 4pc/cs</p>\r\n\r\n<p>S/S D/Wall Designer Ice Bucket 2qt PRICE $11.50</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image050.jpg\" style=\"height:203px; width:143px\" /><a name=\"Slide_7\"></a>Item # 92022&nbsp;&nbsp;&nbsp;&nbsp; 12pc/cs</p>\r\n\r\n<p>S/S D/Wall Wine Glass 4.25&rdquo;</p>\r\n\r\n<p>PRICE $1.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image052.jpg\" style=\"height:210px; width:225px\" />Item# 92014 24set/cs 3pc Measuring Cup Set PRICE $1.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image054.jpg\" style=\"height:179px; width:225px\" />Item#92057&nbsp; 8pc/cs</p>\r\n\r\n<p>Alum. Nut Bowl w/ Gold finish PRICE $5.25</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image056.jpg\" style=\"height:192px; width:158px\" />Item#92069&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25pc/cs S/S Fries Cup Gold Finish PRICE $1.95</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image058.jpg\" style=\"height:223px; width:230px\" /><a name=\"Slide_8\"></a>Item # 92033&nbsp;&nbsp; 12set/cs</p>\r\n\r\n<p>S/S 4pc Cheese Knife Set 6.25&rdquo;</p>\r\n\r\n<p>PRICE $5.25</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image060.jpg\" style=\"height:261px; width:115px\" />Item# 92034&nbsp;&nbsp;&nbsp; 24pc/cs</p>\r\n\r\n<p>S/S Recipe Cocktail Shaker 22oz</p>\r\n\r\n<p>PRICE $8.65</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image062.jpg\" style=\"height:254px; width:208px\" />Item#92076&nbsp;&nbsp; 12set/cs</p>\r\n\r\n<p>S/S 7pc Bar Shaker , Mirror Finish PRICE $9.90</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image064.jpg\" style=\"height:292px; width:242px\" /><a name=\"Slide_9\"></a>ASST ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#OT21-51922-HSW 6PC/CS AUTOMATIC WINE OPENER B/O W/</p>\r\n\r\n<p>Foil cutter</p>\r\n\r\n<h3>PRICE $4.50</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image066.jpg\" style=\"height:184px; width:290px\" />Microfiber 4pc Bed Sheet Set Queen Size, w/19&rdquo; Deep Pocket, Spa Blue Solid Color</p>\r\n\r\n<h3><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image068.jpg\" style=\"height:284px; width:229px\" />PRICE $8.90</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item#TAD1678&nbsp;&nbsp; 36PK/CS</p>\r\n\r\n<p>10ct Pet Wipes 7&rdquo;x7.75&rdquo;</p>\r\n\r\n<p><strong>PRICE $7.50/CS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image070.jpg\" style=\"height:212px; width:147px\" /><a name=\"Slide_10\"></a>PLASTIC ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#1182 12PC/CS</p>\r\n\r\n<p>Sterling Laundry Basket W/Lid, Asst Color</p>\r\n\r\n<p>17.52x26.30&rdquo;</p>\r\n\r\n<h3>PRICE $3.25</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image072.jpg\" style=\"height:154px; width:261px\" />#1261 24PC/CS</p>\r\n\r\n<p>Hipster Rect. Laundry Basket, Asst Color</p>\r\n\r\n<h3>PRICE $3.25</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image074.jpg\" style=\"height:154px; width:262px\" />Item#1220&nbsp;&nbsp; 12pc/CS</p>\r\n\r\n<p>Round Aqua Tub 15&rdquo;/ 15.5Ltr, Asst Color</p>\r\n\r\n<p><strong>PRICE $1.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img alt=\"IMG_2630 1.jpg\" src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image076.jpg\" style=\"height:258px; width:115px\" /><a name=\"Slide_11\"></a>Bluetooth Headphone</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image078.jpg\" style=\"height:99px; width:224px\" />#574 20PC/CS</p>\r\n\r\n<p>Bluetooth Mono Ear Buds</p>\r\n\r\n<h3>PRICE $3.50</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#576&nbsp;&nbsp;&nbsp;&nbsp; 24PC/CS</p>\r\n\r\n<p>Bluetooth Foldable Headphone</p>\r\n\r\n<p><strong>PRICE $3.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image083.jpg\" style=\"height:196px; width:218px\" /><a name=\"Slide_12\"></a>ASST ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#1778&nbsp;&nbsp;&nbsp;&nbsp; 72PC/CS</p>\r\n\r\n<p>Chafing Fuel/ Methanol Gel 2.5hr</p>\r\n\r\n<h3>PRICE $0.52</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image085.jpg\" style=\"height:246px; width:183px\" />#15422&nbsp;&nbsp;&nbsp;&nbsp; 72PC/CS</p>\r\n\r\n<p>1pc Knee Support</p>\r\n\r\n<p><strong>PRICE $0.55</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image088.jpg\" style=\"height:197px; width:264px\" /></td>\r\n			<td>&nbsp;</td>\r\n			<td rowspan=\"2\" style=\"vertical-align:top\"><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image089.jpg\" style=\"height:239px; width:72px\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>#4586 20pc/cs</h2>\r\n\r\n<p>Broom W/ Spinning 360&deg; Brushes w/ ABS Plastic , S/S Handle</p>\r\n\r\n<p><strong>PRICE $5.50</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image091.jpg\" style=\"height:272px; width:348px\" /><a name=\"Slide_13\"></a>ASST ITEMS</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Item#BBDC02-00 24pc/cs Anti Fatigue Mat, 18&rdquo;x30&rdquo; Asst Design &amp; Color</p>\r\n\r\n<h2>Price $3.25</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image093.jpg\" style=\"height:257px; width:308px\" />Item# 4073&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1set/cs 3pc Boarding Case Soft w/combination Lock Cabin/Medium/Large <strong>PRICE $69.90</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"file:///C:/Users/stard/AppData/Local/Temp/msohtmlclip1/01/clip_image095.jpg\" style=\"height:237px; width:308px\" />Item# 4078&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1set/cs 3pc Boarding Case Hard W/Combination Lock Cabin/Medium/Large <strong>PRICE $69.90</strong></p>\r\n', '', '', 'send', 1, '2024-07-17 16:42:35', '2024-07-17 16:42:35'),
(111, 'LAS VEGAS SHOW SPECIALS', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide3.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide4.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide5.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide6.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide7.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"\\\\10.1.10.200\\g\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\\LV SHOW SPECIAL ITEMS\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide8.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide9.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide10.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide11.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide12.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide13.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308', 'send', 1, '2024-07-18 22:10:17', '2024-07-18 22:10:17'),
(112, 'LAS VEGAS SHOW SPECIALS', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide3.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide4.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide5.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide6.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide7.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"\\\\10.1.10.200\\g\\Common Folder\\Bindu\\2024\\FLYER ALL\\2024\\LV SHOW SPECIAL ITEMS\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide8.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide9.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide10.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide11.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide12.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide13.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308', NULL, 1, '2024-07-18 22:11:08', '2024-07-18 22:11:08'),
(113, 'DEALS', '<p>TEST</p>\r\n', '', '', 'send', 1, '2024-07-23 17:52:41', '2024-07-23 17:52:41'),
(114, 'DEALS', '<p>TEST</p>\r\n', '', '', 'send', 1, '2024-07-23 17:54:12', '2024-07-23 17:54:12'),
(115, 'DEALS', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '', 'send', 1, '2024-07-23 18:09:22', '2024-07-23 18:09:22'),
(116, 'DEALS', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '11', 'send', 1, '2024-07-23 18:09:51', '2024-07-23 18:09:51'),
(117, 'TEST', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '11', 'send', 1, '2024-07-23 18:14:04', '2024-07-23 18:14:04'),
(118, 'This is a test email', '<p>This is a test email</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/service-04.jpg\" style=\"height:426px; width:640px\" /></p>\r\n', 'mail21255-file-example_PDF_1MB.pdf', '13,27', 'send', 1, '2024-07-30 12:32:48', '2024-07-30 12:32:48');
INSERT INTO `compose_email` (`id`, `subject`, `body`, `attachment`, `employer_id`, `type`, `status`, `created_date`, `update_date`) VALUES
(119, 'LAS VEGAS SPECIAL', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '11', 'send', 1, '2024-07-30 18:59:17', '2024-07-30 18:59:17'),
(120, 'LAS VEGAS SPECIAL BULK', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide3.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide4.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide5.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide6.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide7.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide8.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide9.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide10.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide11.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide12.JPG\" style=\"height:1056px; width:768px\" /><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide13.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '11', 'send', 1, '2024-07-30 19:03:34', '2024-07-30 19:03:34'),
(121, 'LAS VEGAS SHOW SPECIALS', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide2.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799', 'send', 1, '2024-07-30 19:05:00', '2024-07-30 19:05:00'),
(122, 'LAS VEGAS SHOW SPECIALS', '<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/Slide3.JPG\" style=\"height:1056px; width:768px\" /></p>\r\n', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799', 'send', 1, '2024-07-30 19:09:13', '2024-07-30 19:09:13'),
(126, 'This Is A Test Email', '<p>This Is A Test Email</p>\r\n\r\n<p><img alt=\"\" src=\"https://dealsonlyonline.com/uploads/ckeditor/1624550510XoNRRYd0t0.png\" style=\"height:480px; width:960px\" /></p>\r\n', 'mail45013-file-example_PDF_1MB.pdf', '13,27,800', 'send', 1, '2024-07-31 08:24:27', '2024-07-31 08:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `cronjob_sendmail`
--

CREATE TABLE `cronjob_sendmail` (
  `id` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` int NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_general_ci,
  `attachment` text COLLATE utf8mb4_general_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `subject`, `body`, `attachment`, `status`, `created_date`, `update_date`) VALUES
(4, 'Test', '<p>test data</p>', '', 1, '2024-05-16 14:32:13', '2024-05-16 14:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `employer_profile`
--

CREATE TABLE `employer_profile` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer_subscription`
--

CREATE TABLE `employer_subscription` (
  `id` int NOT NULL,
  `employer_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `no_of_post` bigint NOT NULL,
  `start_date` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `name_of_card` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` float NOT NULL,
  `payment_status` enum('pending','succeeded') COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_date` datetime NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employer_subscription`
--

INSERT INTO `employer_subscription` (`id`, `employer_id`, `subscription_id`, `no_of_post`, `start_date`, `end_date`, `name_of_card`, `email`, `amount`, `payment_status`, `transaction_id`, `payment_date`, `created_date`) VALUES
(1, 1, 1, 10, '1', '2022-04-03', '', '', 0, 'pending', '', '2022-03-03 09:11:41', '2022-03-03 09:11:41'),
(2, 10, 1, 10, '1', '2022-04-16', '', '', 0, 'pending', '', '2022-03-16 05:53:59', '2022-03-16 05:53:59'),
(3, 10, 2, 15, '3', '2022-04-09', '', '', 0, 'pending', '', '2022-03-16 05:55:51', '2022-03-16 05:55:51'),
(4, 3, 1, 10, '1', '2022-04-30', '', '', 20, 'pending', '', '2022-03-30 11:24:30', '2022-03-30 11:24:30'),
(5, 3, 2, 15, '3', '2022-06-30', '', '', 0, 'pending', '', '2022-03-30 11:24:38', '2022-03-30 11:24:38'),
(6, 3, 2, 15, '3', '2022-06-30', '', '', 0, 'pending', '', '2022-03-30 11:36:37', '2022-03-30 11:36:37'),
(7, 16, 1, 10, '1', '2022-04-30', '', '', 25000, 'pending', '', '2022-03-30 11:24:47', '2022-03-30 11:24:47'),
(8, 16, 2, 15, '3', '2022-06-30', '', '', 0, 'pending', '', '2022-03-30 11:42:30', '2022-03-30 11:42:30'),
(9, 16, 2, 15, '3', '2022-06-30', '', '', 0, 'pending', '', '2022-03-30 11:48:26', '2022-03-30 11:48:26'),
(10, 16, 2, 15, '3', '2022-07-01', '', '', 450, 'pending', '', '2022-03-31 12:23:42', '2022-03-31 12:23:42'),
(11, 16, 2, 15, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 12:26:11', '2022-03-31 12:26:11'),
(12, 16, 2, 15, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 12:26:23', '2022-03-31 12:26:23'),
(13, 16, 2, 15, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 06:19:05', '2022-03-31 06:19:05'),
(14, 16, 2, 15, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 12:36:15', '2022-03-31 12:36:15'),
(15, 16, 2, 15, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 12:48:54', '2022-03-31 12:48:54'),
(16, 16, 2, 15, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 12:49:11', '2022-03-31 12:49:11'),
(17, 17, 1, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 01:27:57', '2022-03-31 01:27:57'),
(18, 17, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 01:29:29', '2022-03-31 01:29:29'),
(19, 18, 1, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 02:07:18', '2022-03-31 02:07:18'),
(20, 18, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 02:08:24', '2022-03-31 02:08:24'),
(21, 18, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 02:14:03', '2022-03-31 02:14:03'),
(22, 18, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-03-31 02:15:06', '2022-03-31 02:15:06'),
(23, 25, 1, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-04-01 05:16:52', '2022-04-01 05:16:52'),
(24, 25, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-04-01 05:21:34', '2022-04-01 05:21:34'),
(25, 25, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-04-01 05:21:51', '2022-04-01 05:21:51'),
(26, 25, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-04-01 05:25:40', '2022-04-01 05:25:40'),
(27, 25, 2, 20, '3', '2022-07-01', '', '', 0, 'pending', '', '2022-04-01 05:28:13', '2022-04-01 05:28:13'),
(28, 26, 1, 20, '3', '2022-07-12', '', '', 0, 'pending', '', '2022-04-12 05:55:40', '2022-04-12 05:55:40'),
(29, 28, 1, 20, '3', '2022-07-14', '', '', 0, 'pending', '', '2022-04-14 10:45:00', '2022-04-14 10:45:00'),
(30, 28, 2, 20, '3', '2022-07-14', '', '', 0, 'pending', '', '2022-04-14 10:58:18', '2022-04-14 10:58:18'),
(31, 29, 1, 20, '3', '2022-07-14', '', '', 0, 'pending', '', '2022-04-14 11:25:08', '2022-04-14 11:25:08'),
(32, 26, 2, 20, '3', '2022-07-14', '', '', 0, 'pending', '', '2022-04-14 03:56:57', '2022-04-14 03:56:57'),
(33, 30, 1, 20, '3', '2022-07-15', '', '', 0, 'pending', '', '2022-04-15 02:58:49', '2022-04-15 02:58:49'),
(34, 30, 2, 20, '3', '2022-07-15', '', '', 0, 'pending', '', '2022-04-15 02:59:22', '2022-04-15 02:59:22'),
(35, 32, 1, 20, '3', '2022-07-18', '', '', 0, 'pending', '', '2022-04-18 01:07:25', '2022-04-18 01:07:25'),
(36, 33, 1, 20, '3', '2022-07-19', '', '', 0, 'pending', '', '2022-04-19 02:44:11', '2022-04-19 02:44:11'),
(37, 33, 2, 20, '3', '2022-07-19', '', '', 0, 'pending', '', '2022-04-19 02:45:59', '2022-04-19 02:45:59'),
(38, 29, 3, 500, '12', '2023-04-26', '', '', 199, 'succeeded', '', '2022-04-26 12:34:24', '2022-04-26 12:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int NOT NULL,
  `website_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `facebook` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedin` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instagram` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `youtube` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `website_name`, `phone`, `email`, `address`, `logo`, `favicon`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `created_date`, `update_date`) VALUES
(1, 'Stardeal', 2159047275, 'no-reply@stardeal.com', '208 Rue Saint Barts Youngsville, LA 70592', '8503_logo.png', '327_logo.png', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', '2021-11-03 18:14:59', '2024-05-03 06:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` bigint UNSIGNED NOT NULL,
  `firstname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `companyName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `profilePic` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `address1` text,
  `gender` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `slug_url` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstname`, `lastname`, `email`, `mobile`, `companyName`, `password`, `profilePic`, `address1`, `gender`, `slug_url`, `status`, `created_date`, `update_date`) VALUES
(1, 'Demario ', 'Thompson ', 'thompson@gmail.com', NULL, 'ABC Pvt Ltd', NULL, NULL, NULL, NULL, 'demario-thompson', 1, '2024-05-16 06:48:26', '2024-05-16 06:48:26'),
(2, 'Kaelyn', 'Yost', 'Kaelyny@outlook.com', NULL, 'Unionpay ltd', NULL, NULL, NULL, NULL, 'kaelynyost1', 1, '2024-05-16 06:48:26', '2024-05-16 07:12:49'),
(3, 'Meredith', 'Friedman', 'meredith@greatbuyproducts.com', NULL, 'Great Buy Products', NULL, NULL, NULL, NULL, 'meredithfriedman', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(4, 'Harold ', 'Williams', 'haroldwilliams1959@yahoo.com', NULL, 'Cool Sator Enterprise', NULL, NULL, NULL, NULL, 'harold-williams', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(5, 'David ', 'Munoz', 'dmunoz@jce2.com', NULL, 'JCE 2', NULL, NULL, NULL, NULL, 'david-munoz', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(6, 'Joanne Janes', 'David', 'LetItRain79jj@gmail.com', NULL, 'Let It Rain', NULL, NULL, NULL, NULL, 'joanne-janesdavid', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(7, 'Paul ', 'Burke', 'paul.burke@fivebelow.com', NULL, 'Five Below', NULL, NULL, NULL, NULL, 'paul-burke', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(8, 'Jocelyn A.', 'McKinney', 'jam@jm2trading.com', NULL, 'JM2 Trading LLC', NULL, NULL, NULL, NULL, 'jocelyn-amckinney', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(9, 'Khaja. H. ', 'Qadir', 'hr.distrbutors@gmail.com', NULL, 'H R Distributors, INC', NULL, NULL, NULL, NULL, 'khaja-h-qadir', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(10, 'Rich', 'Levin', 'rlevin@cefcostores.com', NULL, 'CEFCO', NULL, NULL, NULL, NULL, 'richlevin', 1, '2024-05-16 10:58:05', '2024-05-16 10:58:05'),
(11, 'Harry', 'Kuvadia', 'stardeals@aol.com', NULL, 'Star Deals', NULL, NULL, NULL, NULL, 'harrykuvadia', 1, '2024-05-16 14:36:19', '2024-05-16 14:36:19'),
(12, 'Prakash', 'Shah', 'prakashshah@sbcglobal.net', NULL, 'PREMIUMS FOR INDUSTRIES', NULL, NULL, NULL, NULL, 'prakashshah', 1, '2024-05-16 14:43:58', '2024-05-16 14:43:58'),
(13, 'Prithwiraj', 'Bhattacharjee', 'care@goigi.com', NULL, 'Goigi', NULL, NULL, NULL, NULL, 'prithwirajbhattacharjee1', 1, '2024-05-16 15:05:56', '2024-05-17 16:24:00'),
(14, 'Tony & Annette', 'Clement', 'tony@starlightdiscount.com', NULL, 'Starlight Discount Inc.', NULL, NULL, NULL, NULL, 'tony-annetteclement', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(15, 'Howard', 'Flick', 'flickh@yahoo.com', NULL, 'City Liquidators', NULL, NULL, NULL, NULL, 'howardflick', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(16, 'Jaturan', 'Kochaon', 'globalex@earthlink.net', NULL, 'Globalex Incorported', NULL, NULL, NULL, NULL, 'jaturankochaon', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(17, 'Juan Pablo', 'Munoz', 'jpm@lafortunaimports.com', NULL, 'La Fortuna', NULL, NULL, NULL, NULL, 'juan-pablomunoz', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(18, 'Samantha ', 'Pickering', 'info@eapretail.com', NULL, 'EAP Retail (INT\'L)', NULL, NULL, NULL, NULL, 'samantha-pickering1', 1, '2024-05-17 08:30:42', '2024-07-02 18:45:37'),
(19, 'Edmond', 'Mitchell', 'edmitch01@hotmail.com', NULL, 'Edmond\'s Perfume & Variety Store', NULL, NULL, NULL, NULL, 'edmondmitchell', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(20, 'Furhan ', 'Kozuva', 'furkank@europeanfamousbrands.com', NULL, 'European Famous Brands', NULL, NULL, NULL, NULL, 'furhan-kozuva', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(21, 'Pedro', 'Marquez', 'bormansales@gmail.com', NULL, 'Borman LLC', NULL, NULL, NULL, NULL, 'pedromarquez', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(22, 'Songying', 'Liu', 'okeidochile@gmail.com', NULL, 'IMP. Y EXP. OKEIDO E.I.R.L. (INT\'L)', NULL, NULL, NULL, NULL, 'songyingliu1', 1, '2024-05-17 08:30:42', '2024-07-02 18:45:21'),
(23, 'Monica ', 'Chavez', 'amazingconnection100@gmail.com', NULL, 'Amazing Connection LLC', NULL, NULL, NULL, NULL, 'monica-chavez', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(24, 'Q', 'Ideas', 'qideas2828@yahoo.com', NULL, 'Qideas', NULL, NULL, NULL, NULL, 'qideas', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(25, 'Fady', 'Aldaghma', 'alphamedcali@gmail.com', NULL, 'Alphamed Solutions', NULL, NULL, NULL, NULL, 'fadyaldaghma', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(26, 'Charles ', 'Calish', 'charlesgoodbuyusa@gmail.com', NULL, 'Good Buys INC.', NULL, NULL, NULL, NULL, 'charles-calish', 1, '2024-05-17 08:30:42', '2024-05-17 08:30:42'),
(28, 'Kimaro', 'Whitely', '', NULL, 'Ascalan Enterprises', NULL, NULL, NULL, NULL, 'kimarowhitely', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(29, 'Marie Le', 'Blanc', 'info@misenplaceculture.com', NULL, 'Mis En Place Culture', NULL, NULL, NULL, NULL, 'marie-leblanc', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(30, 'Global ', 'International', 'globaldioimports@gmail.com', NULL, 'Global International Imports', NULL, NULL, NULL, NULL, 'global-international', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(31, 'Leslie ', 'Hienson', 'leslie@heinsohn.com', NULL, 'Hienson', NULL, NULL, NULL, NULL, 'leslie-hienson', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(32, 'Jenna', 'Palermo', 'jenna@southernsourcingsupply.com', NULL, 'Southern Sourcing Supply', NULL, NULL, NULL, NULL, 'jennapalermo', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(33, 'John ', 'Matti', 'johnimatti23@gmail.com', NULL, 'Value Fresh Market Place', NULL, NULL, NULL, NULL, 'john-matti', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(34, 'Victor ', 'Shah', 'jcflag@yahoo.com', NULL, 'JC Flag Corporation', NULL, NULL, NULL, NULL, 'victor-shah', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(35, 'Steven ', 'Rolwes', 'amplifyenterprisesllc@gmail.com', NULL, 'Amplify Enterprises LLC.', NULL, NULL, NULL, NULL, 'steven-rolwes', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(36, 'Eddie', 'Jiron', 'eddie@pjdistributors.com', NULL, 'PJ Distributors', NULL, NULL, NULL, NULL, 'eddiejiron', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(37, 'Alex', 'Taheli', 'mycalnia@gmail.com', NULL, 'Calnia Co', NULL, NULL, NULL, NULL, 'alextaheli', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(38, 'Joe ', 'Gappy', 'jgappy@princevalleymarket.com', NULL, 'Prince Valley', NULL, NULL, NULL, NULL, 'joe-gappy', 1, '2024-05-20 13:41:54', '2024-05-20 13:41:54'),
(39, 'Max', 'Brouwer', 'sales@mwworld.com', NULL, 'MW World Traders LLC', NULL, NULL, NULL, NULL, 'maxbrouwer', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(40, 'Jessica & Reyes', 'Alvares', 'sales@kingshardwoods.com', NULL, 'Kings Hard Woods', NULL, NULL, NULL, NULL, 'jessica-reyesalvares', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(41, 'Lana', 'Arena', 'support@americageneralstore.com', NULL, 'America General Store', NULL, NULL, NULL, NULL, 'lanaarena', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(43, 'Jona', 'Fant', 'jonajfant@gmail.com', NULL, 'Josie Crocker', NULL, NULL, NULL, NULL, 'jonafant', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(44, 'Elisa', 'Anguiano', 'covisa16@gmail.com', NULL, 'Covisa Dacoracion', NULL, NULL, NULL, NULL, 'elisaanguiano', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(45, 'Visitacion F.', 'Mabolo', 'bessiemabolo@gmail.com', NULL, 'Amazing 5J\'s & B., Inc (INT\'L)', NULL, NULL, NULL, NULL, 'visitacion-fmabolo1', 1, '2024-05-21 09:50:15', '2024-07-02 18:45:02'),
(46, 'Sheryl', 'Bahr', 'bahrsheryl@gmail.com', NULL, 'S&S Trading', NULL, NULL, NULL, NULL, 'sherylbahr', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(47, 'Mohammad', 'Rasheed', 'mr@dcturtle.com', NULL, 'DC Turtle', NULL, NULL, NULL, NULL, 'mohammadrasheed', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(48, 'Michael', 'Bou-Nahra', 'mike@mirabs.com', NULL, 'Appliance World Limited (INT\'L)', NULL, NULL, NULL, NULL, 'michaelbou-nahra1', 1, '2024-05-21 09:50:15', '2024-07-02 18:44:43'),
(49, 'Myer', 'Chemtob', 'mayerc@mjmretail.com', NULL, 'MJM Retailers', NULL, NULL, NULL, NULL, 'myerchemtob', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(50, 'Yara', 'Zapata', 'yara.zapata@marketspotus.com', NULL, 'Market Spot US', NULL, NULL, NULL, NULL, 'yarazapata', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(51, 'Samuel ', 'Schorr', 'sam.schorr@dbelectronics.com', NULL, 'DB Electronics', NULL, NULL, NULL, NULL, 'samuel-schorr', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(52, 'Moishe', 'Herzog', 'myhinternational@gmail.com', NULL, 'MYH International Inc.', NULL, NULL, NULL, NULL, 'moisheherzog', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(53, 'Brandon ', 'Ferris', 'Brandon@ATNTrading.com', NULL, 'ATN Inc.', NULL, NULL, NULL, NULL, 'brandon-ferris', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(54, 'Gregg', 'Schwartz', 'gregg@overstocktrader.com', NULL, 'Overstock Trader', NULL, NULL, NULL, NULL, 'greggschwartz', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(55, 'Priscila', 'Padula', 'sassiotti@gmail.com', NULL, 'Sassiotti LLC.', NULL, NULL, NULL, NULL, 'priscilapadula', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(56, 'Miguel', 'Trevino', 'miguel@mayawe.com', NULL, 'Mayawe (INT\'L)', NULL, NULL, NULL, NULL, 'migueltrevino1', 1, '2024-05-21 09:50:15', '2024-07-02 18:44:22'),
(57, 'Naser', 'Ali', 'nali0425@yahoo.com', NULL, 'National Trading, INC.', NULL, NULL, NULL, NULL, 'naserali', 1, '2024-05-21 09:50:15', '2024-05-21 09:50:15'),
(58, 'Murad Abu', 'Eid', 'murada@saco-ksa.com', NULL, 'SACO (INT\'L)', NULL, NULL, NULL, NULL, 'murad-abueid1', 1, '2024-05-21 09:50:15', '2024-07-02 18:43:41'),
(59, 'Star', 'Distributors ', 'stardistributorsinc@gmail.com', NULL, 'Star Distributors Inc', NULL, NULL, NULL, NULL, 'stardistributors', 1, '2024-05-22 10:11:49', '2024-05-22 10:11:49'),
(60, 'Nick', 'Glorioso', 'nick@jdmsoreting.com', NULL, 'JDM Sorting, LLC.', NULL, NULL, NULL, NULL, 'nickglorioso', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(61, 'Canaday ', 'Green', 'cgreen@vwstores.com', NULL, 'VW Variety Wholesalers', NULL, NULL, NULL, NULL, 'canaday-green', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(62, 'Dean', 'Floyd', 'dfloyd@vwstores.com', NULL, 'Roses Variety Wholesalers', NULL, NULL, NULL, NULL, 'deanfloyd', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(63, 'David ', 'Taylor', 'david.taylor@99only.com', NULL, '99¢ Only Stores', NULL, NULL, NULL, NULL, 'david-taylor', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(64, 'Moses', 'Berger', 'moses@luggageonline.com', NULL, 'Luggage Online', NULL, NULL, NULL, NULL, 'mosesberger', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(65, 'Moses', 'Berger', 'moses@portmantos.com', NULL, 'Portmantos', NULL, NULL, NULL, NULL, 'mosesberger1', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(66, 'Meylen', 'Wong', 'meylen.wong@esflommkting.com', NULL, 'ESFLO Mkting', NULL, NULL, NULL, NULL, 'meylenwong', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(67, 'Yousef', 'Haifa', 'yousefhaifa@ymail.com', NULL, 'Variety Wholesale', NULL, NULL, NULL, NULL, 'yousefhaifa', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(68, 'Sidney', 'Grief', 'sgrief@gaiatrading.com', NULL, 'Gaia Trading Company', NULL, NULL, NULL, NULL, 'sidneygrief', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(69, 'Eric G.', 'Garvey', 'garv@garvco.com', NULL, 'GarvCo Direct', NULL, NULL, NULL, NULL, 'eric-ggarvey', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(70, 'Ryan ', 'Robinson', 'sidetrackedsarah@gmailc.om', NULL, 'The Sidetracked Home & Sidetracked Sarah', NULL, NULL, NULL, NULL, 'ryan-robinson', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(71, 'Dick ', 'Klotzman', 'dick@fortune1000creative.com', NULL, 'Fortune 1000 Creative.', NULL, NULL, NULL, NULL, 'dick-klotzman', 1, '2024-05-22 12:36:57', '2024-05-22 12:36:57'),
(72, 'Bindu', 'Patel', 'bindu62@yahoo.com', NULL, 'STAR DISTRIBUTORS, INC', NULL, NULL, NULL, NULL, 'bindupatel', 1, '2024-05-22 15:06:58', '2024-05-22 15:06:58'),
(73, 'Rosario', 'Castillo', 'amstock.rosario@gmail.com', NULL, 'Amstock', NULL, NULL, NULL, NULL, 'rosariocastillo', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(74, 'Can M.', 'Acar', 'moccadreamla@gmail.com', NULL, 'Mocca Dream LLC.', NULL, NULL, NULL, NULL, 'can-macar', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(75, 'Don', 'Abernathy', 'don@hawthornedistribution.com', NULL, 'Hawthorne Distribution', NULL, NULL, NULL, NULL, 'donabernathy', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(76, 'Alex ', 'Freo', 'akf.2014@akf2014.com', NULL, 'AKF 2014', NULL, NULL, NULL, NULL, 'alex-freo', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(77, 'Joseph', 'Retzer', 'jpretzer@rhouseindustries.com', NULL, 'R. House Industries', NULL, NULL, NULL, NULL, 'josephretzer', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(78, 'Jacob', 'Rempel', 'rempeljacob@yahoo.com', NULL, 'Rempel Supermarket (INT\'L)', NULL, NULL, NULL, NULL, 'jacobrempel1', 1, '2024-05-23 13:20:12', '2024-07-02 18:43:22'),
(79, 'Earth', 'Treasure', 'earthtreasureswillits@gmail.com', NULL, 'Earth\'s Treasures Global Marketplace', NULL, NULL, NULL, NULL, 'earthtreasure', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(80, 'Joe', 'Notaro', 'joe@reflexsalesgroup.com', NULL, 'Reflex Sales Group', NULL, NULL, NULL, NULL, 'joenotaro', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(81, 'Shawn', 'Padgett', 'solutions@fbahaven.com', NULL, 'FBA Haven', NULL, NULL, NULL, NULL, 'shawnpadgett', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(82, 'John ', 'Barker', 'johnbarker@lewiscoholdings.com', NULL, 'LewisCo Holdings', NULL, NULL, NULL, NULL, 'john-barker', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(83, 'Sam ', 'Singh', 'info@nationaldistributorsgroup.com', NULL, 'National Distributors Group', NULL, NULL, NULL, NULL, 'sam-singh', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(84, 'Martha Zulema', 'Jimenez', 'solylunadistribution@gmail.com', NULL, 'Sol Y Luna Distribution', NULL, NULL, NULL, NULL, 'martha-zulemajimenez', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(85, 'Keith R', 'Ross', 'rosskrr@yahoo.com', NULL, 'Ross Inc.', NULL, NULL, NULL, NULL, 'keith-rross', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(86, 'Shawn ', 'Jones', 'bshawnie@bshawnie.com', NULL, 'Bshawnie', NULL, NULL, NULL, NULL, 'shawn-jones', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(87, 'Joe & Sandee', 'Perre', 'joe.shippingwithintegrity@gmail.com', NULL, 'Shipping With Integrity and Professionalism', NULL, NULL, NULL, NULL, 'joe-sandeeperre', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(88, 'Adam', 'Gowro', 'adamgowro1@yahoo.com', NULL, 'Dollar Centre', NULL, NULL, NULL, NULL, 'adamgowro', 1, '2024-05-23 13:20:12', '2024-05-23 13:20:12'),
(89, 'Steve', 'Raucher', 'steve@gpsteam.com', NULL, 'GPS Global Promotional Sourcing', NULL, NULL, NULL, NULL, 'steveraucher', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(90, 'Amanda', 'Lannona', 'Amanda.lannone@ros.com', NULL, 'DD\'s Discount', NULL, NULL, NULL, NULL, 'amandalannona', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(91, 'Luis', 'Blanco', 'lblanco@admincomp.com', NULL, 'ADMIN COMP', NULL, NULL, NULL, NULL, 'luisblanco', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(92, 'Steve', 'Ballor', 'steve@pewter.com', NULL, 'Heritage Metalworks', NULL, NULL, NULL, NULL, 'steveballor', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(93, 'Thomas ', 'Racioppo', 'thomasr@rachworks.com', NULL, 'Rach Works', NULL, NULL, NULL, NULL, 'thomas-racioppo', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(94, 'La', 'Casa', 'osayd@lacasadc.com', NULL, 'La casa Distribution Centre', NULL, NULL, NULL, NULL, 'lacasa', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(95, 'Jack', 'Wahba', 'jackwahba@aol.com', NULL, 'Nuvo Accessories Ltd.', NULL, NULL, NULL, NULL, 'jackwahba', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(96, 'Shimon', 'Menashe', 'amrgifts@aol.com', NULL, 'American Merchandise Resource', NULL, NULL, NULL, NULL, 'shimonmenashe', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(97, 'Total', 'Closeouts', 'totalcloseouts@gmail.com', NULL, 'Total Closeouts', NULL, NULL, NULL, NULL, 'totalcloseouts', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(98, 'Padma', 'Kumar Munnurkots', 'paddy@importadorametro.cl', NULL, 'Import Adora Metro - Chile (IN\'TL)', NULL, NULL, NULL, NULL, 'padmakumar-munnurkots1', 1, '2024-05-24 11:39:54', '2024-07-02 18:43:07'),
(99, 'Charles', 'Expressshop', 'charles@expresshop.co', NULL, 'Expresshop', NULL, NULL, NULL, NULL, 'charlesexpressshop', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(100, 'Matt', 'Thompson', 'matt@humnbird.com', NULL, 'Humnbird', NULL, NULL, NULL, NULL, 'mattthompson', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(101, 'Gagandeep', 'Singh', 'harrysingh122074@yahoo.com', NULL, 'D&G Wholesale Inc', NULL, NULL, NULL, NULL, 'gagandeepsingh', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(102, 'Peter C', 'Sidonio', 'amazwishgifts@gmail.com', NULL, 'Amazwishgifts (INT\'L)', NULL, NULL, NULL, NULL, 'peter-csidonio1', 1, '2024-05-24 11:39:54', '2024-07-02 18:42:52'),
(103, 'Angelica', 'Cardonne', 'angie.cardonne@gmail.com', NULL, 'EXP Realty', NULL, NULL, NULL, NULL, 'angelicacardonne', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(104, 'Wade', 'Burkhart', 'walkerdrugw@aol.com', NULL, 'Walker Drug & General Store', NULL, NULL, NULL, NULL, 'wadeburkhart', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(105, 'Barbara', 'Sparrow', 'kmayes@twochicksandcompany.com', NULL, 'Two Chicks & Co.', NULL, NULL, NULL, NULL, 'barbarasparrow', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(106, 'Odmay E ', 'Valdes', 'ovaldes@finainc.net', NULL, 'Finainc', NULL, NULL, NULL, NULL, 'odmay-e-valdes', 1, '2024-05-24 11:39:54', '2024-05-24 11:39:54'),
(107, 'Hanoch', 'Glick', 'hg@buybulkamerica.com', NULL, 'Buybulk America', NULL, NULL, NULL, NULL, 'hanochglick', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(109, 'Jake', 'Johnson', 'jake@bigdealoutlet.com', NULL, 'Big Deal Outlet', NULL, NULL, NULL, NULL, 'jakejohnson', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(110, 'Naftali', 'Lieber', 'tinukine@optonline.net', NULL, 'Tinuk Darling Details', NULL, NULL, NULL, NULL, 'naftalilieber', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(111, 'Drea', 'Walker', 'drea@up4drea.com', NULL, 'UP 4 DREA', NULL, NULL, NULL, NULL, 'dreawalker', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(112, 'Adam', 'Amro', 'moneeramro@yahoo.com', NULL, 'Hideaway Plus', NULL, NULL, NULL, NULL, 'adamamro', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(113, 'Amy', 'Kevin', 'no.1bobatea@gmail.com', NULL, 'NO. 1 Boba Tea', NULL, NULL, NULL, NULL, 'amykevin', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(114, 'Chirag', 'Patel', 'mmmcypress@gmail.com', NULL, 'SSD Impex', NULL, NULL, NULL, NULL, 'chiragpatel', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(115, 'Estefania', 'Delgado', 'radianceskinwellness@gmail.com', NULL, 'Radiance Skin Wellness LLC', NULL, NULL, NULL, NULL, 'estefaniadelgado', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(116, 'Miles', 'Smith', 'miles@markitsmart.com', NULL, 'Mark It Smart', NULL, NULL, NULL, NULL, 'milessmith', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(117, 'Josh', 'Blake', 'josh@thegandergroup.com', NULL, 'Gander Group', NULL, NULL, NULL, NULL, 'joshblake', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(118, 'Casey', 'Dimmitt', 'casey.dimmitt@madetoorder.com', NULL, 'Made to Order', NULL, NULL, NULL, NULL, 'caseydimmitt', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(119, 'Emery ', 'Miller', 'linacsales@gmail.com', NULL, 'A.C Sales Company', NULL, NULL, NULL, NULL, 'emery-miller', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(120, 'Abe', 'Waxler', 'sales@rainbowdist.com', NULL, 'Rainbow Wholesale Distributors, Inc.', NULL, NULL, NULL, NULL, 'abewaxler', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(121, 'Marcus', 'Pfeifer', 'info@tradingworldinternational.com', NULL, 'Trading World International', NULL, NULL, NULL, NULL, 'marcuspfeifer', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(122, 'Jacob H.', 'Visnick', 'jvisnick@rajawholesale.com', NULL, 'Raja Home & Fashion', NULL, NULL, NULL, NULL, 'jacob-hvisnick', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(123, 'Purple ', 'Deals', 'purpledeals@gmail.com', NULL, 'Purple Deals', NULL, NULL, NULL, NULL, 'purple-deals', 1, '2024-05-25 11:17:28', '2024-05-25 11:17:28'),
(124, 'Rafi', 'Greenstein', 'rafi@sterlingelectronics.com', NULL, 'Sterling Electronics', NULL, NULL, NULL, NULL, 'rafigreenstein1', 1, '2024-05-25 11:17:28', '2024-06-13 20:18:47'),
(126, 'EMMA', 'PELETT', 'epcityliquidators@gmail.com', NULL, 'CITY LIQUIDATORS', NULL, NULL, NULL, NULL, 'emmapelett', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(127, 'MATHEW', 'j.SMITH', 'msmith@shipcor.com', NULL, 'SHIPCOR', NULL, NULL, NULL, NULL, 'mathewjsmith', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(128, 'CHRISTINA', 'GONZALES', 'christina@thegandergroup.com', NULL, 'GANDER GROUP', NULL, NULL, NULL, NULL, 'christinagonzales', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(129, 'RICK ', 'CAMPBELL', 'rick.campbell@madetoorder.com', NULL, 'MADETOORDER', NULL, NULL, NULL, NULL, 'rick-campbell', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(130, 'JOE', 'FLEMING', 'joe@thebelvederegroup.net', NULL, 'THE BELVEDERE GROUP', NULL, NULL, NULL, NULL, 'joefleming', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(131, 'NEHAL', 'AMIN', 'nehal@kaneesha.com', NULL, 'KANEESHA COUTURE LLC', NULL, NULL, NULL, NULL, 'nehalamin', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(132, 'JEFF', 'PIERCE', 'jeff@piercesales.com', NULL, 'PIERCE PULLING FOR YOU', NULL, NULL, NULL, NULL, 'jeffpierce', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(133, 'ADRIANA', 'REYES', 'adriana.reyes@elsuper.org', NULL, 'EL SUPER', NULL, NULL, NULL, NULL, 'adrianareyes', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(134, 'RAMMY', 'RAMMY', 'rayn@argilawholesale.com', NULL, 'ARGILA', NULL, NULL, NULL, NULL, 'rammyrammy', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(135, 'FRED', 'RAHMANOU', 'centralpromotion@gmail.com', NULL, 'CENTRAL PROMOTIONS', NULL, NULL, NULL, NULL, 'fredrahmanou', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(136, 'ISSAC', 'WIEDER', 'issac@mixnmore.com', NULL, 'MIX N MORE', NULL, NULL, NULL, NULL, 'issacwieder', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(137, 'WMA ', 'TRADING', 'wmatrading@aol.com', NULL, 'WMA TRADING LLC', NULL, NULL, NULL, NULL, 'wma-trading', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(138, 'NYH', 'NYH', 'nidalnyh@yahoo.com', NULL, 'NYH CLOSEOUT SALES', NULL, NULL, NULL, NULL, 'nyhnyh', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(139, 'GEORGE', 'MALKO', 'sam@allegianceapparel.com', NULL, 'ALLEGIANCE', NULL, NULL, NULL, NULL, 'georgemalko', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(140, 'HANDS ', 'DOWN', 'handsdownquality@gmail.com', NULL, 'HANDS DOWN QUALITY GOODS', NULL, NULL, NULL, NULL, 'hands-down', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(141, 'KAREN', 'PONE', 'karen@jjgiveaways.com', NULL, 'JJ GIVEAWAYS', NULL, NULL, NULL, NULL, 'karenpone', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(142, 'TERRANCE', 'KELLY', 'tvkelly99@gmail.com', NULL, 'TV KELLY', NULL, NULL, NULL, NULL, 'terrancekelly', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(143, 'DELMA ', 'CRAFT', 'dcraft@pwadc.com', NULL, 'PIGGLY WIGGLY ALABAMA DISTRIBUTING CO.', NULL, NULL, NULL, NULL, 'delma-craft', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(144, 'LYSTRA', 'BERKELEY', 'nonamarkets@gmail.com', NULL, 'NONA MARKETING', NULL, NULL, NULL, NULL, 'lystraberkeley', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(145, 'MIKE', 'MOUILSO', 'mike@csswestllc.com', NULL, 'CSS WEST LLC.', NULL, NULL, NULL, NULL, 'mikemouilso', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(146, 'JORGE', 'RODRIGUEZ', 'jorge@elpasogracegardens.com', NULL, 'ELPASO GRACE GARDENS', NULL, NULL, NULL, NULL, 'jorgerodriguez', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(147, 'THELMA ', 'AZAN', 'timos15@aol.com', NULL, 'TIMOS TRADING (INT\'L)', NULL, NULL, NULL, NULL, 'thelma-azan1', 1, '2024-06-19 13:46:48', '2024-07-02 18:42:34'),
(148, 'JOSE', 'L.GONZALEZ', 'pepe@pepegangapr.com', NULL, 'PEPE GANGA (INT\'L)', NULL, NULL, NULL, NULL, 'joselgonzalez1', 1, '2024-06-19 13:46:48', '2024-07-02 18:42:15'),
(149, 'NAHEED', 'ASHAR', 'nashar@mercantilecreditinc.com', NULL, 'MERCANTILE CREDIT', NULL, NULL, NULL, NULL, 'naheedashar', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(150, 'NORMAN', 'LEO', 'norman@procustomized.com', NULL, 'GILBINS COLLECTIONS', NULL, NULL, NULL, NULL, 'normanleo', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(151, 'GEORGE', 'W.DUREN', 'geoduren@aol.com', NULL, 'DUREN\'S PIGGLY WIGGLY #72', NULL, NULL, NULL, NULL, 'georgewduren', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(152, 'SCOTT', 'SODERGREN', 'scott@skotzonline.com', NULL, 'SKOTZ LLC', NULL, NULL, NULL, NULL, 'scottsodergren', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(153, 'DAVID ', 'ANDRUS', 'david@innovationcatalyst.guru', NULL, 'INNOVATION CATALYST', NULL, NULL, NULL, NULL, 'david-andrus', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(154, 'ABE ', 'GREEN', 'abe@thehomery.com', NULL, 'HOMERY', NULL, NULL, NULL, NULL, 'abe-green', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(155, 'JASON', 'ROSS', 'jasonr@trinitygroupintl.net', NULL, 'TRINITY GROUP INTERNATIONAL LLC.', NULL, NULL, NULL, NULL, 'jasonross', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(156, 'I.ROSARIO', 'SCHAMISSEDDINE SOMOZA', 'rosario@fidalga.com', NULL, 'SUPERMERCADOS FIDALGA (INT\'L)', NULL, NULL, NULL, NULL, 'irosarioschamisseddine-somoza1', 1, '2024-06-19 13:46:48', '2024-07-02 18:42:00'),
(157, 'ALLISON', 'MORGAN', 'divinecloseouts@yahoo.com', NULL, 'DIVINE CLOSEOUTS', NULL, NULL, NULL, NULL, 'allisonmorgan', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(158, 'BARRY', 'JACOBS', 'barry@primepacificllc.com', NULL, 'PRIME PACIFIC LLC', NULL, NULL, NULL, NULL, 'barryjacobs', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(159, 'KYLE ', 'KIRKWOOD', 'kyle@allpacificsales.com', NULL, 'ALL PACIFIC SALES', NULL, NULL, NULL, NULL, 'kyle-kirkwood', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(160, 'MOHAMAD', 'HAMMOUD', 'fonecards11@hotmail.com', NULL, 'FONECARDS, LLC.', NULL, NULL, NULL, NULL, 'mohamadhammoud', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(161, 'JULIET', 'HAMBY', 'jules.hamby@gmail.com', NULL, 'J.HAMBY DESIGN STUDIO', NULL, NULL, NULL, NULL, 'juliethamby', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(162, 'JOHN', 'MOORE', 'jdm9444@gmail.com', NULL, 'A&M WHOLESALE GROUP', NULL, NULL, NULL, NULL, 'johnmoore', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(163, 'RENEI', 'MAGDALENO', 'renei@UMGLA.com', NULL, 'UNITED MERCHANDISING GROUP, LLC.', NULL, NULL, NULL, NULL, 'reneimagdaleno', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(164, 'LINDA', 'TRUONG', 'ltpt.enterprise@gmail.com', NULL, 'LTPT ENTERPRISE LLC', NULL, NULL, NULL, NULL, 'lindatruong', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(165, 'LORRIE', 'C.COON', 'lorrie@gpsteam.com', NULL, 'GLOBAL PROMOTIONAL SOURCING', NULL, NULL, NULL, NULL, 'lorrieccoon', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(166, 'WES', 'GREEN', 'eutradingllc@gmail.com', NULL, 'EU TRADING LLC', NULL, NULL, NULL, NULL, 'wesgreen', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(167, 'RAM', 'MOFSOWITZ', 'ram@rimon-dist.com', NULL, 'RIMON DISTRIBUTION', NULL, NULL, NULL, NULL, 'rammofsowitz', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(168, 'MIKE ', 'SINGH', 'mike@sweetreats.com', NULL, 'INVENTIVE TECHNOLOGY', NULL, NULL, NULL, NULL, 'mike-singh', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(169, 'DENISE', 'TSCHIDA', 'distbyde@gmail.com', NULL, 'DISTRIBUTING BY DE LLC', NULL, NULL, NULL, NULL, 'denisetschida', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(170, 'CLINT', 'MENARD', 'nanaimo@midlandtools.ca', NULL, 'MIDLAND TOOLS (INT\'L)', NULL, NULL, NULL, NULL, 'clintmenard1', 1, '2024-06-19 13:46:48', '2024-07-02 18:41:04'),
(171, 'KEVIN', 'YOO', 'kevinyoo@iccplana.com', NULL, 'OJC USA', NULL, NULL, NULL, NULL, 'kevinyoo', 1, '2024-06-19 13:46:48', '2024-06-19 13:46:48'),
(172, 'JOSE ', 'ZAMORA', 'josez@26californiawholesale.com', NULL, '26 CALIFORNIA WHOLESALE', NULL, NULL, NULL, NULL, 'jose-zamora', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(173, 'SCOTT', 'KENYON', 'scottkenyon@centurylink.net', NULL, 'SKT ONLINE SALES', NULL, NULL, NULL, NULL, 'scottkenyon', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(174, 'LALIT', 'CHAWLA', 'lalit123_123@yahoo.com', NULL, 'ARCO INTERNATIONAL INC.', NULL, NULL, NULL, NULL, 'lalitchawla', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(175, 'KEN & MELISA', 'WEST', 'ken@westpromotions.com', NULL, 'WEST PROMOTIONS LLC', NULL, NULL, NULL, NULL, 'ken-melisawest', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(176, 'ALBERT', 'KENT', 'info@miennainc.com', NULL, 'MIENNA INC', NULL, NULL, NULL, NULL, 'albertkent', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(177, 'DARREN', 'KROHN', 'baldyshrs@verizon.net', NULL, 'BALDY\'S', NULL, NULL, NULL, NULL, 'darrenkrohn', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(178, 'BRIAN', 'CRAMER', 'bcramer23@gmail.com', NULL, 'MARKET MASTERS DIRECT LLC', NULL, NULL, NULL, NULL, 'briancramer', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(179, 'NJ', 'RAMAN', 'nj@a-1capital.com', NULL, 'A1 CAPITAL SOLUTIONS', NULL, NULL, NULL, NULL, 'njraman', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(180, 'RENE', 'LOPEZ', 'lopezcbi74@yahoo.com', NULL, 'CUBAN FURNITURE', NULL, NULL, NULL, NULL, 'renelopez', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(181, 'WILLIAM', 'GAUNITZ', 'bill4living@gmail.com', NULL, 'ESSENTIAL 4 WEALTH, LLC', NULL, NULL, NULL, NULL, 'williamgaunitz', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(182, 'CHARLIE', 'ZHI', 'maxwayimports@gmail.com', NULL, 'MAXWAY IMPORTS INC.', NULL, NULL, NULL, NULL, 'charliezhi', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(183, 'STEVE', 'GOLD', 'steve@marginproducts.com', NULL, 'MARGIN PRODUCTS', NULL, NULL, NULL, NULL, 'stevegold', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(184, 'BRAD ', 'TOMLIN', 'brad@frtmgt.com', NULL, 'FREIGHT MANAGEMENT, LLC.', NULL, NULL, NULL, NULL, 'brad-tomlin', 1, '2024-06-20 13:26:57', '2024-06-20 13:26:57'),
(185, 'ANDEW', 'WEISS', 'aweisscrown@gmail.com', NULL, 'CROWN BOOKS', NULL, NULL, NULL, NULL, 'andewweiss', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(186, 'MERLINDA', 'TAN', 'merlinda_lax@fulltransglobal.com', NULL, 'FULLTRANS GLOBAL FORWARDING, INC.', NULL, NULL, NULL, NULL, 'merlindatan', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(187, 'MARCELO', 'LOPEZ', 'lopezmarcelo94@yahoo.com', NULL, 'LOPEZ ENTERPRISE, LLC', NULL, NULL, NULL, NULL, 'marcelolopez', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(188, 'EDMOND', 'GUSTAFSON', 'admong@esreco.net', NULL, 'STANDARD RESTAURANT SUPPLY', NULL, NULL, NULL, NULL, 'edmondgustafson', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(189, 'TED', 'SCHOPF', 'ted@andyandbax.com', NULL, 'B & A BISTRIBUTING CO.', NULL, NULL, NULL, NULL, 'tedschopf', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(190, 'JONATHAN', 'CASTRO', 'jonathan@redhot.la', NULL, 'RED HOT CHILIS LOS ANGELES', NULL, NULL, NULL, NULL, 'jonathancastro', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(191, 'MUKUND', 'MORE', 'sushantsawant172694@gmail.com', NULL, 'ZIRCON LOGISTICS INC.', NULL, NULL, NULL, NULL, 'mukundmore', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(192, 'MICHEAL', 'ARUSTAMOV', 'micheal_a@silvertc.com', NULL, 'SILVER TREASURE CHEST, LLC', NULL, NULL, NULL, NULL, 'michealarustamov', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(193, 'MACHELLE', 'LEPROWSE', 'machelle@buttesbestcopper.com', NULL, 'BUTTE COPPER COMPANY', NULL, NULL, NULL, NULL, 'machelleleprowse', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(194, 'ASHISH', 'AGARWAL', 'ashish@booyaahchicago.com', NULL, 'BOOYAH CHICAGO', NULL, NULL, NULL, NULL, 'ashishagarwal', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(195, 'SALOMON', 'ABADI', 'miamipartybazaar@gmail.com', NULL, 'LEA\'S PARTY BAZAAR', NULL, NULL, NULL, NULL, 'salomonabadi', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(196, 'GEE', 'SMART', 'gsmartshopper@gmail.com', NULL, 'GEE SMART', NULL, NULL, NULL, NULL, 'geesmart', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(197, 'JASON', 'LEE', 'jason@atriaskin.care', NULL, 'ATRIA', NULL, NULL, NULL, NULL, 'jasonlee', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(198, 'JOSH', 'HARE', 'hare@valuemerch.com', NULL, 'VALUE MERCHANDISE INTERNATIONAL', NULL, NULL, NULL, NULL, 'joshhare', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(199, 'NOLAN', 'RODRIGUEZ', 'onlinewarehousedistributors@gmail.com', NULL, 'ONLINE WAREHOUSE DISTRIBUTORS', NULL, NULL, NULL, NULL, 'nolanrodriguez', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(201, 'ORMAN', 'GASPAR', 'orman@lifesorganics.com', NULL, 'LIFE\'S ORGANICS', NULL, NULL, NULL, NULL, 'ormangaspar', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(202, 'JENNIFER', 'DECARO', 'minimodelmadness@hotmail.com', NULL, 'MINI MODEL MADNESS', NULL, NULL, NULL, NULL, 'jenniferdecaro', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(203, 'GREG', 'GARZONIE', 'greg@moddisnetwork.com', NULL, 'MODDIS NETWORK', NULL, NULL, NULL, NULL, 'greggarzonie', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(204, 'RAMU', 'PUTUMBAKA', 'rputsell@gmail.com', NULL, 'ARKZONE LLC', NULL, NULL, NULL, NULL, 'ramuputumbaka', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(205, 'RAFI', 'DADON', 'rdadon@globaltranz.com', NULL, 'GLOBAL TRANZ', NULL, NULL, NULL, NULL, 'rafidadon', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(206, 'JIM & LORINDA', 'ALEXANDER', 'jandlventures@centurylink.net', NULL, 'J AND L VENTURES', NULL, NULL, NULL, NULL, 'jim-lorindaalexander', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(207, 'DAYANI', 'MARRERO', 'dmglobalvariety@gmail.com', NULL, 'GLOBAL VARIETY', NULL, NULL, NULL, NULL, 'dayanimarrero', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(208, 'EILEEN', 'GREENBAUM', 'eileeng@labyrinthdepot.com', NULL, 'LABYRINTH DEPOT', NULL, NULL, NULL, NULL, 'eileengreenbaum', 1, '2024-06-21 10:23:51', '2024-06-21 10:23:51'),
(209, 'EDWARD', 'BOYER', 'natware@guyana.net.gy', NULL, 'NATIONAL HARDWARE (GUYANA)LTD. (IN\'TL)', NULL, NULL, NULL, NULL, 'edwardboyer1', 1, '2024-06-21 10:23:51', '2024-07-02 18:40:31'),
(210, 'BORIS', 'MORALES', 'borismorales2020@gmail.com', NULL, 'PLASSCON', NULL, NULL, NULL, NULL, 'borismorales', 1, '2024-06-24 14:05:17', '2024-06-24 14:05:17'),
(211, 'MICHELL', 'G.YOUNG', 'myoung@plasticworldincusa.com', NULL, 'PLASTIC WORLD, INC.', NULL, NULL, NULL, NULL, 'michellgyoung', 1, '2024-06-24 14:05:17', '2024-06-24 14:05:17'),
(212, 'GIRISH', 'WADHVANI', 'GW@THEOEMTRADER.COM', NULL, 'THE OEM TRADER', NULL, NULL, NULL, NULL, 'girishwadhvani', 1, '2024-06-24 14:05:17', '2024-06-24 14:05:17'),
(213, 'RAVI', 'K. SUJANANI', 'globalmacrostarhk@gmail.com', NULL, 'NINGBO ERIGHT INTERNATIONAL TRADING CO. LTD.', NULL, NULL, NULL, NULL, 'ravik-sujanani', 1, '2024-06-24 14:05:17', '2024-06-24 14:05:17'),
(214, 'SALLY ', 'ADAMCIK', 'sally@shoppesofoakbluff.com', NULL, 'THE SHOPPES OF OAKBLUFF', NULL, NULL, NULL, NULL, 'sally-adamcik', 1, '2024-06-24 14:05:17', '2024-06-24 14:05:17'),
(215, 'ASAD', 'HUSSAIN', 'info@sqsglobalsolutions.com', NULL, 'SQS GLOBAL SOLUTIONS', NULL, NULL, NULL, NULL, 'asadhussain', 1, '2024-06-24 14:05:17', '2024-06-24 14:05:17'),
(216, 'SACHIN', 'KAMBOJ', 'info@applaudconsulting.com', NULL, 'APPLAUD CONSULTING LLC', NULL, NULL, NULL, NULL, 'sachinkamboj', 1, '2024-06-24 14:05:17', '2024-06-24 14:05:17'),
(217, 'DAVID', 'WOOD', 'dwwod@woodsalesinc.com', NULL, 'WOOD SALES CO., INC.', NULL, NULL, NULL, NULL, 'davidwood', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(218, 'AMY', 'MOHRLING', 'amohrling@aol.com', NULL, 'SEASIDE LIQUIDATION OUTLET', NULL, NULL, NULL, NULL, 'amymohrling', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(219, 'ZABEN', 'OMAR', 'znafal@aol.com', NULL, 'MUTHANA Z-O QUALITY', NULL, NULL, NULL, NULL, 'zabenomar', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(220, 'CONNIE & SHAWN', 'SHELDON', 'trinkethut@comcast.net', NULL, 'TRINKET HUT', NULL, NULL, NULL, NULL, 'connie-shawnsheldon', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(221, 'VIC', 'SEVADJIAN', 'vic@coltbldg.com', NULL, 'COLT BUILDING MAINTENANCE SERVICES INC. (INT\'L)', NULL, NULL, NULL, NULL, 'vicsevadjian1', 1, '2024-06-25 10:30:23', '2024-07-02 18:40:05'),
(222, 'FERNANDO', 'PACHECO PALENCIA', 'rgvcambaceo@gmail.com', NULL, 'GABY & VICKY REPRESENTACIONES (INT\'L)', NULL, NULL, NULL, NULL, 'fernandopacheco-palencia1', 1, '2024-06-25 10:30:23', '2024-07-02 18:39:44'),
(223, 'JOEL', 'AARON MORAN', 'quintanam27@hotmail.com', NULL, 'JOEL AARON MORAN', NULL, NULL, NULL, NULL, 'joelaaron-moran', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(224, 'HEATHER', 'LINCOLN', 'info@goldcoralgt.com', NULL, 'GOLD CORAL GLOBAL TRADING LLC.', NULL, NULL, NULL, NULL, 'heatherlincoln', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(225, 'DONNA', 'MCSHANE', 'greatdeals4all@yahoo.com', NULL, 'MCSHANE ENTERPRISES LLC.', NULL, NULL, NULL, NULL, 'donnamcshane', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(226, 'STEPHEN ', 'NAGY', 'stephen.nagy@sellersplaybook.com', NULL, 'SELLERS SUMMITS', NULL, NULL, NULL, NULL, 'stephen-nagy', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(227, 'ORAS', 'ORAS', 'dreamdollar1@yahoo.com', NULL, 'ORAS INC.', NULL, NULL, NULL, NULL, 'orasoras', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(228, 'LUIS', 'CANO', 'luiswee@funwee.toys', NULL, 'FUN WEE TOYS', NULL, NULL, NULL, NULL, 'luiscano', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(229, 'RUBEN', 'BENAVIDES', 'ruben@concept3lv.com', NULL, 'CONCEPT 3 LV', NULL, NULL, NULL, NULL, 'rubenbenavides', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(230, 'TIM', 'THERIAULT', 'tim@ashila.enterprises', NULL, 'ASHILA ENTERPRISES', NULL, NULL, NULL, NULL, 'timtheriault', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(231, 'ESSA', 'MASOUD', 'essa@baladyfoods.com', NULL, 'BALADY', NULL, NULL, NULL, NULL, 'essamasoud', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(232, 'BERNIE', 'AKI. LAYTON', 'bernie.layton@opensky.com', NULL, 'OPEN SKY INC.', NULL, NULL, NULL, NULL, 'bernieaki-layton', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(233, 'BETHANY', 'BUNNELL', 'bethany@happybrands.co', NULL, 'HAPPY BRANDS LLC', NULL, NULL, NULL, NULL, 'bethanybunnell', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(234, 'PAM ', 'NILZON', 'info@acmegizmosllc.com', NULL, 'ACME GIZMOS LLC', NULL, NULL, NULL, NULL, 'pam-nilzon', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(235, 'TOMCHE', 'SHABBOS', 'hindys@aol.com', NULL, 'HINDY', NULL, NULL, NULL, NULL, 'tomcheshabbos', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(236, 'DIEGO', 'VILLASTNOR', 'villapromo@gmail.com', NULL, 'VILLA PROMO', NULL, NULL, NULL, NULL, 'diegovillastnor', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(237, 'MAGIC ', 'TOUCH', 'magictouchballon@yahoo.com', NULL, 'MAGIC TOUCH BALLON', NULL, NULL, NULL, NULL, 'magic-touch', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(238, 'MICHEAL', 'UNTALAN', 'asrsandiego@gmail.com', NULL, 'ASR EQUIPMENT & SUPPLIES', NULL, NULL, NULL, NULL, 'michealuntalan', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(239, 'TOLA', 'GBADEBO', 'mstola2205@gmail.com', NULL, 'ARUKAH LTD.', NULL, NULL, NULL, NULL, 'tolagbadebo', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(240, 'ANJU ', 'VERMA', 'jerseygiftsandsupplies@gmail.com', NULL, 'JERSEY GIFTS & SUPPLIES', NULL, NULL, NULL, NULL, 'anju-verma', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(241, 'RICHARD', 'L. BENNETT', 'dick.bennett@generalmotivation.com', NULL, 'GENERAL MOTIVATION COMPANY, INC.', NULL, NULL, NULL, NULL, 'richardl-bennett', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(242, 'KENNY ', 'BLACK', 'marketing@awpusa.com', NULL, 'ALL WORLD PROMOTIONS', NULL, NULL, NULL, NULL, 'kenny-black', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(243, 'MICHAL', 'CHAPNICK', 'info@mcbglobal.com', NULL, 'MC B-GLOBAL LLC', NULL, NULL, NULL, NULL, 'michalchapnick', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(244, 'VENUS ', 'GIFTS', 'venusgiftsco@gmail.com', NULL, 'VENUS GIFTS', NULL, NULL, NULL, NULL, 'venus-gifts', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(245, 'RIYAD', 'RIYAD', 'globaltradingplus@yahoo.com', NULL, 'GLOBAL TRADING', NULL, NULL, NULL, NULL, 'riyadriyad', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(246, 'BRIJESH', 'LULLA', 'gsm900phones@gmail.com', NULL, '220V APPLIANCES', NULL, NULL, NULL, NULL, 'brijeshlulla', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(247, 'HEATH', 'ALLISON', 'info@heathbiz.com', NULL, 'E COMMERCE', NULL, NULL, NULL, NULL, 'heathallison', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(248, 'ABDUL', 'ALKAM', 'abdulalkam@gmail.com', NULL, 'ALKAM HOME FASHION, INC.', NULL, NULL, NULL, NULL, 'abdulalkam', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(249, 'JC', 'WORLD', 'sales5@jcworldbell.com', NULL, 'JC WORLDBELL WHOLESALE', NULL, NULL, NULL, NULL, 'jcworld', 1, '2024-06-25 10:30:23', '2024-06-25 10:30:23'),
(250, 'KENNY', 'CONLEY', 'grandbazarimports@yahoo.com', NULL, 'BAZAR IMPORTS INC', NULL, NULL, NULL, NULL, 'kennyconley', 1, '2024-06-26 13:43:04', '2024-06-26 13:43:04'),
(251, 'CHRIS', 'BROWN', 'chris.brown@madetoorder.com', NULL, 'MADE TO ORDER', NULL, NULL, NULL, NULL, 'chrisbrown', 1, '2024-06-26 13:43:04', '2024-06-26 13:43:04'),
(252, 'SCOTT', 'BAILEY', 'jaclyns@att.net', NULL, 'SCOLAC, INC.', NULL, NULL, NULL, NULL, 'scottbailey', 1, '2024-06-26 13:43:04', '2024-06-26 13:43:04'),
(253, 'EDWARD', 'SABBAGH', 'edward@bhpmarketingllc.com', NULL, 'BHP MARKETING LLC', NULL, NULL, NULL, NULL, 'edwardsabbagh', 1, '2024-06-26 13:43:04', '2024-06-26 13:43:04'),
(254, 'MARK', 'BRADDY', 'braddy7@gmail.com', NULL, 'CMB DISTRIBUTORS', NULL, NULL, NULL, NULL, 'markbraddy', 1, '2024-06-26 13:43:04', '2024-06-26 13:43:04'),
(255, 'DEMI', 'HOU', 'demisgiftbaskets@gmail.com', NULL, 'DEMI\'S GIFT BASKETS, INC.', NULL, NULL, NULL, NULL, 'demihou', 1, '2024-06-26 13:43:04', '2024-06-26 13:43:04'),
(256, 'HARUN AARON', 'GOCER', 'harun@icydeals.com', NULL, 'ICY DEALS', NULL, NULL, NULL, NULL, 'harun-aarongocer', 1, '2024-06-26 13:43:04', '2024-06-26 13:43:04'),
(257, 'MARK', 'FLACK', 'flack_777@yahoo.com', NULL, 'COASTAL AMUSEMENTS INC.', NULL, NULL, NULL, NULL, 'markflack', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(258, 'FELIX', 'TORGUEMAN', 'felix@densolentreprises.com', NULL, 'DENSOL ENTERPRISES, LLC', NULL, NULL, NULL, NULL, 'felixtorgueman', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(259, 'LAURA', 'BERBARY', 'celebrationcollectionsllc@gmail.com', NULL, 'CELEBRATION COLLECTIONS', NULL, NULL, NULL, NULL, 'lauraberbary', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(260, 'DUANE', 'OKIMOTO', 'usablestuff@gmail.com', NULL, 'USABLE STUFF', NULL, NULL, NULL, NULL, 'duaneokimoto', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(261, 'JENNIFER', 'RICCIARDI', 'jennifer@simlysavvyshop.com', NULL, 'SIMPLY SAVVY SHOP', NULL, NULL, NULL, NULL, 'jenniferricciardi', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(262, 'DENNIS', 'J. GAGNON', 'pinnacle-products@gmx.com', NULL, 'PINNACLE PRODUCTS', NULL, NULL, NULL, NULL, 'dennisj-gagnon', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(263, 'SAROJA', 'PINNAMANENI', 'purchasing@101color.com', NULL, '101 COLOR', NULL, NULL, NULL, NULL, 'sarojapinnamaneni', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(264, 'GIGI', 'BAKER', 'gigi@gigibaker.co', NULL, 'GB&R', NULL, NULL, NULL, NULL, 'gigibaker', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(265, 'RIMA', 'BOUHAIDAR', 'rima@gigibaker.co', NULL, 'GB&R', NULL, NULL, NULL, NULL, 'rimabouhaidar', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(266, 'DAVID ', 'WEIN', 'dwein@irvsluggage.com', NULL, 'IRV\'S LUGGAGE', NULL, NULL, NULL, NULL, 'david-wein', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(267, 'KAREN', 'THOMPSON', 'kt@laceemail.com', NULL, 'LSL BRANDS', NULL, NULL, NULL, NULL, 'karenthompson', 1, '2024-06-27 12:06:03', '2024-06-27 12:06:03'),
(268, 'WALEED', 'KHAN', 'info@thecottmarkempire.com', NULL, 'COTTMARK EMPIRE', NULL, NULL, NULL, NULL, 'waleedkhan', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(269, 'CARRIE', 'KELLEHER', 'thrillofthehuntus@gmail.com', NULL, 'THRILL OF THE HUNTUS', NULL, NULL, NULL, NULL, 'carriekelleher', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(270, 'MICAH', 'CLAUSEN', 'micah@advantagesalesltd.com', NULL, 'ADVANTAGE SALES LTD.', NULL, NULL, NULL, NULL, 'micahclausen', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(271, 'TOM', 'BUSCHKE', 'tom.buschke@shoplc.com', NULL, 'SHOP LC', NULL, NULL, NULL, NULL, 'tombuschke', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(272, 'MIRANDA', 'GIESMANN', 'miranda@K2JGifts.com', NULL, 'K2J MARKETING PARTNERS', NULL, NULL, NULL, NULL, 'mirandagiesmann', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(273, 'SANJEEV ', 'KUMAR', 'sanjeevkumar@aol.com', NULL, 'SANJEEV KUMAR', NULL, NULL, NULL, NULL, 'sanjeev-kumar', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(274, 'CRAIG', 'STEWART', 'cstewart@glwholesale.com', NULL, 'GREAT LAKES', NULL, NULL, NULL, NULL, 'craigstewart', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(275, 'BRYANT', 'TAYLOR', 'btaylor@goodwiilgoodskills.org', NULL, 'GOODWILL', NULL, NULL, NULL, NULL, 'bryanttaylor', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(276, 'AZIM', 'SHROFF', 'jimmyshroff@gmail.com', NULL, 'TIGER NOVELTIES', NULL, NULL, NULL, NULL, 'azimshroff', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(277, 'PRAKASH', 'PARDIWALA', 'priceking@hotmail.com', NULL, 'DIRECT SOURCING & MARKETING CORP', NULL, NULL, NULL, NULL, 'prakashpardiwala', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(278, 'CARMELLA', 'GOODROOM', 'dollardazeinc@gmail.com', NULL, 'DOLLAR DAZE, INC', NULL, NULL, NULL, NULL, 'carmellagoodroom', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(279, 'STEVE ', 'YARMAK', 'vitamindiscount7@aol.com', NULL, 'VITAMIN & FOOD LIQUIDATORS', NULL, NULL, NULL, NULL, 'steve-yarmak', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(280, 'JOSH', 'GROSS', 'joshgross@axizgroup.com', NULL, 'AXIZ GROUP', NULL, NULL, NULL, NULL, 'joshgross', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(281, 'KEN', 'LOZINS', 'ken@ozeol.com', NULL, 'OZEOL', NULL, NULL, NULL, NULL, 'kenlozins', 1, '2024-06-28 11:54:33', '2024-06-28 11:54:33'),
(282, 'SARA', 'DEPIES', 'sara@hdiforu.com', NULL, 'HDI WHOLESALE', NULL, NULL, NULL, NULL, 'saradepies', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(283, '1', 'MARK', 'truemarkusa@gmail.com', NULL, 'TRUE MARK USA', NULL, NULL, NULL, NULL, '1mark', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(284, 'LUIZ', 'PIRES', 'luiz@quicklotz.com', NULL, 'QUICK LOTZ', NULL, NULL, NULL, NULL, 'luizpires', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(285, 'SMART', 'SHOPPERS', 'smartshoppers1311@gmail.com', NULL, 'SMART SHOPPERS', NULL, NULL, NULL, NULL, 'smartshoppers', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(286, 'MOHMOOD', 'MIR', 'mircashncarry@hotmail.com', NULL, 'MIR CASH N CARRY', NULL, NULL, NULL, NULL, 'mohmoodmir', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(287, 'BRIAN ', 'GROTSKY', 'brian@warehouse', NULL, 'WAREHOUSE TRADING INC.', NULL, NULL, NULL, NULL, 'brian-grotsky', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(288, 'HARRIS', 'IQBAL', 'sales@tradingwholesale.com', NULL, 'ALL SEASON TRADING GROUP', NULL, NULL, NULL, NULL, 'harrisiqbal', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(289, 'SAM', 'KOTOB', 'iqsteelinc@hotmail.com', NULL, 'IQ STEEL INC.', NULL, NULL, NULL, NULL, 'samkotob', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(290, 'HEATHER', 'BLACKWELL', 'heather.blackwell@babes.net', NULL, 'OLD TIME POTTERY', NULL, NULL, NULL, NULL, 'heatherblackwell', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(291, 'ELI', 'FUERST', 'elifrst@aol.com', NULL, 'ELCH DEALS LLP', NULL, NULL, NULL, NULL, 'elifuerst', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(292, 'DAVE', 'ELECTRONICS', 'godovid@gmail.com', NULL, 'DAVE ELECTRONICS', NULL, NULL, NULL, NULL, 'daveelectronics', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(293, 'ALADDIN', 'A.IBRAHEEM', 'atexportllc@gmail.com', NULL, 'ATEXPORT LLC', NULL, NULL, NULL, NULL, 'aladdinaibraheem', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(294, 'KENNY', 'CHUPP', 'eandssales@hotmail.com', NULL, 'E & S SALES', NULL, NULL, NULL, NULL, 'kennychupp', 1, '2024-06-29 12:02:49', '2024-06-29 12:02:49'),
(295, 'RAUL', 'RODRIGUEZ', 'ryrtelas@yahoo.com', NULL, 'MUNDO TELAS (INT\'L)', NULL, NULL, NULL, NULL, 'raulrodriguez', 1, '2024-07-02 17:29:13', '2024-07-02 17:29:13'),
(296, 'CAROLINE', 'LITWIN', 'sobremesas@netgate.com.uy', NULL, 'SOBREMESAS (INT\'L)', NULL, NULL, NULL, NULL, 'carolinelitwin', 1, '2024-07-02 17:42:28', '2024-07-02 17:42:28'),
(297, 'TANNER', 'HAKERT', 'SalesMatStores2@gmail.com', NULL, 'SALESMAT LLC', NULL, NULL, NULL, NULL, 'tannerhakert', 1, '2024-07-02 17:45:17', '2024-07-02 17:45:17'),
(298, 'HUGH', 'YOUNG', 'headadmin@justwhat-i-wanted.com', NULL, 'JUST WHAT-I-WANTED (INT\'L)', NULL, NULL, NULL, NULL, 'hughyoung', 1, '2024-07-02 17:51:53', '2024-07-02 17:51:53'),
(299, 'JEN K', 'VERMONT', 'mrgsjennifer@yahoo.com', NULL, 'Mr. G\'s LIQUDATION', NULL, NULL, NULL, NULL, 'jen-kvermont', 1, '2024-07-02 18:29:07', '2024-07-02 18:29:07'),
(300, 'RANDY', 'WOODEN', 'rwooden@turn7.com', NULL, 'TURN7 LIQUIDATIONS', NULL, NULL, NULL, NULL, 'randywooden', 1, '2024-07-15 20:35:59', '2024-07-15 20:35:59'),
(301, 'MATTHEW', 'ROSSITER', 'matt@lagunakitchen.com', NULL, 'LAGUNA KITCHEN', NULL, NULL, NULL, NULL, 'matthewrossiter', 1, '2024-07-15 20:37:38', '2024-07-15 20:37:38');
INSERT INTO `users` (`userId`, `firstname`, `lastname`, `email`, `mobile`, `companyName`, `password`, `profilePic`, `address1`, `gender`, `slug_url`, `status`, `created_date`, `update_date`) VALUES
(302, 'ADAM', 'CROWSON', 'adam@giftproinc.com', NULL, 'GIFT PRO INC', NULL, NULL, NULL, NULL, 'adamcrowson', 1, '2024-07-15 20:39:25', '2024-07-15 20:39:25'),
(303, 'ISAM', 'DSMONA', 'IsamSamona@yahoo.com', NULL, 'SUPER DOLLAR STORE#35', NULL, NULL, NULL, NULL, 'isamdsmona', 1, '2024-07-15 20:46:37', '2024-07-15 20:46:37'),
(304, 'MOHAMMAD', 'ALI', 'mali@envisiongrp.net', NULL, 'VISION SALES & MARKETING', NULL, NULL, NULL, NULL, 'mohammadali', 1, '2024-07-15 20:48:31', '2024-07-15 20:48:31'),
(305, 'CHARLES', 'CALISH', 'charlesgoodbuysusa@gmail.com', NULL, 'GOOD BUYS USA', NULL, NULL, NULL, NULL, 'charlescalish', 1, '2024-07-15 20:49:36', '2024-07-15 20:49:36'),
(306, 'STAN', 'SLYTER', 'stan.slyter@albertstons.com', NULL, 'LUCKEY LOW PRICE', NULL, NULL, NULL, NULL, 'stanslyter', 1, '2024-07-15 20:51:03', '2024-07-15 20:51:03'),
(307, 'LEVI', 'PENDERGRASS', 'levi@hldistributions.com', NULL, 'H&L DISTRIBUTIONS', NULL, NULL, NULL, NULL, 'levipendergrass', 1, '2024-07-15 20:52:35', '2024-07-15 20:52:35'),
(308, 'NINNA', 'N', 'dpkhomes@gmail.com', NULL, 'NINNA', NULL, NULL, NULL, NULL, 'ninnan', 1, '2024-07-15 20:53:41', '2024-07-15 20:53:41'),
(309, '$ 1 DISCOUNT CENTER', '$ 1 DISCOUNT CENTER', 'pkhona@aol.com', NULL, '$ 1 DISCOUNT CENTER', NULL, NULL, NULL, NULL, '1-discount-center-1-discount-center', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(310, '$ STORE #1', '$ STORE #1', 'ammar_mustafa80@yahoo.com', NULL, '$ STORE #1', NULL, NULL, NULL, NULL, 'store-1-store-1', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(311, '$5.00 MORE OR LESS', '$5.00 MORE OR LESS', 'kettlene524@yahoo.com', NULL, '$5.00 MORE OR LESS', NULL, NULL, NULL, NULL, '500-more-or-less500-more-or-less', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(312, '1 DOLLAR STORE.COM', '1 DOLLAR STORE.COM', 'dollarstore.com@gmail.com', NULL, '1 DOLLAR STORE.COM', NULL, NULL, NULL, NULL, '1-dollar-storecom1-dollar-storecom', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(313, '10 STRAWBERRY STREET', '10 STRAWBERRY STREET', 'zacharyz@tenstrawberrystreet.com', NULL, '10 STRAWBERRY STREET', NULL, NULL, NULL, NULL, '10-strawberry-street10-strawberry-street', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(315, '4 STATE SAT', '4 STATE SAT', '4state@gmail.com', NULL, '4 STATE SAT', NULL, NULL, NULL, NULL, '4-state-sat4-state-sat', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(316, '5 AND UNDER LLC', '5 AND UNDER LLC', '5andunder1@gmail.com', NULL, '5 AND UNDER LLC', NULL, NULL, NULL, NULL, '5-and-under-llc5-and-under-llc', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(317, '626 GROUP LLC', '626 GROUP LLC', 'john@626autosport.com', NULL, '626 GROUP LLC', NULL, NULL, NULL, NULL, '626-group-llc626-group-llc', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(318, '98 CENT STORE~D', '98 CENT STORE~D', 's98cents@yahoo.com', NULL, '98 CENT STORE~D', NULL, NULL, NULL, NULL, '98-cent-stored98-cent-stored', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(319, '99 CENT & APPLIANCES', '99 CENT & APPLIANCES', 'ISHTEYHA47@GMAIL.COM', NULL, '99 CENT & APPLIANCES', NULL, NULL, NULL, NULL, '99-cent-appliances99-cent-appliances', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(320, '99 CENT PLUS', '99 CENT PLUS', 'aniliqbal@hotmail.com', NULL, '99 CENT PLUS', NULL, NULL, NULL, NULL, '99-cent-plus99-cent-plus', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(321, '99 CENT STORE #1', '99 CENT STORE #1', 'hannazaya@aol.com', NULL, '99 CENT STORE #1', NULL, NULL, NULL, NULL, '99-cent-store-199-cent-store-1', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(322, 'A 1 DOLLAR', 'A 1 DOLLAR', 'karimmerchant@aol.com', NULL, 'A 1 DOLLAR', NULL, NULL, NULL, NULL, 'a-1-dollara-1-dollar', 1, '2024-07-19 12:24:01', '2024-07-19 12:24:01'),
(323, 'A DOLLAR', 'A DOLLAR', 'abe@adollarus.com', NULL, 'A DOLLAR', NULL, NULL, NULL, NULL, 'a-dollara-dollar', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(324, 'A TO Z GENERAL GOODS WHOL', 'A TO Z GENERAL GOODS WHOL', 'atozwas@aol.com', NULL, 'A TO Z GENERAL GOODS WHOL', NULL, NULL, NULL, NULL, 'a-to-z-general-goods-whola-to-z-general-goods-whol', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(325, 'A TO Z WHOLESALE TOOLS IN', 'A TO Z WHOLESALE TOOLS IN', 'atoztonia@gmail.com', NULL, 'A TO Z WHOLESALE TOOLS IN', NULL, NULL, NULL, NULL, 'a-to-z-wholesale-tools-ina-to-z-wholesale-tools-in', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(326, 'A UNITED RESTAURANT EQUIP', 'A UNITED RESTAURANT EQUIP', 'martinaplaster@a-unitedrestequip.com', NULL, 'A UNITED RESTAURANT EQUIP', NULL, NULL, NULL, NULL, 'a-united-restaurant-equipa-united-restaurant-equip', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(327, 'ABHINASI ENTERPRISES LTD', 'ABHINASI ENTERPRISES LTD', 'ae1383@yahoo.ca', NULL, 'ABHINASI ENTERPRISES LTD', NULL, NULL, NULL, NULL, 'abhinasi-enterprises-ltdabhinasi-enterprises-ltd', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(328, 'ABILENE GOODWILL IND', 'ABILENE GOODWILL IND', 'jmccay@goodwillwesttexas.org', NULL, 'ABILENE GOODWILL IND', NULL, NULL, NULL, NULL, 'abilene-goodwill-indabilene-goodwill-ind', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(329, 'ABVI GOODWILL INDUSTRIES', 'ABVI GOODWILL INDUSTRIES', 'mcavalli@abvi-goodwill.com', NULL, 'ABVI GOODWILL INDUSTRIES', NULL, NULL, NULL, NULL, 'abvi-goodwill-industriesabvi-goodwill-industries', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(330, 'ACFOUR CORP.', 'ACFOUR CORP.', 'familyprideatm@gmail.com', NULL, 'ACFOUR CORP.', NULL, NULL, NULL, NULL, 'acfour-corpacfour-corp', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(331, 'ACTION MINING SERVICE INC', 'ACTION MINING SERVICE INC', 'customerservice.actionmining.com', NULL, 'ACTION MINING SERVICE INC', NULL, NULL, NULL, NULL, 'action-mining-service-incaction-mining-service-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(332, 'ADR DISTRIBUTORS INC.', 'ADR DISTRIBUTORS INC.', 'adrdistributors@gmail.com', NULL, 'ADR DISTRIBUTORS INC.', NULL, NULL, NULL, NULL, 'adr-distributors-incadr-distributors-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(333, 'ADVANCE DISTRIBUTORS', 'ADVANCE DISTRIBUTORS', 'advancedist@sbcglobal.net', NULL, 'ADVANCE DISTRIBUTORS', NULL, NULL, NULL, NULL, 'advance-distributorsadvance-distributors', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(334, 'ADVANTAGE SALES', 'ADVANTAGE SALES', 'micah@low77.com', NULL, 'ADVANTAGE SALES', NULL, NULL, NULL, NULL, 'advantage-salesadvantage-sales', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(335, 'AERO TEK INTL', 'AERO TEK INTL', 'eseehoffec@aerotekusa.com', NULL, 'AERO TEK INTL', NULL, NULL, NULL, NULL, 'aero-tek-intlaero-tek-intl', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(336, 'AL MANSOOR', 'AL MANSOOR', 'Jaymin_10@yahoo.com', NULL, 'AL MANSOOR', NULL, NULL, NULL, NULL, 'al-mansooral-mansoor', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(337, 'ALBERTSONS INC.', 'ALBERTSONS INC.', 'd1374.mgr@albertsons.com', NULL, 'ALBERTSONS INC.', NULL, NULL, NULL, NULL, 'albertsons-incalbertsons-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(338, 'ALEC MOSLOW', 'ALEC MOSLOW', 'a.moslow@dacardworld.com', NULL, 'ALEC MOSLOW', NULL, NULL, NULL, NULL, 'alec-moslowalec-moslow', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(339, 'ALETEIA INC', 'ALETEIA INC', 'yousif-85@outlook.com', NULL, 'ALETEIA INC', NULL, NULL, NULL, NULL, 'aleteia-incaleteia-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(340, 'ALL SEASONS DOLLAR', 'ALL SEASONS DOLLAR', 'shanks1961@aol.com', NULL, 'ALL SEASONS DOLLAR', NULL, NULL, NULL, NULL, 'all-seasons-dollarall-seasons-dollar', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(341, 'ALLENDER & CO,INC', 'ALLENDER & CO,INC', 'sales@allenderandcompany.com', NULL, 'ALLENDER & CO,INC', NULL, NULL, NULL, NULL, 'allender-coincallender-coinc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(342, 'ALLIANCE IMPORTS INC', 'ALLIANCE IMPORTS INC', 'mike@allianceimportsinc.com', NULL, 'ALLIANCE IMPORTS INC', NULL, NULL, NULL, NULL, 'alliance-imports-incalliance-imports-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(343, 'ALLIANCE INTERNATIONAL LL', 'ALLIANCE INTERNATIONAL LL', 'brad.weems@doitbest.com', NULL, 'ALLIANCE INTERNATIONAL LL', NULL, NULL, NULL, NULL, 'alliance-international-llalliance-international-ll', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(344, 'ALLYN BANK EQUIPMENT CO', 'ALLYN BANK EQUIPMENT CO', 'sales@allyndate-write.com', NULL, 'ALLYN BANK EQUIPMENT CO', NULL, NULL, NULL, NULL, 'allyn-bank-equipment-coallyn-bank-equipment-co', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(345, 'ALMOST 99 CENT STORE', 'ALMOST 99 CENT STORE', 'raadsawa@yahoo.com', NULL, 'ALMOST 99 CENT STORE', NULL, NULL, NULL, NULL, 'almost-99-cent-storealmost-99-cent-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(346, 'ALTMEYERS HOME STORE', 'ALTMEYERS HOME STORE', 'rod@altmeyers.com', NULL, 'ALTMEYERS HOME STORE', NULL, NULL, NULL, NULL, 'altmeyers-home-storealtmeyers-home-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(347, 'ALUMINIOS SAN PABLOS.A.', 'ALUMINIOS SAN PABLOS.A.', 'chomiguzman@gmail.com', NULL, 'ALUMINIOS SAN PABLOS.A.', NULL, NULL, NULL, NULL, 'aluminios-san-pablosaaluminios-san-pablosa', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(348, 'AM SALES INC', 'AM SALES INC', 'dba0924@yahoo.com', NULL, 'AM SALES INC', NULL, NULL, NULL, NULL, 'am-sales-incam-sales-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(349, 'AMAN TRADING CORPORATION', 'AMAN TRADING CORPORATION', 'agheewalla@aol.com', NULL, 'AMAN TRADING CORPORATION', NULL, NULL, NULL, NULL, 'aman-trading-corporationaman-trading-corporation', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(350, 'AMERICAN HERITAGE BILLARD', 'AMERICAN HERITAGE BILLARD', 'accountspayable@ahbilliards.com', NULL, 'AMERICAN HERITAGE BILLARD', NULL, NULL, NULL, NULL, 'american-heritage-billardamerican-heritage-billard', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(351, 'AMERICAN INDUSTRIAL SUPPL', 'AMERICAN INDUSTRIAL SUPPL', 'michelle@americaniws.com', NULL, 'AMERICAN INDUSTRIAL SUPPL', NULL, NULL, NULL, NULL, 'american-industrial-supplamerican-industrial-suppl', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(352, 'AMERICAN LIQUIDATION INC', 'AMERICAN LIQUIDATION INC', 'ussurplus@msn.com', NULL, 'AMERICAN LIQUIDATION INC', NULL, NULL, NULL, NULL, 'american-liquidation-incamerican-liquidation-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(353, 'ANN & HOPE', 'ANN & HOPE', 'spaulin@annhope.com', NULL, 'ANN & HOPE', NULL, NULL, NULL, NULL, 'ann-hopeann-hope', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(354, 'ARAMCO IMPORTS', 'ARAMCO IMPORTS', 'maher.k@aramcoimports.com', NULL, 'ARAMCO IMPORTS', NULL, NULL, NULL, NULL, 'aramco-importsaramco-imports', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(355, 'ARMY SURPLUS WAREHOUSE', 'ARMY SURPLUS WAREHOUSE', 'asw@armysurpluswarehouse.com', NULL, 'ARMY SURPLUS WAREHOUSE', NULL, NULL, NULL, NULL, 'army-surplus-warehousearmy-surplus-warehouse', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(356, 'ARTE AMBIENTAL', 'ARTE AMBIENTAL', 'arteambiental@gmail.com', NULL, 'ARTE AMBIENTAL', NULL, NULL, NULL, NULL, 'arte-ambientalarte-ambiental', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(357, 'ATLANTA DOLLAR INC.', 'ATLANTA DOLLAR INC.', 'atlantadollars@yahoo.com', NULL, 'ATLANTA DOLLAR INC.', NULL, NULL, NULL, NULL, 'atlanta-dollar-incatlanta-dollar-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(358, 'ATLANTIC PERFUMES', 'ATLANTIC PERFUMES', 'atlanticp2000@gmail.com', NULL, 'ATLANTIC PERFUMES', NULL, NULL, NULL, NULL, 'atlantic-perfumesatlantic-perfumes', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(359, 'ATLAS DIAMOND', 'ATLAS DIAMOND', 'mustafa@atlasdiamondinc.com', NULL, 'ATLAS DIAMOND', NULL, NULL, NULL, NULL, 'atlas-diamondatlas-diamond', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(360, 'AUSTIN DOLLAR PLUS', 'AUSTIN DOLLAR PLUS', 'annyanees@hotmail.com', NULL, 'AUSTIN DOLLAR PLUS', NULL, NULL, NULL, NULL, 'austin-dollar-plusaustin-dollar-plus', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(361, 'AUSTIN HOME BREW SUPPLY', 'AUSTIN HOME BREW SUPPLY', 'buyer@austinhomebrew.com', NULL, 'AUSTIN HOME BREW SUPPLY', NULL, NULL, NULL, NULL, 'austin-home-brew-supplyaustin-home-brew-supply', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(362, 'AZAN DISCOUNT FABRICS LTD', 'AZAN DISCOUNT FABRICS LTD', 'azansdf@gmail.com', NULL, 'AZAN DISCOUNT FABRICS LTD', NULL, NULL, NULL, NULL, 'azan-discount-fabrics-ltdazan-discount-fabrics-ltd', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(363, 'B & G DISCOUNT', 'B & G DISCOUNT', 'eric.t.gown@gmail.com', NULL, 'B & G DISCOUNT', NULL, NULL, NULL, NULL, 'b-g-discountb-g-discount', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(364, 'BAILEYS DISCOUNT CENTER', 'BAILEYS DISCOUNT CENTER', 'baileydiscount@gmail.com; heather.baileydiscount@g', NULL, 'BAILEYS DISCOUNT CENTER', NULL, NULL, NULL, NULL, 'baileys-discount-centerbaileys-discount-center', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(365, 'BARGAIN BILLS', 'BARGAIN BILLS', 'bargainb@chibardun.net', NULL, 'BARGAIN BILLS', NULL, NULL, NULL, NULL, 'bargain-billsbargain-bills', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(366, 'BARGAIN CITY', 'BARGAIN CITY', 'auctionct@aol.com', NULL, 'BARGAIN CITY', NULL, NULL, NULL, NULL, 'bargain-citybargain-city', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(367, 'BARGAIN DISCOUNT STORE', 'BARGAIN DISCOUNT STORE', 'alinaseer4@yahoo.com', NULL, 'BARGAIN DISCOUNT STORE', NULL, NULL, NULL, NULL, 'bargain-discount-storebargain-discount-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(368, 'BARGAIN OUTLETINC', 'BARGAIN OUTLETINC', 'sam11854@yahoo.com', NULL, 'BARGAIN OUTLETINC', NULL, NULL, NULL, NULL, 'bargain-outletincbargain-outletinc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(369, 'BARGAIN WHOLESALE', 'BARGAIN WHOLESALE', 'bargainbws@gmail.com', NULL, 'BARGAIN WHOLESALE', NULL, NULL, NULL, NULL, 'bargain-wholesalebargain-wholesale', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(370, 'BARGAIN WORLD WHOLESALE', 'BARGAIN WORLD WHOLESALE', 'chuckwitbrod@yahoo.com', NULL, 'BARGAIN WORLD WHOLESALE', NULL, NULL, NULL, NULL, 'bargain-world-wholesalebargain-world-wholesale', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(371, 'BAYMONT INN & SUITES', 'BAYMONT INN & SUITES', 'baymontwhitewater@sbcglobal.net', NULL, 'BAYMONT INN & SUITES', NULL, NULL, NULL, NULL, 'baymont-inn-suitesbaymont-inn-suites', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(372, 'BEARSE USA', 'BEARSE USA', 'Giovanna@BearseUSA.com', NULL, 'BEARSE USA', NULL, NULL, NULL, NULL, 'bearse-usabearse-usa', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(373, 'BEAUTIFUL THINGS', 'BEAUTIFUL THINGS', 'vesmith@iun.edu', NULL, 'BEAUTIFUL THINGS', NULL, NULL, NULL, NULL, 'beautiful-thingsbeautiful-things', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(374, 'BECK LEATHER & CRAFTS', 'BECK LEATHER & CRAFTS', 'beckcamp&crafts@networld.com', NULL, 'BECK LEATHER & CRAFTS', NULL, NULL, NULL, NULL, 'beck-leather-craftsbeck-leather-crafts', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(375, 'BETTER VALUE LIMITED', 'BETTER VALUE LIMITED', 'betavalu@yahoo.com', NULL, 'BETTER VALUE LIMITED', NULL, NULL, NULL, NULL, 'better-value-limitedbetter-value-limited', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(376, 'BIG SAVER THRIFT STORE', 'BIG SAVER THRIFT STORE', 'bigsaversthrifts@bellsouth.net', NULL, 'BIG SAVER THRIFT STORE', NULL, NULL, NULL, NULL, 'big-saver-thrift-storebig-saver-thrift-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(377, 'BILCO & ASSOCIATES INC', 'BILCO & ASSOCIATES INC', 'gobilco@aol.com', NULL, 'BILCO & ASSOCIATES INC', NULL, NULL, NULL, NULL, 'bilco-associates-incbilco-associates-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(378, 'BILLS WHOLESALE INC.', 'BILLS WHOLESALE INC.', 'billswholesale@bellsouth.net', NULL, 'BILLS WHOLESALE INC.', NULL, NULL, NULL, NULL, 'bills-wholesale-incbills-wholesale-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(379, 'BLOOMINGDALE BULK FOODS', 'BLOOMINGDALE BULK FOODS', 'jacoblambright1@yahoo.com', NULL, 'BLOOMINGDALE BULK FOODS', NULL, NULL, NULL, NULL, 'bloomingdale-bulk-foodsbloomingdale-bulk-foods', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(380, 'BLUE SKY MARKETING', 'BLUE SKY MARKETING', 'ezirlin@buybluesky.com', NULL, 'BLUE SKY MARKETING', NULL, NULL, NULL, NULL, 'blue-sky-marketingblue-sky-marketing', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(381, 'BOISE ARMY-NAVY', 'BOISE ARMY-NAVY', 'ban4@mindspring.com', NULL, 'BOISE ARMY-NAVY', NULL, NULL, NULL, NULL, 'boise-army-navyboise-army-navy', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(382, 'BOSTON MOUNTAIN LIQUIDATORS', 'BOSTON MOUNTAIN LIQUIDATORS', 'handtohandlori49@gmail.com', NULL, 'BOSTON MOUNTAIN LIQUIDATORS', NULL, NULL, NULL, NULL, 'boston-mountain-liquidatorsboston-mountain-liquidators', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(383, 'BOYS & GIRLS CLUB', 'BOYS & GIRLS CLUB', 'manager.bgcthrift@hotmail.com', NULL, 'BOYS & GIRLS CLUB', NULL, NULL, NULL, NULL, 'boys-girls-clubboys-girls-club', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(384, 'BRADY\'S TRUE VALUE', 'BRADY\'S TRUE VALUE', 'dcbrady@bradysthisisit.com', NULL, 'BRADY\'S TRUE VALUE', NULL, NULL, NULL, NULL, 'bradys-true-valuebradys-true-value', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(385, 'BUCK N UP', 'BUCK N UP', 'bucknup@comcast.net', NULL, 'BUCK N UP', NULL, NULL, NULL, NULL, 'buck-n-upbuck-n-up', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(386, 'CAFI FASHION', 'CAFI FASHION', 'caafi5000@yahoo.com', NULL, 'CAFI FASHION', NULL, NULL, NULL, NULL, 'cafi-fashioncafi-fashion', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(387, 'CALLAO BUY RITE', 'CALLAO BUY RITE', 'wekentjr@gmail.com', NULL, 'CALLAO BUY RITE', NULL, NULL, NULL, NULL, 'callao-buy-ritecallao-buy-rite', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(388, 'CANARSIE ADULT LIVING INC', 'CANARSIE ADULT LIVING INC', 'marinayalsky@aol.com', NULL, 'CANARSIE ADULT LIVING INC', NULL, NULL, NULL, NULL, 'canarsie-adult-living-inccanarsie-adult-living-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(389, 'CENTRAL MARKET', 'CENTRAL MARKET', 'kathymf@centralmarketdl.com', NULL, 'CENTRAL MARKET', NULL, NULL, NULL, NULL, 'central-marketcentral-market', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(390, 'CESAR ARROCHA GRAELLY Y', 'CESAR ARROCHA GRAELLY Y', 'melissa.vansic@arrocha.com', NULL, 'CESAR ARROCHA GRAELLY Y', NULL, NULL, NULL, NULL, 'cesar-arrocha-graelly-ycesar-arrocha-graelly-y', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(391, 'CHATTANOOGA GOODWILL INC', 'CHATTANOOGA GOODWILL INC', 'daniel.moore@goodwillchatt.org', NULL, 'CHATTANOOGA GOODWILL INC', NULL, NULL, NULL, NULL, 'chattanooga-goodwill-incchattanooga-goodwill-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(392, 'CHICAGO HOUSEWARESINC.', 'CHICAGO HOUSEWARESINC.', 'chicagohousewares@yahoo.com', NULL, 'CHICAGO HOUSEWARESINC.', NULL, NULL, NULL, NULL, 'chicago-housewaresincchicago-housewaresinc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(393, 'CHICAGO PACKAGING', 'CHICAGO PACKAGING', 'chicagopackagingsupply@hotmail.cm', NULL, 'CHICAGO PACKAGING', NULL, NULL, NULL, NULL, 'chicago-packagingchicago-packaging', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(394, 'CHICK\'S DISCOUNT SADDLERY', 'CHICK\'S DISCOUNT SADDLERY', 'Fchick@chicksaddlery.com', NULL, 'CHICK\'S DISCOUNT SADDLERY', NULL, NULL, NULL, NULL, 'chicks-discount-saddlerychicks-discount-saddlery', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(395, 'CHISM WHOLESALE', 'CHISM WHOLESALE', 'mcchism@hotmail.com', NULL, 'CHISM WHOLESALE', NULL, NULL, NULL, NULL, 'chism-wholesalechism-wholesale', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(396, 'CITY LIQUIDATORS', 'CITY LIQUIDATORS', 'cityliqs@gmail.com', NULL, 'CITY LIQUIDATORS', NULL, NULL, NULL, NULL, 'city-liquidatorscity-liquidators', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(397, 'CITY MARKET', 'CITY MARKET', 'cevans@citymarketfoodstore.com', NULL, 'CITY MARKET', NULL, NULL, NULL, NULL, 'city-marketcity-market', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(398, 'CJS TRASH TO TREASURE', 'CJS TRASH TO TREASURE', 'cjs@mhtc.net', NULL, 'CJS TRASH TO TREASURE', NULL, NULL, NULL, NULL, 'cjs-trash-to-treasurecjs-trash-to-treasure', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(399, 'COAST TO COAST SALES', 'COAST TO COAST SALES', 'issac@coastcoastsales.com', NULL, 'COAST TO COAST SALES', NULL, NULL, NULL, NULL, 'coast-to-coast-salescoast-to-coast-sales', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(400, 'COCINA FUSION', 'COCINA FUSION', 'juliana@cocinafusionchicago.com', NULL, 'COCINA FUSION', NULL, NULL, NULL, NULL, 'cocina-fusioncocina-fusion', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(401, 'CODE INDUSTRIES', 'CODE INDUSTRIES', 'codeind@sbcglobal.net', NULL, 'CODE INDUSTRIES', NULL, NULL, NULL, NULL, 'code-industriescode-industries', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(402, 'COHEN\'S DISCOUNT HARDWARE', 'COHEN\'S DISCOUNT HARDWARE', 'aliwaldm@varizon.net', NULL, 'COHEN\'S DISCOUNT HARDWARE', NULL, NULL, NULL, NULL, 'cohens-discount-hardwarecohens-discount-hardware', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(403, 'COLEMAN SUPPLY CO', 'COLEMAN SUPPLY CO', 'joe@colemanmarine.com', NULL, 'COLEMAN SUPPLY CO', NULL, NULL, NULL, NULL, 'coleman-supply-cocoleman-supply-co', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(404, 'COLLINS BROTHERS INC.', 'COLLINS BROTHERS INC.', 'pcocco@collinschicago.com', NULL, 'COLLINS BROTHERS INC.', NULL, NULL, NULL, NULL, 'collins-brothers-inccollins-brothers-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(405, 'COMFORT INN & SUITES', 'COMFORT INN & SUITES', 'comfort.mi332@gmail.com', NULL, 'COMFORT INN & SUITES', NULL, NULL, NULL, NULL, 'comfort-inn-suitescomfort-inn-suites', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(406, 'CONTINENTAL DIST', 'CONTINENTAL DIST', 'roberto.menares1124@gmail.com', NULL, 'CONTINENTAL DIST', NULL, NULL, NULL, NULL, 'continental-distcontinental-dist', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(407, 'CONTINENTAL SALES', 'CONTINENTAL SALES', 'amagana@cslots4less.com.', NULL, 'CONTINENTAL SALES', NULL, NULL, NULL, NULL, 'continental-salescontinental-sales', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(408, 'COOK BROTHERS', 'COOK BROTHERS', 'pfarrow@cookbrothers.com', NULL, 'COOK BROTHERS', NULL, NULL, NULL, NULL, 'cook-brotherscook-brothers', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(409, 'COUNTRY PUMPKIN FARM MRKT', 'COUNTRY PUMPKIN FARM MRKT', 'cindy1158@yahoo.com', NULL, 'COUNTRY PUMPKIN FARM MRKT', NULL, NULL, NULL, NULL, 'country-pumpkin-farm-mrktcountry-pumpkin-farm-mrkt', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(410, 'COUNTRY TRAINS', 'COUNTRY TRAINS', 'ct@hereintown.net', NULL, 'COUNTRY TRAINS', NULL, NULL, NULL, NULL, 'country-trainscountry-trains', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(411, 'CPI GROUP INC.', 'CPI GROUP INC.', 'mike@thecpigroup.com', NULL, 'CPI GROUP INC.', NULL, NULL, NULL, NULL, 'cpi-group-inccpi-group-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(412, 'CROWN DOLLAR STORE', 'CROWN DOLLAR STORE', 'crowndollar@comcast.net', NULL, 'CROWN DOLLAR STORE', NULL, NULL, NULL, NULL, 'crown-dollar-storecrown-dollar-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(413, 'CUMBERLAND TRADING CO', 'CUMBERLAND TRADING CO', 'bahrenz@aol.com', NULL, 'CUMBERLAND TRADING CO', NULL, NULL, NULL, NULL, 'cumberland-trading-cocumberland-trading-co', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(414, 'D & S AMERICA, INC', 'D & S AMERICA, INC', 'rpsdsamerica@gmail.com', NULL, 'D & S AMERICA, INC', NULL, NULL, NULL, NULL, 'd-s-america-incd-s-america-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(415, 'D.J.H.INC C/O MARVIN', 'D.J.H.INC C/O MARVIN', 'yamina@djhinc.com', NULL, 'D.J.H.INC C/O MARVIN', NULL, NULL, NULL, NULL, 'djhinc-co-marvindjhinc-co-marvin', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(416, 'D.J.LIQUIDATORS', 'D.J.LIQUIDATORS', 'pwagon1@verizon.net', NULL, 'D.J.LIQUIDATORS', NULL, NULL, NULL, NULL, 'djliquidatorsdjliquidators', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(417, 'D.K. SALES', 'D.K. SALES', 'DJKANG53@GMAIL.COM', NULL, 'D.K. SALES', NULL, NULL, NULL, NULL, 'dk-salesdk-sales', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(418, 'DARLENE CONLEE', 'DARLENE CONLEE', 'Darlene257@yahoo.com', NULL, 'DARLENE CONLEE', NULL, NULL, NULL, NULL, 'darlene-conleedarlene-conlee', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(419, 'DAWNS DOLLAR PLACE # 2', 'DAWNS DOLLAR PLACE # 2', 'dkasbah@yahoo.com', NULL, 'DAWNS DOLLAR PLACE # 2', NULL, NULL, NULL, NULL, 'dawns-dollar-place-2dawns-dollar-place-2', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(420, 'DDS DISCOUNTS', 'DDS DISCOUNTS', 'OTS-ROSS@ROS.COM', NULL, 'DDS DISCOUNTS', NULL, NULL, NULL, NULL, 'dds-discountsdds-discounts', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(421, 'DEALERS DISCOUNT CRAFTS', 'DEALERS DISCOUNT CRAFTS', 'vincep620@gmail.com', NULL, 'DEALERS DISCOUNT CRAFTS', NULL, NULL, NULL, NULL, 'dealers-discount-craftsdealers-discount-crafts', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(422, 'DEARBORN INTL MERCHANDIS', 'DEARBORN INTL MERCHANDIS', 'yaseenmarket@yahoo.com', NULL, 'DEARBORN INTL MERCHANDIS', NULL, NULL, NULL, NULL, 'dearborn-intl-merchandisdearborn-intl-merchandis', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(423, 'DELANEY SURPLUS', 'DELANEY SURPLUS', 'delaneys@merr.com', NULL, 'DELANEY SURPLUS', NULL, NULL, NULL, NULL, 'delaney-surplusdelaney-surplus', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(424, 'DEVON DOLLAR', 'DEVON DOLLAR', 'devondollar555@gmail.com', NULL, 'DEVON DOLLAR', NULL, NULL, NULL, NULL, 'devon-dollardevon-dollar', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(425, 'DIAMOND VISION', 'DIAMOND VISION', 'bobheibzel@diamondvisions.com', NULL, 'DIAMOND VISION', NULL, NULL, NULL, NULL, 'diamond-visiondiamond-vision', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(426, 'DIGITAL WORLD ELECTRONIC', 'DIGITAL WORLD ELECTRONIC', 'digitalworldec@aol.com', NULL, 'DIGITAL WORLD ELECTRONIC', NULL, NULL, NULL, NULL, 'digital-world-electronicdigital-world-electronic', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(427, 'DIRECT DISCOUNT', 'DIRECT DISCOUNT', 'season288@cs.com', NULL, 'DIRECT DISCOUNT', NULL, NULL, NULL, NULL, 'direct-discountdirect-discount', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(428, 'DISCOUNT DISTRIBUTORS', 'DISCOUNT DISTRIBUTORS', 'byehling@harpsfood.com', NULL, 'DISCOUNT DISTRIBUTORS', NULL, NULL, NULL, NULL, 'discount-distributorsdiscount-distributors', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(429, 'DISCOUNT OUTLET', 'DISCOUNT OUTLET', 'rogermurray@fothills.net', NULL, 'DISCOUNT OUTLET', NULL, NULL, NULL, NULL, 'discount-outletdiscount-outlet', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(430, 'DISTRIBUIDORA G DE P', 'DISTRIBUIDORA G DE P', 'tita@dgep.com.pa', NULL, 'DISTRIBUIDORA G DE P', NULL, NULL, NULL, NULL, 'distribuidora-g-de-pdistribuidora-g-de-p', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(431, 'DISTRICT PRESS OFFICER', 'DISTRICT PRESS OFFICER', 'mdvroberts@gmail.com', NULL, 'DISTRICT PRESS OFFICER', NULL, NULL, NULL, NULL, 'district-press-officerdistrict-press-officer', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(432, 'DISTRINOBEL S.A.S.', 'DISTRINOBEL S.A.S.', 'jessyjamesmassu@hotmail.com', NULL, 'DISTRINOBEL S.A.S.', NULL, NULL, NULL, NULL, 'distrinobel-sasdistrinobel-sas', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(433, 'DOLLAR $ MART', 'DOLLAR $ MART', 'dollarsmart2005@gmail.com', NULL, 'DOLLAR $ MART', NULL, NULL, NULL, NULL, 'dollar-martdollar-mart', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(434, 'DOLLAR AND MORE', 'DOLLAR AND MORE', 'manish_dollarnmore@yahoo.com', NULL, 'DOLLAR AND MORE', NULL, NULL, NULL, NULL, 'dollar-and-moredollar-and-more', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(435, 'DOLLAR BUSTER #31', 'DOLLAR BUSTER #31', 'nur.olwan@hotmail.com', NULL, 'DOLLAR BUSTER #31', NULL, NULL, NULL, NULL, 'dollar-buster-31dollar-buster-31', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(436, 'DOLLAR CASTLE # 1', 'DOLLAR CASTLE # 1', 'manhalhanna73@yahoo.com', NULL, 'DOLLAR CASTLE # 1', NULL, NULL, NULL, NULL, 'dollar-castle-1dollar-castle-1', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(437, 'DOLLAR CASTLE # 20', 'DOLLAR CASTLE # 20', 'mjmio@aol.com', NULL, 'DOLLAR CASTLE # 20', NULL, NULL, NULL, NULL, 'dollar-castle-20dollar-castle-20', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(438, 'DOLLAR CASTLE #23', 'DOLLAR CASTLE #23', 'bobbiemagnum@yahoo.com', NULL, 'DOLLAR CASTLE #23', NULL, NULL, NULL, NULL, 'dollar-castle-23dollar-castle-23', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(439, 'DOLLAR CASTLE #31', 'DOLLAR CASTLE #31', 'dollarcastle31@yahoo.com', NULL, 'DOLLAR CASTLE #31', NULL, NULL, NULL, NULL, 'dollar-castle-31dollar-castle-31', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(440, 'DOLLAR CENTER # 4', 'DOLLAR CENTER # 4', 'dollarcenter4@yahoo.com', NULL, 'DOLLAR CENTER # 4', NULL, NULL, NULL, NULL, 'dollar-center-4dollar-center-4', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(441, 'DOLLAR CENTER #56', 'DOLLAR CENTER #56', 'saemnshamaon@yahoo.com', NULL, 'DOLLAR CENTER #56', NULL, NULL, NULL, NULL, 'dollar-center-56dollar-center-56', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(442, 'DOLLAR CENTER 53', 'DOLLAR CENTER 53', 'davidkhuzmi@gmail.com', NULL, 'DOLLAR CENTER 53', NULL, NULL, NULL, NULL, 'dollar-center-53dollar-center-53', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(443, 'DOLLAR DAZE', 'DOLLAR DAZE', 'laqdd@yahoo.com', NULL, 'DOLLAR DAZE', NULL, NULL, NULL, NULL, 'dollar-dazedollar-daze', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(444, 'DOLLAR DAZE', 'DOLLAR DAZE', 'sjohnson@dollardazeonline.com', NULL, 'DOLLAR DAZE', NULL, NULL, NULL, NULL, 'dollar-dazedollar-daze1', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(445, 'DOLLAR DAZE', 'DOLLAR DAZE', 'ddmmtownsend@gmail.com', NULL, 'DOLLAR DAZE', NULL, NULL, NULL, NULL, 'dollar-dazedollar-daze11', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(446, 'DOLLAR DEAL #12', 'DOLLAR DEAL #12', 'zps1951@gmail.com', NULL, 'DOLLAR DEAL #12', NULL, NULL, NULL, NULL, 'dollar-deal-12dollar-deal-12', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(447, 'DOLLAR DEPOT', 'DOLLAR DEPOT', 'ron2017@yahoo.com', NULL, 'DOLLAR DEPOT', NULL, NULL, NULL, NULL, 'dollar-depotdollar-depot', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(448, 'DOLLAR DISCOUNT WORLD', 'DOLLAR DISCOUNT WORLD', 'vickjoshi@dollardiscountworld.com', NULL, 'DOLLAR DISCOUNT WORLD', NULL, NULL, NULL, NULL, 'dollar-discount-worlddollar-discount-world', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(449, 'DOLLAR EXPO', 'DOLLAR EXPO', 'Dollarexpo@yahoo.com', NULL, 'DOLLAR EXPO', NULL, NULL, NULL, NULL, 'dollar-expodollar-expo', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(450, 'DOLLAR GALLERY', 'DOLLAR GALLERY', 'ronkattoula@yahoo.com', NULL, 'DOLLAR GALLERY', NULL, NULL, NULL, NULL, 'dollar-gallerydollar-gallery', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(451, 'DOLLAR INN PLUS INC', 'DOLLAR INN PLUS INC', 'ammarsadaqa22@gmail.com', NULL, 'DOLLAR INN PLUS INC', NULL, NULL, NULL, NULL, 'dollar-inn-plus-incdollar-inn-plus-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(452, 'DOLLAR MANIA', 'DOLLAR MANIA', 'DOLLARMANIACT.@GMAIL.com', NULL, 'DOLLAR MANIA', NULL, NULL, NULL, NULL, 'dollar-maniadollar-mania', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(453, 'DOLLAR MART', 'DOLLAR MART', 'bobhasnudeen@gmail.com', NULL, 'DOLLAR MART', NULL, NULL, NULL, NULL, 'dollar-martdollar-mart1', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(454, 'DOLLAR MART', 'DOLLAR MART', 'DOLLARMART60@HOTMAIL.COM', NULL, 'DOLLAR MART', NULL, NULL, NULL, NULL, 'dollar-martdollar-mart11', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(455, 'DOLLAR PALACE PLUS #4', 'DOLLAR PALACE PLUS #4', 'dolpalace@yahoo.com', NULL, 'DOLLAR PALACE PLUS #4', NULL, NULL, NULL, NULL, 'dollar-palace-plus-4dollar-palace-plus-4', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(456, 'DOLLAR PLUS', 'DOLLAR PLUS', 'dollplus@gmail.com', NULL, 'DOLLAR PLUS', NULL, NULL, NULL, NULL, 'dollar-plusdollar-plus', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(457, 'DOLLAR PLUS & MORE', 'DOLLAR PLUS & MORE', 'pareshco@gmail.com', NULL, 'DOLLAR PLUS & MORE', NULL, NULL, NULL, NULL, 'dollar-plus-moredollar-plus-more', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(458, 'DOLLAR STORE PLUS~D', 'DOLLAR STORE PLUS~D', 'abeer@a2zballoons.com', NULL, 'DOLLAR STORE PLUS~D', NULL, NULL, NULL, NULL, 'dollar-store-plusddollar-store-plusd', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(459, 'DOLLAR VALUE PLUS #1', 'DOLLAR VALUE PLUS #1', 'choibrothersinc@gmail.com', NULL, 'DOLLAR VALUE PLUS #1', NULL, NULL, NULL, NULL, 'dollar-value-plus-1dollar-value-plus-1', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(460, 'DOLLAR VALUE PLUS #12', 'DOLLAR VALUE PLUS #12', 'naseem.jarjis@gmail.com', NULL, 'DOLLAR VALUE PLUS #12', NULL, NULL, NULL, NULL, 'dollar-value-plus-12dollar-value-plus-12', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(461, 'DOLLAR VARIETY STORE', 'DOLLAR VARIETY STORE', 'conpomtuck@hotmail.com', NULL, 'DOLLAR VARIETY STORE', NULL, NULL, NULL, NULL, 'dollar-variety-storedollar-variety-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(462, 'DOLLAR VILLAGE #5', 'DOLLAR VILLAGE #5', 'mikedollarvillage1@att.net', NULL, 'DOLLAR VILLAGE #5', NULL, NULL, NULL, NULL, 'dollar-village-5dollar-village-5', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(463, 'DOLLAR VILLAGE #7', 'DOLLAR VILLAGE #7', 'youhanafowzie@yahoo.com', NULL, 'DOLLAR VILLAGE #7', NULL, NULL, NULL, NULL, 'dollar-village-7dollar-village-7', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(464, 'DOLLAR XTREME', 'DOLLAR XTREME', 'mkotapati99@yahoo.com', NULL, 'DOLLAR XTREME', NULL, NULL, NULL, NULL, 'dollar-xtremedollar-xtreme', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(465, 'DOLLLAR DEPOT AND MORE', 'DOLLLAR DEPOT AND MORE', 'dollyboling@aol.com', NULL, 'DOLLLAR DEPOT AND MORE', NULL, NULL, NULL, NULL, 'dolllar-depot-and-moredolllar-depot-and-more', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(466, 'DOM ITP LTD', 'DOM ITP LTD', 'janik97@gmail.com', NULL, 'DOM ITP LTD', NULL, NULL, NULL, NULL, 'dom-itp-ltddom-itp-ltd', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(467, 'DOUBLE 8 FOODS', 'DOUBLE 8 FOODS', 'hq@double8foods.com', NULL, 'DOUBLE 8 FOODS', NULL, NULL, NULL, NULL, 'double-8-foodsdouble-8-foods', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(468, 'DOWIN ENTERPRISES(USA)INC', 'DOWIN ENTERPRISES(USA)INC', 'dowinusa@yahoo.com', NULL, 'DOWIN ENTERPRISES(USA)INC', NULL, NULL, NULL, NULL, 'dowin-enterprisesusaincdowin-enterprisesusainc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(469, 'DROGUERIA SAN JUAN', 'DROGUERIA SAN JUAN', 'drogueriasanjuan@hotmail.com', NULL, 'DROGUERIA SAN JUAN', NULL, NULL, NULL, NULL, 'drogueria-san-juandrogueria-san-juan', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(470, 'DUKAN INTL FOOD MARKET', 'DUKAN INTL FOOD MARKET', 'fayadyoneli@gmail.com', NULL, 'DUKAN INTL FOOD MARKET', NULL, NULL, NULL, NULL, 'dukan-intl-food-marketdukan-intl-food-market', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(471, 'DWIGHT CIGARETS', 'DWIGHT CIGARETS', 'dwightliquor@yahoo.com', NULL, 'DWIGHT CIGARETS', NULL, NULL, NULL, NULL, 'dwight-cigaretsdwight-cigarets', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(472, 'E SHOP LLC', 'E SHOP LLC', 'eshoppartners@gmail.com', NULL, 'E SHOP LLC', NULL, NULL, NULL, NULL, 'e-shop-llce-shop-llc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(473, 'EAST COST DISTRIBUTOR', 'EAST COST DISTRIBUTOR', 'ecdiraj@aol.com', NULL, 'EAST COST DISTRIBUTOR', NULL, NULL, NULL, NULL, 'east-cost-distributoreast-cost-distributor', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(474, 'ECUA OUTLET CENTER LLC', 'ECUA OUTLET CENTER LLC', 'NESTORTOALA6@GMAIL.COM', NULL, 'ECUA OUTLET CENTER LLC', NULL, NULL, NULL, NULL, 'ecua-outlet-center-llcecua-outlet-center-llc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(475, 'EDWIN D LAYNE AND SONS', 'EDWIN D LAYNE AND SONS', 'levi.john@laynes.vc', NULL, 'EDWIN D LAYNE AND SONS', NULL, NULL, NULL, NULL, 'edwin-d-layne-and-sonsedwin-d-layne-and-sons', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(476, 'EEC INTERNATIONAL INC', 'EEC INTERNATIONAL INC', 'ptrchu1168@gmail.com', NULL, 'EEC INTERNATIONAL INC', NULL, NULL, NULL, NULL, 'eec-international-inceec-international-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(477, 'EL MILAGRO', 'EL MILAGRO', 'carlosestrada@el-milagro.com', NULL, 'EL MILAGRO', NULL, NULL, NULL, NULL, 'el-milagroel-milagro', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(478, 'EL REY PLAZA', 'EL REY PLAZA', 'jorge@elreyfoods.com', NULL, 'EL REY PLAZA', NULL, NULL, NULL, NULL, 'el-rey-plazael-rey-plaza', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(479, 'ELECTRONIC WORLD PLUS', 'ELECTRONIC WORLD PLUS', 'electronicworld65@gmail.com', NULL, 'ELECTRONIC WORLD PLUS', NULL, NULL, NULL, NULL, 'electronic-world-pluselectronic-world-plus', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(480, 'ELITE EDGE INC', 'ELITE EDGE INC', 'maryann@eliteedgeinc.com', NULL, 'ELITE EDGE INC', NULL, NULL, NULL, NULL, 'elite-edge-incelite-edge-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(481, 'EQUIPMENT CONNECTION & PARTY', 'EQUIPMENT CONNECTION & PARTY', 'equipmentconnection@live.com', NULL, 'EQUIPMENT CONNECTION & PARTY', NULL, NULL, NULL, NULL, 'equipment-connection-partyequipment-connection-party', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(482, 'ESSEF DISTRIBUTORS', 'ESSEF DISTRIBUTORS', 'robyn@lincolnline.com', NULL, 'ESSEF DISTRIBUTORS', NULL, NULL, NULL, NULL, 'essef-distributorsessef-distributors', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(483, 'EURO GROCERY', 'EURO GROCERY', 'Eminlibic@yahoo.com', NULL, 'EURO GROCERY', NULL, NULL, NULL, NULL, 'euro-groceryeuro-grocery', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(484, 'EURO MAX', 'EURO MAX', 'Aga7419@yahoo.com', NULL, 'EURO MAX', NULL, NULL, NULL, NULL, 'euro-maxeuro-max', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(485, 'EVERYDAY SUPER DISCOUNT', 'EVERYDAY SUPER DISCOUNT', 'aynashah1@yahoo.com', NULL, 'EVERYDAY SUPER DISCOUNT', NULL, NULL, NULL, NULL, 'everyday-super-discounteveryday-super-discount', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(486, 'FAMI FOOD SERVICE', 'FAMI FOOD SERVICE', 'fami@piccolotrattoria.com', NULL, 'FAMI FOOD SERVICE', NULL, NULL, NULL, NULL, 'fami-food-servicefami-food-service', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(487, 'FARMERS TRADING CENTER', 'FARMERS TRADING CENTER', 'bertha@famerstrading.com', NULL, 'FARMERS TRADING CENTER', NULL, NULL, NULL, NULL, 'farmers-trading-centerfarmers-trading-center', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(488, 'FERDEL PROMOTIONS', 'FERDEL PROMOTIONS', 'bill@ferdelpromotions.com', NULL, 'FERDEL PROMOTIONS', NULL, NULL, NULL, NULL, 'ferdel-promotionsferdel-promotions', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(489, 'FIESTA FOOD # 3', 'FIESTA FOOD # 3', 'gguirao@fiesta-foods.com', NULL, 'FIESTA FOOD # 3', NULL, NULL, NULL, NULL, 'fiesta-food-3fiesta-food-3', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(490, 'FIESTA MARKET', 'FIESTA MARKET', 'robeliad@fiestamart.com', NULL, 'FIESTA MARKET', NULL, NULL, NULL, NULL, 'fiesta-marketfiesta-market', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(491, 'FIREFLY BUYS', 'FIREFLY BUYS', 'accountpayable@fireflybuys.com', NULL, 'FIREFLY BUYS', NULL, NULL, NULL, NULL, 'firefly-buysfirefly-buys', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(492, 'FIX FIND INC', 'FIX FIND INC', 'steve2@fixfind.com', NULL, 'FIX FIND INC', NULL, NULL, NULL, NULL, 'fix-find-incfix-find-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(493, 'FORNELLI WHOLESALE', 'FORNELLI WHOLESALE', 'blueline134@gmail.com', NULL, 'FORNELLI WHOLESALE', NULL, NULL, NULL, NULL, 'fornelli-wholesalefornelli-wholesale', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(494, 'FRANKLIN DOLLAR GIFT PLUS', 'FRANKLIN DOLLAR GIFT PLUS', 'asaidomar@gmail.com', NULL, 'FRANKLIN DOLLAR GIFT PLUS', NULL, NULL, NULL, NULL, 'franklin-dollar-gift-plusfranklin-dollar-gift-plus', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(495, 'FREEDOM MILITARY SURPLUS', 'FREEDOM MILITARY SURPLUS', 'freedommilitary@aol.com', NULL, 'FREEDOM MILITARY SURPLUS', NULL, NULL, NULL, NULL, 'freedom-military-surplusfreedom-military-surplus', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(496, 'FRUTERIA Y CARNICERIA SAN JOSE', 'FRUTERIA Y CARNICERIA SAN JOSE', 'jcgut1748@gmail.com', NULL, 'FRUTERIA Y CARNICERIA SAN JOSE', NULL, NULL, NULL, NULL, 'fruteria-y-carniceria-san-josefruteria-y-carniceria-san-jose', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(497, 'FUEGO HOLDINGS LLC', 'FUEGO HOLDINGS LLC', 'carriet@fuegostores.com', NULL, 'FUEGO HOLDINGS LLC', NULL, NULL, NULL, NULL, 'fuego-holdings-llcfuego-holdings-llc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(498, 'GADJETS GALORESPORTS OUT', 'GADJETS GALORESPORTS OUT', 'gadjetsgalore@gmail.com', NULL, 'GADJETS GALORESPORTS OUT', NULL, NULL, NULL, NULL, 'gadjets-galoresports-outgadjets-galoresports-out', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(499, 'GAME EXCHANGE OF COLORADO', 'GAME EXCHANGE OF COLORADO', 'richbabich@gmail.com', NULL, 'GAME EXCHANGE OF COLORADO', NULL, NULL, NULL, NULL, 'game-exchange-of-coloradogame-exchange-of-colorado', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(500, 'GANDER GROUP', 'GANDER GROUP', 'ap@thegandergroup.com', NULL, 'GANDER GROUP', NULL, NULL, NULL, NULL, 'gander-groupgander-group', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(501, 'GANDHI ELECTRONICS', 'GANDHI ELECTRONICS', 'mdaligandhi@gmail.com', NULL, 'GANDHI ELECTRONICS', NULL, NULL, NULL, NULL, 'gandhi-electronicsgandhi-electronics', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(502, 'GANESH HOME DECOR LTD', 'GANESH HOME DECOR LTD', 'linengiftwholesale@gmail.com', NULL, 'GANESH HOME DECOR LTD', NULL, NULL, NULL, NULL, 'ganesh-home-decor-ltdganesh-home-decor-ltd', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(503, 'GARDEN EXCHANGE LTD', 'GARDEN EXCHANGE LTD', 'gardenexchange@hilo808.net', NULL, 'GARDEN EXCHANGE LTD', NULL, NULL, NULL, NULL, 'garden-exchange-ltdgarden-exchange-ltd', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(504, 'GATHERED LLC', 'GATHERED LLC', 'gathered2020@gmail.com', NULL, 'GATHERED LLC', NULL, NULL, NULL, NULL, 'gathered-llcgathered-llc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(505, 'GEETHA FOODS INC', 'GEETHA FOODS INC', 'mani.kavattu@gmail.com', NULL, 'GEETHA FOODS INC', NULL, NULL, NULL, NULL, 'geetha-foods-incgeetha-foods-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(506, 'GIFT WAREHOUSE', 'GIFT WAREHOUSE', 'giftwarehouse@hotmail.com', NULL, 'GIFT WAREHOUSE', NULL, NULL, NULL, NULL, 'gift-warehousegift-warehouse', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(507, 'GIFTLAND OFFICE MAX', 'GIFTLAND OFFICE MAX', 'roybeepat@giftlandofficemax.com', NULL, 'GIFTLAND OFFICE MAX', NULL, NULL, NULL, NULL, 'giftland-office-maxgiftland-office-max', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(508, 'GLOBE DRUG', 'GLOBE DRUG', 'rjzeke@gmail.com', NULL, 'GLOBE DRUG', NULL, NULL, NULL, NULL, 'globe-drugglobe-drug', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(509, 'GOODWILL INDUST.SUNCOAST', 'GOODWILL INDUST.SUNCOAST', 'kym.bandy@goodwill-suncoast.com', NULL, 'GOODWILL INDUST.SUNCOAST', NULL, NULL, NULL, NULL, 'goodwill-industsuncoastgoodwill-industsuncoast', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(510, 'GOODWILL INDUSTRIES', 'GOODWILL INDUSTRIES', 'mbarnes@goodwillgr.org', NULL, 'GOODWILL INDUSTRIES', NULL, NULL, NULL, NULL, 'goodwill-industriesgoodwill-industries', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(511, 'GOODWILL MANASOTA', 'GOODWILL MANASOTA', 'invoices@gimi.org', NULL, 'GOODWILL MANASOTA', NULL, NULL, NULL, NULL, 'goodwill-manasotagoodwill-manasota', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(512, 'GOODWILL OF DETROIT', 'GOODWILL OF DETROIT', 'jrobb@goodwilldetroit.org', NULL, 'GOODWILL OF DETROIT', NULL, NULL, NULL, NULL, 'goodwill-of-detroitgoodwill-of-detroit', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(513, 'GOODWILL OF INDUSTRIES', 'GOODWILL OF INDUSTRIES', 'jsutton@goodwillnwnc.org', NULL, 'GOODWILL OF INDUSTRIES', NULL, NULL, NULL, NULL, 'goodwill-of-industriesgoodwill-of-industries', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(514, 'GOODWILL OF THE OLYMPIC', 'GOODWILL OF THE OLYMPIC', 'ritai@goodwillwa.org', NULL, 'GOODWILL OF THE OLYMPIC', NULL, NULL, NULL, NULL, 'goodwill-of-the-olympicgoodwill-of-the-olympic', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(515, 'GOODWILL SAN FRANCISCO', 'GOODWILL SAN FRANCISCO', 'ttusch@sfgoodwill.org', NULL, 'GOODWILL SAN FRANCISCO', NULL, NULL, NULL, NULL, 'goodwill-san-franciscogoodwill-san-francisco', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(516, 'GORDYS GIFT & GARDEN CTR', 'GORDYS GIFT & GARDEN CTR', 'gordysduluth@aol.com', NULL, 'GORDYS GIFT & GARDEN CTR', NULL, NULL, NULL, NULL, 'gordys-gift-garden-ctrgordys-gift-garden-ctr', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(517, 'GOYALGROUP INC.', 'GOYALGROUP INC.', 'goyalss@aol.com', NULL, 'GOYALGROUP INC.', NULL, NULL, NULL, NULL, 'goyalgroup-incgoyalgroup-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(518, 'GRAND DOLLAR $', 'GRAND DOLLAR $', 'banksy@michigan.gov', NULL, 'GRAND DOLLAR $', NULL, NULL, NULL, NULL, 'grand-dollar-grand-dollar', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(519, 'GREAT DISCOUNTERS INC', 'GREAT DISCOUNTERS INC', 'dalec@greatdiscounters.com', NULL, 'GREAT DISCOUNTERS INC', NULL, NULL, NULL, NULL, 'great-discounters-incgreat-discounters-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(520, 'GREAT PRODUCTS', 'GREAT PRODUCTS', 'chris@contatgp.com', NULL, 'GREAT PRODUCTS', NULL, NULL, NULL, NULL, 'great-productsgreat-products', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(521, 'GUJARATI SAMAJ OF CHICAGO', 'GUJARATI SAMAJ OF CHICAGO', 'wsbpatel@yahoo.com', NULL, 'GUJARATI SAMAJ OF CHICAGO', NULL, NULL, NULL, NULL, 'gujarati-samaj-of-chicagogujarati-samaj-of-chicago', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(522, 'H & H WHOLESALE', 'H & H WHOLESALE', 'khost@hhwhloesale.com', NULL, 'H & H WHOLESALE', NULL, NULL, NULL, NULL, 'h-h-wholesaleh-h-wholesale', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(523, 'H.E.BUTT GROCERY COMPANY', 'H.E.BUTT GROCERY COMPANY', 'delnegro.laurie@heb.com', NULL, 'H.E.BUTT GROCERY COMPANY', NULL, NULL, NULL, NULL, 'hebutt-grocery-companyhebutt-grocery-company', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(524, 'HAMMERS', 'HAMMERS', 'hammersdennis@aol.com', NULL, 'HAMMERS', NULL, NULL, NULL, NULL, 'hammershammers', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(525, 'HANDSHAKE DEALS', 'HANDSHAKE DEALS', 'bkkamerman@msn.com', NULL, 'HANDSHAKE DEALS', NULL, NULL, NULL, NULL, 'handshake-dealshandshake-deals', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(526, 'HARCO INDUSTRIES INC', 'HARCO INDUSTRIES INC', 'apmail@harcoweb.com', NULL, 'HARCO INDUSTRIES INC', NULL, NULL, NULL, NULL, 'harco-industries-incharco-industries-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(527, 'HARDISTYS HOMEWARES-SV2', 'HARDISTYS HOMEWARES-SV2', 'sgood@hardistys.com', NULL, 'HARDISTYS HOMEWARES-SV2', NULL, NULL, NULL, NULL, 'hardistys-homewares-sv2hardistys-homewares-sv2', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(528, 'HAUMSIAB', 'HAUMSIAB', 'zouavaj95@gmail.com', NULL, 'HAUMSIAB', NULL, NULL, NULL, NULL, 'haumsiabhaumsiab', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(529, 'HAYWOOD HOUSE INC.', 'HAYWOOD HOUSE INC.', 'WS@HHISTORES.COM', NULL, 'HAYWOOD HOUSE INC.', NULL, NULL, NULL, NULL, 'haywood-house-inchaywood-house-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(530, 'HEART OF TEXAS GOODWILL', 'HEART OF TEXAS GOODWILL', 'newgoods@hotgoodwill.org', NULL, 'HEART OF TEXAS GOODWILL', NULL, NULL, NULL, NULL, 'heart-of-texas-goodwillheart-of-texas-goodwill', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(531, 'HEARTLAND DESIGN ASSOCIAT', 'HEARTLAND DESIGN ASSOCIAT', 'werner@heartlanddesignassociates.com', NULL, 'HEARTLAND DESIGN ASSOCIAT', NULL, NULL, NULL, NULL, 'heartland-design-associatheartland-design-associat', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(532, 'HEARTS DELIGHT INC', 'HEARTS DELIGHT INC', 'hartdete@trailnet.com', NULL, 'HEARTS DELIGHT INC', NULL, NULL, NULL, NULL, 'hearts-delight-inchearts-delight-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(533, 'HEINSOHNS HARDWARE', 'HEINSOHNS HARDWARE', 'laurie@texastastes.com', NULL, 'HEINSOHNS HARDWARE', NULL, NULL, NULL, NULL, 'heinsohns-hardwareheinsohns-hardware', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(534, 'HEMLOCK DOLLAR N MORE', 'HEMLOCK DOLLAR N MORE', 'kingdollars@sbcglobal.net', NULL, 'HEMLOCK DOLLAR N MORE', NULL, NULL, NULL, NULL, 'hemlock-dollar-n-morehemlock-dollar-n-more', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(535, 'HERE TODAY STORES', 'HERE TODAY STORES', 'tavi.collins@heretodaystores.com', NULL, 'HERE TODAY STORES', NULL, NULL, NULL, NULL, 'here-today-storeshere-today-stores', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(536, 'HINDYS', 'HINDYS', 'tomcheshabbos@yahoo.com', NULL, 'HINDYS', NULL, NULL, NULL, NULL, 'hindyshindys', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02');
INSERT INTO `users` (`userId`, `firstname`, `lastname`, `email`, `mobile`, `companyName`, `password`, `profilePic`, `address1`, `gender`, `slug_url`, `status`, `created_date`, `update_date`) VALUES
(537, 'HIRONS', 'HIRONS', 'hirons.store1@gmail.com', NULL, 'HIRONS', NULL, NULL, NULL, NULL, 'hironshirons', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(538, 'HMH INC', 'HMH INC', 'global_cities@yahoo.com', NULL, 'HMH INC', NULL, NULL, NULL, NULL, 'hmh-inchmh-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(539, 'HOBO', 'HOBO', 'dmyers@hoboonline.com', NULL, 'HOBO', NULL, NULL, NULL, NULL, 'hobohobo', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(540, 'HOLIDAY INN', 'HOLIDAY INN', 'rknox@hidowntown.com', NULL, 'HOLIDAY INN', NULL, NULL, NULL, NULL, 'holiday-innholiday-inn', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(541, 'HOLLYWOOD GIFT SHOP', 'HOLLYWOOD GIFT SHOP', 'mrandydelly@yahoo.com', NULL, 'HOLLYWOOD GIFT SHOP', NULL, NULL, NULL, NULL, 'hollywood-gift-shophollywood-gift-shop', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(542, 'HOME DEALS INC', 'HOME DEALS INC', 'homedealsinc20@gmail.com', NULL, 'HOME DEALS INC', NULL, NULL, NULL, NULL, 'home-deals-inchome-deals-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(543, 'HOME DOLLAR MART PLUS', 'HOME DOLLAR MART PLUS', 'homedollarmart@yahoo.com', NULL, 'HOME DOLLAR MART PLUS', NULL, NULL, NULL, NULL, 'home-dollar-mart-plushome-dollar-mart-plus', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(544, 'Home Of Deals', 'Home Of Deals', 'yousif_sheena@yahoo.com', NULL, 'Home Of Deals', NULL, NULL, NULL, NULL, 'home-of-dealshome-of-deals', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(545, 'HOME VALUE LLC', 'HOME VALUE LLC', 'hvmanager@birdviewmall.com', NULL, 'HOME VALUE LLC', NULL, NULL, NULL, NULL, 'home-value-llchome-value-llc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(546, 'HOUSE HASSON HARDWARE CO', 'HOUSE HASSON HARDWARE CO', 'aworkman@househasson.com', NULL, 'HOUSE HASSON HARDWARE CO', NULL, NULL, NULL, NULL, 'house-hasson-hardware-cohouse-hasson-hardware-co', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(547, 'HOUSE HASSON HDWR CO. INC', 'HOUSE HASSON HDWR CO. INC', 'kcyrus@husehasson.com', NULL, 'HOUSE HASSON HDWR CO. INC', NULL, NULL, NULL, NULL, 'house-hasson-hdwr-co-inchouse-hasson-hdwr-co-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(548, 'HOUSEWARE DISTRIBUTORS', 'HOUSEWARE DISTRIBUTORS', 'dickhdi@charterinternet.com', NULL, 'HOUSEWARE DISTRIBUTORS', NULL, NULL, NULL, NULL, 'houseware-distributorshouseware-distributors', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(549, 'HOWARD TAPPER', 'HOWARD TAPPER', 'hjtapper@tappers.com', NULL, 'HOWARD TAPPER', NULL, NULL, NULL, NULL, 'howard-tapperhoward-tapper', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(550, 'IMAGINE THIS', 'IMAGINE THIS', 'janet@promogiant.com', NULL, 'IMAGINE THIS', NULL, NULL, NULL, NULL, 'imagine-thisimagine-this', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(551, 'IMPEXSOL S DE R.L. DE C.V.', 'IMPEXSOL S DE R.L. DE C.V.', 'jaimemicha@me.com', NULL, 'IMPEXSOL S DE R.L. DE C.V.', NULL, NULL, NULL, NULL, 'impexsol-s-de-rl-de-cvimpexsol-s-de-rl-de-cv', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(552, 'IMPORTACIONES DELA 71 SA', 'IMPORTACIONES DELA 71 SA', 'supervisor.sony@prodigy.net.mx', NULL, 'IMPORTACIONES DELA 71 SA', NULL, NULL, NULL, NULL, 'importaciones-dela-71-saimportaciones-dela-71-sa', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(553, 'IMPORTADORA REFLEX LTDA', 'IMPORTADORA REFLEX LTDA', 'reflex@terra.cl', NULL, 'IMPORTADORA REFLEX LTDA', NULL, NULL, NULL, NULL, 'importadora-reflex-ltdaimportadora-reflex-ltda', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(554, 'IMPORTADORA VICTORIA S.A.', 'IMPORTADORA VICTORIA S.A.', 'avinash@entelchile.net', NULL, 'IMPORTADORA VICTORIA S.A.', NULL, NULL, NULL, NULL, 'importadora-victoria-saimportadora-victoria-sa', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(555, 'IN AND OUT MERCHANDISE LIQUIDA', 'IN AND OUT MERCHANDISE LIQUIDA', 'justinw.inandout@gmail.com', NULL, 'IN AND OUT MERCHANDISE LIQUIDA', NULL, NULL, NULL, NULL, 'in-and-out-merchandise-liquidain-and-out-merchandise-liquida', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(556, 'INFINITY 99 CENTS #1', 'INFINITY 99 CENTS #1', 'infinity99beauty@yahoo.com', NULL, 'INFINITY 99 CENTS #1', NULL, NULL, NULL, NULL, 'infinity-99-cents-1infinity-99-cents-1', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(557, 'INNER WORLD', 'INNER WORLD', '1953korn@gmail.com', NULL, 'INNER WORLD', NULL, NULL, NULL, NULL, 'inner-worldinner-world', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(558, 'INTERNATIONAL MONETARY SYSTEMS', 'INTERNATIONAL MONETARY SYSTEMS', 'star.tulchinsky@imsbarter.com', NULL, 'INTERNATIONAL MONETARY SYSTEMS', NULL, NULL, NULL, NULL, 'international-monetary-systemsinternational-monetary-systems', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(559, 'INVERSIONES PARNA S.A.', 'INVERSIONES PARNA S.A.', 'grupovakko22@gmail.com', NULL, 'INVERSIONES PARNA S.A.', NULL, NULL, NULL, NULL, 'inversiones-parna-sainversiones-parna-sa', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(560, 'ITS A BUCK INC.', 'ITS A BUCK INC.', 'itsabuck@live.com', NULL, 'ITS A BUCK INC.', NULL, NULL, NULL, NULL, 'its-a-buck-incits-a-buck-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(561, 'J & P LIQUIDATORE STORE', 'J & P LIQUIDATORE STORE', 'PDraheim@hbs.net', NULL, 'J & P LIQUIDATORE STORE', NULL, NULL, NULL, NULL, 'j-p-liquidatore-storej-p-liquidatore-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(562, 'J & R SALES INC.', 'J & R SALES INC.', 'jleno12562@hotmail.com', NULL, 'J & R SALES INC.', NULL, NULL, NULL, NULL, 'j-r-sales-incj-r-sales-inc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(563, 'JACK L MARCUSINC.', 'JACK L MARCUSINC.', 'kschmerin@jacklmarcus.com', NULL, 'JACK L MARCUSINC.', NULL, NULL, NULL, NULL, 'jack-l-marcusincjack-l-marcusinc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(564, 'JAKES CANDY', 'JAKES CANDY', 'robert@jakescandy.net', NULL, 'JAKES CANDY', NULL, NULL, NULL, NULL, 'jakes-candyjakes-candy', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(565, 'JAMMIN BUTTER LLC', 'JAMMIN BUTTER LLC', 'chad@jamminbutter.com', NULL, 'JAMMIN BUTTER LLC', NULL, NULL, NULL, NULL, 'jammin-butter-llcjammin-butter-llc', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(566, 'JAMS MARKETING', 'JAMS MARKETING', 'accounting@madetoorder.com', NULL, 'JAMS MARKETING', NULL, NULL, NULL, NULL, 'jams-marketingjams-marketing', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(567, 'JEFFERY DOLLAR STORE', 'JEFFERY DOLLAR STORE', 'qurt22@gmail.com', NULL, 'JEFFERY DOLLAR STORE', NULL, NULL, NULL, NULL, 'jeffery-dollar-storejeffery-dollar-store', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(568, 'JELINEK HARDWARE COMPANY', 'JELINEK HARDWARE COMPANY', 'pattyc@aceistheplace.com', NULL, 'JELINEK HARDWARE COMPANY', NULL, NULL, NULL, NULL, 'jelinek-hardware-companyjelinek-hardware-company', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(569, 'JEROME TANK SEASON 2 SEAS', 'JEROME TANK SEASON 2 SEAS', 'jerometankseason@bellsoutsouth.net', NULL, 'JEROME TANK SEASON 2 SEAS', NULL, NULL, NULL, NULL, 'jerome-tank-season-2-seasjerome-tank-season-2-seas', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(570, 'JERUSALEM MARKET', 'JERUSALEM MARKET', 'amjadahamdeh@hotmail.com', NULL, 'JERUSALEM MARKET', NULL, NULL, NULL, NULL, 'jerusalem-marketjerusalem-market', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(571, 'JNPATEL & CO. LTD', 'JNPATEL & CO. LTD', 'vijay_champaneria@yahoo.com', NULL, 'JNPATEL & CO. LTD', NULL, NULL, NULL, NULL, 'jnpatel-co-ltdjnpatel-co-ltd', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(572, 'JOES FOODS & LIQUORS', 'JOES FOODS & LIQUORS', 'CHICAGOMARYJOES@GMAIL.COM', NULL, 'JOES FOODS & LIQUORS', NULL, NULL, NULL, NULL, 'joes-foods-liquorsjoes-foods-liquors', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(573, 'JRS VENTURE', 'JRS VENTURE', 'joe@jrsventures.com', NULL, 'JRS VENTURE', NULL, NULL, NULL, NULL, 'jrs-venturejrs-venture', 1, '2024-07-19 12:24:02', '2024-07-19 12:24:02'),
(574, 'JUVOLICIOUS INC', 'JUVOLICIOUS INC', 'christina@juvoplus.com', NULL, 'JUVOLICIOUS INC', NULL, NULL, NULL, NULL, 'juvolicious-incjuvolicious-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(575, 'K & B DISCOUNT', 'K & B DISCOUNT', 'Mikebyun47@gmail.com', NULL, 'K & B DISCOUNT', NULL, NULL, NULL, NULL, 'k-b-discountk-b-discount', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(576, 'K2J MARKETING PARTNERS', 'K2J MARKETING PARTNERS', 'brad@k2jgifts.com', NULL, 'K2J MARKETING PARTNERS', NULL, NULL, NULL, NULL, 'k2j-marketing-partnersk2j-marketing-partners', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(578, 'KAHN.KAHN INC.', 'KAHN.KAHN INC.', 'jessica@kahnbiz.com', NULL, 'KAHN.KAHN INC.', NULL, NULL, NULL, NULL, 'kahnkahn-inckahnkahn-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(579, 'KANZAMAAN', 'KANZAMAAN', 'megiftcenter@yahoo.com', NULL, 'KANZAMAAN', NULL, NULL, NULL, NULL, 'kanzamaankanzamaan', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(580, 'KELLYS HOME CENTRE LTD', 'KELLYS HOME CENTRE LTD', 'kdarville@kellysbahamas.com', NULL, 'KELLYS HOME CENTRE LTD', NULL, NULL, NULL, NULL, 'kellys-home-centre-ltdkellys-home-centre-ltd', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(581, 'KEY MART', 'KEY MART', 'mario.donado@keymarthn.com', NULL, 'KEY MART', NULL, NULL, NULL, NULL, 'key-martkey-mart', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(582, 'KIEF HARDWARE', 'KIEF HARDWARE', 'erica@cajunhardware.com', NULL, 'KIEF HARDWARE', NULL, NULL, NULL, NULL, 'kief-hardwarekief-hardware', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(583, 'KING DOLLAR', 'KING DOLLAR', 'cekingcorp@aol.com', NULL, 'KING DOLLAR', NULL, NULL, NULL, NULL, 'king-dollarking-dollar', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(584, 'KINGS KLOSET', 'KINGS KLOSET', 'kingskloset@aol.com', NULL, 'KINGS KLOSET', NULL, NULL, NULL, NULL, 'kings-klosetkings-kloset', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(585, 'KITCHEN DEPOT', 'KITCHEN DEPOT', 'kitchendepotone@yahoo.com', NULL, 'KITCHEN DEPOT', NULL, NULL, NULL, NULL, 'kitchen-depotkitchen-depot', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(586, 'KITCHEN KABOODLE', 'KITCHEN KABOODLE', 'lynnf@kitchenkaboodle.com', NULL, 'KITCHEN KABOODLE', NULL, NULL, NULL, NULL, 'kitchen-kaboodlekitchen-kaboodle', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(587, 'KITCHEN KRAFTS INC.', 'KITCHEN KRAFTS INC.', 'darcie@kitchenkrafts.com', NULL, 'KITCHEN KRAFTS INC.', NULL, NULL, NULL, NULL, 'kitchen-krafts-inckitchen-krafts-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(588, 'KMP SALES INC', 'KMP SALES INC', 'ksrv4625@gmail.com', NULL, 'KMP SALES INC', NULL, NULL, NULL, NULL, 'kmp-sales-inckmp-sales-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(589, 'KWIK-KUT MANUFACTURING CO', 'KWIK-KUT MANUFACTURING CO', 'kwik-kut@ntcnet.com', NULL, 'KWIK-KUT MANUFACTURING CO', NULL, NULL, NULL, NULL, 'kwik-kut-manufacturing-cokwik-kut-manufacturing-co', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(590, 'L & M ENTERPRISES INC', 'L & M ENTERPRISES INC', 'marc79847@aol.com', NULL, 'L & M ENTERPRISES INC', NULL, NULL, NULL, NULL, 'l-m-enterprises-incl-m-enterprises-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(591, 'LA FORTUNA', 'LA FORTUNA', 'luism@lafortunaimports.com', NULL, 'LA FORTUNA', NULL, NULL, NULL, NULL, 'la-fortunala-fortuna', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(592, 'LA HACIENDA BRANDS, INC', 'LA HACIENDA BRANDS, INC', 'robertotellado@yahoo.com', NULL, 'LA HACIENDA BRANDS, INC', NULL, NULL, NULL, NULL, 'la-hacienda-brands-incla-hacienda-brands-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(593, 'LA TIJERO DE ORO', 'LA TIJERO DE ORO', 'er_diver@yahoo.com', NULL, 'LA TIJERO DE ORO', NULL, NULL, NULL, NULL, 'la-tijero-de-orola-tijero-de-oro', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(594, 'LANSING VARIETY', 'LANSING VARIETY', 'lansingvariety@yahoo.com', NULL, 'LANSING VARIETY', NULL, NULL, NULL, NULL, 'lansing-varietylansing-variety', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(595, 'LARK DISTRIBUTOR', 'LARK DISTRIBUTOR', 'salemo1980@yahoo.com', NULL, 'LARK DISTRIBUTOR', NULL, NULL, NULL, NULL, 'lark-distributorlark-distributor', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(596, 'LATCOR', 'LATCOR', 'nbenchimol@yahoo.com', NULL, 'LATCOR', NULL, NULL, NULL, NULL, 'latcorlatcor', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(597, 'LEAMINGTON FOODS', 'LEAMINGTON FOODS', 'mariazunich@gmail.com', NULL, 'LEAMINGTON FOODS', NULL, NULL, NULL, NULL, 'leamington-foodsleamington-foods', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(598, 'LIBERTY WHOLESALE', 'LIBERTY WHOLESALE', 'libertywholesale@triad.rr.com', NULL, 'LIBERTY WHOLESALE', NULL, NULL, NULL, NULL, 'liberty-wholesaleliberty-wholesale', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(599, 'LIFESTYLE HOUSEWARE INC', 'LIFESTYLE HOUSEWARE INC', 'ishboeroi@lifestylehouseware.com', NULL, 'LIFESTYLE HOUSEWARE INC', NULL, NULL, NULL, NULL, 'lifestyle-houseware-inclifestyle-houseware-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(600, 'LIGA DEPORTIVA SANDER', 'LIGA DEPORTIVA SANDER', 'info@ligadeportivasander.com', NULL, 'LIGA DEPORTIVA SANDER', NULL, NULL, NULL, NULL, 'liga-deportiva-sanderliga-deportiva-sander', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(601, 'LIVING FRESH MARKET', 'LIVING FRESH MARKET', 'maria.zunich@livingfreshmarket.com', NULL, 'LIVING FRESH MARKET', NULL, NULL, NULL, NULL, 'living-fresh-marketliving-fresh-market', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(602, 'LOAVES FISHES COOKSHOP', 'LOAVES FISHES COOKSHOP', 'info@landfcookshop.com', NULL, 'LOAVES FISHES COOKSHOP', NULL, NULL, NULL, NULL, 'loaves-fishes-cookshoploaves-fishes-cookshop', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(603, 'LOS DOS HERMANOS', 'LOS DOS HERMANOS', 'losdoshermanosinc@gmail.com', NULL, 'LOS DOS HERMANOS', NULL, NULL, NULL, NULL, 'los-dos-hermanoslos-dos-hermanos', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(604, 'LOS TRES ELEFANTES S.A.', 'LOS TRES ELEFANTES S.A.', 'paolagiraldo.importaciones@lostreselefantes.com.co', NULL, 'LOS TRES ELEFANTES S.A.', NULL, NULL, NULL, NULL, 'los-tres-elefantes-salos-tres-elefantes-sa', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(605, 'LOWES #18', 'LOWES #18', 'HRSTEIN8@COMCAST.NET', NULL, 'LOWES #18', NULL, NULL, NULL, NULL, 'lowes-18lowes-18', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(606, 'LSN MARKETING (CLINT)', 'LSN MARKETING (CLINT)', 'clintlen@netzero.com', NULL, 'LSN MARKETING (CLINT)', NULL, NULL, NULL, NULL, 'lsn-marketing-clintlsn-marketing-clint', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(607, 'M & M SALES', 'M & M SALES', 'john@mmwholesale.net', NULL, 'M & M SALES', NULL, NULL, NULL, NULL, 'm-m-salesm-m-sales', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(608, 'MADETOORDER INC.', 'MADETOORDER INC.', 'rusty.park@madetoorder.com', NULL, 'MADETOORDER INC.', NULL, NULL, NULL, NULL, 'madetoorder-incmadetoorder-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(609, 'MAJOR THRIFT', 'MAJOR THRIFT', 'macjoa@aol.com', NULL, 'MAJOR THRIFT', NULL, NULL, NULL, NULL, 'major-thriftmajor-thrift', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(610, 'MAK MAGIC', 'MAK MAGIC', 'mandy@makmagic.com', NULL, 'MAK MAGIC', NULL, NULL, NULL, NULL, 'mak-magicmak-magic', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(611, 'MALNEKOFF ENTERPRISE', 'MALNEKOFF ENTERPRISE', 'imlnekoff@sbcglobal.net', NULL, 'MALNEKOFF ENTERPRISE', NULL, NULL, NULL, NULL, 'malnekoff-enterprisemalnekoff-enterprise', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(612, 'MAN CLOTHING & JEWELRY CO~D', 'MAN CLOTHING & JEWELRY CO~D', 'manclothing@frontier.com', NULL, 'MAN CLOTHING & JEWELRY CO~D', NULL, NULL, NULL, NULL, 'man-clothing-jewelry-codman-clothing-jewelry-cod', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(613, 'MANNY\'S GROCERY', 'MANNY\'S GROCERY', 'mannysgrocery@gmail.com', NULL, 'MANNY\'S GROCERY', NULL, NULL, NULL, NULL, 'mannys-grocerymannys-grocery', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(614, 'MARC GLASSMAN INC.', 'MARC GLASSMAN INC.', 'kwurster@marcs.com', NULL, 'MARC GLASSMAN INC.', NULL, NULL, NULL, NULL, 'marc-glassman-incmarc-glassman-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(615, 'MARKDOWN INTERNATIONAL', 'MARKDOWN INTERNATIONAL', 'roger.musil@markdowninc.com', NULL, 'MARKDOWN INTERNATIONAL', NULL, NULL, NULL, NULL, 'markdown-internationalmarkdown-international', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(616, 'MARKE', 'MARKE', 'compras4@marke.com.mx', NULL, 'MARKE', NULL, NULL, NULL, NULL, 'markemarke', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(617, 'MASHAL ENTERPRISES, INC', 'MASHAL ENTERPRISES, INC', 'ali_faraz99@hotmail.com', NULL, 'MASHAL ENTERPRISES, INC', NULL, NULL, NULL, NULL, 'mashal-enterprises-incmashal-enterprises-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(618, 'MASS SALES', 'MASS SALES', 'harry@massalesco.com', NULL, 'MASS SALES', NULL, NULL, NULL, NULL, 'mass-salesmass-sales', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(619, 'MEGA FOODS', 'MEGA FOODS', 'normnorth@hotmail.com', NULL, 'MEGA FOODS', NULL, NULL, NULL, NULL, 'mega-foodsmega-foods', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(620, 'MEGATRADE INTERNATIONAL', 'MEGATRADE INTERNATIONAL', 'amya@megavacuumflasks.com', NULL, 'MEGATRADE INTERNATIONAL', NULL, NULL, NULL, NULL, 'megatrade-internationalmegatrade-international', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(621, 'MERCHANDISE OUTLET', 'MERCHANDISE OUTLET', 'merchout2002@yahoo.com', NULL, 'MERCHANDISE OUTLET', NULL, NULL, NULL, NULL, 'merchandise-outletmerchandise-outlet', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(622, 'MERS GOODWILL', 'MERS GOODWILL', 'klance@mersgoodwill.org', NULL, 'MERS GOODWILL', NULL, NULL, NULL, NULL, 'mers-goodwillmers-goodwill', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(623, 'MICHIGAN WIDE BEVERAGE', 'MICHIGAN WIDE BEVERAGE', 'robert@michiganwidebeverage.com', NULL, 'MICHIGAN WIDE BEVERAGE', NULL, NULL, NULL, NULL, 'michigan-wide-beveragemichigan-wide-beverage', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(624, 'MIDDLE NECK ROAD COMPANY', 'MIDDLE NECK ROAD COMPANY', 'distribution@dslextreme.com', NULL, 'MIDDLE NECK ROAD COMPANY', NULL, NULL, NULL, NULL, 'middle-neck-road-companymiddle-neck-road-company', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(625, 'MIDWEST TRADING GROUP', 'MIDWEST TRADING GROUP', 'rashid@mtradinggroup.com', NULL, 'MIDWEST TRADING GROUP', NULL, NULL, NULL, NULL, 'midwest-trading-groupmidwest-trading-group', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(626, 'MINAS LOGISTICS INC', 'MINAS LOGISTICS INC', 'homelandlinens@hotmail.com', NULL, 'MINAS LOGISTICS INC', NULL, NULL, NULL, NULL, 'minas-logistics-incminas-logistics-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(627, 'MORRY DICKTER & ASSOCIATE', 'MORRY DICKTER & ASSOCIATE', 'mdaassoc@aol.com', NULL, 'MORRY DICKTER & ASSOCIATE', NULL, NULL, NULL, NULL, 'morry-dickter-associatemorry-dickter-associate', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(628, 'MOSIERS SPORTING GOODS', 'MOSIERS SPORTING GOODS', 'mosiersportinggoods@yahoo.com', NULL, 'MOSIERS SPORTING GOODS', NULL, NULL, NULL, NULL, 'mosiers-sporting-goodsmosiers-sporting-goods', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(629, 'MRUGAKSHI PATEL', 'MRUGAKSHI PATEL', 'mrugakshi.patel@gmail.com', NULL, 'MRUGAKSHI PATEL', NULL, NULL, NULL, NULL, 'mrugakshi-patelmrugakshi-patel', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(630, 'MYCO TABLEWARE', 'MYCO TABLEWARE', 'gwiddes@gmail.com', NULL, 'MYCO TABLEWARE', NULL, NULL, NULL, NULL, 'myco-tablewaremyco-tableware', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(631, 'NANCYS TRAVEL', 'NANCYS TRAVEL', 'baderstravel@hotmail.com', NULL, 'NANCYS TRAVEL', NULL, NULL, NULL, NULL, 'nancys-travelnancys-travel', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(632, 'NASEEMA PATEL INC', 'NASEEMA PATEL INC', 'superdollar786@yahoo.com', NULL, 'NASEEMA PATEL INC', NULL, NULL, NULL, NULL, 'naseema-patel-incnaseema-patel-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(633, 'NATIONAL STORES INC', 'NATIONAL STORES INC', 'pjulian@nationalstoresinc.com', NULL, 'NATIONAL STORES INC', NULL, NULL, NULL, NULL, 'national-stores-incnational-stores-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(634, 'NEW CREATION USA', 'NEW CREATION USA', 'newcreationusa@gmail.com', NULL, 'NEW CREATION USA', NULL, NULL, NULL, NULL, 'new-creation-usanew-creation-usa', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(635, 'NEW DOLLAR ITEMS', 'NEW DOLLAR ITEMS', 'krisna1202@gmail.com', NULL, 'NEW DOLLAR ITEMS', NULL, NULL, NULL, NULL, 'new-dollar-itemsnew-dollar-items', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(636, 'NEW ERA INC.', 'NEW ERA INC.', 'jeffh@equitableacceptance.com', NULL, 'NEW ERA INC.', NULL, NULL, NULL, NULL, 'new-era-incnew-era-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(637, 'NEXUS', 'NEXUS', 'siaellis@aol.com', NULL, 'NEXUS', NULL, NULL, NULL, NULL, 'nexusnexus', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(638, 'NICKS N DENTS', 'NICKS N DENTS', 'empoirumhome@yahoo.com', NULL, 'NICKS N DENTS', NULL, NULL, NULL, NULL, 'nicks-n-dentsnicks-n-dents', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(639, 'NOBERTO MARTINEZ VAZQUEZ', 'NOBERTO MARTINEZ VAZQUEZ', 'alicona.home@gmail.com', NULL, 'NOBERTO MARTINEZ VAZQUEZ', NULL, NULL, NULL, NULL, 'noberto-martinez-vazqueznoberto-martinez-vazquez', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(640, 'NOBLE IMPORTS & WHOLESALE', 'NOBLE IMPORTS & WHOLESALE', 'nobleimport@aol.com', NULL, 'NOBLE IMPORTS & WHOLESALE', NULL, NULL, NULL, NULL, 'noble-imports-wholesalenoble-imports-wholesale', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(641, 'NORBY DISTRIBUTING CO.', 'NORBY DISTRIBUTING CO.', 'cmenster@norbysfarmfleet.com', NULL, 'NORBY DISTRIBUTING CO.', NULL, NULL, NULL, NULL, 'norby-distributing-conorby-distributing-co', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(642, 'NORM NORTH', 'NORM NORTH', 'normnorth042041@gmail.com', NULL, 'NORM NORTH', NULL, NULL, NULL, NULL, 'norm-northnorm-north', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(643, 'NORMAN SALES COMPANY', 'NORMAN SALES COMPANY', 'NormanSalesCompany@gmail.com', NULL, 'NORMAN SALES COMPANY', NULL, NULL, NULL, NULL, 'norman-sales-companynorman-sales-company', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(644, 'NORTHWAY DOLLAR', 'NORTHWAY DOLLAR', 'northwaydollar@nidhog.com', NULL, 'NORTHWAY DOLLAR', NULL, NULL, NULL, NULL, 'northway-dollarnorthway-dollar', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(645, 'NORTHWOODS WHOLESALE OUTLET', 'NORTHWOODS WHOLESALE OUTLET', 'carla.marut@northwoodoutlet.com', NULL, 'NORTHWOODS WHOLESALE OUTLET', NULL, NULL, NULL, NULL, 'northwoods-wholesale-outletnorthwoods-wholesale-outlet', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(646, 'NYBERGS ACE', 'NYBERGS ACE', 'sallgier@nybergsace.com', NULL, 'NYBERGS ACE', NULL, NULL, NULL, NULL, 'nybergs-acenybergs-ace', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(647, 'NYC C0LLECTORS /EASTERN CARRIE', 'NYC C0LLECTORS /EASTERN CARRIE', 'RIYAZ.RUSHSTORES@GMAIL.COM', NULL, 'NYC C0LLECTORS /EASTERN CARRIE', NULL, NULL, NULL, NULL, 'nyc-c0llectors-eastern-carrienyc-c0llectors-eastern-carrie', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(648, 'NYC SURPLUS WAREHOUSE', 'NYC SURPLUS WAREHOUSE', 'info@nycsurplus.com', NULL, 'NYC SURPLUS WAREHOUSE', NULL, NULL, NULL, NULL, 'nyc-surplus-warehousenyc-surplus-warehouse', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(649, 'OFFLINE LIQUIDATORS', 'OFFLINE LIQUIDATORS', 'offlineliquidators@chater.net', NULL, 'OFFLINE LIQUIDATORS', NULL, NULL, NULL, NULL, 'offline-liquidatorsoffline-liquidators', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(650, 'OK TRADING GROUP', 'OK TRADING GROUP', '3749otg@gmail.com', NULL, 'OK TRADING GROUP', NULL, NULL, NULL, NULL, 'ok-trading-groupok-trading-group', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(651, 'OKOUNEV MEIR', 'OKOUNEV MEIR', 'yosselo@gmail.com', NULL, 'OKOUNEV MEIR', NULL, NULL, NULL, NULL, 'okounev-meirokounev-meir', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(652, 'ORSCHELN FARM & HOME', 'ORSCHELN FARM & HOME', 'fhap@orscheln.com', NULL, 'ORSCHELN FARM & HOME', NULL, NULL, NULL, NULL, 'orscheln-farm-homeorscheln-farm-home', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(653, 'P.F.C / S.J', 'P.F.C / S.J', 'jaffesid@gmail.com', NULL, 'P.F.C / S.J', NULL, NULL, NULL, NULL, 'pfc-sjpfc-sj', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(654, 'PARKER CASSIDY SUPPLY CO', 'PARKER CASSIDY SUPPLY CO', 'angifarrell@gmail.com', NULL, 'PARKER CASSIDY SUPPLY CO', NULL, NULL, NULL, NULL, 'parker-cassidy-supply-coparker-cassidy-supply-co', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(655, 'PARTY USA', 'PARTY USA', 'partyusastore@gmail.com', NULL, 'PARTY USA', NULL, NULL, NULL, NULL, 'party-usaparty-usa', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(656, 'PATS DOLLAR DEPOT', 'PATS DOLLAR DEPOT', 'patsfoodcenter@spartanstores.com', NULL, 'PATS DOLLAR DEPOT', NULL, NULL, NULL, NULL, 'pats-dollar-depotpats-dollar-depot', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(657, 'PAWN SHOP & SURPLUS', 'PAWN SHOP & SURPLUS', 'gothelectric@hotmail.com', NULL, 'PAWN SHOP & SURPLUS', NULL, NULL, NULL, NULL, 'pawn-shop-surpluspawn-shop-surplus', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(658, 'PENNYS DEPT. STORES', 'PENNYS DEPT. STORES', 'sunil@pennysonline.com', NULL, 'PENNYS DEPT. STORES', NULL, NULL, NULL, NULL, 'pennys-dept-storespennys-dept-stores', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(659, 'PETROMARK INC.', 'PETROMARK INC.', 'mhoward55@alltel.net', NULL, 'PETROMARK INC.', NULL, NULL, NULL, NULL, 'petromark-incpetromark-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(660, 'PHILLPS 66 VOLO', 'PHILLPS 66 VOLO', 'ontri1@yahoo.com', NULL, 'PHILLPS 66 VOLO', NULL, NULL, NULL, NULL, 'phillps-66-volophillps-66-volo', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(661, 'PICKWICK FARMS', 'PICKWICK FARMS', 'dclayton@zidans.com', NULL, 'PICKWICK FARMS', NULL, NULL, NULL, NULL, 'pickwick-farmspickwick-farms', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(662, 'PINE HARDWARE', 'PINE HARDWARE', 'hardware1914@gmail.com', NULL, 'PINE HARDWARE', NULL, NULL, NULL, NULL, 'pine-hardwarepine-hardware', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(663, 'POLCINO PROMOTIONS LLC', 'POLCINO PROMOTIONS LLC', 'polcinopromotionsllc@gmail.com', NULL, 'POLCINO PROMOTIONS LLC', NULL, NULL, NULL, NULL, 'polcino-promotions-llcpolcino-promotions-llc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(664, 'PORTLAND MDSE.CORP', 'PORTLAND MDSE.CORP', 'pgawrinauth@portlandusa.com', NULL, 'PORTLAND MDSE.CORP', NULL, NULL, NULL, NULL, 'portland-mdsecorpportland-mdsecorp', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(665, 'POS Management', 'POS Management', 'nickyono@aol.com', NULL, 'POS Management', NULL, NULL, NULL, NULL, 'pos-managementpos-management', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(667, 'PRICE BUSTERS', 'PRICE BUSTERS', 'lsato@pricebustershawii.com', NULL, 'PRICE BUSTERS', NULL, NULL, NULL, NULL, 'price-bustersprice-busters', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(668, 'PRICE CO', 'PRICE CO', 'randall@welcomehomesocity.com', NULL, 'PRICE CO', NULL, NULL, NULL, NULL, 'price-coprice-co', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(669, 'PROFORMA GPS', 'PROFORMA GPS', 'GPSap@gpsteam.com', NULL, 'PROFORMA GPS', NULL, NULL, NULL, NULL, 'proforma-gpsproforma-gps', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(670, 'PROGRESSIVE PRO ENTP.', 'PROGRESSIVE PRO ENTP.', 'customerservice@catererswarehouse.com', NULL, 'PROGRESSIVE PRO ENTP.', NULL, NULL, NULL, NULL, 'progressive-pro-entpprogressive-pro-entp', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(671, 'PUPLIC CLOSEOUT', 'PUPLIC CLOSEOUT', 'pupliccloseout.chicago@gmail.com', NULL, 'PUPLIC CLOSEOUT', NULL, NULL, NULL, NULL, 'puplic-closeoutpuplic-closeout', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(672, 'QUIROGA\'S CAR WASH', 'QUIROGA\'S CAR WASH', 'quirogarocky@sbcglobal.net', NULL, 'QUIROGA\'S CAR WASH', NULL, NULL, NULL, NULL, 'quirogas-car-washquirogas-car-wash', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(673, 'R&R TEXTILE', 'R&R TEXTILE', 'info@rrtextilemills.com', NULL, 'R&R TEXTILE', NULL, NULL, NULL, NULL, 'rr-textilerr-textile', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(674, 'R.N.INTERNATIONAL', 'R.N.INTERNATIONAL', 'RNINT2007@YHOO.COM', NULL, 'R.N.INTERNATIONAL', NULL, NULL, NULL, NULL, 'rninternationalrninternational', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(675, 'RAMS TRADING LIMITED', 'RAMS TRADING LIMITED', 'neetacs@ramstrading.com', NULL, 'RAMS TRADING LIMITED', NULL, NULL, NULL, NULL, 'rams-trading-limitedrams-trading-limited', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(676, 'RBK ENTERPRISES', 'RBK ENTERPRISES', 'reba.rbkenterprises@gmail.com', NULL, 'RBK ENTERPRISES', NULL, NULL, NULL, NULL, 'rbk-enterprisesrbk-enterprises', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(677, 'REGENT PRODUCTS', 'REGENT PRODUCTS', 'mdepaul@regentproducts.com', NULL, 'REGENT PRODUCTS', NULL, NULL, NULL, NULL, 'regent-productsregent-products', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(678, 'RETSEL CORP', 'RETSEL CORP', 'service@retsel.com', NULL, 'RETSEL CORP', NULL, NULL, NULL, NULL, 'retsel-corpretsel-corp', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(679, 'RIVERSIDE RED X', 'RIVERSIDE RED X', 'redx@riversideredx.com', NULL, 'RIVERSIDE RED X', NULL, NULL, NULL, NULL, 'riverside-red-xriverside-red-x', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(680, 'RLOGISTICS DISTRIBUTION', 'RLOGISTICS DISTRIBUTION', 'apclerk@factorydirect.ca', NULL, 'RLOGISTICS DISTRIBUTION', NULL, NULL, NULL, NULL, 'rlogistics-distributionrlogistics-distribution', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(681, 'ROBERT GUTNER & ASSO.', 'ROBERT GUTNER & ASSO.', 'rga0200@aol.com', NULL, 'ROBERT GUTNER & ASSO.', NULL, NULL, NULL, NULL, 'robert-gutner-assorobert-gutner-asso', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(682, 'ROCKY TOP GENERAL STORE', 'ROCKY TOP GENERAL STORE', 'rockytopgeneralstores@comcast.net', NULL, 'ROCKY TOP GENERAL STORE', NULL, NULL, NULL, NULL, 'rocky-top-general-storerocky-top-general-store', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(683, 'RONNIE SCOTT', 'RONNIE SCOTT', 'fothasscotts@aol.com', NULL, 'RONNIE SCOTT', NULL, NULL, NULL, NULL, 'ronnie-scottronnie-scott', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(684, 'ROSA MARIA GALVAN BELTRAN', 'ROSA MARIA GALVAN BELTRAN', 'classicaesmeralda@yahoo.com', NULL, 'ROSA MARIA GALVAN BELTRAN', NULL, NULL, NULL, NULL, 'rosa-maria-galvan-beltranrosa-maria-galvan-beltran', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(685, 'ROSHMITH ENTERPRISES INC.', 'ROSHMITH ENTERPRISES INC.', 'perfumeking@gmail.com', NULL, 'ROSHMITH ENTERPRISES INC.', NULL, NULL, NULL, NULL, 'roshmith-enterprises-incroshmith-enterprises-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(686, 'ROYAL DISTRIBUTORS', 'ROYAL DISTRIBUTORS', 'maria@dollarcastle.com', NULL, 'ROYAL DISTRIBUTORS', NULL, NULL, NULL, NULL, 'royal-distributorsroyal-distributors', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(687, 'ROYAL INDUSTRIES', 'ROYAL INDUSTRIES', 'jjohnson@royalindustriesinc.com', NULL, 'ROYAL INDUSTRIES', NULL, NULL, NULL, NULL, 'royal-industriesroyal-industries', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(688, 'SAARS MARKET PLACE#488', 'SAARS MARKET PLACE#488', 'nate.carasa@saarsinc.com', NULL, 'SAARS MARKET PLACE#488', NULL, NULL, NULL, NULL, 'saars-market-place488saars-market-place488', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(689, 'SAARS MARKET PLACE#490', 'SAARS MARKET PLACE#490', 'Cheryle.korthas@saarsinc.com', NULL, 'SAARS MARKET PLACE#490', NULL, NULL, NULL, NULL, 'saars-market-place490saars-market-place490', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(690, 'SAARS SUPER SAVER #626', 'SAARS SUPER SAVER #626', 'mike.boice@saarsinc.com', NULL, 'SAARS SUPER SAVER #626', NULL, NULL, NULL, NULL, 'saars-super-saver-626saars-super-saver-626', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(691, 'SAARS SUPER SAVER#530', 'SAARS SUPER SAVER#530', 'joe.hodge@saarsinc.com', NULL, 'SAARS SUPER SAVER#530', NULL, NULL, NULL, NULL, 'saars-super-saver530saars-super-saver530', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(692, 'SAARS SUPER SAVER#610', 'SAARS SUPER SAVER#610', 'carlos.orozco@saarsinc.com', NULL, 'SAARS SUPER SAVER#610', NULL, NULL, NULL, NULL, 'saars-super-saver610saars-super-saver610', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(693, 'SAARS SUPER SAVER#622', 'SAARS SUPER SAVER#622', 'joe.kim@saarsinc.com', NULL, 'SAARS SUPER SAVER#622', NULL, NULL, NULL, NULL, 'saars-super-saver622saars-super-saver622', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(694, 'SAARS SUPER SAVER#624', 'SAARS SUPER SAVER#624', 'kyle.king@saarsinc.com', NULL, 'SAARS SUPER SAVER#624', NULL, NULL, NULL, NULL, 'saars-super-saver624saars-super-saver624', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(695, 'SAARS SUPER SAVER#630', 'SAARS SUPER SAVER#630', 'rlbyrd@saarsinc.com', NULL, 'SAARS SUPER SAVER#630', NULL, NULL, NULL, NULL, 'saars-super-saver630saars-super-saver630', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(696, 'SAARS SUPER SAVER#632', 'SAARS SUPER SAVER#632', 'pat.senn@saarsinc.com', NULL, 'SAARS SUPER SAVER#632', NULL, NULL, NULL, NULL, 'saars-super-saver632saars-super-saver632', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(697, 'SABRI NIHARI RESTAURANT', 'SABRI NIHARI RESTAURANT', 'accounts@sabrinihari.com', NULL, 'SABRI NIHARI RESTAURANT', NULL, NULL, NULL, NULL, 'sabri-nihari-restaurantsabri-nihari-restaurant', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(698, 'SAGE SALESINC.', 'SAGE SALESINC.', 'dsage@aol.com', NULL, 'SAGE SALESINC.', NULL, NULL, NULL, NULL, 'sage-salesincsage-salesinc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(699, 'SAHARA MARKET', 'SAHARA MARKET', 'rafidshaba@comcast.net', NULL, 'SAHARA MARKET', NULL, NULL, NULL, NULL, 'sahara-marketsahara-market', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(700, 'SALAD MASTER HEALTHY COOK', 'SALAD MASTER HEALTHY COOK', 'robb@saladmasterchef.com', NULL, 'SALAD MASTER HEALTHY COOK', NULL, NULL, NULL, NULL, 'salad-master-healthy-cooksalad-master-healthy-cook', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(701, 'SAMARA VENDRELL PRODUCTS', 'SAMARA VENDRELL PRODUCTS', 'samaravendrell@gmail.com', NULL, 'SAMARA VENDRELL PRODUCTS', NULL, NULL, NULL, NULL, 'samara-vendrell-productssamara-vendrell-products', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(702, 'SAN PEDRO IMPORTS', 'SAN PEDRO IMPORTS', 'daniela@sanpedroimports.com', NULL, 'SAN PEDRO IMPORTS', NULL, NULL, NULL, NULL, 'san-pedro-importssan-pedro-imports', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(703, 'SAVE A LOT', 'SAVE A LOT', 'jimmysavealot@aol.com', NULL, 'SAVE A LOT', NULL, NULL, NULL, NULL, 'save-a-lotsave-a-lot', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(704, 'SAVVY HOST', 'SAVVY HOST', 'ms@digital-inc.com', NULL, 'SAVVY HOST', NULL, NULL, NULL, NULL, 'savvy-hostsavvy-host', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(705, 'SCHAEFER DOLLAR PLUS', 'SCHAEFER DOLLAR PLUS', 'samch_13@yahoo.de', NULL, 'SCHAEFER DOLLAR PLUS', NULL, NULL, NULL, NULL, 'schaefer-dollar-plusschaefer-dollar-plus', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(706, 'SCHWESERS STORES', 'SCHWESERS STORES', 'ty@schweserstores.com', NULL, 'SCHWESERS STORES', NULL, NULL, NULL, NULL, 'schwesers-storesschwesers-stores', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(707, 'SEA MERCHANTS', 'SEA MERCHANTS', 'store@gmail.com', NULL, 'SEA MERCHANTS', NULL, NULL, NULL, NULL, 'sea-merchantssea-merchants', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(708, 'SENSOR TAGS.COM', 'SENSOR TAGS.COM', 'sensortages@yahoo.com', NULL, 'SENSOR TAGS.COM', NULL, NULL, NULL, NULL, 'sensor-tagscomsensor-tagscom', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(709, 'SERENA RESTAURANT', 'SERENA RESTAURANT', 'Muhammadslam1288@gmail.com', NULL, 'SERENA RESTAURANT', NULL, NULL, NULL, NULL, 'serena-restaurantserena-restaurant', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(710, 'SHAMIERAM MEAT MARKET', 'SHAMIERAM MEAT MARKET', 'silvanjako2023@gmail.com', NULL, 'SHAMIERAM MEAT MARKET', NULL, NULL, NULL, NULL, 'shamieram-meat-marketshamieram-meat-market', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(711, 'SHANE GAMEZ OF BARGAIN', 'SHANE GAMEZ OF BARGAIN', 'bargaindepot@rocketmail.com', NULL, 'SHANE GAMEZ OF BARGAIN', NULL, NULL, NULL, NULL, 'shane-gamez-of-bargainshane-gamez-of-bargain', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(712, 'SHEDDENS WHOLESALE', 'SHEDDENS WHOLESALE', 'sheddens@npacc.net', NULL, 'SHEDDENS WHOLESALE', NULL, NULL, NULL, NULL, 'sheddens-wholesalesheddens-wholesale', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(713, 'SHOP CIVIL WAR', 'SHOP CIVIL WAR', 'shopcivilwar@yahoo.com', NULL, 'SHOP CIVIL WAR', NULL, NULL, NULL, NULL, 'shop-civil-warshop-civil-war', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(714, 'SHOP N KART  #664', 'SHOP N KART  #664', 'gary@newyardbirdsmall.com', NULL, 'SHOP N KART  #664', NULL, NULL, NULL, NULL, 'shop-n-kart-664shop-n-kart-664', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(715, 'SHREE MAA ENTERPRISE', 'SHREE MAA ENTERPRISE', 'shreemaaent@gmail.com', NULL, 'SHREE MAA ENTERPRISE', NULL, NULL, NULL, NULL, 'shree-maa-enterpriseshree-maa-enterprise', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(716, 'SIGMA IMPEX', 'SIGMA IMPEX', 'dassv@sigmaimpex.com', NULL, 'SIGMA IMPEX', NULL, NULL, NULL, NULL, 'sigma-impexsigma-impex', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(717, 'SILVER STAR DISCOUNT', 'SILVER STAR DISCOUNT', 'silverstardiscount@yahoo.com', NULL, 'SILVER STAR DISCOUNT', NULL, NULL, NULL, NULL, 'silver-star-discountsilver-star-discount', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(718, 'SKYLINE INTERNATIONAL', 'SKYLINE INTERNATIONAL', 'zain@skylineinternational.com', NULL, 'SKYLINE INTERNATIONAL', NULL, NULL, NULL, NULL, 'skyline-internationalskyline-international', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(719, 'SOCKS GALORE WHOLESALE', 'SOCKS GALORE WHOLESALE', 'socksglaore@sbcglobal.net', NULL, 'SOCKS GALORE WHOLESALE', NULL, NULL, NULL, NULL, 'socks-galore-wholesalesocks-galore-wholesale', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(720, 'SOL LASER', 'SOL LASER', 'laser3804@hotmail.com', NULL, 'SOL LASER', NULL, NULL, NULL, NULL, 'sol-lasersol-laser', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(721, 'SONG KHANG', 'SONG KHANG', 'chwkeng@hotmail.com', NULL, 'SONG KHANG', NULL, NULL, NULL, NULL, 'song-khangsong-khang', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(722, 'SOURCE OF THE NILE INC', 'SOURCE OF THE NILE INC', 'byhassib@yahoo.com', NULL, 'SOURCE OF THE NILE INC', NULL, NULL, NULL, NULL, 'source-of-the-nile-incsource-of-the-nile-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(723, 'SPECIALTY SALES SOUTH', 'SPECIALTY SALES SOUTH', 'tgoold@juno.com', NULL, 'SPECIALTY SALES SOUTH', NULL, NULL, NULL, NULL, 'specialty-sales-southspecialty-sales-south', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(724, 'SPICE BAZAAR', 'SPICE BAZAAR', 'kishorpatel62@gmail.com', NULL, 'SPICE BAZAAR', NULL, NULL, NULL, NULL, 'spice-bazaarspice-bazaar', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(725, 'SPICE OF INDIA', 'SPICE OF INDIA', 'soi@att.net', NULL, 'SPICE OF INDIA', NULL, NULL, NULL, NULL, 'spice-of-indiaspice-of-india', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(726, 'STANDARD INDUSTRIES ASD', 'STANDARD INDUSTRIES ASD', 'maurig@esreco.net', NULL, 'STANDARD INDUSTRIES ASD', NULL, NULL, NULL, NULL, 'standard-industries-asdstandard-industries-asd', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(727, 'STANDARD RESTAURANT EQUIPMENT', 'STANDARD RESTAURANT EQUIPMENT', 'rachelp@esreco.net', NULL, 'STANDARD RESTAURANT EQUIPMENT', NULL, NULL, NULL, NULL, 'standard-restaurant-equipmentstandard-restaurant-equipment', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(729, 'STATE DEPARTMENT STORE', 'STATE DEPARTMENT STORE', 'sollykay@aol.com', NULL, 'STATE DEPARTMENT STORE', NULL, NULL, NULL, NULL, 'state-department-storestate-department-store', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(730, 'STH LIQUIDATIONS INC', 'STH LIQUIDATIONS INC', 'shannon@sthliquidations.com', NULL, 'STH LIQUIDATIONS INC', NULL, NULL, NULL, NULL, 'sth-liquidations-incsth-liquidations-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(731, 'STUFF LIKE THAT', 'STUFF LIKE THAT', 'stufflikethat@hotmail.com', NULL, 'STUFF LIKE THAT', NULL, NULL, NULL, NULL, 'stuff-like-thatstuff-like-that', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(732, 'SUNFLOWER ENTERPRISE', 'SUNFLOWER ENTERPRISE', 'sunflowerhou@gmail.com', NULL, 'SUNFLOWER ENTERPRISE', NULL, NULL, NULL, NULL, 'sunflower-enterprisesunflower-enterprise', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(733, 'SUPER 20 LIMITED', 'SUPER 20 LIMITED', 'shirazbdl@yahoo.com', NULL, 'SUPER 20 LIMITED', NULL, NULL, NULL, NULL, 'super-20-limitedsuper-20-limited', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(734, 'SUPER DOLLAR CENTER # 52', 'SUPER DOLLAR CENTER # 52', 'superdollarcenter52@gmail.com', NULL, 'SUPER DOLLAR CENTER # 52', NULL, NULL, NULL, NULL, 'super-dollar-center-52super-dollar-center-52', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(735, 'SUPER DOLLAR PLUS', 'SUPER DOLLAR PLUS', 'karayawala@yahoo.com', NULL, 'SUPER DOLLAR PLUS', NULL, NULL, NULL, NULL, 'super-dollar-plussuper-dollar-plus', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(736, 'SUPER FRESH MARKET', 'SUPER FRESH MARKET', 'store@superfreshmarket.net', NULL, 'SUPER FRESH MARKET', NULL, NULL, NULL, NULL, 'super-fresh-marketsuper-fresh-market', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(737, 'SUPER STAR DOLLAR STOP', 'SUPER STAR DOLLAR STOP', 'emadessak@yahoo.com', NULL, 'SUPER STAR DOLLAR STOP', NULL, NULL, NULL, NULL, 'super-star-dollar-stopsuper-star-dollar-stop', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(738, 'SUPPLY LINE DISCOUNT', 'SUPPLY LINE DISCOUNT', 'supplylineddiscounts86@gmail.com', NULL, 'SUPPLY LINE DISCOUNT', NULL, NULL, NULL, NULL, 'supply-line-discountsupply-line-discount', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(741, 'TABLESCAPE', 'TABLESCAPE', 'shari@tablescapes.com', NULL, 'TABLESCAPE', NULL, NULL, NULL, NULL, 'tablescapetablescape', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(742, 'TAG SALES LTD.', 'TAG SALES LTD.', 'tagsales@tagsalesltd.com', NULL, 'TAG SALES LTD.', NULL, NULL, NULL, NULL, 'tag-sales-ltdtag-sales-ltd', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(743, 'TAYLOR GIFT INC.', 'TAYLOR GIFT INC.', 'accpay@taylorgifts.com', NULL, 'TAYLOR GIFT INC.', NULL, NULL, NULL, NULL, 'taylor-gift-inctaylor-gift-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(744, 'TEPA WHOLESALE', 'TEPA WHOLESALE', 'wensanbau@gmail.com', NULL, 'TEPA WHOLESALE', NULL, NULL, NULL, NULL, 'tepa-wholesaletepa-wholesale', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(745, 'TERRIFIC THREE', 'TERRIFIC THREE', 'annettesido@yahoo.com', NULL, 'TERRIFIC THREE', NULL, NULL, NULL, NULL, 'terrific-threeterrific-three', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(747, 'THE DISH DEPOT INC', 'THE DISH DEPOT INC', 'thedishdepotinc@yahoo.com', NULL, 'THE DISH DEPOT INC', NULL, NULL, NULL, NULL, 'the-dish-depot-incthe-dish-depot-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(748, 'THE MARKETS LLC', 'THE MARKETS LLC', 'grettabruecken@themarketsllc.com', NULL, 'THE MARKETS LLC', NULL, NULL, NULL, NULL, 'the-markets-llcthe-markets-llc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(749, 'THE VERMONT COUNTRY STORE', 'THE VERMONT COUNTRY STORE', 'jschubert@vermontcountrystore.com', NULL, 'THE VERMONT COUNTRY STORE', NULL, NULL, NULL, NULL, 'the-vermont-country-storethe-vermont-country-store', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(750, 'THE WIRE WHISK', 'THE WIRE WHISK', 'mary@thewirewhisk.com', NULL, 'THE WIRE WHISK', NULL, NULL, NULL, NULL, 'the-wire-whiskthe-wire-whisk', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(751, 'THOMAS FACTORY OUTLET', 'THOMAS FACTORY OUTLET', 'thomasfactoryoutlet@gmail.com', NULL, 'THOMAS FACTORY OUTLET', NULL, NULL, NULL, NULL, 'thomas-factory-outletthomas-factory-outlet', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(752, 'THREE BEARS GIFTS', 'THREE BEARS GIFTS', 'threebearsgifts@seviernet.com', NULL, 'THREE BEARS GIFTS', NULL, NULL, NULL, NULL, 'three-bears-giftsthree-bears-gifts', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(753, 'THRIFT STORES OF OHIOINC', 'THRIFT STORES OF OHIOINC', 'shayani@ohiothriftinc.com', NULL, 'THRIFT STORES OF OHIOINC', NULL, NULL, NULL, NULL, 'thrift-stores-of-ohioincthrift-stores-of-ohioinc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(754, 'TODO IMPORTS OF CHICAGO', 'TODO IMPORTS OF CHICAGO', 'ap@ferdelpromotions.com', NULL, 'TODO IMPORTS OF CHICAGO', NULL, NULL, NULL, NULL, 'todo-imports-of-chicagotodo-imports-of-chicago', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(755, 'TOP OF MIND PROMOTION', 'TOP OF MIND PROMOTION', 'elisabet@topofmindpromotion.net', NULL, 'TOP OF MIND PROMOTION', NULL, NULL, NULL, NULL, 'top-of-mind-promotiontop-of-mind-promotion', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(756, 'TOWN & COUNTRY GROCERS', 'TOWN & COUNTRY GROCERS', 'roberttwhbcgms@people.com', NULL, 'TOWN & COUNTRY GROCERS', NULL, NULL, NULL, NULL, 'town-country-grocerstown-country-grocers', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(757, 'TOWNHOUSE MEGASTORE', 'TOWNHOUSE MEGASTORE', 'edward.townhouse@gmail.com', NULL, 'TOWNHOUSE MEGASTORE', NULL, NULL, NULL, NULL, 'townhouse-megastoretownhouse-megastore', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(758, 'TRADEWELL DISTRIBUTORS', 'TRADEWELL DISTRIBUTORS', 'tradewelldist@yahoo.com', NULL, 'TRADEWELL DISTRIBUTORS', NULL, NULL, NULL, NULL, 'tradewell-distributorstradewell-distributors', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(759, 'TRADITIONAL GENERAL STORE', 'TRADITIONAL GENERAL STORE', 'tgs1231@comcast.net', NULL, 'TRADITIONAL GENERAL STORE', NULL, NULL, NULL, NULL, 'traditional-general-storetraditional-general-store', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(760, 'TREND SUPPLY INC.', 'TREND SUPPLY INC.', 'pcriscuola@trendsupply.com', NULL, 'TREND SUPPLY INC.', NULL, NULL, NULL, NULL, 'trend-supply-inctrend-supply-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(761, 'TRINITY GROUP INTL', 'TRINITY GROUP INTL', 'ap@trinitygroupintl.net', NULL, 'TRINITY GROUP INTL', NULL, NULL, NULL, NULL, 'trinity-group-intltrinity-group-intl', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(763, 'UCHI S.A.', 'UCHI S.A.', 'elias.salomon@uchi.mx', NULL, 'UCHI S.A.', NULL, NULL, NULL, NULL, 'uchi-sauchi-sa', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(764, 'UFS SAVINGS CENTER', 'UFS SAVINGS CENTER', 'gerardw@usfdeal.com', NULL, 'UFS SAVINGS CENTER', NULL, NULL, NULL, NULL, 'ufs-savings-centerufs-savings-center', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(766, 'UNION DOLLAR', 'UNION DOLLAR', 'uniondollar@yahoo.com', NULL, 'UNION DOLLAR', NULL, NULL, NULL, NULL, 'union-dollarunion-dollar', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(767, 'UNITED PLASTICS', 'UNITED PLASTICS', 'UNITEDPLASTICS@GMAIL.COM', NULL, 'UNITED PLASTICS', NULL, NULL, NULL, NULL, 'united-plasticsunited-plastics', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(768, 'UNITED SCIENTIFIC', 'UNITED SCIENTIFIC', 'suresh@unitedsci.com', NULL, 'UNITED SCIENTIFIC', NULL, NULL, NULL, NULL, 'united-scientificunited-scientific', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(769, 'UNITED YOUTH FOOTBALL', 'UNITED YOUTH FOOTBALL', 'tony@unitedyfl.com', NULL, 'UNITED YOUTH FOOTBALL', NULL, NULL, NULL, NULL, 'united-youth-footballunited-youth-football', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(772, 'UPTOWN THRIFT', 'UPTOWN THRIFT', 'trobbins05@cox.net', NULL, 'UPTOWN THRIFT', NULL, NULL, NULL, NULL, 'uptown-thriftuptown-thrift', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(773, 'V & M LIQUIDATORS', 'V & M LIQUIDATORS', 'gillob2@hotmail.com', NULL, 'V & M LIQUIDATORS', NULL, NULL, NULL, NULL, 'v-m-liquidatorsv-m-liquidators', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(774, 'VALIS REGALOS', 'VALIS REGALOS', 'alicia.valis.99@gmail.com', NULL, 'VALIS REGALOS', NULL, NULL, NULL, NULL, 'valis-regalosvalis-regalos', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(776, 'VALUE INCENTIVE PROGRAMS', 'VALUE INCENTIVE PROGRAMS', 'dough@vipawards.com', NULL, 'VALUE INCENTIVE PROGRAMS', NULL, NULL, NULL, NULL, 'value-incentive-programsvalue-incentive-programs', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(778, 'VARIETY ON BROADWAY', 'VARIETY ON BROADWAY', 'varietyonbway@yahoo.com', NULL, 'VARIETY ON BROADWAY', NULL, NULL, NULL, NULL, 'variety-on-broadwayvariety-on-broadway', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(779, 'VAUGHNS INC', 'VAUGHNS INC', 'vaughansinc@aol.com', NULL, 'VAUGHNS INC', NULL, NULL, NULL, NULL, 'vaughns-incvaughns-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(780, 'VIJAYKUMAR PATEL', 'VIJAYKUMAR PATEL', 'vijaypanna@hotmail.com', NULL, 'VIJAYKUMAR PATEL', NULL, NULL, NULL, NULL, 'vijaykumar-patelvijaykumar-patel', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(781, 'VISION WHOLESALE', 'VISION WHOLESALE', 'mali@visionwholesale.net', NULL, 'VISION WHOLESALE', NULL, NULL, NULL, NULL, 'vision-wholesalevision-wholesale', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03');
INSERT INTO `users` (`userId`, `firstname`, `lastname`, `email`, `mobile`, `companyName`, `password`, `profilePic`, `address1`, `gender`, `slug_url`, `status`, `created_date`, `update_date`) VALUES
(782, 'VK WHOLESALE', 'VK WHOLESALE', 'victor@vkwholesale.com', NULL, 'VK WHOLESALE', NULL, NULL, NULL, NULL, 'vk-wholesalevk-wholesale', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(783, 'WALLACE HARDWARE COINC', 'WALLACE HARDWARE COINC', 'john.owens@wallacehardware.com', NULL, 'WALLACE HARDWARE COINC', NULL, NULL, NULL, NULL, 'wallace-hardware-coincwallace-hardware-coinc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(784, 'WALNUT CREEK CHESSE', 'WALNUT CREEK CHESSE', 'hskemmer@walnutcreekcheese.com', NULL, 'WALNUT CREEK CHESSE', NULL, NULL, NULL, NULL, 'walnut-creek-chessewalnut-creek-chesse', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(785, 'WALSHS BEER & LIQUOR', 'WALSHS BEER & LIQUOR', 'kdhalizz@yahoo.com', NULL, 'WALSHS BEER & LIQUOR', NULL, NULL, NULL, NULL, 'walshs-beer-liquorwalshs-beer-liquor', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(786, 'WALTER JULIOUS', 'WALTER JULIOUS', 'plantinumgoldlabs82@yahoo.com', NULL, 'WALTER JULIOUS', NULL, NULL, NULL, NULL, 'walter-juliouswalter-julious', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(787, 'WAREHOUSE SURPLUS', 'WAREHOUSE SURPLUS', 'bob@wahoowarhouse.com', NULL, 'WAREHOUSE SURPLUS', NULL, NULL, NULL, NULL, 'warehouse-surpluswarehouse-surplus', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(788, 'WAREHOUSE TRADING INC', 'WAREHOUSE TRADING INC', 'brian@warehousetradinginc.com', NULL, 'WAREHOUSE TRADING INC', NULL, NULL, NULL, NULL, 'warehouse-trading-incwarehouse-trading-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(792, 'WESTERN STATE DIST. INC', 'WESTERN STATE DIST. INC', 'wsdinc@msn.com', NULL, 'WESTERN STATE DIST. INC', NULL, NULL, NULL, NULL, 'western-state-dist-incwestern-state-dist-inc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(793, 'WHITERIVER ENTERPRISES', 'WHITERIVER ENTERPRISES', 'hmarket@frontiernet.net', NULL, 'WHITERIVER ENTERPRISES', NULL, NULL, NULL, NULL, 'whiteriver-enterpriseswhiteriver-enterprises', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(794, 'WORLD FRESH MARKET LLC', 'WORLD FRESH MARKET LLC', 'wfm_th@yahoo.com', NULL, 'WORLD FRESH MARKET LLC', NULL, NULL, NULL, NULL, 'world-fresh-market-llcworld-fresh-market-llc', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(795, 'WORLD IMPORTS', 'WORLD IMPORTS', 'info@worldimportsdallas.com', NULL, 'WORLD IMPORTS', NULL, NULL, NULL, NULL, 'world-importsworld-imports', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(796, 'WORLD WIDE ELECTRONICS', 'WORLD WIDE ELECTRONICS', 'worldelectronicsusa@yahoo.com', NULL, 'WORLD WIDE ELECTRONICS', NULL, NULL, NULL, NULL, 'world-wide-electronicsworld-wide-electronics', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03'),
(799, 'ZEPOLE SUPPLY COMPANY', 'ZEPOLE SUPPLY COMPANY', 'danita@zepole.com', NULL, 'ZEPOLE SUPPLY COMPANY', NULL, NULL, NULL, NULL, 'zepole-supply-companyzepole-supply-company', 1, '2024-07-19 12:24:03', '2024-07-19 12:24:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `compose_email`
--
ALTER TABLE `compose_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cronjob_sendmail`
--
ALTER TABLE `cronjob_sendmail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer_subscription`
--
ALTER TABLE `employer_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `userId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `compose_email`
--
ALTER TABLE `compose_email`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `cronjob_sendmail`
--
ALTER TABLE `cronjob_sendmail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employer_subscription`
--
ALTER TABLE `employer_subscription`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
