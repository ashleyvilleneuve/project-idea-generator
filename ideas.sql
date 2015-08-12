-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 11, 2015 at 10:10 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideas`
--

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE IF NOT EXISTS `ideas` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `summary` mediumtext NOT NULL,
  `category` varchar(255) NOT NULL,
  `complexity` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`id`, `title`, `link`, `summary`, `category`, `complexity`) VALUES
(1, 'PHP To-Do List', 'http://mlitzinger.com/articles/simple-to-do-list/', 'Create an updateable, online to-do list with PHP.', 'php', 'moderate'),
(2, 'Youtube Playlist Generator', 'https://developers.google.com/youtube/v3/code_samples/#javascript', 'Use Google''s API to create an embedded playlist generator that lets you search by mood or keyword.', 'Javascript', 'simple'),
(3, 'Simple PHP CMS', 'http://www.elated.com/articles/cms-in-an-afternoon-php-mysql/', 'Learn how to plan and build a somewhat more complex web app with this tutorial for making your own simple CMS with PHP and MySQL.', 'php', 'complex'),
(4, 'PHP Shopping Cart', 'https://www.codeofaninja.com/2013/04/shopping-cart-in-php.html', 'This shopping cart uses sessions to allow users to return to the store and retrieve saved carts at a later date. It''s built in PHP and MySQL.', 'php', 'moderate'),
(5, 'PHP Discussion Forum', 'http://code.tutsplus.com/tutorials/how-to-create-a-phpmysql-powered-forum-from-scratch--net-10188', 'Build a simple discussion forum in php using this tuts+ tutorial.', 'php', ''),
(6, 'jQuery MadLib Game', 'https://dash.generalassemb.ly/projects/mad-libs-1', 'Learn to create an interactive MadLib game with jQuery, HTML and CSS.', 'javascript', ''),
(7, 'Landing Page', 'https://dash.generalassemb.ly/projects/annas-website-1', 'Create a simple personal landing page with this tutorial at Dash (by General Assembly).', 'css', ''),
(8, 'Blog Theme', 'https://dash.generalassemb.ly/projects/jeffs-blog-1', 'Create a very simple blog theme with this tutorial at Dash (by General Assembly)', 'css', ''),
(9, 'Single Page Website', 'https://dash.generalassemb.ly/projects/eshas-restaurant-1', 'Learn to build a restaurant website with webfonts and transparent overlays with this tutorial by Dash (by General Assembly).', 'css', ''),
(10, 'CSS Robot', 'https://dash.generalassemb.ly/projects/cotbots-1', 'Learn CSS positioning and div shaping by creating an adorable robot.', 'css', ''),
(11, 'PHP Random Generator', 'http://www.sitepoint.com/php-random-number-generator/', 'Explore random number generation to create your own games in PHP', 'php', ''),
(12, 'PHP Chat Room', 'http://tutorialzine.com/2010/10/ajax-web-chat-php-mysql/', 'Learn about AJAX and authentication by creating this simple browser-based chatroom.', 'php', ''),
(13, 'Javascript Dice', 'https://www.developphp.com/video/JavaScript/Dice-Roll-Programming-Tutorial-For-Web-Browser-Games', 'Learn to program a random dice roll in javascript with this tutorial.', 'javascript', ''),
(14, 'PHP Rock, Paper, Scissors', 'http://www.pacerit.com/blog/2011/12/03/rock-paper-scissors-a-php-tutorial/', 'Learn about randomizers, conditionals and comparison statements in PHP with this tutorial for building an online game of Rock, Paper, Scissors.', 'php', ''),
(15, 'PHP Quiz', 'https://css-tricks.com/building-a-simple-quiz/', 'Practice conditionals, comparisons and form handling by making a simple online quiz with PHP in this great tutorial.', 'php', ''),
(16, 'jQuery Online Quiz', 'http://www.hungrypiranha.org/make-a-website/html-quiz', 'Practice using conditionals and comparisons in javascript and using jQuery to change the DOM by making this quiz app.', 'javascript', ''),
(17, 'Python Chatbot', 'http://rodic.fr/blog/python-chatbot-1/', 'Learn about Python''s string handling capabilities, comparisons and simple AI design by creating an actual learning-capable chatbot.', 'python', ''),
(18, 'PHP Social Media Aggregator', 'http://code.tutsplus.com/tutorials/how-to-build-a-social-news-feed-with-php--net-21063', 'Use PHP to combine your Twitter and Facebook newsfeeds into one fully stylable real-time updating webpage.', 'php', ''),
(19, 'jQuery Calculator', 'http://code.tutsplus.com/tutorials/creating-an-incredible-jquery-calculator--pre-8813', 'Learn about math functions and DOM altering by making this online calculator app in jQuery.', 'javascript', ''),
(20, 'Javascript Sudoku', 'http://moriel.smarterthanthat.com/tips/javascript-sudoku-backtracking-algorithm/', 'Walk through a more complex game-planning experience, including algorithm design, while you create an online sudoko puzzle with this tutorial.', 'javascript', ''),
(21, 'Python Hangman Game', 'http://inventwithpython.com/chapter9.html', 'Learn about random, for loops, string handling and conditionals by building this hangman game in Python.', 'python', ''),
(22, 'Python Timer', 'http://davidbriddock.blogspot.ca/2013/04/learn-python-timer-app.html', 'Learn about the while loop and the time() function by creating this simple timer in Python.', 'python', ''),
(23, 'Python Multiplication Table', 'https://www.youtube.com/watch?v=CqaB4B7xzNA', 'Make a formatted multiplication table with Python using this tutorial.', 'python', ''),
(24, 'Javascript Data Visualization', 'http://www.pairuptocode.com/exercises/jsdataviz.html', 'Practice working with large datasets, limits, sorting and DOM alteration with this tutorial set.', 'javascript', ''),
(25, 'Javascript Cat', 'http://www.pairuptocode.com/exercises/catwalk.html', 'Learn about animating with jQuery with this interactive walking cat tutorial.', 'javascript', ''),
(26, 'Javascript Memory Game', 'http://www.pairuptocode.com/exercises/memorygame.html', 'Learn about DOM alteration, arrays, timeout handlers and more by creating a memory card game in javascript with this tutorial.', 'javascript', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
