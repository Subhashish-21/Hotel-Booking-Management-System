-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 06:45 PM
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
-- Database: `hbwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'Subhashish', 'Subhashish1234');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 1, 'Simple Room', 300, 300, NULL, 'Ram', '123', 'ad'),
(2, 2, 'Simple Room', 300, 600, 'a2', 'Ram', '123', 'ad'),
(3, 3, 'Simple Room', 300, 1800, NULL, 'Ram', '123', 'ad'),
(4, 4, 'Supreme deluxe room', 900, 4500, NULL, 'Ram', '123', 'ad'),
(5, 5, 'Supreme deluxe room', 900, 900, NULL, 'Ram', '123', 'ad'),
(6, 6, 'Supreme deluxe room', 900, 7200, '52', 'Ram', '12323432', 'ad2342343'),
(7, 7, 'Supreme deluxe room', 900, 900, NULL, 'Ram', '123', 'ad'),
(8, 8, 'Simple Room', 300, 600, NULL, 'Ram', '123', 'ad'),
(9, 9, 'Luxury Room', 600, 3000, '159A', 'Ram', '123', 'ad'),
(10, 10, 'Luxury Room', 600, 1800, '15S', 'Ram', '123', 'ad'),
(11, 11, 'Supreme deluxe room', 900, 2700, '1', 'Ram', '123', 'ad'),
(12, 12, 'Simple Room', 300, 1200, '2', 'Ram', '123', 'ad'),
(13, 13, 'Deluxe Room', 500, 3000, '23', 'Ram', '123', 'ad'),
(14, 14, 'Luxury Room', 600, 2400, '44', 'Ram', '123', 'ad'),
(15, 15, 'Luxury Room', 600, 1200, NULL, 'Ram', '123', 'ad'),
(16, 16, 'Luxury Room', 600, 1200, '1', 'Ram', '123', 'ad'),
(17, 17, 'Simple Room', 300, 900, '20A', 'Ram', '123', 'ad'),
(18, 18, 'Supreme deluxe room', 900, 2700, NULL, 'Akash', '1234567890', 'Nayapali, Bhubaneswar, Odisha'),
(19, 19, 'Deluxe Room', 500, 1500, '123', 'Akash', '1234567890', 'Nayapali, Bhubaneswar, Odisha'),
(20, 20, 'Luxury Room', 600, 2400, NULL, 'Ankit Kumar Sethi', '9876543210', 'Cuttack, Odisha'),
(21, 21, 'Luxury Room', 600, 2400, '111', 'Ankit Kumar Sethi', '9876543210', 'Cuttack, Odisha'),
(22, 22, 'Supreme deluxe room', 900, 2700, '112', 'Akash', '1234567890', 'Nayapali, Bhubaneswar, Odisha');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(1, 2, 3, '2025-04-20', '2025-04-21', 0, NULL, 'pending', 'ORD_21055700', NULL, 0, 'pending', NULL, NULL, '2025-04-20 01:50:12'),
(2, 2, 3, '2025-04-20', '2025-04-22', 1, NULL, 'booked', 'ORD_24215693', '20220720111212800110168128204225279', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2025-04-20 02:14:44'),
(3, 2, 3, '2025-04-20', '2025-04-24', 0, 1, 'cancelled', 'ORD_26312547', '20220720111212800110168165603901976', 1800, 'TXN_SUCCESS', 'Txn Success', NULL, '2025-04-20 02:19:00'),
(4, 2, 6, '2025-04-21', '2025-04-25', 0, NULL, 'payment failed', 'ORD_28394638', '20220720111212800110168372503893816', 4500, 'TXN_FAILURE', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', NULL, '2025-04-21 02:30:52'),
(5, 2, 6, '2025-04-21', '2025-04-26', 0, 1, 'cancelled', 'ORD_22877860', '20220720111212800110168627705312020', 900, 'TXN_SUCCESS', 'Txn Success', NULL, '2025-04-21 02:32:09'),
(6, 2, 6, '2025-04-21', '2025-04-27', 1, NULL, 'booked', 'ORD_28689687', '20220720111212800110168303704048087', 7200, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-21 02:34:46'),
(7, 2, 6, '2025-04-23', '2025-04-27', 0, NULL, 'pending', 'ORD_24272313', NULL, 0, 'pending', NULL, NULL, '2025-04-22 01:13:42'),
(8, 2, 3, '2025-04-23', '2025-04-28', 0, 1, 'cancelled', 'ORD_22541670', '20220814111212800110168092803967754', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '0205-04-22 01:16:05'),
(9, 2, 5, '2025-04-23', '2022-08-28', 1, NULL, 'booked', 'ORD_25267746', '20220815111212800110168656003990120', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-25 19:32:05'),
(10, 2, 5, '2025-04-26', '2025-04-29', 1, NULL, 'booked', 'ORD_27668816', '20220815111212800110168905703947446', 1800, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-26 19:32:58'),
(11, 2, 6, '2025-04-26', '2025-04-30', 1, NULL, 'booked', 'ORD_25750549', '20220820111212800110168431303975409', 2700, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-26 00:19:57'),
(12, 2, 3, '2025-04-26', '2025-04-30', 1, NULL, 'booked', 'ORD_2445093', '20220820111212800110168173403969278', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-27 00:20:23'),
(13, 2, 4, '2025-04-29', '2025-04-30', 1, NULL, 'booked', 'ORD_29233995', '20220820111212800110168584503978338', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-27 00:20:45'),
(14, 2, 5, '2025-04-29', '2025-05-06', 1, NULL, 'booked', 'ORD_28902800', '20220820111212800110168816503988359', 2400, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-29 00:21:06'),
(15, 2, 5, '2025-04-30', '2025-04-30', 0, 1, 'cancelled', 'ORD_2240367', '20220825111212800110168807304010818', 1200, 'TXN_SUCCESS', 'Txn Success', NULL, '2025-04-29 01:51:28'),
(16, 2, 5, '2025-05-02', '2025-05-05', 1, NULL, 'booked', 'ORD_28784829', '20220825111212800110168627505415606', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2025-04-30 01:52:04'),
(17, 2, 3, '2025-05-03', '2025-05-07', 1, NULL, 'booked', 'ORD_21289330', '20220908111212800110168809204050263', 900, 'TXN_SUCCESS', 'Txn Success', 0, '2025-05-02 01:15:30'),
(18, 7, 6, '2025-05-15', '2025-05-18', 0, 1, 'cancelled', 'ORD_71421932', '1', 2700, 'TXN_SUCCESS', 'Success', NULL, '2025-05-15 13:37:59'),
(19, 7, 4, '2025-05-15', '2025-05-18', 1, NULL, 'booked', 'ORD_75616916', '1', 1500, 'TXN_SUCCESS', 'Success', 1, '2025-05-15 13:38:46'),
(20, 8, 5, '2025-05-17', '2025-05-21', 0, 0, 'cancelled', 'ORD_88104574', '1', 2400, 'TXN_SUCCESS', 'Success', NULL, '2025-05-15 13:46:30'),
(21, 8, 5, '2025-05-18', '2025-05-22', 1, NULL, 'booked', 'ORD_85480254', '1', 2400, 'TXN_SUCCESS', 'Success', 1, '2025-05-15 13:47:22'),
(22, 7, 6, '2025-05-21', '2025-05-24', 1, NULL, 'booked', 'ORD_76263769', '1', 2700, 'TXN_SUCCESS', 'Success', 1, '2025-05-15 13:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(4, 'IMG_62045.png'),
(5, 'IMG_93127.png'),
(6, 'IMG_99736.png'),
(8, 'IMG_40905.png'),
(9, 'IMG_55677.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'XYZ, Puri, Odisha', 'https://maps.app.goo.gl/tjTvTuCreEAQRJVw6', 918260610432, 911234567890, 'subhasishswain955@gmail.com', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d1053.4859648824583!2d85.80586490974754!3d19.7892901163119!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1spuri sea beach!5e0!3m2!1sen!2sin!4v1747207814164!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', '24/7 Seamless internet Facilities'),
(14, 'IMG_49949.svg', 'Air conditioner', 'Personalized temperature settings for your perfect stay'),
(15, 'IMG_41622.svg', 'Television', 'Stay entertained with a wide range of TV channels'),
(17, 'IMG_47816.svg', 'Spa', 'Rejuvenate with massages and wellness treatments'),
(18, 'IMG_96423.svg', 'Room Heater', 'Stay warm and cozy during cold weather with efficient room heating'),
(19, 'IMG_27079.svg', 'Geyser', 'Enjoy instant hot water anytime with an in-room geyser for bathing and cleaning'),
(20, 'IMG_62171.svg', 'Swimming Pool', 'Refresh and unwind with a dip overlooking the skyline'),
(22, 'IMG_50949.svg', 'Laundry Services', 'Quick and efficient laundry services for guests'),
(23, 'IMG_22278.svg', 'Parking', 'We have dedicated Parking Space'),
(24, 'IMG_56166.svg', 'First aid Service', 'Medical support available if needed'),
(25, 'IMG_56617.svg', 'CCTV', '24/7 camera monitoring for guest safety'),
(26, 'IMG_33226.svg', 'Outdoor Restaurant', 'Our hotel provides a fine dine experience in outdoor restaurant'),
(27, 'IMG_15285.svg', 'Rooftop Cafe', 'Our hotel provides a beautiful sunset view rooftop cafe'),
(28, 'IMG_84009.svg', 'Breakfast', 'Our hotel provides a complementary breakfast'),
(29, 'IMG_55610.svg', 'Room Services', 'Delicious food and drinks delivered anytime to your room'),
(30, 'IMG_32418.svg', 'Wheelchair accessible', 'Convenient facilities for guests with mobility needs'),
(31, 'IMG_81233.svg', 'Elevators', 'Easy access to every part of the hotel'),
(32, 'IMG_81372.svg', 'Gym', 'Stay fit with modern workout equipment'),
(34, 'IMG_39104.svg', 'Casino', 'Enjoy premium gaming thrills at our elegant Casino Lounge, featuring classic tables, slot machines, and a vibrant atmosphere for unforgettable entertainment'),
(35, 'IMG_58850.svg', 'Game Room', 'Unwind in our Game Room with a variety of board games, arcade machines, and consoles — perfect for fun-filled moments with friends and family');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(13, 'Bedroom'),
(14, 'Balcony'),
(15, 'Kitchen'),
(17, 'Sofa'),
(18, 'Mini Refrigerator'),
(19, 'Disable Rooms'),
(20, 'Electronic Safe'),
(21, 'Room Purifiers'),
(22, 'Jacuzzi'),
(23, 'Mini Bar'),
(24, 'Coffee Machines'),
(25, 'Electric Kettles'),
(26, 'Streaming Services'),
(28, 'Home Theater');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(4, 14, 5, 2, 4, 'It’s spacious, beautifully designed, and feels truly upscale — perfect if you want a touch of elegance and relaxation during your stay.', 1, '2022-08-20 00:22:25'),
(5, 13, 4, 2, 3, 'The Deluxe Room offers a great balance of comfort and value. With its cozy ambiance, upgraded amenities, and tasteful decor, it’s perfect for travelers seeking a pleasant stay without breaking the ban', 1, '2022-08-20 00:22:30'),
(6, 12, 3, 2, 2, 'A clean and comfortable option for solo travelers or short stays. Includes basic essentials like a bed, fan, and attached bathroom — ideal for budget-conscious guests looking for a peaceful rest.', 1, '2022-08-20 00:22:34'),
(9, 12, 3, 2, 1, 'The room was not as expected — the bed was uncomfortable, the fan was noisy, and the cleanliness could be improved. Not ideal for a relaxing stay. Suitable only if you\'re in urgent need of a place to ', 1, '2022-08-20 00:22:34'),
(10, 12, 3, 2, 2, 'Basic accommodation, suitable for budget travelers. Good for a night\'s stay, but may lack premium features like AC, TV, or room service.', 1, '2022-08-20 00:22:34'),
(11, 16, 5, 2, 3, 'Noice', 1, '2022-09-08 01:14:18'),
(12, 19, 4, 7, 5, 'Top-tier luxury with all elite services: personalized guest service, scenic views, premium toiletries, spa access, or Jacuzzi. Perfect for VIP guests and premium experiences.', 1, '2025-05-15 13:39:32'),
(13, 21, 5, 8, 4, 'High-end furniture, premium bedding, larger space, and added services (minibar, balcony, smart TV, bath tub). Excellent for long stays or romantic getaways.', 1, '2025-05-15 13:47:57'),
(14, 22, 6, 7, 5, 'Absolutely outstanding! The room was spacious, elegantly designed, and offered a stunning view. The Jacuzzi, premium linens, and personalized service made the stay feel truly luxurious. It’s worth eve', 1, '2025-05-15 13:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'simple room', 159, 58, 56, 12, 2, 'asdf asd', 1, 1),
(2, 'simple room 2', 785, 159, 85, 452, 10, 'adfasdfa sd', 1, 1),
(3, 'Simple Room', 250, 500, 10, 3, 3, 'A clean, comfortable, and affordable room perfect for solo travelers or couples seeking a quiet stay. The Simple Room offers essential amenities with a cozy ambiance to ensure a restful experience at an unbeatable price.', 1, 0),
(4, 'Deluxe Room', 350, 700, 10, 3, 2, 'Designed for comfort and convenience, our Deluxe Room offers a step up in space and amenities at a great value. Perfect for couples, small families, or business travelers, this room combines functionality with a touch of style to enhance your stay.', 1, 0),
(5, 'Luxury Room', 700, 1000, 2, 8, 6, 'Elevate your stay with our Luxury Room — crafted for guests who appreciate elegance, space, and added comfort. Perfect for couples or travelers seeking a high-end experience at a reasonable price, this room combines classy interiors with premium amenities.', 1, 0),
(6, 'Supreme deluxe room', 700, 1500, 12, 8, 10, 'Indulge in luxury and sophistication with our Supreme Deluxe Room — the finest experience our hotel offers. Ideal for guests who demand elegance, comfort, and top-tier amenities, this room is perfect for special occasions, business executives, or a lavish getaway.', 1, 0),
(7, 'Single Room', 150, 300, 5, 1, 1, 'A compact and budget-friendly room designed for solo travelers or short stays. Equipped with a comfortable single bed, fan, clean bedding, and an attached bathroom. Ideal for backpackers, students, or business travelers looking for a no-frills, affordable stay without compromising on cleanliness and privacy.', 1, 0),
(8, 'couple Room', 500, 700, 5, 2, 1, 'Enjoy a cozy and private stay in our Couple Room, thoughtfully designed for comfort and relaxation. Perfect for romantic getaways or peaceful retreats, this room offers a pleasant atmosphere at an affordable price.', 1, 0),
(9, 'Double Room', 500, 750, 15, 5, 8, 'Comfortable and convenient, our Double Room is ideal for two guests looking for a pleasant stay at an affordable price. Whether you’re traveling with a friend, partner, or colleague, this room offers all the essentials for a relaxing and budget-friendly experience.', 1, 0),
(10, 'Supreme Luxury Room', 750, 2000, 15, 8, 8, 'Step into unmatched elegance with our Supreme Luxury Room — the ultimate blend of comfort, class, and extravagance. Designed for guests who desire nothing but the best, this room offers top-of-the-line amenities, exquisite interiors, and personalized comfort for an unforgettable stay.', 1, 0),
(11, 'Disable People Room', 250, 500, 10, 5, 1, 'Our Accessible Room is thoughtfully designed to provide comfort, safety, and convenience for guests with disabilities. Equipped with features that ensure ease of movement and accessibility, this room offers a welcoming and supportive environment for a stress-free stay.', 1, 0),
(12, 'Suite', 900, 3000, 15, 10, 8, 'Experience the pinnacle of luxury and space in our Suite Room, designed to provide an unparalleled stay for discerning guests. Perfect for extended stays, special occasions, or business travelers who desire both comfort and sophistication, this suite offers expansive living areas and premium amenities.', 1, 0),
(13, 'Presidential Suite', 900, 5000, 15, 10, 10, 'Indulge in the epitome of luxury and grandeur with our Presidential Suite — the most exclusive and opulent accommodation we offer. Designed for distinguished guests who demand the finest in comfort, style, and privacy, this suite redefines elegance and sophistication.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(46, 7, 13),
(47, 7, 15),
(48, 7, 19),
(49, 7, 22),
(50, 7, 23),
(51, 7, 24),
(52, 7, 25),
(53, 7, 28),
(104, 8, 13),
(105, 8, 14),
(106, 8, 15),
(107, 8, 19),
(108, 8, 23),
(109, 8, 24),
(110, 8, 25),
(152, 9, 13),
(153, 9, 14),
(154, 9, 15),
(155, 9, 18),
(156, 9, 19),
(157, 9, 20),
(158, 9, 22),
(159, 9, 23),
(160, 9, 24),
(161, 9, 25),
(162, 9, 26),
(163, 9, 28),
(164, 9, 29),
(217, 11, 13),
(218, 11, 14),
(219, 11, 15),
(220, 11, 18),
(221, 11, 19),
(222, 11, 22),
(223, 11, 23),
(224, 11, 24),
(225, 11, 25),
(226, 11, 28),
(227, 11, 29),
(228, 11, 30),
(229, 11, 31),
(356, 6, 13),
(357, 6, 14),
(358, 6, 15),
(359, 6, 17),
(360, 6, 18),
(361, 6, 19),
(362, 6, 20),
(363, 6, 22),
(364, 6, 23),
(365, 6, 24),
(366, 6, 25),
(367, 6, 26),
(368, 6, 27),
(369, 6, 28),
(370, 6, 29),
(371, 6, 31),
(372, 6, 32),
(373, 3, 14),
(374, 3, 15),
(375, 3, 18),
(376, 3, 19),
(377, 3, 23),
(378, 3, 24),
(379, 3, 25),
(380, 4, 13),
(381, 4, 14),
(382, 4, 15),
(383, 4, 18),
(384, 4, 19),
(385, 4, 22),
(386, 4, 23),
(387, 4, 24),
(388, 4, 25),
(389, 4, 28),
(390, 4, 29),
(391, 5, 13),
(392, 5, 14),
(393, 5, 15),
(394, 5, 17),
(395, 5, 18),
(396, 5, 19),
(397, 5, 20),
(398, 5, 22),
(399, 5, 23),
(400, 5, 24),
(401, 5, 25),
(402, 5, 32),
(403, 10, 13),
(404, 10, 14),
(405, 10, 15),
(406, 10, 17),
(407, 10, 18),
(408, 10, 19),
(409, 10, 20),
(410, 10, 22),
(411, 10, 23),
(412, 10, 24),
(413, 10, 25),
(414, 10, 26),
(415, 10, 27),
(416, 10, 28),
(417, 10, 29),
(418, 10, 30),
(419, 10, 31),
(420, 10, 32),
(439, 12, 13),
(440, 12, 14),
(441, 12, 15),
(442, 12, 17),
(443, 12, 18),
(444, 12, 19),
(445, 12, 20),
(446, 12, 22),
(447, 12, 23),
(448, 12, 24),
(449, 12, 25),
(450, 12, 26),
(451, 12, 27),
(452, 12, 28),
(453, 12, 29),
(454, 12, 30),
(455, 12, 31),
(456, 12, 32),
(457, 13, 13),
(458, 13, 14),
(459, 13, 15),
(460, 13, 17),
(461, 13, 18),
(462, 13, 19),
(463, 13, 20),
(464, 13, 22),
(465, 13, 23),
(466, 13, 24),
(467, 13, 25),
(468, 13, 26),
(469, 13, 27),
(470, 13, 28),
(471, 13, 29),
(472, 13, 30),
(473, 13, 31),
(474, 13, 32);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(31, 7, 13),
(32, 7, 14),
(33, 7, 17),
(67, 8, 13),
(68, 8, 14),
(69, 8, 17),
(70, 8, 18),
(101, 9, 13),
(102, 9, 14),
(103, 9, 15),
(104, 9, 17),
(105, 9, 18),
(106, 9, 20),
(107, 9, 21),
(108, 9, 24),
(109, 9, 25),
(149, 11, 13),
(150, 11, 14),
(151, 11, 17),
(152, 11, 19),
(153, 11, 21),
(154, 11, 24),
(155, 11, 25),
(251, 6, 13),
(252, 6, 14),
(253, 6, 15),
(254, 6, 17),
(255, 6, 18),
(256, 6, 20),
(257, 6, 21),
(258, 6, 22),
(259, 6, 23),
(260, 6, 24),
(261, 6, 25),
(262, 6, 26),
(263, 6, 28),
(264, 3, 13),
(265, 3, 15),
(266, 3, 17),
(267, 3, 25),
(268, 4, 13),
(269, 4, 15),
(270, 4, 17),
(271, 4, 18),
(272, 4, 21),
(273, 4, 24),
(274, 4, 25),
(275, 5, 13),
(276, 5, 14),
(277, 5, 15),
(278, 5, 17),
(279, 5, 20),
(280, 5, 21),
(281, 5, 23),
(282, 5, 24),
(283, 5, 25),
(284, 10, 13),
(285, 10, 14),
(286, 10, 15),
(287, 10, 17),
(288, 10, 18),
(289, 10, 20),
(290, 10, 21),
(291, 10, 22),
(292, 10, 23),
(293, 10, 24),
(294, 10, 25),
(295, 10, 26),
(296, 10, 28),
(312, 12, 13),
(313, 12, 14),
(314, 12, 15),
(315, 12, 17),
(316, 12, 18),
(317, 12, 19),
(318, 12, 20),
(319, 12, 21),
(320, 12, 22),
(321, 12, 23),
(322, 12, 24),
(323, 12, 25),
(324, 12, 26),
(325, 12, 28),
(326, 13, 13),
(327, 13, 14),
(328, 13, 15),
(329, 13, 17),
(330, 13, 18),
(331, 13, 19),
(332, 13, 20),
(333, 13, 21),
(334, 13, 22),
(335, 13, 23),
(336, 13, 24),
(337, 13, 25),
(338, 13, 26),
(339, 13, 28);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(15, 3, 'IMG_39782.png', 0),
(16, 3, 'IMG_65019.png', 1),
(17, 4, 'IMG_44867.png', 0),
(18, 4, 'IMG_78809.png', 1),
(19, 4, 'IMG_11892.png', 0),
(21, 5, 'IMG_17474.png', 0),
(22, 5, 'IMG_42663.png', 1),
(23, 5, 'IMG_70583.png', 0),
(24, 6, 'IMG_67761.png', 0),
(25, 6, 'IMG_69824.png', 1),
(26, 7, 'IMG_87108.jpg', 1),
(27, 8, 'IMG_39564.jpg', 1),
(29, 13, 'IMG_46197.jpg', 1),
(30, 12, 'IMG_33855.jpg', 1),
(31, 11, 'IMG_92971.jpg', 1),
(32, 10, 'IMG_62279.jpg', 1),
(33, 9, 'IMG_28297.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'PAARIVAR HOTEL', 'Parivar Hotel – Where Every Stay Feels Like Home\nStep into a world of warmth and elegance, where every detail is crafted with care. Whether you&#039;re here to relax, celebrate, or reconnect, Parivar Hotel welcomes you with heartfelt hospitality and ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(13, 'Ram', 'IMG_77054.jpg'),
(15, 'Shyam', 'IMG_51483.jpg'),
(16, 'Hari', 'IMG_53033.jpg'),
(17, 'Anamika', 'IMG_82429.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(2, 'Ram', 'ram@gmail.com', 'ad', '123', 123324, '2000-01-01', 'person1.png', 'ram123', 1, NULL, NULL, 1, '2025-04-12 16:05:59'),
(6, 'Subhashish Swain', 'subhasishswain955@gmail.com', 'Rasulgarh, Odisha', '8260616432', 751010, '2003-09-04', 'IMG_22716.jpeg', '$2y$10$vkvaSyRiBz.sU4lPujbR8u5Eb2qUqyfbbtv/mPirS.MSFT6JM0BqK', 1, 'bd7a30bb4ec30fb7a9c0847aa4e1f2b7', NULL, 1, '2025-05-15 13:30:25'),
(7, 'Akash', 'soaitercdc@gmail.com', 'Nayapali, Bhubaneswar, Odisha', '1234567890', 751015, '2003-07-23', 'IMG_87520.jpeg', '$2y$10$A98XbJMxswDTjjhW.s9GiuROIFVuLz5dI3icupvZlPKZW3wzvn8hi', 1, '391ef8291c1618b7507869e07970e6fd', NULL, 1, '2025-05-15 13:34:43'),
(8, 'Ankit Kumar Sethi', 'sayedeh151@jazipo.com', 'Cuttack, Odisha', '9876543210', 753001, '2003-01-01', 'IMG_69531.jpeg', '$2y$10$aF0bU6Zp7hqIp3wRkmyP6OH20ghRUxBYO5SHNC0m9jSkyCyVGYWW.', 1, '594dcf50e7f7246b211bbd33af0c9dbc', NULL, 1, '2025-05-15 13:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(11, 'Hari', 'hari@gmail.com', '', 'I have a question regarding room availability for a family of four. Do you have any connecting rooms or family suites available from 20th to 23rd May?', '2025-05-05 00:00:00', 1),
(13, 'Subhashish Swain', 'subhasishswain955@gmail.com', 'Rating', 'I like your room and services', '2025-05-15 02:04:47', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
