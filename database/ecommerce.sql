-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 08:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(16, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Arts', ''),
(2, 'Gifts', ''),
(3, 'Ocassion', ''),
(4, 'Watch', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 4, 1),
(4, 4, 2, 1),
(5, 5, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'SHAKYAMUNI MANDALA', '<p>The Buddha Shakyamuni is the historical Buddha, founder of the Buddhist philosophy and often referred to as &ldquo;the Buddha&rdquo;. He is believed to have lived in around 420 BC and to have spent most of his life spreading the teachings of Dharma.</p>\r\n', 'shakyamuni-mandala', 54000, 'shakyamuni-mandala.jpg', '2022-03-14', 4),
(2, 1, 'RAJWADI MEETING', '<p>A gracious meet of two Rajwadi queens under a tree next to the lotus pond</p>\r\n', 'rajwadi-meeting', 55625, 'rajwadi-meeting.jpg', '2022-03-21', 3),
(3, 1, 'CELEBRATIONS IN THE VILLAGE', '<p>The humans figures here are seen engaged in celebration. Whether social or religious, celebrations such as these form the fabric of life for the Santhals.</p>\r\n', 'celebrations-village', 12500, 'celebrations-village.jpg', '2022-03-07', 5),
(4, 1, 'KINGLY PERSONAGE', '<p>Chitrakathi depiction of a noble man. The attire, crown and heavy ornaments speak on the kingly personage in bold, powerful colors and thick black outlines.</p>\r\n', 'kingly-personage', 1550, 'kingly-personage.jpg', '2022-03-21', 1),
(5, 1, 'PURE DEVOTION', '<p>A Chitrakathi impression in traditional art narrates the story of a couple singing their praises to Lord Shiva, riding the horse. He is the lord of tantra and embodiment of universal consciousness. Bold strokes and handmade colors make it distinctly beautiful.</p>\r\n', 'pure-devotion', 3250, 'pure-devotion.jpg', '2022-03-10', 1),
(6, 2, 'BRASS ORISSA PINE TREE', '<p>This brass t-light holder is in the shape of a pine tree, thereby drawing freely from Tree of Life imagery and fulfilling an illuminating role in the home.</p>\r\n', 'brass-orissa-pine-tree', 17825, 'brass-orissa-pine-tree.jpg', '0000-00-00', 0),
(7, 2, 'FAIRY', '<p>A fairy-themed brass centrepeice to shower some pixie dust into your living space.</p>\r\n', 'fairy', 155, 'fairy.jpg', '0000-00-00', 0),
(8, 2, 'NOAH’S ARK', '<p>The artist imagines the Noah&rsquo;s Ark in a tribal depiction.</p>\r\n', 'noah-s-ark', 25000, 'noah-s-ark.jpg', '0000-00-00', 0),
(9, 2, 'GANESH YANTRA GLASS TEALIGHT HOLDER', '<p>Light meets tranquility in these glass tealight holders inspired by sacred geometry. The Ganesha Yantra is a spiritual energy device used by meditators to harness the gift of focus and peace of mind. While it can be used as a meditation device, the transparent glass panel also fills the room with a warm glow.</p>\r\n', 'ganesh-yantra-glass-tealight-holder', 184, 'ganesh-yantra-glass-tealight-holder.jpg', '2022-03-10', 1),
(10, 3, 'abc', '<p>audgkaksvpfb</p>\r\n', 'abc', 120, 'abc.jpg', '2022-03-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(1, 2, 'PAYID-MIXZDQY29W25155GX966451W', '2022-03-14'),
(2, 2, 'PAYID-MIXZHVA7JX50572UX568262P', '2022-03-14'),
(3, 2, 'PAYID-MI4GP3A2LC54718J2487902H', '2022-03-21'),
(4, 5, 'PAYID-MI4GZXY357170001N615693V', '2022-03-21'),
(5, 5, 'PAYID-MI4HJUA5K389707HE751330L', '2022-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@app.com', '$2y$10$GdZskPQE9ASQx2e8KAEuDu.v07SE2QbxJt8m7fFXgRkLphQXBC6.a', 1, 'ADMIN', 'APP', '', '', 'admin.png', 1, 'y7dW5gjbtaHJ', '', '2022-03-07'),
(2, 'customer@app.com', '$2y$10$jEv0W1ABxCImP16qdaDlqekFu0pVXdmqQMv0HHtEzs.daGINNPjN.', 0, 'RANJITH', 'ACHARYA', 'THE MILKY WAY', '9876543210', 'image-111.png', 1, 'DPqhRknb1Zcd', '', '2022-03-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
