CREATE TABLE `customer` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `productID` mediumint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `store` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `PRODUCT` varchar(45) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_product` (`id_product`),
  KEY `PRODUCT` (`PRODUCT`(20)),
  KEY `Price` (`Price`),
  KEY `rating` (`rating`),
  KEY `category` (`category`(10)),
  KEY `brand` (`brand`(20))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- 1
SELECT category, COUNT(PRODUCT) AS NumberOfProducts FROM store GROUP BY category;;

-- 2
SELECT category, COUNT(DISTINCT brand) AS ТNumberOfUniqueBrands FROM store GROUP BY category;

-- 3
SELECT name, COUNT(PRODUCT) AS Quantity FROM customer JOIN store ON customer.productID=id_product GROUP BY name;

-- 4
SELECT name, COUNT(PRODUCT) AS Quantity FROM customer JOIN store ON customer.productID=id_product GROUP BY name ORDER BY Quantity DESC;

-- 5
SELECT s.category, s.PRODUCT, s.Price
FROM store s
JOIN customer c ON s.id_product = c.productID
ORDER BY s.category, s.Price DESC;