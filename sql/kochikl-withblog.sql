-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2017 at 06:35 AM
-- Server version: 5.5.52-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kochikl`
--

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE IF NOT EXISTS `Blog` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`ID`, `PostsPerPage`) VALUES
(17, 10);

-- --------------------------------------------------------

--
-- Table structure for table `BlogCategory`
--

CREATE TABLE IF NOT EXISTS `BlogCategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogCategory') DEFAULT 'BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry`
--

CREATE TABLE IF NOT EXISTS `BlogEntry` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_Live`
--

CREATE TABLE IF NOT EXISTS `BlogEntry_Live` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_versions`
--

CREATE TABLE IF NOT EXISTS `BlogEntry_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder`
--

CREATE TABLE IF NOT EXISTS `BlogHolder` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_Live`
--

CREATE TABLE IF NOT EXISTS `BlogHolder_Live` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_versions`
--

CREATE TABLE IF NOT EXISTS `BlogHolder_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost`
--

CREATE TABLE IF NOT EXISTS `BlogPost` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost`
--

INSERT INTO `BlogPost` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`) VALUES
(18, '2017-06-03 06:29:00', NULL, NULL, 0),
(19, '2017-06-03 06:31:00', NULL, NULL, 0),
(20, '2017-06-03 06:32:00', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Authors`
--

CREATE TABLE IF NOT EXISTS `BlogPost_Authors` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Authors`
--

INSERT INTO `BlogPost_Authors` (`ID`, `BlogPostID`, `MemberID`) VALUES
(1, 18, 1),
(2, 19, 1),
(3, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Categories`
--

CREATE TABLE IF NOT EXISTS `BlogPost_Categories` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogCategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Live`
--

CREATE TABLE IF NOT EXISTS `BlogPost_Live` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Live`
--

INSERT INTO `BlogPost_Live` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`) VALUES
(18, '2017-06-03 06:29:00', NULL, NULL, 0),
(19, '2017-06-03 06:31:00', NULL, NULL, 0),
(20, '2017-06-03 06:32:00', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Tags`
--

CREATE TABLE IF NOT EXISTS `BlogPost_Tags` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogTagID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Tags`
--

INSERT INTO `BlogPost_Tags` (`ID`, `BlogPostID`, `BlogTagID`) VALUES
(1, 18, 1),
(2, 18, 2),
(3, 19, 1),
(4, 20, 1),
(5, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_versions`
--

CREATE TABLE IF NOT EXISTS `BlogPost_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_versions`
--

