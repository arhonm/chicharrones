/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 10.4.6-MariaDB : Database - restaurant3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restaurant3` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `restaurant3`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`) values 
(1,'Menus'),
(2,'Platillos'),
(3,'Bebidas'),
(4,'Reservas'),
(5,'Contactos'),
(6,'Ingresar');

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `items` */

insert  into `items`(`id`,`name`,`description`,`price`,`image`,`category`) values 
(1,'chicharron de cerdo','chicharron + mote + papa',35,'ch1.jpg',1),
(2,'De pollo','Sandwich: Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson',9.5,'ch1.jpg',1),
(3,'Menu Big','Sandwich: Double Burger, Fromage, Cornichon, Salade + Frites + Boisson',10.9,'ch1.jpg',1),
(4,'Menu Chicken','Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise + Frites + Boisson',9.9,'ch1.jpg',1),
(5,'Menu Fish','Sandwich: Poisson, Salade, Mayonnaise, Cornichon + Frites + Boisson',10.9,'ch1.jpg',1),
(6,'Menu Double Steak','Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate + Frites + Boisson',11.9,'ch1.jpg',1),
(7,'WHOPPERÂ® BBQ','Sandwich: Burger, Salade, Tomate, Cornichon',5.9,'b1.png',2),
(8,'Bacon','Sandwich: Burger, Fromage, Bacon, Salade, Tomate',6.5,'b2.png',2),
(9,'Big','Sandwich: Double Burger, Fromage, Cornichon, Salade',6.9,'b3.png',2),
(10,'Chicken','Sandwich: Poulet Frit, Tomate, Salade, Mayonnaise',5.9,'b4.png',2),
(11,'Fish','Sandwich: Poisson PanÃ©, Salade, Mayonnaise, Cornichon',6.5,'b5.png',2),
(12,'Double Steak','Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate',7.5,'b6.png',2),
(13,'Frites','Pommes de terre frites',3.9,'s1.png',3),
(14,'Onion Rings','Rondelles d\'oignon frits',3.4,'s2.png',3),
(15,'Nuggets','Nuggets de poulet frits',5.9,'s3.png',3),
(16,'Nuggets Fromage','Nuggets de fromage frits',3.5,'s4.png',3),
(17,'Ailes de Poulet','Ailes de poulet Barbecue',5.9,'s5.png',3),
(18,'CÃ©sar Poulet PanÃ©','Poulet PanÃ©, Salade, Tomate et la fameuse sauce CÃ©sar',8.9,'sa1.png',4),
(19,'CÃ©sar Poulet GrillÃ©','Poulet GrillÃ©, Salade, Tomate et la fameuse sauce CÃ©sar',8.9,'sa2.png',4),
(20,'Salade Light','Salade, Tomate, Concombre, MaÃ¯s et Vinaigre balsamique',5.9,'sa3.png',4),
(21,'Poulet PanÃ©','Poulet PanÃ©, Salade, Tomate et la sauce de votre choix',7.9,'sa4.png',4),
(22,'Poulet GrillÃ©','Poulet GrillÃ©, Salade, Tomate et la sauce de votre choix',7.9,'sa5.png',4),
(23,'Coca-Cola','Au choix: Petit, Moyen ou Grand',1.9,'bo1.png',5),
(24,'Coca-Cola Light','Au choix: Petit, Moyen ou Grand',1.9,'bo2.png',5),
(25,'Coca-Cola ZÃ©ro','Au choix: Petit, Moyen ou Grand',1.9,'bo3.png',5),
(26,'Fanta','Au choix: Petit, Moyen ou Grand',1.9,'bo4.png',5),
(27,'Sprite','Au choix: Petit, Moyen ou Grand',1.9,'bo5.png',5),
(28,'Nestea','Au choix: Petit, Moyen ou Grand',1.9,'bo6.png',5),
(29,'Fondant au chocolat','Au choix: Chocolat Blanc ou au lait',4.9,'d1.png',6),
(30,'Muffin','Au choix: Au fruits ou au chocolat',2.9,'d2.png',6),
(31,'Beignet','Au choix: Au chocolat ou Ã  la vanille',2.9,'d3.png',6),
(32,'Milkshake','Au choix: Fraise, Vanille ou Chocolat',3.9,'d4.png',6),
(33,'Sundae','Au choix: Fraise, Caramel ou Chocolat',4.9,'d5.png',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
