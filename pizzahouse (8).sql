-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 06:53 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzahouse`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addnewstaff` (IN `fnstaff` VARCHAR(20), IN `lnstaff` VARCHAR(20), IN `pwstaff` VARCHAR(20), IN `sexstaff` VARCHAR(10), IN `telstaff` VARCHAR(20), OUT `outstaff` VARCHAR(50))  NO SQL
BEGIN

INSERT INTO pizzahouse.staff (STAFF_ID,STAFF_NAME,STAFF_SURNAME,PASSWORDs,SEX,STAFF_TEL)

VALUES(NULL,fnstaff,lnstaff,pwstaff,sexstaff,telstaff);

SET outstaff = 'ok';

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `counts`
--

CREATE TABLE `counts` (
  `COUNT_ID` int(10) NOT NULL,
  `NONES` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counts`
--

INSERT INTO `counts` (`COUNT_ID`, `NONES`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crust`
--

CREATE TABLE `crust` (
  `CRUST_ID` int(10) NOT NULL,
  `NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crust`
--

INSERT INTO `crust` (`CRUST_ID`, `NAME`) VALUES
(1, 'Thick&Soft'),
(2, 'Thin&Crisp');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(10) NOT NULL,
  `FNAME` varchar(20) NOT NULL,
  `LNAME` varchar(20) NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `CPASSWORD` varchar(30) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `MOB` varchar(10) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `CADDRESS1` varchar(255) NOT NULL,
  `CADDRESS2` varchar(255) NOT NULL,
  `TEL_NO` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `FNAME`, `LNAME`, `EMAIL`, `CPASSWORD`, `DOB`, `MOB`, `SEX`, `CADDRESS1`, `CADDRESS2`, `TEL_NO`) VALUES
(112, 'change', 'BJKJBJ', 'ADMIN', '9921212', '13', 'April', 'Male', '88/154 eiei', '888/4516 csadsdfg gffgfgd dffgdf sdfgs  rgg dfg sdgsdfsf', 45252452),
(113, 'ryu', 'ngaii', 'boss46392@hotmail.co', '155', '1', 'January', 'Male', '', '', 5654),
(114, 'ss', 'ss', 'test77', '789', '1', 'January', 'Male', '', 'dsad', 0),
(125, '', '', 'ADMIN', 'ADMIN', '1', 'January', 'Male', '', '', 0),
(127, 'ASSSS', 'SADASAS', 'USER', 'USER', '1', 'January', 'Male', '45245', '454242', 4527542),
(128, '', '', '', '', '1', 'January', 'Male', '', '', 0),
(129, '', '', '', '', '26', 'September', 'Male', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FEEDBACK_ID` int(10) NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `FSUBJECT` varchar(20) NOT NULL,
  `COMMENT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FEEDBACK_ID`, `EMAIL`, `FSUBJECT`, `COMMENT`) VALUES
(15, 'trub@hotmail.com', 'asd', 'sadassd'),
(16, 'trub@hotmail.com', 'asd', 'sadassd'),
(17, 'trub@hotmail.com', 'asd', 'sadassd'),
(18, 'QQQ@HOTMAIL.COM', 'DDDD', 'DSDSDDDS'),
(19, 'DD@HOTMAIL.COM', 'SDFSDSD', ''),
(20, 'DD@HOTMAIL.COM', 'SDFSDSD', ''),
(21, 'IFRACE@HOTMAIL.COM', 'KUY', 'EIEIEIEIEIEIEIEIEIEIEIEIEIEIEI'),
(22, '', '', ''),
(23, '', '', ''),
(24, '', '', ''),
(25, 'BOSS46392@HOTMAIL.CO', 'TEST', 'TEST');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `INGREDIENT_ID` int(10) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `PRICE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`INGREDIENT_ID`, `NAME`, `PRICE`) VALUES
(1, 'red sauce', 0),
(2, 'white sauce', 0),
(3, 'BBQ sauce', 0),
(4, 'Mozzarella Cheese', 0),
(5, 'Cheddar Cheese', 0),
(6, 'bacon', 49),
(7, 'beef', 59),
(8, 'ham', 25),
(9, 'shrimp', 65),
(10, 'chicken', 29),
(11, 'sausage', 45),
(12, 'pepperoni', 69),
(13, 'crabstick', 20),
(14, 'blackolive', 19),
(15, 'greenolive', 15),
(16, 'redonion', 10),
(17, 'redpepper', 14),
(18, 'greenpepper', 17),
(19, 'tomatoes', 27),
(20, 'pineapple', 55),
(21, 'mushroom', 35);

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `ORDER_ID` int(10) NOT NULL,
  `PIZZA_ID` int(10) NOT NULL,
  `ORDERILST_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderlist`
--

INSERT INTO `orderlist` (`ORDER_ID`, `PIZZA_ID`, `ORDERILST_ID`) VALUES
(0, 2, 1),
(3, 3, 2),
(4, 2, 3),
(7, 55, 4),
(7, 2, 5),
(8, 4, 6),
(9, 56, 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ORDER_ID` int(10) NOT NULL,
  `ORDER_DATEs` varchar(20) NOT NULL,
  `ORDER_ADDs` varchar(200) NOT NULL,
  `ORDER_TIMEs` varchar(50) NOT NULL,
  `ORDER_PRICEs` int(10) NOT NULL,
  `CUSTOMER_ID` int(10) NOT NULL,
  `STATUS_ID` int(10) NOT NULL,
  `STAFF_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORDER_ID`, `ORDER_DATEs`, `ORDER_ADDs`, `ORDER_TIMEs`, `ORDER_PRICEs`, `CUSTOMER_ID`, `STATUS_ID`, `STAFF_ID`) VALUES
(3, '2018-11-26', '454242', '19:40:09', 339, 127, 2, 19),
(4, '2018-11-26', '45245', '19:41:04', 289, 127, 2, 18),
(7, '2018-11-28', '45245', '20:06:17', 495, 127, 2, 18),
(8, '2018-11-28', '454242', '21:49:31', 309, 127, 2, 18),
(9, '2018-11-28', '', '22:19:03', 50, 128, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `PIZZA_ID` int(10) NOT NULL,
  `PNAME` varchar(400) NOT NULL,
  `PRICE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`PIZZA_ID`, `PNAME`, `PRICE`) VALUES
(1, 'Hawaiian', 189),
(2, 'BBQ Chicken', 239),
(3, 'Seafood ', 289),
(4, 'Meat Lovers ', 259),
(5, 'Custompizza : crust:', 164),
(6, 'Custompizza : crust:', 164),
(7, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: beef pepperoni topping: greenolive tomatoes', 157),
(8, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: beef sausage topping:', 95),
(9, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: beef sausage topping:', 95),
(10, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: beef sausage topping:', 95),
(11, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: beef sausage topping:', 95),
(12, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: topping: redonion tomatoes', 22),
(13, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: topping: redonion tomatoes', 22),
(14, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: beef pepperoni topping: redonion', 130),
(15, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: ham pepperoni crabstick topping:', 130),
(16, 'Custompizza : crust: Thick&Soft sauce:red sauce cheese:Cheddar Cheese meet: sausage topping: tomatoes', 62),
(17, 'Custompizza size :L: crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: ham pepperoni topping: blackolive greenpepper size:', 129),
(18, 'Custompizza size :L: crust: Thick&Soft sauce:red sauce cheese:Mozzarella Cheese meet: ham pepperoni topping:', 110),
(19, 'Custompizza size :L: crust: Thin&Crisp sauce:white sauce cheese:Cheddar Cheese meet: beef sausage topping: redpepper pineapple', 152),
(20, 'Custompizza size : L </br>crust: Thin&Crisp </br> sauce:white sauce </br> cheese:Cheddar Cheese </br> meet: beef</br> topping: redonion', 55),
(21, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping:', 0),
(22, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping:', 0),
(23, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping:', 0),
(24, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping:', 0),
(25, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:white sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: greenolive redonion', 25),
(26, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:white sauce </br> cheese:Mozzarella Cheese </br> meet: beef sausage</br> topping: greenolive redonion', 129),
(27, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:white sauce </br> cheese:Mozzarella Cheese </br> meet: bacon beef sausage</br> topping: mushroom', 188),
(28, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: redonion tomatoes', 37),
(29, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: redonion tomatoes', 37),
(30, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: redonion tomatoes mushroom', 72),
(31, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: tomatoes', 27),
(32, 'Custompizza size : L </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet:</br> topping:', 0),
(33, 'Custompizza size : L </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet: ham pepperoni</br> topping: pineapple', 149),
(34, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet: ham pepperoni</br> topping: greenolive tomatoes', 136),
(35, 'Custompizza size : L </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet:</br> topping:', 0),
(36, 'Custompizza size : L </br>crust: Thin&Crisp </br> sauce:white sauce </br> cheese:Mozzarella Cheese </br> meet: bacon beef sausage</br> topping: tomatoes', 180),
(37, 'Custompizza size : S </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet: ham shrimp</br> topping: redonion', 100),
(38, 'Custompizza size : S </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet: ham shrimp</br> topping: redonion', 100),
(39, 'Custompizza size : S </br>crust: Thin&Crisp </br> sauce:white sauce </br> cheese:Cheddar Cheese </br> meet: beef sausage</br> topping: tomatoes', 131),
(40, 'Custompizza size : S </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: pineapple', 55),
(41, 'Custompizza size : M </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: pineapple mushroom', 90),
(42, 'Custompizza size : L </br>crust: Thick&Soft </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet: bacon</br> topping: tomatoes pineapple', 131),
(43, 'Custompizza size : S </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: redonion redpepper', 24),
(44, 'Custompizza size : S </br>crust: Thin&Crisp </br> sauce:white sauce </br> cheese:Cheddar Cheese </br> meet: shrimp crabstick</br> topping: mushroom', 120),
(45, 'Custompizza size : S </br>crust: Thin&Crisp </br> sauce:white sauce </br> cheese:Cheddar Cheese </br> meet: shrimp crabstick</br> topping: mushroom', 120),
(46, 'Custompizza size : S </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet: sausage</br> topping: greenolive', 60),
(47, 'Custompizza size : L </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet: ham sausage</br> topping: pineapple', 275),
(48, 'Custompizza size : M </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet: ham chicken sausage crabstick</br> topping: redonion redpepper tomatoes mushroom', 325),
(49, 'Custompizza size :  </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Cheddar Cheese </br> meet: ham sausage</br> topping: redonion mushroom', 115),
(50, 'Custompizza size : M </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet: ham pepperoni</br> topping: greenpepper tomatoes', 258),
(51, 'Custompizza size : M </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: pineapple', 175),
(52, 'Custompizza size :  </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping: greenpepper', 17),
(53, 'Custompizza size : L </br>crust: Thin&Crisp </br> sauce:BBQ sauce </br> cheese:Mozzarella Cheese </br> meet: sausage pepperoni</br> topping: greenolive redonion redpepper', 303),
(54, 'Custompizza size :  </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet: ham pepperoni</br> topping: redpepper mushroom', 143),
(55, 'Custompizza size : S </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet: beef crabstick</br> topping: tomatoes', 206),
(56, 'Custompizza size :  </br>crust: Thick&Soft </br> sauce:red sauce </br> cheese:Mozzarella Cheese </br> meet:</br> topping:', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `SIZE_ID` int(10) NOT NULL,
  `SIZE` varchar(10) NOT NULL,
  `PRICE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`SIZE_ID`, `SIZE`, `PRICE`) VALUES
(1, 'S', 100),
(2, 'M', 120),
(3, 'L', 150);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `STAFF_ID` int(11) NOT NULL,
  `STAFF_NAME` varchar(50) NOT NULL,
  `STAFF_SURNAME` varchar(50) NOT NULL,
  `PASSWORDs` varchar(50) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `STAFF_TEL` varchar(55) NOT NULL,
  `STAFF_STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`STAFF_ID`, `STAFF_NAME`, `STAFF_SURNAME`, `PASSWORDs`, `SEX`, `STAFF_TEL`, `STAFF_STATUS`) VALUES
(17, 'ryu', 'ngaii', 'ryuryu', '', '0873269511', 'NOTFREE'),
(18, 'boss', 'PHAN', 'boss', 'Male', '999', 'FREE'),
(19, 'phan', 'boss', 'phan', 'Female', '999', 'FREE'),
(20, 'gap', 'gao', '333', 'Male', '849', 'NOTFREE'),
(21, 'win', 'phusanapong', '555', 'Male', '444', 'NOTFREE');

-- --------------------------------------------------------

--
-- Table structure for table `statuss`
--

CREATE TABLE `statuss` (
  `STATUS_ID` int(10) NOT NULL,
  `STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuss`
--

INSERT INTO `statuss` (`STATUS_ID`, `STATUS`) VALUES
(0, 'PREPARE'),
(1, 'SENT'),
(2, 'COMPELETE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`COUNT_ID`);

--
-- Indexes for table `crust`
--
ALTER TABLE `crust`
  ADD PRIMARY KEY (`CRUST_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FEEDBACK_ID`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`INGREDIENT_ID`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`ORDERILST_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`PIZZA_ID`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`SIZE_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`STAFF_ID`);

--
-- Indexes for table `statuss`
--
ALTER TABLE `statuss`
  ADD PRIMARY KEY (`STATUS_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counts`
--
ALTER TABLE `counts`
  MODIFY `COUNT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crust`
--
ALTER TABLE `crust`
  MODIFY `CRUST_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTOMER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FEEDBACK_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `INGREDIENT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `ORDERILST_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `PIZZA_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `SIZE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `STAFF_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