INSERT INTO `BlogPost_versions` (`ID`, `RecordID`, `Version`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`) VALUES
(1, 18, 1, NULL, NULL, NULL, 0),
(2, 18, 2, NULL, NULL, NULL, 0),
(3, 18, 3, '2017-06-03 06:29:16', NULL, NULL, 0),
(4, 18, 4, '2017-06-03 06:29:00', NULL, NULL, 0),
(5, 19, 1, NULL, NULL, NULL, 0),
(6, 19, 2, NULL, NULL, NULL, 0),
(7, 19, 3, '2017-06-03 06:31:18', NULL, NULL, 0),
(8, 19, 4, '2017-06-03 06:31:00', NULL, NULL, 0),
(9, 20, 1, NULL, NULL, NULL, 0),
(10, 20, 2, NULL, NULL, NULL, 0),
(11, 20, 3, '2017-06-03 06:32:21', NULL, NULL, 0),
(12, 20, 4, '2017-06-03 06:32:00', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTag`
--

CREATE TABLE IF NOT EXISTS `BlogTag` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogTag') DEFAULT 'BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogTag`
--

INSERT INTO `BlogTag` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `URLSegment`, `BlogID`) VALUES
(1, 'BlogTag', '2017-06-03 06:32:33', '2017-06-03 06:27:06', 'family-fun', 'family-fun', 17),
(2, 'BlogTag', '2017-06-03 06:32:33', '2017-06-03 06:27:54', 'adventure', 'adventure', 17);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree`
--

CREATE TABLE IF NOT EXISTS `BlogTree` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_Live`
--

CREATE TABLE IF NOT EXISTS `BlogTree_Live` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_versions`
--

CREATE TABLE IF NOT EXISTS `BlogTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Contributors`
--

CREATE TABLE IF NOT EXISTS `Blog_Contributors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Editors`
--

CREATE TABLE IF NOT EXISTS `Blog_Editors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Live`
--

CREATE TABLE IF NOT EXISTS `Blog_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_Live`
--

INSERT INTO `Blog_Live` (`ID`, `PostsPerPage`) VALUES
(17, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_versions`
--

CREATE TABLE IF NOT EXISTS `Blog_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_versions`
--

INSERT INTO `Blog_versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`) VALUES
(1, 17, 1, 10),
(2, 17, 2, 10),
(3, 17, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Writers`
--

CREATE TABLE IF NOT EXISTS `Blog_Writers` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2017-06-01 07:21:33', '2017-06-01 07:21:33', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2017-06-01 07:21:33', '2017-06-01 07:21:33', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2017-06-01 07:21:31', '2017-06-01 07:21:31', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0),
(3, 'Group', '2017-06-03 06:16:25', '2017-06-03 06:16:25', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LoginAttempt`
--

INSERT INTO `LoginAttempt` (`ID`, `ClassName`, `LastEdited`, `Created`, `Email`, `Status`, `IP`, `MemberID`) VALUES
(1, 'LoginAttempt', '2017-06-01 07:22:10', '2017-06-01 07:22:10', 'admin', 'Success', '10.0.2.2', 1),
(2, 'LoginAttempt', '2017-06-01 09:25:36', '2017-06-01 09:25:36', 'admin', 'Success', '10.0.2.2', 1),
(3, 'LoginAttempt', '2017-06-03 05:07:38', '2017-06-03 05:07:38', 'admin', 'Success', '10.0.2.2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  `URLSegment` varchar(50) DEFAULT NULL,
  `BlogProfileSummary` mediumtext,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`, `URLSegment`, `BlogProfileSummary`, `BlogProfileImageID`) VALUES
(1, 'Member', '2017-06-03 05:07:38', '2017-06-01 07:21:32', 'Default Admin', NULL, 'admin', '43b0ae2d3b6d23cfb77d6bd559ebead870eaf613', '2017-06-06 05:07:38', '$2y$10$824601aabbcb0143e5f3ce6ZlrQ6h3weyPrDCjAs4wHiQ5zzUclRW', NULL, 3, '2017-06-03 06:34:40', NULL, NULL, 'blowfish', '10$824601aabbcb0143e5f3cf', NULL, NULL, 'en_US', 0, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2017-06-01 07:21:33', '2017-06-01 07:21:33', '$2y$10$824601aabbcb0143e5f3ce6ZlrQ6h3weyPrDCjAs4wHiQ5zzUclRW', '10$824601aabbcb0143e5f3cf', 'blowfish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2017-06-01 07:21:31', '2017-06-01 07:21:31', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2017-06-01 07:21:31', '2017-06-01 07:21:31', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2017-06-01 07:21:31', '2017-06-01 07:21:31', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2017-06-01 07:21:31', '2017-06-01 07:21:31', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'ADMIN', 0, 1, 2),
(6, 'Permission', '2017-06-03 06:16:25', '2017-06-03 06:16:25', 'CMS_ACCESS_CMSMain', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2017-06-01 13:41:18', '2017-06-01 07:21:32', 'kochi', 'stay, sights, activities ...', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2017-06-03 06:16:59', '2017-06-01 07:21:32', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(2, 'Page', '2017-06-01 09:26:30', '2017-06-01 07:21:32', 'where-to-go', 'Where to go', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet massa non purus finibus porta. Donec placerat molestie sapien at accumsan. Praesent elementum nisl eget laoreet ornare. Aliquam fermentum maximus ullamcorper. Curabitur vel massa porttitor tortor pulvinar condimentum. Maecenas porta vel elit sed lobortis. Aenean eleifend purus eu sem scelerisque, sit amet mattis leo varius. In eu nunc at risus elementum euismod. Vivamus vitae sollicitudin ligula. Fusce vel nisi molestie, luctus sem ut, efficitur velit. Suspendisse mattis elit ante, in semper ipsum fringilla quis. Nullam congue justo ac mi imperdiet, eu porttitor est cursus. Praesent facilisis, purus sed interdum efficitur, purus elit porta ante, ut suscipit quam dui non leo.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(3, 'Page', '2017-06-01 09:26:56', '2017-06-01 07:21:32', 'things-to-do', 'Things to do', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet massa non purus finibus porta. Donec placerat molestie sapien at accumsan. Praesent elementum nisl eget laoreet ornare. Aliquam fermentum maximus ullamcorper. Curabitur vel massa porttitor tortor pulvinar condimentum. Maecenas porta vel elit sed lobortis. Aenean eleifend purus eu sem scelerisque, sit amet mattis leo varius. In eu nunc at risus elementum euismod. Vivamus vitae sollicitudin ligula. Fusce vel nisi molestie, luctus sem ut, efficitur velit. Suspendisse mattis elit ante, in semper ipsum fringilla quis. Nullam congue justo ac mi imperdiet, eu porttitor est cursus. Praesent facilisis, purus sed interdum efficitur, purus elit porta ante, ut suscipit quam dui non leo.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2017-06-01 07:21:33', '2017-06-01 07:21:32', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2017-06-01 07:21:33', '2017-06-01 07:21:32', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2017-06-01 09:27:24', '2017-06-01 09:27:13', 'where-to-stay', 'Where to stay', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(7, 'Page', '2017-06-01 09:27:44', '2017-06-01 09:27:38', 'events', 'Events ', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(8, 'Page', '2017-06-01 09:35:41', '2017-06-01 09:34:51', 'visitors-information', 'Visitors Information', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(9, 'Page', '2017-06-01 09:44:50', '2017-06-01 09:44:42', 'essential-information', 'Essential information', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(10, 'Page', '2017-06-01 09:45:13', '2017-06-01 09:45:04', 'getting-here', 'Getting here		', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(11, 'Page', '2017-06-01 09:45:42', '2017-06-01 09:45:24', 'getting-around', 'Getting around', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(12, 'Page', '2017-06-01 09:46:54', '2017-06-01 09:46:04', 'car-rental', 'Car Rental', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 11),
(13, 'Page', '2017-06-01 09:47:23', '2017-06-01 09:47:11', 'maps-and-guides', 'Maps & Guides', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(14, 'Page', '2017-06-01 11:02:04', '2017-06-01 11:01:48', 'shopping', 'Shopping', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 3),
(15, 'Page', '2017-06-01 11:03:01', '2017-06-01 11:02:49', 'eat-and-drink', 'Eat & Drink', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 3),
(16, 'Page', '2017-06-01 11:06:22', '2017-06-01 11:03:32', 'sight-n-activities', 'Sight & Activities', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 3),
(17, 'Blog', '2017-06-03 06:25:57', '2017-06-03 06:16:25', 'blog', 'Blog', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(18, 'BlogPost', '2017-06-03 06:29:41', '2017-06-03 06:28:45', 'what-is-lorem-ipsum', 'What is Lorem Ipsum?', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat arcu et metus auctor elementum. Mauris venenatis convallis nibh, quis ornare lorem ultricies sed. Vestibulum commodo dapibus sapien vitae molestie. Vestibulum porttitor auctor sem. Sed iaculis fermentum justo a finibus. Aliquam nec luctus nisi. Maecenas tincidunt, mauris non tempus dapibus, lectus libero commodo lacus, eget pretium arcu neque vel urna. Donec at dolor fringilla, iaculis lectus ut, blandit tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum vel massa eu enim blandit porttitor feugiat ac leo. Nullam dapibus vel lacus rutrum hendrerit.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 17),
(19, 'BlogPost', '2017-06-03 06:31:34', '2017-06-03 06:30:55', 'why-do-we-use-it', 'Why do we use it?', NULL, '<p> Donec interdum elementum libero at tristique. Duis nunc est, venenatis euismod volutpat id, condimentum at lacus. Nulla eget libero dolor. Donec nisi elit, feugiat sit amet magna non, mollis fringilla ligula. In pulvinar ut est posuere maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet luctus velit, at pulvinar odio.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 17),
(20, 'BlogPost', '2017-06-03 06:32:33', '2017-06-03 06:32:01', 'where-does-it-come-from', 'Where does it come from?', NULL, '<p>Pellentesque bibendum justo erat, nec fermentum elit mollis sit amet. Morbi sit amet ante ut nulla malesuada rutrum. Curabitur non nunc vel velit rutrum rhoncus. Nullam a dolor odio. Ut quis dui sed arcu condimentum placerat. Praesent ut finibus neque, quis varius enim. Fusce quis nulla commodo, malesuada dui ac, porttitor nunc. Nulla facilisi.</p><p>Sed ornare magna sed fringilla mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent purus nunc, porttitor nec tristique et, egestas in ligula. Maecenas bibendum erat lectus. Sed nisi velit, varius quis eros vel, tristique malesuada odio. Ut commodo fermentum velit, eget rutrum diam fermentum nec. Phasellus nec libero ante. Praesent non commodo ligula. Ut luctus tempor nulla, id hendrerit nunc</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2017-06-03 06:16:59', '2017-06-01 07:21:32', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(2, 'Page', '2017-06-01 09:26:30', '2017-06-01 07:21:32', 'where-to-go', 'Where to go', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet massa non purus finibus porta. Donec placerat molestie sapien at accumsan. Praesent elementum nisl eget laoreet ornare. Aliquam fermentum maximus ullamcorper. Curabitur vel massa porttitor tortor pulvinar condimentum. Maecenas porta vel elit sed lobortis. Aenean eleifend purus eu sem scelerisque, sit amet mattis leo varius. In eu nunc at risus elementum euismod. Vivamus vitae sollicitudin ligula. Fusce vel nisi molestie, luctus sem ut, efficitur velit. Suspendisse mattis elit ante, in semper ipsum fringilla quis. Nullam congue justo ac mi imperdiet, eu porttitor est cursus. Praesent facilisis, purus sed interdum efficitur, purus elit porta ante, ut suscipit quam dui non leo.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(3, 'Page', '2017-06-01 09:26:56', '2017-06-01 07:21:32', 'things-to-do', 'Things to do', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet massa non purus finibus porta. Donec placerat molestie sapien at accumsan. Praesent elementum nisl eget laoreet ornare. Aliquam fermentum maximus ullamcorper. Curabitur vel massa porttitor tortor pulvinar condimentum. Maecenas porta vel elit sed lobortis. Aenean eleifend purus eu sem scelerisque, sit amet mattis leo varius. In eu nunc at risus elementum euismod. Vivamus vitae sollicitudin ligula. Fusce vel nisi molestie, luctus sem ut, efficitur velit. Suspendisse mattis elit ante, in semper ipsum fringilla quis. Nullam congue justo ac mi imperdiet, eu porttitor est cursus. Praesent facilisis, purus sed interdum efficitur, purus elit porta ante, ut suscipit quam dui non leo.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2017-06-01 07:21:44', '2017-06-01 07:21:32', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Page', '2017-06-01 09:27:24', '2017-06-01 09:27:13', 'where-to-stay', 'Where to stay', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(7, 'Page', '2017-06-01 09:27:44', '2017-06-01 09:27:38', 'events', 'Events ', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(8, 'Page', '2017-06-01 09:35:41', '2017-06-01 09:34:51', 'visitors-information', 'Visitors Information', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(9, 'Page', '2017-06-01 09:44:50', '2017-06-01 09:44:42', 'essential-information', 'Essential information', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(10, 'Page', '2017-06-01 09:45:13', '2017-06-01 09:45:04', 'getting-here', 'Getting here		', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(11, 'Page', '2017-06-01 09:45:42', '2017-06-01 09:45:24', 'getting-around', 'Getting around', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(12, 'Page', '2017-06-01 09:46:54', '2017-06-01 09:46:04', 'car-rental', 'Car Rental', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 11),
(13, 'Page', '2017-06-01 09:47:23', '2017-06-01 09:47:11', 'maps-and-guides', 'Maps & Guides', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 8),
(14, 'Page', '2017-06-01 11:02:04', '2017-06-01 11:01:48', 'shopping', 'Shopping', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 3),
(15, 'Page', '2017-06-01 11:03:01', '2017-06-01 11:02:49', 'eat-and-drink', 'Eat & Drink', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 3),
(16, 'Page', '2017-06-01 11:06:22', '2017-06-01 11:03:32', 'sight-n-activities', 'Sight & Activities', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 3),
(17, 'Blog', '2017-06-03 06:25:57', '2017-06-03 06:16:25', 'blog', 'Blog', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(18, 'BlogPost', '2017-06-03 06:29:41', '2017-06-03 06:28:45', 'what-is-lorem-ipsum', 'What is Lorem Ipsum?', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat arcu et metus auctor elementum. Mauris venenatis convallis nibh, quis ornare lorem ultricies sed. Vestibulum commodo dapibus sapien vitae molestie. Vestibulum porttitor auctor sem. Sed iaculis fermentum justo a finibus. Aliquam nec luctus nisi. Maecenas tincidunt, mauris non tempus dapibus, lectus libero commodo lacus, eget pretium arcu neque vel urna. Donec at dolor fringilla, iaculis lectus ut, blandit tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum vel massa eu enim blandit porttitor feugiat ac leo. Nullam dapibus vel lacus rutrum hendrerit.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 17),
(19, 'BlogPost', '2017-06-03 06:31:34', '2017-06-03 06:30:55', 'why-do-we-use-it', 'Why do we use it?', NULL, '<p> Donec interdum elementum libero at tristique. Duis nunc est, venenatis euismod volutpat id, condimentum at lacus. Nulla eget libero dolor. Donec nisi elit, feugiat sit amet magna non, mollis fringilla ligula. In pulvinar ut est posuere maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet luctus velit, at pulvinar odio.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 17),
(20, 'BlogPost', '2017-06-03 06:32:33', '2017-06-03 06:32:01', 'where-does-it-come-from', 'Where does it come from?', NULL, '<p>Pellentesque bibendum justo erat, nec fermentum elit mollis sit amet. Morbi sit amet ante ut nulla malesuada rutrum. Curabitur non nunc vel velit rutrum rhoncus. Nullam a dolor odio. Ut quis dui sed arcu condimentum placerat. Praesent ut finibus neque, quis varius enim. Fusce quis nulla commodo, malesuada dui ac, porttitor nunc. Nulla facilisi.</p><p>Sed ornare magna sed fringilla mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent purus nunc, porttitor nec tristique et, egestas in ligula. Maecenas bibendum erat lectus. Sed nisi velit, varius quis eros vel, tristique malesuada odio. Ut commodo fermentum velit, eget rutrum diam fermentum nec. Phasellus nec libero ante. Praesent non commodo ligula. Ut luctus tempor nulla, id hendrerit nunc</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2017-06-01 07:21:32', '2017-06-01 07:21:32', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 2, 2, 1, 1, 1, 'Page', '2017-06-01 09:26:30', '2017-06-01 07:21:32', 'where-to-go', 'Where to go', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet massa non purus finibus porta. Donec placerat molestie sapien at accumsan. Praesent elementum nisl eget laoreet ornare. Aliquam fermentum maximus ullamcorper. Curabitur vel massa porttitor tortor pulvinar condimentum. Maecenas porta vel elit sed lobortis. Aenean eleifend purus eu sem scelerisque, sit amet mattis leo varius. In eu nunc at risus elementum euismod. Vivamus vitae sollicitudin ligula. Fusce vel nisi molestie, luctus sem ut, efficitur velit. Suspendisse mattis elit ante, in semper ipsum fringilla quis. Nullam congue justo ac mi imperdiet, eu porttitor est cursus. Praesent facilisis, purus sed interdum efficitur, purus elit porta ante, ut suscipit quam dui non leo.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 3, 2, 1, 1, 1, 'Page', '2017-06-01 09:26:56', '2017-06-01 07:21:32', 'things-to-do', 'Things to do', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet massa non purus finibus porta. Donec placerat molestie sapien at accumsan. Praesent elementum nisl eget laoreet ornare. Aliquam fermentum maximus ullamcorper. Curabitur vel massa porttitor tortor pulvinar condimentum. Maecenas porta vel elit sed lobortis. Aenean eleifend purus eu sem scelerisque, sit amet mattis leo varius. In eu nunc at risus elementum euismod. Vivamus vitae sollicitudin ligula. Fusce vel nisi molestie, luctus sem ut, efficitur velit. Suspendisse mattis elit ante, in semper ipsum fringilla quis. Nullam congue justo ac mi imperdiet, eu porttitor est cursus. Praesent facilisis, purus sed interdum efficitur, purus elit porta ante, ut suscipit quam dui non leo.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 1, 0, 1, 0, 'Page', '2017-06-01 09:27:13', '2017-06-01 09:27:13', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 6, 2, 1, 1, 1, 'Page', '2017-06-01 09:27:24', '2017-06-01 09:27:13', 'where-to-stay', 'Where to stay', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 7, 1, 0, 1, 0, 'Page', '2017-06-01 09:27:38', '2017-06-01 09:27:38', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 7, 2, 1, 1, 1, 'Page', '2017-06-01 09:27:44', '2017-06-01 09:27:38', 'events', 'Events ', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 8, 1, 0, 1, 0, 'Page', '2017-06-01 09:34:51', '2017-06-01 09:34:51', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 8, 2, 1, 1, 1, 'Page', '2017-06-01 09:34:57', '2017-06-01 09:34:51', 'visitors-info', 'Visitors Info', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 8, 3, 1, 1, 1, 'Page', '2017-06-01 09:35:06', '2017-06-01 09:34:51', 'visitors-information', 'Visitors Information', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 8, 4, 1, 1, 1, 'Page', '2017-06-01 09:35:41', '2017-06-01 09:34:51', 'visitors-information', 'Visitors Information', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 9, 1, 0, 1, 0, 'Page', '2017-06-01 09:44:42', '2017-06-01 09:44:42', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(17, 9, 2, 1, 1, 1, 'Page', '2017-06-01 09:44:50', '2017-06-01 09:44:42', 'essential-information', 'Essential information', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(18, 10, 1, 0, 1, 0, 'Page', '2017-06-01 09:45:04', '2017-06-01 09:45:04', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(19, 10, 2, 1, 1, 1, 'Page', '2017-06-01 09:45:13', '2017-06-01 09:45:04', 'getting-here', 'Getting here		', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(20, 11, 1, 0, 1, 0, 'Page', '2017-06-01 09:45:24', '2017-06-01 09:45:24', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(21, 11, 2, 1, 1, 1, 'Page', '2017-06-01 09:45:42', '2017-06-01 09:45:24', 'getting-around', 'Getting around', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(22, 12, 1, 0, 1, 0, 'Page', '2017-06-01 09:46:04', '2017-06-01 09:46:04', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11),
(23, 12, 2, 1, 1, 1, 'Page', '2017-06-01 09:46:54', '2017-06-01 09:46:04', 'car-rental', 'Car Rental', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11),
(24, 13, 1, 0, 1, 0, 'Page', '2017-06-01 09:47:11', '2017-06-01 09:47:11', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(25, 13, 2, 1, 1, 1, 'Page', '2017-06-01 09:47:17', '2017-06-01 09:47:11', 'maps-and-guides', 'Maps & Guides', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 8),
(26, 14, 1, 0, 1, 0, 'Page', '2017-06-01 11:01:48', '2017-06-01 11:01:48', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3),
(27, 14, 2, 1, 1, 1, 'Page', '2017-06-01 11:02:04', '2017-06-01 11:01:48', 'shopping', 'Shopping', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3),
(28, 15, 1, 0, 1, 0, 'Page', '2017-06-01 11:02:49', '2017-06-01 11:02:49', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3),
(29, 15, 2, 1, 1, 1, 'Page', '2017-06-01 11:03:01', '2017-06-01 11:02:49', 'eat-and-drink', 'Eat & Drink', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3),
(30, 16, 1, 0, 1, 0, 'Page', '2017-06-01 11:03:32', '2017-06-01 11:03:32', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3),
(31, 16, 2, 1, 1, 1, 'Page', '2017-06-01 11:03:46', '2017-06-01 11:03:32', 'sight-seeing', 'Sight Seeing', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3),
(32, 16, 3, 1, 1, 1, 'Page', '2017-06-01 11:06:22', '2017-06-01 11:03:32', 'sight-n-activities', 'Sight & Activities', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3),
(33, 17, 1, 0, 1, 0, 'Blog', '2017-06-03 06:16:25', '2017-06-03 06:16:25', 'new-blog', 'New Blog', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(34, 17, 2, 1, 1, 1, 'Blog', '2017-06-03 06:16:43', '2017-06-03 06:16:25', 'blog', 'blog', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(35, 1, 2, 1, 1, 1, 'Page', '2017-06-03 06:16:59', '2017-06-01 07:21:32', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(36, 17, 3, 1, 1, 1, 'Blog', '2017-06-03 06:25:57', '2017-06-03 06:16:25', 'blog', 'Blog', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(37, 18, 1, 0, 1, 0, 'BlogPost', '2017-06-03 06:28:45', '2017-06-03 06:28:45', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(38, 18, 2, 0, 1, 0, 'BlogPost', '2017-06-03 06:29:16', '2017-06-03 06:28:45', 'what-is-lorem-ipsum', 'What is Lorem Ipsum?', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat arcu et metus auctor elementum. Mauris venenatis convallis nibh, quis ornare lorem ultricies sed. Vestibulum commodo dapibus sapien vitae molestie. Vestibulum porttitor auctor sem. Sed iaculis fermentum justo a finibus. Aliquam nec luctus nisi. Maecenas tincidunt, mauris non tempus dapibus, lectus libero commodo lacus, eget pretium arcu neque vel urna. Donec at dolor fringilla, iaculis lectus ut, blandit tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum vel massa eu enim blandit porttitor feugiat ac leo. Nullam dapibus vel lacus rutrum hendrerit.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(39, 18, 3, 1, 1, 1, 'BlogPost', '2017-06-03 06:29:16', '2017-06-03 06:28:45', 'what-is-lorem-ipsum', 'What is Lorem Ipsum?', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat arcu et metus auctor elementum. Mauris venenatis convallis nibh, quis ornare lorem ultricies sed. Vestibulum commodo dapibus sapien vitae molestie. Vestibulum porttitor auctor sem. Sed iaculis fermentum justo a finibus. Aliquam nec luctus nisi. Maecenas tincidunt, mauris non tempus dapibus, lectus libero commodo lacus, eget pretium arcu neque vel urna. Donec at dolor fringilla, iaculis lectus ut, blandit tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum vel massa eu enim blandit porttitor feugiat ac leo. Nullam dapibus vel lacus rutrum hendrerit.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(40, 18, 4, 1, 1, 1, 'BlogPost', '2017-06-03 06:29:41', '2017-06-03 06:28:45', 'what-is-lorem-ipsum', 'What is Lorem Ipsum?', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat arcu et metus auctor elementum. Mauris venenatis convallis nibh, quis ornare lorem ultricies sed. Vestibulum commodo dapibus sapien vitae molestie. Vestibulum porttitor auctor sem. Sed iaculis fermentum justo a finibus. Aliquam nec luctus nisi. Maecenas tincidunt, mauris non tempus dapibus, lectus libero commodo lacus, eget pretium arcu neque vel urna. Donec at dolor fringilla, iaculis lectus ut, blandit tortor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum vel massa eu enim blandit porttitor feugiat ac leo. Nullam dapibus vel lacus rutrum hendrerit.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(41, 19, 1, 0, 1, 0, 'BlogPost', '2017-06-03 06:30:55', '2017-06-03 06:30:55', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(42, 19, 2, 0, 1, 0, 'BlogPost', '2017-06-03 06:31:18', '2017-06-03 06:30:55', 'why-do-we-use-it', 'Why do we use it?', NULL, '<p> Donec interdum elementum libero at tristique. Duis nunc est, venenatis euismod volutpat id, condimentum at lacus. Nulla eget libero dolor. Donec nisi elit, feugiat sit amet magna non, mollis fringilla ligula. In pulvinar ut est posuere maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet luctus velit, at pulvinar odio.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(43, 19, 3, 1, 1, 1, 'BlogPost', '2017-06-03 06:31:18', '2017-06-03 06:30:55', 'why-do-we-use-it', 'Why do we use it?', NULL, '<p> Donec interdum elementum libero at tristique. Duis nunc est, venenatis euismod volutpat id, condimentum at lacus. Nulla eget libero dolor. Donec nisi elit, feugiat sit amet magna non, mollis fringilla ligula. In pulvinar ut est posuere maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet luctus velit, at pulvinar odio.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(44, 19, 4, 1, 1, 1, 'BlogPost', '2017-06-03 06:31:34', '2017-06-03 06:30:55', 'why-do-we-use-it', 'Why do we use it?', NULL, '<p> Donec interdum elementum libero at tristique. Duis nunc est, venenatis euismod volutpat id, condimentum at lacus. Nulla eget libero dolor. Donec nisi elit, feugiat sit amet magna non, mollis fringilla ligula. In pulvinar ut est posuere maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet luctus velit, at pulvinar odio.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(45, 20, 1, 0, 1, 0, 'BlogPost', '2017-06-03 06:32:01', '2017-06-03 06:32:01', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(46, 20, 2, 0, 1, 0, 'BlogPost', '2017-06-03 06:32:21', '2017-06-03 06:32:01', 'where-does-it-come-from', 'Where does it come from?', NULL, '<p>Pellentesque bibendum justo erat, nec fermentum elit mollis sit amet. Morbi sit amet ante ut nulla malesuada rutrum. Curabitur non nunc vel velit rutrum rhoncus. Nullam a dolor odio. Ut quis dui sed arcu condimentum placerat. Praesent ut finibus neque, quis varius enim. Fusce quis nulla commodo, malesuada dui ac, porttitor nunc. Nulla facilisi.</p><p>Sed ornare magna sed fringilla mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent purus nunc, porttitor nec tristique et, egestas in ligula. Maecenas bibendum erat lectus. Sed nisi velit, varius quis eros vel, tristique malesuada odio. Ut commodo fermentum velit, eget rutrum diam fermentum nec. Phasellus nec libero ante. Praesent non commodo ligula. Ut luctus tempor nulla, id hendrerit nunc</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(47, 20, 3, 1, 1, 1, 'BlogPost', '2017-06-03 06:32:21', '2017-06-03 06:32:01', 'where-does-it-come-from', 'Where does it come from?', NULL, '<p>Pellentesque bibendum justo erat, nec fermentum elit mollis sit amet. Morbi sit amet ante ut nulla malesuada rutrum. Curabitur non nunc vel velit rutrum rhoncus. Nullam a dolor odio. Ut quis dui sed arcu condimentum placerat. Praesent ut finibus neque, quis varius enim. Fusce quis nulla commodo, malesuada dui ac, porttitor nunc. Nulla facilisi.</p><p>Sed ornare magna sed fringilla mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent purus nunc, porttitor nec tristique et, egestas in ligula. Maecenas bibendum erat lectus. Sed nisi velit, varius quis eros vel, tristique malesuada odio. Ut commodo fermentum velit, eget rutrum diam fermentum nec. Phasellus nec libero ante. Praesent non commodo ligula. Ut luctus tempor nulla, id hendrerit nunc</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(48, 20, 4, 1, 1, 1, 'BlogPost', '2017-06-03 06:32:33', '2017-06-03 06:32:01', 'where-does-it-come-from', 'Where does it come from?', NULL, '<p>Pellentesque bibendum justo erat, nec fermentum elit mollis sit amet. Morbi sit amet ante ut nulla malesuada rutrum. Curabitur non nunc vel velit rutrum rhoncus. Nullam a dolor odio. Ut quis dui sed arcu condimentum placerat. Praesent ut finibus neque, quis varius enim. Fusce quis nulla commodo, malesuada dui ac, porttitor nunc. Nulla facilisi.</p><p>Sed ornare magna sed fringilla mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent purus nunc, porttitor nec tristique et, egestas in ligula. Maecenas bibendum erat lectus. Sed nisi velit, varius quis eros vel, tristique malesuada odio. Ut commodo fermentum velit, eget rutrum diam fermentum nec. Phasellus nec libero ante. Praesent non commodo ligula. Ut luctus tempor nulla, id hendrerit nunc</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 17);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogPost`
--
ALTER TABLE `BlogPost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogCategoryID` (`BlogCategoryID`);

--
-- Indexes for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogTagID` (`BlogTagID`);

--
-- Indexes for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `BlogTag`
--
ALTER TABLE `BlogTag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogTree`
--
ALTER TABLE `BlogTree`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogProfileImageID` (`BlogProfileImageID`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost`
--
ALTER TABLE `BlogPost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `BlogTag`
--
ALTER TABLE `BlogTag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `BlogTree`
--
ALTER TABLE `BlogTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
