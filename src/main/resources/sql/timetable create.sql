CREATE TABLE `timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `hall` varchar(20) DEFAULT NULL,
  `film` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
