SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `aaa`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE DATABASE aaa;

USE aaa;

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `news` (`id`, `title`, `c_time`, `content`) VALUES
(1, 'title 1', '2016-01-08 11:10:22', 'content 1');

ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `aaa1`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE DATABASE aaa1;

USE aaa1;

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `news` (`id`, `title`, `c_time`, `content`) VALUES
(1, 'title 1', '2016-01-08 11:10:22', 'content 1'),
(2, 'title 2', '2016-01-08 11:12:32', 'content 2');

ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `aaa2`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE DATABASE aaa2;

USE aaa2;

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `news` (`id`, `title`, `c_time`, `content`) VALUES
(1, 'title 1', '2016-01-08 11:10:22', 'content 1'),
(2, 'title 2', '2016-01-08 11:12:45', 'content 2'),
(3, 'title 3', '2016-01-08 11:12:53', 'content 3');

ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
