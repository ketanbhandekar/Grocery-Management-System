-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2024 at 08:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(60, 33, 29, 'Cabbage', 35, 1, 'cabbage.png'),
(61, 33, 30, 'Capsicum', 240, 1, 'capsicum.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(13, 33, 'Aman Raj', '12345678', 'amanraj.jnv@gmail.com', 'paytm', 'flat no. Vill+PO+PS- Ben WAKAD Ben Bihar India - 803114', ', Banana ( 1 ), Apple ( 1 )', 170, '04-Oct-2024', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(25, 'Apple', 'fruits', 'Crisp, juicy apples with a sweet-tart flavor', 110, 'apple.png'),
(26, 'Banana', 'fruits', 'Fresh, ripe bananas with a creamy texture, perfect for smoothies.', 60, 'banana.png'),
(27, 'Blue Grapes', 'fruits', 'Sweet and juicy blue grapes, rich in antioxidants, perfect for snacking or adding to fruit salads.', 125, 'blue grapes.png'),
(28, 'Broccoli', 'vegitables', 'Fresh, vibrant broccoli, rich in nutrients, perfect for steaming, stir-frying, or adding to soups and salads.', 50, 'broccoli.png'),
(29, 'Cabbage', 'vegitables', 'Fresh, crunchy cabbage, perfect for salads, slaws, or stir-fries, offering a rich source of vitamins and fiber.', 35, 'cabbage.png'),
(30, 'Capsicum', 'vegitables', 'Fresh, vibrant capsicums with a crisp texture, perfect for stir-fries, salads, and adding color to any dish.', 240, 'capsicum.png'),
(31, 'Carrot', 'vegitables', 'Fresh, crunchy carrots rich in vitamins, perfect for snacking, cooking, or juicing for a healthy boost.', 80, 'carrot.png'),
(32, 'Cauliflower', 'vegitables', 'Fresh, firm cauliflower heads, rich in nutrients, perfect for roasting, steaming, or adding to healthy meals.', 45, 'cauliflower.png'),
(33, 'Chicken leg pieces', 'meat', 'Tender chicken leg pieces, rich in flavor, perfect for grilling, roasting, or frying. Ready for versatile cooking.', 290, 'chicken leg pieces.png'),
(34, 'Chicken', 'meat', 'Fresh, tender chicken, available in multiple cuts, perfect for grilling, roasting, or everyday meals', 250, 'chicken.png'),
(35, 'Green Grapes', 'fruits', 'Sweet and refreshing green grapes, perfect for snacking, adding to salads, or making delicious smoothies.', 120, 'green grapes.png'),
(36, 'Litchi', 'fruits', 'Sweet, aromatic litchis with a tender, juicy flesh, perfect for refreshing desserts or enjoying fresh as a snack.', 250, 'lichi.png'),
(37, 'Oily Fish', 'fish', 'Rich in omega-3 fatty acids, our oily fish is perfect for grilling, baking, or adding to healthy meals.', 120, 'oily fishes.png'),
(38, 'Orange', 'fruits', 'Vibrant, juicy oranges bursting with refreshing citrus flavor, perfect for snacking or juicing for a healthy drink.', 90, 'orange.png'),
(39, 'Red Pepper', 'vegitables', 'Vibrant red peppers with a sweet, crunchy texture, perfect for salads, stir-fries, or grilling. Packed with vitamins!', 65, 'red papper.png'),
(40, 'Salmon Fish', 'fish', 'Fresh, succulent salmon fillets, rich in omega-3 fatty acids, perfect for grilling, baking, or adding to salads.', 250, 'salmon fish.png'),
(41, 'Semon Fish', 'fish', 'Fresh, flaky salmon fish, rich in omega-3 fatty acids, perfect for grilling, baking, or adding to salads.', 200, 'semon fish.png'),
(42, 'Strawberry', 'fruits', 'Fresh, plump strawberries bursting with flavor, perfect for desserts, smoothies, or as a healthy snack.', 140, 'strawberry.png'),
(43, 'Tomato', 'vegitables', 'Vibrant, ripe tomatoes bursting with flavor, perfect for salads, sauces, and cooking. Fresh and full of nutrients!', 55, 'tomato.png'),
(44, 'Watermelon', 'fruits', 'Refreshing and hydrating watermelon, perfect for summer picnics, smoothies, or as a healthy snack. Sweet and juicy!', 60, 'watermelon.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'Aman Raj', 'amanraj@gmail.com', 'b3f947379e88aab49c26f395aa0ebaee', 'admin', 'pic-5.png'),
(33, 'Ketan', 'ketan123@gmail.com', '6988f31ac699552703a346c35df8d399', 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(50, 33, 28, 'Broccoli', 50, 'broccoli.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
