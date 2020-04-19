-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 39.96.5.207    Database: cakeshop
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES 
(9,'Strawberry Ice Cream','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',299,'The sweet strawberry with the silky taste of ice cream makes the refreshing and romantic passion collide in the love orchard. Falling in love with strawberries is a wonderful mood\r\nMain taste: strawberry flavor The main raw material: strawberry fruit soluble strawberry sweetness: Samsung (full five stars) The best eating temperature: -12 to -15 degrees Celsius',10,1),
(10,'Rose Souffle','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'French cheese is preferred, with rich milky flavor, smooth texture and delicate taste. French cheese helps to enhance the overall taste of the pastry, perfectly balance the acidity and sweetness, and make the pastry more white and pure.',10,3),
(11,'Parboiled cheese','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'In order to ensure the mellowness of cheese, semi-cooked cheese draws on the practice of boiling eggs in Japanese hot springs, mixing cheese, milk, eggs, natural cream, granulated sugar, and wheat flour into a batter, steaming through a water bath to ensure that the cheesecake is tender, soft, and retains the mellowness of cheese Sleek.',10,3),
(12,'Aomori Cheese Bar','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'Aomori cheese breezes, the milk is rich, the texture is smooth, and the taste is delicate.',10,2),
(13,'Honey cake','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Egg yolk and honey, whipped cream, a wonderful journey together. The taste is Q glutinous, the aftertaste is soft and long. The crumpled shape, sweet feeling.',10,2),
(14,'Italian Cheese Cookies','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'Italian cheesecake made with Parmesan cheese as the main raw material, rich in milk, delicious and delicious.',10,2),
(15,'Little Bear Paradise','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',299,'Walk into the Little Bear Paradise and prepare winter food with the cute bear. Pick a strawberry and hide it in a house made of chocolate. Good friends share the fruits of labor.\r\nMain taste: strawberry cream flavor Main ingredients: cream Cream, pure chocolate, rum, caster sugar, fresh strawberry Sweetness: two stars (full five stars) Optimal serving temperature: 5-7 degrees Celsius',10,3),
(16,' Strawberry Ice Cream ',' /picture/9-1.jpg ',' /picture/9-2.jpg','/picture/9-3 .jpg ', 299,' Sweet strawberry with ice cream\'s silky taste, let refreshing and romance collide passionately in the love orchard, falling in love with strawberries, this mood is wonderful and extraordinary. \r\nMain taste: Strawberry tastes mainly Ingredients: Strawberry Fruit Strawberry Sweetness: Samsung (Five Stars) Optimal serving temperature: -12 to -15 degrees Celsius', 10,1), 
(18, 'Semi-cooked cheese', '/picture/11-1.jpg' , '/picture/11-1.jpg', '/picture/11-1.jpg', 38, 'In order to guarantee the aroma of cheese, Semi-cooked cheese draws on the practice of boiling eggs in Japanese hot springs, mixing cheese, milk, eggs, natural cream, granulated sugar, and wheat flour into a batter, steaming through a water bath to ensure that the cheese cake is tender and soft, and retains the aroma and smoothness of cheese. ', 10 , 2), 
(19, 'Aomori Cheese Bar', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture / 12-1.jpg', 36, 'Aomori The breeze of the cheese and the breeze, the milk is rich, the texture is smooth, the taste is delicate. ', 10,4), 
(20,' Honey Cake ',' /picture/13-1.jpg ',' /picture/13-1. jpg ',' /picture/13-1.jpg ', 36,' The wonderful journey of egg yolk and honey, light cream. The taste is Q glutinous, the aftertaste is soft and long. The crumpled shape, sweet feeling. ', 10,4), 
(21,' Italian Cheese Cookies', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', 39 , 'Italian cheesecake made with Parmesan cheese as the main raw material, rich in milk, delicious and delicious.', 10,2), 
(23, 'Strawberry ice cream', '/picture/9-1.jpg', '/picture/9-2.jpg','/picture/9-3.jpg',299,' sweet silky strawberry with the silky taste of ice cream, let the freshness and romance collide passionately in the love orchard, fall in love with strawberry, this The mood is wonderful. \r\nMain taste: grass The main raw material of raspberry flavor: strawberry fruit strawberry sweetness: Samsung (full five-star) The best eating temperature: -12 to -15 degrees Celsius ', 10, 1), 
(24,' Rose Souffle ',' /picture/10-1 .jpg ',' /picture/10-2.jpg ', '/picture/10-3.jpg', 28, 'French cheese is preferred, with rich milk, smooth texture and delicate taste. French cheese helps to improve the overall taste of the pastry, perfectly balance the acidity and sweetness, and make the pastry More white and pure. ', 10,2), 
(25,' Semi-cooked cheese ',' /picture/11-1.jpg ',' /picture/11-1.jpg ',' /picture/11-1.jpg ', 38,' In order to ensure the aroma of cheese, semi-cooked cheese draws on the practice of boiling eggs in Japanese hot springs, mixing cheese, milk, eggs, natural cream, granulated sugar, wheat flour into a batter, steaming through a water bath to ensure that the cheese cake is tender and soft Keep the aroma of cheese smooth and smooth. ', 10,2), 
(26,' Aomori Cheese Bar ',' /picture/12-1.jpg ',' /picture/1-2.jpg ',' /picture/12-1.jpg ', 36,' Aomori cheese breeze blowing, rich milk, smooth texture, delicate taste. ', 10, 2), (27,' honey cake ',' /picture/13-1.jpg ',' /picture/13-1.jpg ',' /picture/13-1.jpg ', 36,' young journey with the yolk, honey and light cream. The taste is Q glutinous and rich, the aftertaste is soft and long .Crumpled shape, sweet feeling. ', 10,2), (28,' Italian Cheese Cookies ',' /picture/14-1.jpg ',' /picture/14-1.jpg ',' /picture/14-1.jpg',39,'Using Parmesan Italian cheese cake made with cheese as the main raw material, rich in milk, delicious and delicious.', 10,2), 
(29,'Little Bear Paradise','/picture/8-1.jpg ',' /picture/8- 2. jpg ',' /picture/8-3.jpg ', 299,' Enter the little bear paradise, prepare winter food with cute little bears, pick strawberries and hide them in a house made of chocolate, and share labor with friends Fruit. \r\nMain taste: strawberry cream flavor Main ingredients: cream butter, pure chocolate, rum, caster sugar, fresh strawberry Sweetness: two stars (full five stars) The best eating temperature: 5-7 degrees Celsius', 10,3), 
(30, 'Strawberry ice cream', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', 299, 'sweet With the smooth taste of ice cream, the refreshing strawberry meets the passion in the orchard of love and romance. The feeling of falling in love with strawberries is wonderful. \r\nMain taste: strawberry flavorMain ingredients: strawberry fruit melt Strawberry sweetness: Samsung (Five stars) The best eating temperature: -12 to -15 degrees Celsius ', 10, 1), 
(31,' Rose Souffle ',' /picture/10-1.jpg','/picture/10-2.jpg ',' /picture/10-3.jpg ', 28,' Preferably French cheese, rich in milk, smooth texture, delicate taste. French cheese helps to improve the overall taste of the pastry, perfectly balance the acidity and sweetness, and make The pastries are more white and pure. ', 10,2), 
(32,' Semi-cooked cheese ',' /picture/11-1.jpg ','/picture/11-1.jpg ',' /picture/11-1.jpg ', 38,' In order to ensure the mellowness of cheese, semi-cooked cheese draws on the practice of boiled eggs in Japanese hot springs, combining cheese, milk, eggs, natural cream, granulated sugar , Wheat flour is mixed into a batter and steamed in a water bath to ensure that the cheesecake is tender, soft, and retains the mellow and smooth cheese. ', 10,2),
(33,' Aomori Cheese Bar ',' /picture/12-1. jpg ',' /picture/1-2. jpg ',' /picture/12-1.jpg ', 36,' Aomori cheese breeze blowing, rich in milk, smooth texture, delicate taste. ', 10,2), 
(34,' Honey cake ',' /picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'Elegant journey with egg yolk, honey, and whipped cream. Taste Q Waxy and rich, the aftertaste is soft and long. The crumpled shape, sweet feeling. ', 10, 2), 
(35,' Italian cheese cookies ',' /picture/14-1.jpg','/picture/14-1.jpg ',' /picture/14-1.jpg ', 39,' Italian cheesecake made with Parmesan cheese as the main raw material, rich in milk, delicious and delicious. ', 10,2), 
( 36, 'Little Bear Paradise', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', 299, 'Entering Little Bear Paradise, with cuteness Let\'s prepare winter food together. Pick a strawberry and hide it in a house made of chocolate. Good friends share the fruits of labor. \r\nMain taste: strawberry cream flavorThe main ingredients: cream cream, pure chocolate, rum Liquor, caster sugar, fresh strawberry sweetness: two stars (full five stars) The best eating temperature: 5-7 degrees Celsius', 10, 3), 
(37, 'Strawberry ice cream', '/ picture / 9-1.jpg', '/picture/9-2.jpg','/picture/9-3.jpg',299,'sweet Strawberry ice cream with silky taste, let cool and romance collide in love orchard passion, Fall in love with strawberries, the mood, wonderful extraordinary \r\n main flavors: strawberry flavor main raw materials: strawberry fruit strawberry sweetness solution: Samsung (full five-star) The best eating temperature: -12 to -15 degrees Celsius ', 10, 1), 
(38,' Rose Souffle ',' /picture/10-1.jpg','/picture/10-2. jpg ',' /picture/10-3.jpg ', 28,' French cheese is preferred, with rich milky flavor, smooth texture and delicate taste. French cheese helps to improve the overall taste of the pastry, perfectly balance the acidity and sweetness, and make The pastries are more white and pure. ', 10,2), 
(39,' Semi-cooked cheese ',' /picture/11-1.jpg ',' /picture/11-1.jpg ',' /picture/11- 1.jpg ', 38,' In order to ensure the mellowness of cheese, semi-cooked cheese draws on the practice of boiling eggs in Japanese hot springs, mixing cheese, milk, eggs, natural cream, granulated sugar, wheat flour into a batter, steaming through a water bath to ensure that the cheese cake is delicate , Soft, keep the aroma of cheese smooth and smooth. ', 10,5), 
(40,' Aomori Cheese Bar ',' /picture/12-1.jpg ',' /picture/1-2.jpg ',' /picture/12-1.jpg ', 36,' Aomori cheese breeze, breeze, rich milk, smooth texture, delicate taste. ', 10, 5), 
(41,' honey cake ',' /picture/13 -1.jpg ',' /picture/13-1.jpg ',' /picture/13-1.jpg ', 36,' young journey with the yolk, honey and whipped cream. The taste is Q glutinous and rich, aftertaste Soft and long. Crumpled shape, sweet Feelings of honey. ', 10,2);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (75,28,1,4,2,'administrator','1333333333','Sunnyvale','2019-10-07 12:31:07',1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_orderitem_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (78,28,1,10,75);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (9,2,9),(10,3,10),(11,3,12),(12,3,13),(13,3,14),(14,3,15),(15,3,16),(17,3,18),(18,3,19),(29,1,42),(33,2,10),(34,2,11),(35,2,12),(36,2,13),(37,2,14),(38,2,15),(39,2,16),(40,2,18),(41,2,26);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Ice cream series'),(2,'Snack series'),(3,'Kids Special'),(4,'French Series'),(5,'Classic series'),(8,'Festival Series'),(11,'Premium Series');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@gmail.com','admin','honeybobba','1333333333','Sunnyvale','','\0'),(2,'vili','vili@vilicode.com','vili','vili','1344444444','San Francisco','\0','\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-07 15:46:38
