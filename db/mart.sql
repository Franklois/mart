-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2018 at 02:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresses`
--

CREATE TABLE `adresses` (
  `address_id` int(10) UNSIGNED NOT NULL,
  `address_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_street_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_floor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_building_name_or_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_part` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adresses`
--

INSERT INTO `adresses` (`address_id`, `address_name`, `address_description`, `address_city`, `address_street_name`, `address_floor`, `address_building_name_or_number`, `address_part`, `created_at`, `updated_at`) VALUES
(151, 'المنزل ', 'الجزيرة ١٢ بناء ١٧ جانب سوبر ماركت اليسر مقابل جامع انلعمان بن بشير ', 'مشروع دمر ', 'شارع عبد الله بن منصور ', 'ثاني فني', '5', '12', '2018-10-12 13:33:09', '2018-10-12 13:33:09'),
(152, 'المنزل ', 'الجزيرة ١٢ بناء ١٧ جانب سوبر ماركت اليسر مقابل جامع انلعمان بن بشير ', 'مشروع دمر ', 'شارع عبد الله بن منصور ', 'ثاني فني', '5', '12', '2018-10-12 13:33:19', '2018-10-12 13:33:19'),
(153, 'المنزل ', 'الجزيرة ١٢ بناء ١٧ جانب سوبر ماركت اليسر مقابل جامع انلعمان بن بشير ', 'مشروع دمر ', 'شارع عبد الله بن منصور ', 'ثاني فني', '5', '12', '2018-10-12 13:33:19', '2018-10-12 13:33:19'),
(154, 'المنزل ', 'الجبة مقابل جامعة الجزيرة البناء الأول على اليمين طابق خامس المدخل الأول', 'الجبه', 'شارع مستوصف زهير حبي  ', '5', '1', 'لايوجد', '2018-10-12 13:35:58', '2018-10-12 13:35:58'),
(155, 'المنزل ', 'الجبة مقابل جامعة الجزيرة البناء الأول على اليمين طابق خامس المدخل الأول', 'الجبه', 'شارع مستوصف زهير حبي  ', '5', '1', 'لايوجد', '2018-10-12 13:36:08', '2018-10-12 13:36:08'),
(156, 'المنزل ', 'الجبة مقابل جامعة الجزيرة البناء الأول على اليمين طابق خامس المدخل الأول', 'الجبه', 'شارع مستوصف زهير حبي  ', '5', '1', 'لايوجد', '2018-10-12 13:36:08', '2018-10-12 13:36:08'),
(157, 'العمل', 'اول بناية بآخر الخط بعد مبنى الخارجية القديم ', 'خورشيد', 'شارع الشهيد احمد بن محمد عبد الغفار', '1', '1', 'خورشيد أول', '2018-10-12 13:38:52', '2018-10-12 13:38:52'),
(158, 'العمل', 'اول بناية بآخر الخط بعد مبنى الخارجية القديم ', 'خورشيد', 'شارع الشهيد احمد بن محمد عبد الغفار', '1', '1', 'خورشيد أول', '2018-10-12 13:39:02', '2018-10-12 13:39:02'),
(159, 'العمل', 'اول بناية بآخر الخط بعد مبنى الخارجية القديم ', 'خورشيد', 'شارع الشهيد احمد بن محمد عبد الغفار', '1', '1', 'خورشيد أول', '2018-10-12 13:39:02', '2018-10-12 13:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_item_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `product_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashiers`
--

CREATE TABLE `cashiers` (
  `cashier_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `cashier_value` double NOT NULL,
  `cashier_order_count` int(11) NOT NULL,
  `cashier_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `subcategory_name`, `category_image`, `subcategory_image`, `created_at`, `updated_at`) VALUES
(1, 'الألبان و الأجبان', 'المأكولات', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 13:58:40', '2018-10-12 13:58:40'),
(2, ' الزيت و السمنة', 'المأكولات', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:00:34', '2018-10-12 14:00:34'),
(3, ' الحبوب و المعكرونة', 'المأكولات', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:01:39', '2018-10-12 14:01:39'),
(4, ' المشروبات', 'المأكولات', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:02:35', '2018-10-12 14:02:35'),
(5, ' جبنة دهن', 'الألبان و الأجبان', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:04:42', '2018-10-12 14:04:42'),
(6, ' جبنة دهن', 'الألبان و الأجبان', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:04:56', '2018-10-12 14:04:56'),
(7, ' زيت قلي', ' الزيت و السمنة', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:12:21', '2018-10-12 14:12:21'),
(8, ' زيت قلي', ' الزيت و السمنة', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:12:31', '2018-10-12 14:12:31'),
(9, ' زيت قلي', ' الزيت و السمنة', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:12:31', '2018-10-12 14:12:31'),
(10, 'رز', ' الحبوب و المعكرونة', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:13:09', '2018-10-12 14:13:09'),
(11, 'رز', ' الحبوب و المعكرونة', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:13:19', '2018-10-12 14:13:19'),
(12, 'رز', ' الحبوب و المعكرونة', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:13:19', '2018-10-12 14:13:19'),
(13, 'المشروبات الغازية', 'المشروبات', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:13:53', '2018-10-12 14:13:53'),
(14, 'المشروبات الغازية', 'المشروبات', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:14:03', '2018-10-12 14:14:03'),
(15, 'المشروبات الغازية', 'المشروبات', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg', '2018-10-12 14:14:03', '2018-10-12 14:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `contact_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_home_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_web_site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_mobile_number`, `contact_email`, `contact_home_number`, `contact_web_site`, `created_at`, `updated_at`) VALUES
(1, '0957570213', 'zaloum.akram@yahoo.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:46', '2018-10-12 13:51:46'),
(2, '0957570213', 'qawasmee.bilal@hotmail.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56'),
(3, '0957570213', 'tzaloum@hotmail.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56'),
(4, '0957570213', 'abbad.mutaz@gmail.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56'),
(5, '0957570213', 'layth.melhem@gmail.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56'),
(6, '0957570213', 'ahmad.karam@yahoo.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56'),
(7, '0957570213', 'rami45@gmail.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56'),
(8, '0957570213', 'rqasem@gmail.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56'),
(9, '0957570213', 'ibrahim.flefel@hotmail.com', '0113116734', 'Facebook.com', '2018-10-12 13:51:56', '2018-10-12 13:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_address_id`, `contact_id`, `token`, `verification_code`, `created_at`, `updated_at`) VALUES
(1, 'عبدالمطلب عبدالرحمن السماعيل', 154, 4, 'AMINALJEBBEH96', '2898', '2018-11-02 14:46:44', '2018-11-02 14:46:44'),
(2, 'آثار الفيفي', 157, 8, 'AMINALJEBBEH96', '9697', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(3, 'السيدة إسراء المشيقح', 156, 2, 'AMINALJEBBEH96', '2143', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(4, 'حصة المطرفي', 155, 3, 'AMINALJEBBEH96', '3550', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(5, 'نادر السيف', 153, 5, 'AMINALJEBBEH96', '5571', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(6, 'غنى جواهرجي', 156, 6, 'AMINALJEBBEH96', '1121', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(7, 'الياس العقل', 151, 7, 'AMINALJEBBEH96', '1349', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(8, 'وليد اديب عبد المجيد الشهيل', 154, 2, 'AMINALJEBBEH96', '7961', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(9, 'وسيم بليغ هادي السماعيل', 159, 2, 'AMINALJEBBEH96', '8528', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(10, 'رشيد الصامل', 154, 1, 'AMINALJEBBEH96', '6275', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(11, 'اسراء العرفج', 151, 1, 'AMINALJEBBEH96', '4471', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(12, 'فاتن سليم الأسمري', 151, 8, 'AMINALJEBBEH96', '4496', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(13, 'هيفاء سنان عوض الجهني', 158, 1, 'AMINALJEBBEH96', '3676', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(14, 'الدكتورة ميرا الصقيه', 158, 1, 'AMINALJEBBEH96', '5567', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(15, 'الآنسة لميس الراجحي', 156, 9, 'AMINALJEBBEH96', '4582', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(16, 'مظفر العتيبي', 151, 7, 'AMINALJEBBEH96', '7779', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(17, 'الآنسة عهد الصقير', 156, 8, 'AMINALJEBBEH96', '1872', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(18, 'شهد عامر برماوي', 157, 7, 'AMINALJEBBEH96', '1942', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(19, 'عز الدين الحميد', 157, 1, 'AMINALJEBBEH96', '4822', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(20, 'المهندسة العنود جواهرجي', 159, 1, 'AMINALJEBBEH96', '6428', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(21, 'ميرال الفرحان', 151, 7, 'AMINALJEBBEH96', '4963', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(22, 'المهندسة أروى المشيقح', 158, 5, 'AMINALJEBBEH96', '5680', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(23, 'سلوى نادر مكي', 151, 6, 'AMINALJEBBEH96', '2459', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(24, 'عباس السماري', 153, 4, 'AMINALJEBBEH96', '9868', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(25, 'السيدة لورا الخالدي', 158, 9, 'AMINALJEBBEH96', '3220', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(26, 'عبلة الفدا', 158, 7, 'AMINALJEBBEH96', '4304', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(27, 'نجوى السويلم', 158, 9, 'AMINALJEBBEH96', '5060', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(28, 'ندين الصامل', 159, 2, 'AMINALJEBBEH96', '7093', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(29, 'المهندسة وداد باشا', 151, 3, 'AMINALJEBBEH96', '5912', '2018-11-02 14:46:54', '2018-11-02 14:46:54'),
(30, 'الآنسة أفنان الخالدي', 156, 1, 'AMINALJEBBEH96', '6503', '2018-11-02 14:46:54', '2018-11-02 14:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(10) UNSIGNED NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `ssn` int(11) NOT NULL,
  `employee_front_id_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_back_id_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_presonal_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `employee_job_title`, `contact_id`, `ssn`, `employee_front_id_image`, `employee_back_id_image`, `employee_presonal_image`, `shift_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'شرين الراجحي', 'perferendis', 1, 1020305544, 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/200x200', 3, 5, '2018-11-02 13:12:58', '2018-11-02 13:12:58'),
(2, 'مطيع المنيف', 'distinctio', 5, 1020305544, 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/200x200', 3, 3, '2018-11-02 13:15:49', '2018-11-02 13:15:49'),
(3, 'السيدة آية الجريد', 'ut', 2, 1020305544, 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/200x200', 1, 2, '2018-11-02 13:15:49', '2018-11-02 13:15:49'),
(4, 'المهندسة غيد الحميد', 'ea', 6, 1020305544, 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/200x200', 3, 2, '2018-11-02 13:15:49', '2018-11-02 13:15:49'),
(5, 'فريال رافي وهيب الداوود', 'et', 8, 1020305544, 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/500x300', 'http://via.placeholder.com/200x200', 3, 5, '2018-11-02 13:15:49', '2018-11-02 13:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_items`
--

CREATE TABLE `favorite_items` (
  `favorite_tiems_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `share_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_09_10_081436_create_categories_table', 1),
(2, '2018_09_10_081437_create_contacts_table', 1),
(3, '2018_09_10_091216_create_adresses_table', 1),
(4, '2018_10_06_134311_create_stores_table', 1),
(5, '2018_10_06_134312_create_products_table', 1),
(6, '2018_10_06_135259_create_product_images_table', 1),
(7, '2018_10_06_135334_create_product_quantities_table', 1),
(8, '2018_10_06_135421_create_employees_table', 1),
(9, '2018_10_06_135422_create_offers_table', 1),
(10, '2018_10_06_135432_create_offer_images_table', 1),
(11, '2018_10_06_135909_create_customers_table', 1),
(12, '2018_10_06_135910_create_reviews_table', 1),
(13, '2018_10_10_095820_create_carts_table', 1),
(14, '2018_10_10_095825_create_cart_items_table', 1),
(15, '2018_10_10_100406_create_favorites_table', 1),
(16, '2018_10_10_100411_create_favorite_items_table', 1),
(17, '2018_10_10_100809_create_orders_table', 1),
(18, '2018_10_10_100816_create_order_items_table', 1),
(19, '2018_10_10_101514_create_cashiers_table', 1),
(20, '2018_10_10_102123_create_search_histories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `offer_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_price` double(8,2) NOT NULL,
  `offer_discount` double(8,2) NOT NULL,
  `offer_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_ends_date` date NOT NULL,
  `employee_created_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `product_id`, `offer_title`, `offer_price`, `offer_discount`, `offer_description`, `offer_status`, `offer_type`, `offer_ends_date`, `employee_created_id`, `created_at`, `updated_at`) VALUES
(101, 29, ' رز صنوايت عالي الجودة', 3809.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '1974-06-25', 3, '2018-11-02 13:45:46', '2018-11-02 13:45:46'),
(102, 20, ' رز صنوايت عالي الجودة', 1287.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '1991-04-04', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(103, 6, ' رز صنوايت عالي الجودة', 3250.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '2000-11-07', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(104, 17, ' رز صنوايت عالي الجودة', 2877.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '2016-04-24', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(105, 29, ' رز صنوايت عالي الجودة', 4655.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '2016-10-14', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(106, 28, ' رز صنوايت عالي الجودة', 1442.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '1994-06-03', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(107, 19, ' رز صنوايت عالي الجودة', 2719.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '1991-07-31', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(108, 4, ' رز صنوايت عالي الجودة', 4677.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '2017-03-30', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(109, 22, ' رز صنوايت عالي الجودة', 1510.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1995-10-26', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(110, 19, ' رز صنوايت عالي الجودة', 4307.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1976-03-06', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(111, 9, ' رز صنوايت عالي الجودة', 3131.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '1976-07-24', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(112, 24, ' رز صنوايت عالي الجودة', 3345.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '2013-12-23', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(113, 21, ' رز صنوايت عالي الجودة', 1694.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '2015-10-17', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(114, 24, ' رز صنوايت عالي الجودة', 2711.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1992-03-09', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(115, 24, ' رز صنوايت عالي الجودة', 4946.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1975-05-14', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(116, 30, ' رز صنوايت عالي الجودة', 4983.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '2017-04-19', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(117, 14, ' رز صنوايت عالي الجودة', 1628.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '2013-07-11', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(118, 13, ' رز صنوايت عالي الجودة', 1196.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '2013-12-28', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(119, 19, ' رز صنوايت عالي الجودة', 4197.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1993-02-17', 3, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(120, 14, ' رز صنوايت عالي الجودة', 1024.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1975-10-16', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(121, 6, ' رز صنوايت عالي الجودة', 4787.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '1991-06-20', 3, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(122, 27, ' رز صنوايت عالي الجودة', 3554.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1992-07-10', 3, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(123, 1, ' رز صنوايت عالي الجودة', 2630.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '1982-05-16', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(124, 16, ' رز صنوايت عالي الجودة', 2691.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '2010-04-18', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(125, 5, ' رز صنوايت عالي الجودة', 3496.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '1978-10-20', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(126, 30, ' رز صنوايت عالي الجودة', 3392.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '2016-05-18', 3, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(127, 1, ' رز صنوايت عالي الجودة', 1977.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '2009-11-19', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(128, 19, ' رز صنوايت عالي الجودة', 4165.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1979-03-26', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(129, 19, ' رز صنوايت عالي الجودة', 4451.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '2005-02-26', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(130, 16, ' رز صنوايت عالي الجودة', 3616.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1990-08-26', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(131, 27, ' رز صنوايت عالي الجودة', 3139.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1984-05-17', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(132, 4, ' رز صنوايت عالي الجودة', 1456.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '1979-02-01', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(133, 15, ' رز صنوايت عالي الجودة', 2606.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1977-06-04', 3, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(134, 18, ' رز صنوايت عالي الجودة', 3122.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1971-03-09', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(135, 27, ' رز صنوايت عالي الجودة', 4630.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '1992-05-14', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(136, 3, ' رز صنوايت عالي الجودة', 2209.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1991-09-17', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(137, 11, ' رز صنوايت عالي الجودة', 2231.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1975-06-04', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(138, 20, ' رز صنوايت عالي الجودة', 4728.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1981-08-20', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(139, 4, ' رز صنوايت عالي الجودة', 1057.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1976-03-17', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(140, 8, ' رز صنوايت عالي الجودة', 1527.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1982-12-14', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(141, 6, ' رز صنوايت عالي الجودة', 4025.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1995-06-21', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(142, 12, ' رز صنوايت عالي الجودة', 4750.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '2017-03-23', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(143, 10, ' رز صنوايت عالي الجودة', 4680.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '1979-02-16', 2, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(144, 5, ' رز صنوايت عالي الجودة', 4581.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '2001-08-10', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(145, 20, ' رز صنوايت عالي الجودة', 3205.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '1978-10-20', 5, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(146, 14, ' رز صنوايت عالي الجودة', 3655.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Special offer', '1975-04-08', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(147, 24, ' رز صنوايت عالي الجودة', 1695.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '2000-11-09', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(148, 1, ' رز صنوايت عالي الجودة', 1959.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Normal Offer', '1976-06-10', 3, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(149, 22, ' رز صنوايت عالي الجودة', 1131.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '1', 'Special offer', '1988-05-03', 1, '2018-11-02 13:45:56', '2018-11-02 13:45:56'),
(150, 25, ' رز صنوايت عالي الجودة', 1250.00, 0.00, ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق', '0', 'Normal Offer', '1980-11-25', 4, '2018-11-02 13:45:56', '2018-11-02 13:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `offer_images`
--

CREATE TABLE `offer_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_images`
--

INSERT INTO `offer_images` (`id`, `offer_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 101, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:25', '2018-11-02 14:29:25'),
(2, 102, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:39', '2018-11-02 14:29:39'),
(3, 103, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:55', '2018-11-02 14:29:55'),
(4, 104, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:55', NULL),
(5, 105, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:55', NULL),
(6, 106, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:55', NULL),
(7, 107, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:55', NULL),
(8, 108, 'http://via.placeholder.com/150x200', '2018-11-02 14:29:55', NULL),
(9, 109, 'http://via.placeholder.com/150x200', NULL, NULL),
(10, 110, 'http://via.placeholder.com/150x200', NULL, NULL),
(11, 111, 'http://via.placeholder.com/150x200', NULL, NULL),
(12, 112, 'http://via.placeholder.com/150x200', NULL, NULL),
(13, 113, 'http://via.placeholder.com/150x200', NULL, NULL),
(14, 114, 'http://via.placeholder.com/150x200', NULL, NULL),
(15, 115, 'http://via.placeholder.com/150x200', NULL, NULL),
(16, 116, 'http://via.placeholder.com/150x200', NULL, NULL),
(17, 117, 'http://via.placeholder.com/150x200', NULL, NULL),
(18, 118, 'http://via.placeholder.com/150x200', NULL, NULL),
(19, 119, 'http://via.placeholder.com/150x200', NULL, NULL),
(20, 120, 'http://via.placeholder.com/150x200', NULL, NULL),
(21, 121, 'http://via.placeholder.com/150x200', NULL, NULL),
(22, 123, 'http://via.placeholder.com/150x200', NULL, NULL),
(23, 124, 'http://via.placeholder.com/150x200', NULL, NULL),
(24, 125, 'http://via.placeholder.com/150x200', NULL, NULL),
(25, 126, 'http://via.placeholder.com/150x200', NULL, NULL),
(26, 127, 'http://via.placeholder.com/150x200', NULL, NULL),
(27, 128, 'http://via.placeholder.com/150x200', NULL, NULL),
(28, 129, 'http://via.placeholder.com/150x200', NULL, NULL),
(29, 130, 'http://via.placeholder.com/150x200', NULL, NULL),
(30, 131, 'http://via.placeholder.com/150x200', NULL, NULL),
(31, 132, 'http://via.placeholder.com/150x200', NULL, NULL),
(32, 133, 'http://via.placeholder.com/150x200', NULL, NULL),
(33, 134, 'http://via.placeholder.com/150x200', NULL, NULL),
(34, 135, 'http://via.placeholder.com/150x200', NULL, NULL),
(35, 136, 'http://via.placeholder.com/150x200', NULL, NULL),
(36, 137, 'http://via.placeholder.com/150x200', NULL, NULL),
(37, 138, 'http://via.placeholder.com/150x200', NULL, NULL),
(38, 139, 'http://via.placeholder.com/150x200', NULL, NULL),
(39, 140, 'http://via.placeholder.com/150x200', NULL, NULL),
(40, 141, 'http://via.placeholder.com/150x200', NULL, NULL),
(41, 142, 'http://via.placeholder.com/150x200', NULL, NULL),
(42, 143, 'http://via.placeholder.com/150x200', NULL, NULL),
(43, 143, 'http://via.placeholder.com/150x200', NULL, NULL),
(44, 144, 'http://via.placeholder.com/150x200', NULL, NULL),
(45, 145, 'http://via.placeholder.com/150x200', NULL, NULL),
(46, 146, 'http://via.placeholder.com/150x200', NULL, NULL),
(47, 147, 'http://via.placeholder.com/150x200', NULL, NULL),
(48, 148, 'http://via.placeholder.com/150x200', NULL, NULL),
(49, 149, 'http://via.placeholder.com/150x200', NULL, NULL),
(50, 150, 'http://via.placeholder.com/150x200', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_total` double(8,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivary_address_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_items_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_waight` double(8,2) NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `product_barcode`, `product_price`, `product_waight`, `product_description`, `product_unit`, `created_at`, `updated_at`) VALUES
(1, 7, 'رز صنوايت كيلو', '4835579353648', 554.00, 1.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:02', '2018-10-12 15:10:02'),
(2, 14, 'رز صنوايت كيلو', '3595459041959', 1318.00, 5.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(3, 12, 'رز صنوايت كيلو', '8155144237125', 2174.00, 7.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(4, 12, 'رز صنوايت كيلو', '1721424503081', 1951.00, 6.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(5, 14, 'رز صنوايت كيلو', '2284957987333', 2157.00, 4.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(6, 9, 'رز صنوايت كيلو', '5816576122948', 437.00, 4.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(7, 11, 'رز صنوايت كيلو', '7986244927804', 1417.00, 5.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(8, 11, 'رز صنوايت كيلو', '2751096010531', 1990.00, 10.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(9, 7, 'رز صنوايت كيلو', '9890600810236', 1739.00, 4.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(10, 4, 'رز صنوايت كيلو', '2476377058230', 2265.00, 4.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(11, 9, 'رز صنوايت كيلو', '4221707616578', 598.00, 3.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(12, 8, 'رز صنوايت كيلو', '8559989521294', 1691.00, 9.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(13, 2, 'رز صنوايت كيلو', '3539276214967', 607.00, 6.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(14, 6, 'رز صنوايت كيلو', '3514854444721', 164.00, 10.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(15, 7, 'رز صنوايت كيلو', '6962620895388', 1225.00, 10.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(16, 3, 'رز صنوايت كيلو', '6046650184046', 2975.00, 3.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(17, 4, 'رز صنوايت كيلو', '3679386099730', 1052.00, 8.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(18, 2, 'رز صنوايت كيلو', '1331934370495', 1346.00, 3.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(19, 4, 'رز صنوايت كيلو', '3662903939640', 2613.00, 2.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(20, 12, 'رز صنوايت كيلو', '3547093166307', 1189.00, 4.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(21, 7, 'رز صنوايت كيلو', '3517253455961', 102.00, 6.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(22, 6, 'رز صنوايت كيلو', '8392905092252', 787.00, 7.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(23, 7, 'رز صنوايت كيلو', '5347220339363', 673.00, 10.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(24, 7, 'رز صنوايت كيلو', '3125914942158', 1031.00, 1.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(25, 11, 'رز صنوايت كيلو', '4698004712737', 2228.00, 6.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(26, 7, 'رز صنوايت كيلو', '5013776580985', 684.00, 1.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(27, 7, 'رز صنوايت كيلو', '1216570319582', 1225.00, 10.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(28, 13, 'رز صنوايت كيلو', '6539554763696', 1969.00, 1.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(29, 11, 'رز صنوايت كيلو', '3373706625646', 2365.00, 6.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12'),
(30, 10, 'رز صنوايت كيلو', '8827644999727', 1449.00, 2.00, 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة', 'كيلو غرام', '2018-10-12 15:10:12', '2018-10-12 15:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `product_image_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_image_front` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image_back` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`product_image_id`, `product_id`, `product_image_front`, `product_image_back`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:10', '2018-10-12 15:15:10'),
(2, 2, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(3, 3, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(4, 4, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(5, 5, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(6, 6, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(7, 7, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(8, 8, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(9, 9, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(10, 10, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(11, 11, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(12, 12, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(13, 13, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(14, 14, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(15, 15, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(16, 16, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(17, 17, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(18, 18, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(19, 19, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(20, 20, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(21, 21, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(22, 22, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(23, 23, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(24, 24, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(25, 25, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(26, 26, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(27, 27, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(28, 28, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(29, 29, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20'),
(30, 30, 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg', '2018-10-12 15:15:20', '2018-10-12 15:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_quantities`
--

CREATE TABLE `product_quantities` (
  `product_quantity_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quantities`
--

INSERT INTO `product_quantities` (`product_quantity_id`, `product_id`, `store_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, '2018-10-12 15:58:00', '2018-10-12 15:58:00'),
(3, 2, 1, 13, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(4, 3, 1, 26, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(5, 4, 1, 10, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(6, 5, 1, 6, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(7, 6, 1, 19, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(8, 7, 1, 6, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(9, 8, 1, 18, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(10, 9, 1, 19, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(11, 10, 1, 18, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(12, 11, 1, 28, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(13, 12, 1, 15, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(14, 13, 1, 28, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(15, 14, 1, 14, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(16, 15, 1, 9, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(17, 16, 1, 18, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(18, 17, 1, 23, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(19, 18, 1, 17, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(20, 19, 1, 3, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(21, 20, 1, 25, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(22, 21, 1, 4, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(23, 22, 1, 12, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(24, 23, 1, 6, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(25, 24, 1, 14, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(26, 25, 1, 26, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(27, 26, 1, 29, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(28, 27, 1, 26, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(29, 28, 1, 22, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(30, 29, 1, 23, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(31, 30, 1, 23, '2018-10-12 15:58:10', '2018-10-12 15:58:10'),
(32, 1, 2, 14, '2018-10-12 15:58:45', '2018-10-12 15:58:45'),
(33, 2, 2, 7, '2018-10-12 15:58:55', '2018-10-12 15:58:55'),
(34, 3, 2, 1, '2018-10-12 15:58:55', '2018-10-12 15:58:55'),
(35, 4, 2, 15, '2018-10-12 15:58:55', '2018-10-12 15:58:55'),
(36, 5, 2, 3, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(37, 6, 2, 4, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(38, 7, 2, 19, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(39, 8, 2, 28, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(40, 9, 2, 2, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(41, 10, 2, 1, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(42, 11, 2, 12, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(43, 12, 2, 21, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(44, 13, 2, 6, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(45, 14, 2, 4, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(46, 15, 2, 13, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(47, 16, 2, 28, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(48, 17, 2, 14, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(49, 18, 2, 27, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(50, 19, 2, 2, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(51, 20, 2, 25, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(52, 21, 2, 14, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(53, 22, 2, 5, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(54, 23, 2, 10, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(55, 24, 2, 8, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(56, 25, 2, 22, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(57, 26, 2, 23, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(58, 27, 2, 8, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(59, 28, 2, 13, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(60, 29, 2, 12, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(61, 30, 2, 3, '2018-10-12 15:58:56', '2018-10-12 15:58:56'),
(62, 1, 3, 28, '2018-10-12 15:59:02', '2018-10-12 15:59:02'),
(63, 2, 3, 1, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(64, 3, 3, 14, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(65, 4, 3, 25, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(66, 5, 3, 10, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(67, 6, 3, 1, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(68, 7, 3, 5, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(69, 8, 3, 7, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(70, 9, 3, 18, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(71, 10, 3, 30, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(72, 11, 3, 9, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(73, 12, 3, 23, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(74, 13, 3, 27, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(75, 14, 3, 10, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(76, 15, 3, 2, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(77, 16, 3, 29, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(78, 17, 3, 27, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(79, 18, 3, 4, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(80, 19, 3, 19, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(81, 20, 3, 21, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(82, 21, 3, 30, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(83, 22, 3, 28, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(84, 23, 3, 1, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(85, 24, 3, 17, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(86, 25, 3, 1, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(87, 26, 3, 20, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(88, 27, 3, 22, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(89, 28, 3, 14, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(90, 29, 3, 6, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(91, 30, 3, 11, '2018-10-12 15:59:12', '2018-10-12 15:59:12'),
(92, 1, 4, 17, '2018-10-12 15:59:16', '2018-10-12 15:59:16'),
(93, 2, 4, 16, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(94, 3, 4, 10, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(95, 4, 4, 6, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(96, 5, 4, 7, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(97, 6, 4, 12, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(98, 7, 4, 24, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(99, 8, 4, 28, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(100, 9, 4, 25, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(101, 10, 4, 16, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(102, 11, 4, 5, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(103, 12, 4, 15, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(104, 13, 4, 3, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(105, 14, 4, 27, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(106, 15, 4, 10, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(107, 16, 4, 22, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(108, 17, 4, 12, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(109, 18, 4, 5, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(110, 19, 4, 11, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(111, 20, 4, 5, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(112, 21, 4, 7, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(113, 22, 4, 27, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(114, 23, 4, 25, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(115, 24, 4, 15, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(116, 25, 4, 25, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(117, 26, 4, 6, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(118, 27, 4, 11, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(119, 28, 4, 26, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(120, 29, 4, 11, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(121, 30, 4, 13, '2018-10-12 15:59:26', '2018-10-12 15:59:26'),
(122, 1, 5, 10, '2018-10-12 15:59:31', '2018-10-12 15:59:31'),
(123, 2, 5, 6, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(124, 3, 5, 10, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(125, 4, 5, 29, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(126, 5, 5, 5, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(127, 6, 5, 23, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(128, 7, 5, 23, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(129, 8, 5, 17, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(130, 9, 5, 19, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(131, 10, 5, 30, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(132, 11, 5, 30, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(133, 12, 5, 25, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(134, 13, 5, 25, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(135, 14, 5, 25, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(136, 15, 5, 5, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(137, 16, 5, 11, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(138, 17, 5, 28, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(139, 18, 5, 30, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(140, 19, 5, 9, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(141, 20, 5, 3, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(142, 21, 5, 6, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(143, 22, 5, 12, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(144, 23, 5, 12, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(145, 24, 5, 17, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(146, 25, 5, 22, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(147, 26, 5, 18, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(148, 27, 5, 24, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(149, 28, 5, 4, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(150, 29, 5, 15, '2018-10-12 15:59:41', '2018-10-12 15:59:41'),
(151, 30, 5, 2, '2018-10-12 15:59:41', '2018-10-12 15:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `review_star` int(11) NOT NULL,
  `review_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `customer_id`, `product_id`, `review_star`, `review_title`, `review_comment`, `created_at`, `updated_at`) VALUES
(1, 24, 23, 3, 'Molestias vitae cumque ullam recusandae ad.', 'Dolorem ut illum error et minus expedita beatae. Consectetur aliquid minus laudantium odit. Odio et aut earum omnis aut commodi itaque quibusdam.', '2018-11-02 14:55:15', '2018-11-02 14:55:15'),
(2, 21, 7, 1, 'Optio iure repudiandae suscipit sed.', 'Autem ipsam consequatur fugiat facilis corrupti facilis. Rerum culpa ex in magni. Omnis aut asperiores distinctio commodi iusto dolor sint laborum.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(3, 17, 19, 5, 'Quisquam eum eveniet veniam et.', 'Natus nam vel optio quae sed harum. Natus dolor ut beatae quia. Non veritatis vitae accusantium architecto deserunt iste est itaque. Mollitia ullam mollitia commodi amet architecto. Et non ut quisquam facilis impedit.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(4, 24, 25, 1, 'Et nihil pariatur molestias laborum ut.', 'Hic ullam tenetur amet aperiam. Voluptatum dignissimos possimus recusandae ducimus.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(5, 29, 7, 1, 'Laboriosam labore et quia quam laudantium est distinctio.', 'Veniam quam reiciendis rerum dolor quisquam accusamus nam et. Libero sunt placeat nesciunt quo velit quia. Corrupti incidunt aut doloremque nemo quasi qui dolorem enim.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(6, 23, 17, 5, 'Ea fuga vel ratione iste praesentium non.', 'Delectus et esse ullam esse esse commodi quasi. Ipsa dolorem dolores aspernatur sint. Officiis sint est ratione nihil. Tempora tenetur est commodi ullam officiis ex adipisci praesentium.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(7, 16, 12, 3, 'Et corporis eum quia adipisci nemo.', 'Qui repellat sunt vel voluptas voluptatem reiciendis. Et nihil voluptas rem consequatur sed. Voluptatem iure non dicta perferendis omnis eos. Placeat quod sunt nostrum minus qui saepe.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(8, 2, 20, 5, 'Sit libero sequi sed quod fugit rerum.', 'Cumque voluptatibus pariatur atque ipsam. Rerum ipsam sapiente sequi nulla. Enim sint omnis autem magni ea qui. Non vero dolorem ut eum est reiciendis itaque sit.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(9, 12, 8, 5, 'Facere dolores magni harum quaerat exercitationem neque quia quae.', 'Debitis dolores nisi nostrum quibusdam nihil ut. Eveniet enim omnis facere accusantium. Sed nobis est voluptas quia perspiciatis. Aperiam enim rerum id vel.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(10, 20, 12, 1, 'Repellat ad voluptatibus modi et sint.', 'Dolorem aut doloremque doloremque eligendi molestias illo. Odio amet ad voluptatem. Amet et minima est similique.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(11, 21, 23, 5, 'Dolor aut libero sint quis.', 'Dolorem molestias voluptas placeat. Itaque sit sit et numquam expedita magni. Sit quam quo fugit vel alias. Tenetur occaecati corrupti sit commodi qui.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(12, 26, 21, 4, 'Beatae rerum distinctio praesentium enim inventore eaque voluptas hic.', 'Aut veniam est repudiandae ut cupiditate omnis at. Eaque occaecati maiores velit explicabo quis voluptas. Deserunt nulla non sit sed in placeat suscipit. Dignissimos quaerat sed sunt tempore quam quos eum accusamus.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(13, 1, 25, 1, 'Laborum minus aut id eveniet voluptatibus rem.', 'Sed aut culpa amet id in iste at quia. Repellendus et beatae fugiat doloribus omnis. Vel nihil repellendus quibusdam molestias nihil. Et enim et qui quia voluptatum in incidunt nihil.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(14, 16, 3, 1, 'Nostrum quia saepe unde autem.', 'Repellat non cupiditate illo est. Assumenda velit veniam porro veritatis eos minus. Reiciendis qui modi earum. Sequi alias perspiciatis nihil et.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(15, 10, 11, 5, 'Maxime maxime et eaque.', 'Harum aut nihil omnis eligendi sed quis. Rem dolores molestiae deleniti totam. Quisquam consectetur aut neque ipsa voluptatibus optio. Ipsam enim quasi consequuntur ut ipsam perferendis.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(16, 13, 17, 2, 'Sint adipisci et ipsa et rerum cupiditate expedita.', 'Nihil eligendi necessitatibus eligendi nam veniam. Voluptas sequi impedit magnam architecto et vel et odio. A vel qui nulla.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(17, 24, 12, 1, 'Distinctio nostrum sed assumenda odio sit.', 'Similique nesciunt expedita aut nemo quia quia accusamus voluptate. Commodi aut veniam ut rerum. Veritatis aspernatur saepe molestias aut sequi facere voluptate.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(18, 2, 14, 1, 'Dolor sed omnis ea exercitationem qui ab non.', 'Et eveniet distinctio natus ea minus. Consequuntur minima qui fuga harum atque. Est fuga voluptatem sed earum.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(19, 22, 8, 1, 'Aperiam nihil pariatur sit deserunt qui facilis eum.', 'Esse provident laborum fuga aut dolorum ad. Et incidunt facilis harum eum adipisci nihil. Et velit quaerat odio aut voluptate.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(20, 12, 22, 4, 'Illum asperiores non ullam repellat nam quia sit aut.', 'Vero excepturi consequuntur incidunt ratione fugiat veniam. Quidem molestias et in sed temporibus. Aut aperiam suscipit qui.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(21, 15, 7, 3, 'Suscipit excepturi doloribus accusantium et dolores deleniti.', 'Expedita ratione ab dolores. Ut voluptatum ut at qui non molestias. Nihil est eum aspernatur facere nesciunt. Perspiciatis ut nihil soluta dolores unde assumenda saepe aut.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(22, 4, 29, 4, 'Illum quis iste error.', 'Magni voluptatem cumque id molestias quas aliquam maxime blanditiis. Fugiat quasi inventore ut non atque molestiae ab. Quidem at nihil ex unde.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(23, 8, 25, 1, 'Aut ut non corporis aut ad sit quo.', 'Consequatur iusto reprehenderit ut est cupiditate eos. Id nesciunt aspernatur maxime asperiores enim. Ipsam veritatis ullam animi quia non aut corrupti. Aliquid nihil dolore quasi maiores non sint.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(24, 15, 24, 2, 'Est unde ipsum ut minima ut eum.', 'Ipsam odit laboriosam consequatur illum animi fugit sed officiis. Quae et dolores exercitationem voluptatem consequuntur odio repellendus. Magni beatae harum praesentium ipsam omnis voluptatem. Laboriosam quod architecto corporis cupiditate facilis.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(25, 9, 1, 2, 'Soluta perferendis quia quibusdam fuga et quam quo sunt.', 'Enim autem possimus dignissimos voluptatum voluptatum dolorem. Quae qui commodi omnis et animi aperiam. Sint voluptas quibusdam quia est doloribus similique iure eum.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(26, 22, 30, 4, 'Fuga ducimus sed sunt ea exercitationem est voluptatibus.', 'Et vitae quis quae blanditiis id. Aliquid nam nihil ab nostrum hic illo. Ut eos non aliquid incidunt nihil. Qui ullam ea molestiae.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(27, 3, 4, 2, 'Similique autem quos officiis excepturi cupiditate.', 'Maiores maiores doloribus ratione velit aliquam sit. Quaerat animi non beatae rerum et in nobis. Eos quidem repellendus ut nostrum illo.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(28, 30, 12, 2, 'Accusamus perferendis deleniti qui consequuntur.', 'Hic ea alias et minima. Ipsa minima facere et occaecati pariatur. Quaerat accusamus laudantium maxime nulla voluptatibus. Dolorum pariatur modi quas enim animi.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(29, 13, 27, 3, 'Fugit itaque beatae rerum vel laboriosam aliquam impedit.', 'Voluptatibus id molestias cum eum. Error mollitia voluptas quisquam omnis omnis. Ea est et pariatur sequi et assumenda facilis. Vitae odio rerum saepe inventore labore.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(30, 1, 4, 1, 'Cum cupiditate hic consequuntur accusamus necessitatibus rerum.', 'Ut aut fugit esse. Aut doloremque sit sit aut. Voluptas consectetur ab hic enim officiis perspiciatis quod. Et modi facilis mollitia nemo temporibus.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(31, 24, 27, 4, 'Quis ea odit fugit amet.', 'Sit laboriosam est voluptatibus harum qui eos necessitatibus. Labore autem facere architecto nostrum voluptas et iste. Est blanditiis consequuntur itaque. Et voluptates aut possimus et quod ad ipsam.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(32, 9, 4, 4, 'Iusto odio at assumenda ea explicabo sunt eum.', 'Eaque adipisci itaque magnam qui. Officiis tempora laboriosam odit aut. Quos ratione totam possimus. Adipisci voluptatibus corporis et quaerat. Aliquam pariatur et inventore nisi labore laudantium repudiandae.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(33, 20, 20, 5, 'Non deserunt facilis exercitationem pariatur minus optio.', 'Ut maxime corporis esse quaerat. Sunt eligendi dolorem nisi blanditiis repellendus voluptatem. Deleniti ad optio aut qui iusto. Quidem totam facere ut.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(34, 29, 14, 2, 'Natus perferendis deserunt consequatur illum.', 'Soluta possimus harum odio consectetur minima molestiae. Aut reiciendis eveniet nihil voluptates corrupti voluptate eos. Consequuntur quasi doloremque vitae id facere esse. Ut aut quo delectus qui aut qui et. Voluptatum sunt quo quo qui eos porro.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(35, 4, 6, 1, 'Sed quo quaerat soluta ea hic ratione.', 'Sunt nesciunt nobis sed inventore ut. Nesciunt aut nostrum sint sed dolor autem. Animi quia porro sed est.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(36, 19, 20, 2, 'Vel deleniti voluptates et ut.', 'Cupiditate ducimus inventore explicabo corrupti aut repellat. Voluptatem qui aliquid placeat quam quibusdam eum. Quaerat quo doloremque magnam dicta aut. Minus harum quis labore quas aut.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(37, 30, 7, 4, 'Et sapiente aut eius non.', 'Nostrum aperiam provident quo ad. Ut voluptas voluptatem neque aut. Provident repellat quibusdam ea. Nihil harum ducimus consectetur non non.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(38, 30, 17, 2, 'Odio repellendus est odio sapiente maxime illo quos repudiandae.', 'Tempore delectus et velit qui rerum. Consequatur vel nostrum dicta. Velit soluta veritatis recusandae eos rerum soluta. Aut unde beatae reiciendis non.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(39, 1, 20, 1, 'Ut aliquam distinctio eum dolor explicabo veniam veritatis.', 'Rerum et laudantium et ut et consequatur. Minima enim fugiat in totam dolorum earum. Cupiditate dolor sint magni saepe consequuntur voluptate. Reiciendis repellat omnis inventore dolor et.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(40, 19, 8, 1, 'Quae velit hic minus tempore nihil.', 'Nostrum omnis quam adipisci amet voluptas ducimus accusamus placeat. Dolorem ut accusantium animi ea necessitatibus esse totam. Voluptas ab consequatur est qui deleniti.', '2018-11-02 14:55:25', '2018-11-02 14:55:25'),
(41, 21, 15, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:08', '2018-11-02 14:57:08'),
(42, 16, 14, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(43, 19, 22, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(44, 19, 7, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(45, 5, 1, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(46, 1, 28, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(47, 8, 7, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(48, 30, 30, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(49, 8, 24, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(50, 14, 10, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(51, 9, 12, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(52, 22, 19, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(53, 23, 7, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(54, 8, 23, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(55, 24, 26, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(56, 24, 21, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(57, 20, 15, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(58, 5, 16, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(59, 20, 22, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(60, 10, 5, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(61, 27, 20, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(62, 16, 12, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(63, 26, 8, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(64, 17, 5, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(65, 5, 16, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(66, 3, 22, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(67, 23, 5, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(68, 5, 4, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(69, 14, 30, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(70, 3, 19, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(71, 15, 17, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(72, 7, 15, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(73, 17, 9, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(74, 11, 28, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(75, 26, 30, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(76, 17, 1, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(77, 19, 11, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(78, 23, 24, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(79, 28, 28, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(80, 14, 25, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(81, 16, 2, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(82, 8, 24, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(83, 18, 29, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(84, 16, 16, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(85, 6, 5, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(86, 10, 20, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(87, 19, 9, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(88, 27, 15, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(89, 30, 15, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(90, 27, 6, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(91, 20, 8, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(92, 24, 16, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(93, 15, 4, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(94, 25, 6, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(95, 21, 28, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(96, 22, 5, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(97, 26, 11, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(98, 13, 5, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(99, 8, 30, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(100, 1, 18, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(101, 15, 14, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(102, 26, 12, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(103, 15, 18, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(104, 20, 22, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(105, 14, 11, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(106, 3, 11, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(107, 4, 21, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(108, 17, 19, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(109, 15, 29, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(110, 11, 16, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(111, 10, 10, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(112, 29, 5, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(113, 11, 17, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(114, 13, 21, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(115, 10, 17, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(116, 26, 8, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(117, 12, 15, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(118, 29, 29, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(119, 21, 13, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:18', '2018-11-02 14:57:18'),
(120, 19, 15, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(121, 21, 25, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(122, 21, 23, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(123, 24, 5, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(124, 26, 28, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(125, 25, 12, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(126, 10, 29, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(127, 22, 9, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(128, 14, 15, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(129, 19, 1, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(130, 28, 19, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(131, 2, 24, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(132, 12, 11, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(133, 25, 11, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(134, 19, 29, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(135, 6, 4, 4, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(136, 30, 28, 5, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(137, 8, 28, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(138, 9, 12, 1, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(139, 23, 23, 2, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19'),
(140, 21, 5, 3, 'عنوان وهمي للتقييم', 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى ', '2018-11-02 14:57:19', '2018-11-02 14:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `search_histories`
--

CREATE TABLE `search_histories` (
  `search_history_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `contact_id`, `store_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'مشروع دمر', '2018-10-12 15:55:04', '2018-10-12 15:55:04'),
(2, 2, 'المزرعة', '2018-10-12 15:55:37', '2018-10-12 15:55:37'),
(3, 3, 'كفرسوسة', '2018-10-12 15:55:58', '2018-10-12 15:55:58'),
(4, 4, 'المزة', '2018-10-12 15:56:29', '2018-10-12 15:56:29'),
(5, 5, 'ضاحية قدسيا', '2018-10-12 15:56:53', '2018-10-12 15:56:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adresses`
--
ALTER TABLE `adresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `carts_customer_id_index` (`customer_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_item_id`),
  ADD KEY `cart_items_cart_id_index` (`cart_id`),
  ADD KEY `cart_items_offer_id_index` (`offer_id`);

--
-- Indexes for table `cashiers`
--
ALTER TABLE `cashiers`
  ADD PRIMARY KEY (`cashier_id`),
  ADD KEY `cashiers_store_id_index` (`store_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customers_customer_address_id_index` (`customer_address_id`),
  ADD KEY `customers_contact_id_index` (`contact_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `employees_contact_id_index` (`contact_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `favorites_customer_id_index` (`customer_id`);

--
-- Indexes for table `favorite_items`
--
ALTER TABLE `favorite_items`
  ADD PRIMARY KEY (`favorite_tiems_id`),
  ADD KEY `favorite_items_favorite_id_index` (`favorite_id`),
  ADD KEY `favorite_items_offer_id_index` (`offer_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `offers_product_id_index` (`product_id`),
  ADD KEY `offers_employee_created_id_index` (`employee_created_id`);

--
-- Indexes for table `offer_images`
--
ALTER TABLE `offer_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_images_offer_id_index` (`offer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_delivary_address_id_index` (`delivary_address_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_items_id`),
  ADD KEY `order_items_order_id_index` (`order_id`),
  ADD KEY `order_items_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_category_id_index` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_images_product_id_index` (`product_id`);

--
-- Indexes for table `product_quantities`
--
ALTER TABLE `product_quantities`
  ADD PRIMARY KEY (`product_quantity_id`),
  ADD KEY `product_quantities_product_id_index` (`product_id`),
  ADD KEY `product_quantities_store_id_index` (`store_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `reviews_customer_id_index` (`customer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `search_histories`
--
ALTER TABLE `search_histories`
  ADD PRIMARY KEY (`search_history_id`),
  ADD KEY `search_histories_customer_id_index` (`customer_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`),
  ADD KEY `stores_contact_id_index` (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adresses`
--
ALTER TABLE `adresses`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cart_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashiers`
--
ALTER TABLE `cashiers`
  MODIFY `cashier_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_items`
--
ALTER TABLE `favorite_items`
  MODIFY `favorite_tiems_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `offer_images`
--
ALTER TABLE `offer_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_items_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `product_image_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_quantities`
--
ALTER TABLE `product_quantities`
  MODIFY `product_quantity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `search_histories`
--
ALTER TABLE `search_histories`
  MODIFY `search_history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`) ON DELETE CASCADE;

--
-- Constraints for table `cashiers`
--
ALTER TABLE `cashiers`
  ADD CONSTRAINT `cashiers_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customers_customer_address_id_foreign` FOREIGN KEY (`customer_address_id`) REFERENCES `adresses` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_items`
--
ALTER TABLE `favorite_items`
  ADD CONSTRAINT `favorite_items_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`favorite_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_items_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`) ON DELETE CASCADE;

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_employee_created_id_foreign` FOREIGN KEY (`employee_created_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `offer_images`
--
ALTER TABLE `offer_images`
  ADD CONSTRAINT `offer_images_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`offer_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_delivary_address_id_foreign` FOREIGN KEY (`delivary_address_id`) REFERENCES `adresses` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_quantities`
--
ALTER TABLE `product_quantities`
  ADD CONSTRAINT `product_quantities_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_quantities_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `search_histories`
--
ALTER TABLE `search_histories`
  ADD CONSTRAINT `search_histories_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
