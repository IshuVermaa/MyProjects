-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2022 at 11:04 AM
-- Server version: 8.0.28
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

DROP TABLE IF EXISTS `mst_admin`;
CREATE TABLE IF NOT EXISTS `mst_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'ishu', 'verma');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

DROP TABLE IF EXISTS `mst_question`;
CREATE TABLE IF NOT EXISTS `mst_question` (
  `que_id` int NOT NULL AUTO_INCREMENT,
  `test_id` int DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(16, 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2),
(17, 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3),
(18, 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1),
(19, 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4),
(20, 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4),
(22, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(23, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(24, 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will receive the focus', 'It determines if the access key swquence can be used', 1),
(25, 10, 'You application creates an instance of a form. What is the first event that will be triggered in the from?', 'Load', 'GotFocus', 'Instance', 'Initialize', 4),
(26, 10, 'Which of the following is Hungarian notation for a menu?', 'Menu', 'Men', 'mnu', 'MN', 3),
(27, 10, 'You are ready to run your program to see if it works.Which key on your keyboard will start the program?', 'F2', 'F3', 'F4', 'F5', 4),
(28, 10, 'Which of the following snippets of code will unload a form named frmFo0rm from memory?', 'Unload Form', 'Unload This', 'Unload Me', 'Unload', 3),
(29, 10, 'You want the text in text box named txtMyText to read My Text.In which property will you place this string?', 'Caption', 'Text', 'String', 'None of the above', 2),
(30, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0),
(31, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0),
(32, 13, 'What is the full form of LAN', 'Local Area Network', 'Locality Network', 'Live Area Network', 'Least Area Network', 1),
(33, 13, 'What is the full form of PAN', 'Person Area Network', 'Personal Area Network', 'Private Area Network', 'Perk Area Network', 2),
(34, 15, 'what are the building blocks of a program ?', 'tokens', 'functions', 'classes', 'objects', 1),
(35, 15, 'which of the following is not a token ?', 'identifiers', 'keywords', 'operators', 'class', 4),
(36, 15, 'which of the following is a primitive datatype ?', 'string', 'class', 'array', 'char', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

DROP TABLE IF EXISTS `mst_result`;
CREATE TABLE IF NOT EXISTS `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('riyaverma', 8, '2022-02-18', 1),
('riyaverma', 13, '2022-02-18', 2),
('riyaverma', 13, '2022-02-18', 2),
('amitverma', 13, '2022-02-18', 2),
('amitverma', 15, '2022-02-18', 2),
('amitverma', 15, '2022-02-18', 3),
('riyaverma', 8, '2022-02-26', 1),
('riyaverma', 15, '2022-02-26', 0),
('saumya', 15, '2022-02-26', 2),
('saumya', 15, '2022-02-26', 3),
('saumya', 15, '2022-02-26', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

DROP TABLE IF EXISTS `mst_subject`;
CREATE TABLE IF NOT EXISTS `mst_subject` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'VB'),
(3, 'Java'),
(6, 'Networking'),
(8, 'Computer Network');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

DROP TABLE IF EXISTS `mst_test`;
CREATE TABLE IF NOT EXISTS `mst_test` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `sub_id` int DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'VB Basic Test', '3'),
(9, 1, 'Essentials of VB', '5'),
(10, 1, 'Creating User Services', '5'),
(13, 8, 'Computer Network', '2'),
(15, 3, 'Tokens', '3');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

DROP TABLE IF EXISTS `mst_user`;
CREATE TABLE IF NOT EXISTS `mst_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'raj', 'raj', 'Rajen', 'limbdi', 'limbdi', 9999, 'raj@yahoo.com'),
(12, 'ashish', 'shah', 'ashish', 'laskdjf', 'S\'nagar', 228585, 'ashish@yahoo.com'),
(14, 'Dhaval123', 'a', 'a', 'a', 'a', 0, 'dhaval@yahoo.com'),
(15, 'ishuverma', '1234', 'Ishu', '74, Ansari Marg', 'Dehradun', 2659248, 'ishuverma@gmail.com'),
(16, 'riyaverma', 'ishu', 'Riya', '89 Rajpur Road', 'Dehradun', 26547895, 'riyaverma@gmai.com'),
(17, 'amitverma', 'ishu', 'Amit', '74 Ansari Marg', 'Dehradun', 2659248, 'amitverma@gmail.com'),
(18, 'saumya', 'ishu', 'Saumya', 'hjgvh', 'hjb', 54, 'ishuverma@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

DROP TABLE IF EXISTS `mst_useranswer`;
CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int DEFAULT NULL,
  `your_ans` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('ibmviroti512bjod0nhnbloim3', 15, 'what are the building blocks of a program ?', 'tokens', 'functions', 'classes', 'objects', 1, 1),
('ibmviroti512bjod0nhnbloim3', 15, 'which of the following is not a token ?', 'identifiers', 'keywords', 'operators', 'class', 4, 4),
('ibmviroti512bjod0nhnbloim3', 15, 'which of the following is a primitive datatype ?', 'string', 'class', 'array', 'char', 4, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
