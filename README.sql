SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `ad` (
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `time` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bbs` (
  `no` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `type_sub` varchar(16) NOT NULL,
  `title` varchar(128) NOT NULL,
  `first` datetime NOT NULL,
  `author` varchar(32) NOT NULL,
  `res` int(11) NOT NULL,
  `last` datetime NOT NULL,
  `last_name` varchar(16) NOT NULL,
  PRIMARY KEY (`no`),
  KEY `type` (`type`),
  KEY `type_sub` (`type_sub`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bj` (
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `coin` int(11) NOT NULL,
  `time` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `card` (
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `coin` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `time` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `chat` (
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `comment` varchar(128) NOT NULL,
  `time` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `double` (
  `id1` varchar(16) NOT NULL,
  `id2` varchar(16) NOT NULL,
  KEY `id1` (`id1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `enq` (
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `title` varchar(64) NOT NULL,
  `message` varchar(512) NOT NULL,
  `first` date NOT NULL,
  `choice` int(11) NOT NULL,
  `add` smallint(6) NOT NULL,
  `comment` tinyint(1) NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `entry` (
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `show` int(11) NOT NULL,
  `last` datetime NOT NULL,
  `town` varchar(16) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `img` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `house` (
  `id` varchar(16) NOT NULL,
  `type` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `img` varchar(32) NOT NULL,
  `explain` varchar(128) NOT NULL,
  `town` varchar(32) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `bbs` text NOT NULL,
  `shop` text NOT NULL,
  `blog` text NOT NULL,
  `free` text NOT NULL,
  `store` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `town` (`town`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ini` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `item` (
  `name` varchar(64) NOT NULL,
  `type` varchar(16) NOT NULL,
  `type_sub` varchar(16) NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `limit` int(11) NOT NULL,
  `span` int(11) NOT NULL,
  `explain` varchar(128) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` float NOT NULL,
  `special` text NOT NULL,
  `stock` int(11) NOT NULL,
  `rand` int(11) NOT NULL,
  `energy` int(11) NOT NULL,
  `spirit` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `math` int(11) NOT NULL,
  `science` int(11) NOT NULL,
  `society` int(11) NOT NULL,
  `arm` int(11) NOT NULL,
  `leg` int(11) NOT NULL,
  `quick` int(11) NOT NULL,
  `soft` int(11) NOT NULL,
  `beauty` int(11) NOT NULL,
  `attent` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `lucky` int(11) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `type` (`type`),
  KEY `type_sub` (`type_sub`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(32) NOT NULL,
  `name` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `no` int(11) NOT NULL,
  `ip` varchar(1024) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `img` varchar(16) NOT NULL,
  `birthday` date NOT NULL,
  `time` text NOT NULL,
  `mode` varchar(16) NOT NULL,
  `command` varchar(16) NOT NULL,
  `town` varchar(32) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `money` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  `coin` int(11) NOT NULL,
  `work` text NOT NULL,
  `health` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` float NOT NULL,
  `move` varchar(32) NOT NULL,
  `css` int(11) NOT NULL,
  `window` text NOT NULL,
  `max_energy` int(11) NOT NULL,
  `max_spirit` int(11) NOT NULL,
  `energy` int(11) NOT NULL,
  `spirit` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `math` int(11) NOT NULL,
  `science` int(11) NOT NULL,
  `society` int(11) NOT NULL,
  `arm` int(11) NOT NULL,
  `leg` int(11) NOT NULL,
  `quick` int(11) NOT NULL,
  `soft` int(11) NOT NULL,
  `beauty` int(11) NOT NULL,
  `attent` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `lucky` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `no` (`no`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `news` (
  `type` varchar(16) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `school` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `explain` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `energy` int(11) NOT NULL,
  `spirit` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `math` int(11) NOT NULL,
  `science` int(11) NOT NULL,
  `society` int(11) NOT NULL,
  `arm` int(11) NOT NULL,
  `leg` int(11) NOT NULL,
  `quick` int(11) NOT NULL,
  `soft` int(11) NOT NULL,
  `beauty` int(11) NOT NULL,
  `attent` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `lucky` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `shop` (
  `type` varchar(16) NOT NULL,
  `type_sub` varchar(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `stock` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  KEY `type` (`type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `theme` (
  `no` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `comment` varchar(128) NOT NULL,
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  KEY `no` (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ufo` (
  `id` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `item` varchar(64) NOT NULL,
  `time` datetime NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `unit` (
  `key` varchar(16) NOT NULL,
  `mode` varchar(16) NOT NULL,
  `command` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `img` varchar(32) NOT NULL,
  `explain` varchar(512) NOT NULL,
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `work` (
  `name` varchar(32) NOT NULL,
  `before` varchar(16) NOT NULL,
  `place` varchar(16) NOT NULL,
  `bmi_min` int(11) NOT NULL,
  `bmi_max` int(11) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `first` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  `pay` varchar(1) NOT NULL,
  `energy` int(11) NOT NULL,
  `spirit` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `math` int(11) NOT NULL,
  `science` int(11) NOT NULL,
  `society` int(11) NOT NULL,
  `arm` int(11) NOT NULL,
  `leg` int(11) NOT NULL,
  `quick` int(11) NOT NULL,
  `soft` int(11) NOT NULL,
  `beauty` int(11) NOT NULL,
  `attent` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `lucky` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
