CREATE TABLE `tickets` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `line` int(3) DEFAULT NULL,
  `seatNumber` int(4) DEFAULT NULL,
  `price` int(3) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `hall` varchar(100) DEFAULT NULL,
  `filmName` varchar(100) DEFAULT NULL,
  `orderId` int(6) DEFAULT NULL,
  `seatId` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
