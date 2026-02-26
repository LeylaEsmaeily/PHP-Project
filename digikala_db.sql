-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2026 at 09:36 PM
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
-- Database: `digikala_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `alt`) VALUES
(1, '/images/favariteBrands/image-1.png', ''),
(2, '/images/favariteBrands/image-2.png', ''),
(3, '/images/favariteBrands/image-3.jpg', ''),
(4, '/images/favariteBrands/image-4.png', ''),
(5, '/images/favariteBrands/image-5.png', ''),
(6, '/images/favariteBrands/image-6.jpg', ''),
(7, '/images/favariteBrands/image-7.jpg', ''),
(8, '/images/favariteBrands/image-8.jpg', ''),
(9, '/images/favariteBrands/image-9.png', ''),
(10, '/images/favariteBrands/image-10.jpg', ''),
(11, '/images/favariteBrands/image-11.png', ''),
(12, '/images/favariteBrands/image-12.png', ''),
(13, '/images/favariteBrands/image-13.jpg', ''),
(14, '/images/favariteBrands/image-14.png', ''),
(15, '/images/favariteBrands/image-15.png', ''),
(16, '/images/favariteBrands/image-16.jpg', ''),
(17, '/images/favariteBrands/image-17.png', ''),
(18, '/images/favariteBrands/image-18.jpg', ''),
(19, '/images/favariteBrands/image-19.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image`, `alt`) VALUES
(1, 'آیفون 16 ببر!', '/images/category/image-01.png', ''),
(2, ' خرید طلای دیجیتال', '/images/category/image-02.png', ''),
(3, 'تخفیف‌های فروشندگان', '/images/category/image-03.png', ''),
(4, 'تخفیف موبایل‌کارکرده', '/images/category/image-04.png', ''),
(5, 'سبک زندگیمه!', '/images/category/image-05.png', ''),
(6, 'با پلاس راحت‌تره!', '/images/category/image-06.png', ''),
(7, ' ۴ قسطه', '/images/category/image-07.png', ''),
(8, 'پرتخفیف‌های لوازم‌خانه', '/images/category/image-08.jpg', ''),
(9, 'دیجی‌استایل', '/images/category/image-09.jpg', ''),
(10, 'بیشتر', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category2`
--

CREATE TABLE `category2` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category2`
--

INSERT INTO `category2` (`id`, `title`, `image`, `link`, `alt`) VALUES
(1, 'موبایل', '/images/different/image-400.jpg', '#', 'موبایل'),
(2, 'طلا و نقره', '/images/different/image-401.jpg', '#', 'طلا و نقره'),
(3, 'لپ تاپ', '/images/different/image-402.jpg', '#', 'لپ تاپ'),
(4, 'تجهیزات پزشکی و سلامت', '/images/different/image-403.jpg', '#', 'تجهیزات پزشکی و سلامت'),
(5, 'کالای دیجیتال', '/images/different/image-404.jpg', '#', 'کالای دیجیتال'),
(6, 'کتاب، لوازم تحریر و هنر', '/images/different/image-405.jpg', '#', 'کتاب، لوازم تحریر و هنر'),
(7, 'خانه و آشپزخانه', '/images/different/image-406.jpg', '#', 'خانه و آشپزخانه'),
(8, 'ورزش و سفر', '/images/different/image-407.jpg', '#', 'ورزش و سفر'),
(9, 'لوازم خانگی برقی', '/images/different/image-408.jpg', '#', 'لوازم خانگی برقی'),
(10, 'کارت هدیه و گیفت کارت', '/images/different/image-409.jpg', '#', 'کارت هدیه و گیفت کارت'),
(11, 'آرایشی بهداشتی', '/images/different/image-410.jpg', '#', 'آرایشی بهداشتی'),
(12, 'سوپر مارکت آنلاین', '/images/different/image-411.jpg', '#', 'سوپر مارکت آنلاین'),
(13, 'خودرو و موتورسیکلت', '/images/different/image-412.jpg', '#', 'خودرو و موتورسیکلت'),
(14, 'اسباب بازی، کودک و نوزاد', '/images/different/image-413.jpg', '#', 'اسباب بازی، کودک و نوزاد'),
(15, 'ابزار آلات و تجهیزات', '/images/different/image-414.jpg', '#', 'ابزار آلات و تجهیزات'),
(16, 'محصولات بومی و محلی', '/images/different/image-415.jpg', '#', 'محصولات بومی و محلی'),
(17, 'مد و پوشاک', '/images/different/image-416.jpg', '#', 'مد و پوشاک'),
(18, 'کالای کارکرده', '/images/different/image-417.jpg', '#', 'کالای کارکرده');

-- --------------------------------------------------------

--
-- Table structure for table `category4`
--

CREATE TABLE `category4` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `img1_1` varchar(255) NOT NULL,
  `img1_2` varchar(255) NOT NULL,
  `img2_1` varchar(255) NOT NULL,
  `img2_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category4`
--

INSERT INTO `category4` (`id`, `title`, `subtitle`, `img1_1`, `img1_2`, `img2_1`, `img2_2`) VALUES
(1, 'بند ساعت و مچ‌ بند', 'بر اساس سلیقه شما', '/images/different/image-50.jpg', '/images/different/image-12.jpg', '/images/different/image-13.jpg', '/images/different/image-14.jpg'),
(2, 'گوشی موبایل', 'بر اساس سلیقه شما', '/images/different/image-15.jpg', '/images/different/image-16.jpg', '/images/different/image-17.jpg', '/images/different/image-18.jpg'),
(3, 'هدفون، هدست و هندزفری ', 'بر اساس سلیقه شما', '/images/different/image-19.jpg', '/images/different/image-20.jpg', '/images/different/image-21.jpg', '/images/different/image-22.jpg'),
(4, 'کیف و کاور تبلت', 'بر اساس سلیقه شما', '/images/different/image-23.jpg', '/images/different/image-24.jpg', '/images/different/image-25.jpg', '/images/different/image-26.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category5`
--

CREATE TABLE `category5` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `img1_1` varchar(255) NOT NULL,
  `img1_2` varchar(255) NOT NULL,
  `img2_1` varchar(255) NOT NULL,
  `img2_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category5`
--

INSERT INTO `category5` (`id`, `title`, `subtitle`, `img1_1`, `img1_2`, `img2_1`, `img2_2`) VALUES
(1, 'کیف و کاور گوشی', 'بر اساس سلیقه شما', '/images/different/image-50.jpg', '/images/different/image-51.jpg', '/images/different/image-52.jpg', '/images/different/image-53.jpg'),
(2, 'ساعت عقربه ای مردانه ', 'بر اساس سلیقه شما', '/images/different/image-54.jpg', '/images/different/image-55.jpg', '/images/different/image-56.jpg', '/images/different/image-57.jpg'),
(3, 'لپ تاپ و الترابوک', 'بر اساس سلیقه شما', '/images/different/image-58.jpg', '/images/different/image-59.jpg', '/images/different/image-60.jpg', '/images/different/image-61.jpg'),
(4, 'ساعت هوشمند', 'بر اساس سلیقه شما', '/images/different/image-62.jpg', '/images/different/image-63.jpg', '/images/different/image-64.jpg', '/images/different/image-65.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `footer1`
--

CREATE TABLE `footer1` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer1`
--

INSERT INTO `footer1` (`id`, `title`, `image`, `alt`) VALUES
(1, 'امکان پرداخت در محل', '/images/footer/cash-on-delivery.svg', ''),
(2, ' ۷ روز ﻫﻔﺘﻪ، ۲۴ ﺳﺎﻋﺘﻪ', '/images/footer/support.svg', ''),
(3, 'هفت روز ضمانت بازگشت کالا', '/images/footer/days-return.svg', ''),
(4, 'ﺿﻤﺎﻧﺖ اﺻﻞ ﺑﻮدن ﮐﺎﻟﺎ', '/images/footer/original-products.svg', '');

-- --------------------------------------------------------

--
-- Table structure for table `footer2`
--

CREATE TABLE `footer2` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer2`
--

INSERT INTO `footer2` (`id`, `image`, `alt`) VALUES
(1, '/images/footer/sapra.png', ''),
(2, '/images/footer/rezi.png', ''),
(3, '/images/footer/kasbokar.png', ''),
(4, '/images/footer/image-sc-03.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `footer3`
--

CREATE TABLE `footer3` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer3`
--

INSERT INTO `footer3` (`id`, `image`, `alt`) VALUES
(0, '\\images\\footer\\1.svg', NULL),
(1, '/images/footer/digimag.svg', ''),
(2, '/images/footer/digipay.svg', ''),
(3, '/images/footer/digistyle.svg', ''),
(4, '/images/footer/digiplus.svg', ''),
(5, '/images/footer/digiclub.svg', ''),
(6, '/images/footer/jet.svg', ''),
(7, '/images/footer/digiMehr.svg', ''),
(8, '/images/footer/diginext.svg', ''),
(9, '/images/footer/digiexpress.svg', ''),
(10, '/images/footer/ganjeh.svg', ''),
(11, '/images/footer/digify.svg', ''),
(12, '/images/footer/smartech.svg', ''),
(13, '/images/footer/digikala-business.svg', ''),
(14, '/images/footer/digikala-service.svg', ''),
(15, '/images/footer/1.svg', NULL),
(16, '/images/footer/2.svg', NULL),
(17, '/images/footer/3.svg', NULL),
(18, '/images/footer/4.svg', NULL),
(20, '/images/footer/digital-gold.svg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hottest_last_few_hours`
--

CREATE TABLE `hottest_last_few_hours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hottest_last_few_hours`
--

INSERT INTO `hottest_last_few_hours` (`id`, `title`, `image`, `number`) VALUES
(1, 'روکش توالت فرنگی نکس کر مدل حل شونده بسته 100 عددی', '/images/different/image-70.webp', '۱'),
(2, 'هدست کلاه ایمنی ایکس او مدل BE47', '/images/different/image-71.webp', '۲'),
(3, ' ساعت مچی عقربه‌ای مردانه امپریو آرمانی مدل AR11216', '/images/different/image-72.webp', '۳'),
(4, 'اسپرسو ساز یونیک لایف مدل UL- 6857', '/images/different/image-73.webp', '۴'),
(5, 'قرص سوپرابیون سیترا مگ ب6 بسته 60 عددی', '/images/different/image-74.webp', '۵'),
(6, 'لپ تاپ 15.6 اینچی ام اس آی مدل Modern 15 H AI C1MG-Core Ultra 7-16GB DDR5-1TB SSD-IPS', '/images/different/image-75.webp', '۶'),
(7, 'صندلی اپن هوگر مدل BH360', '/images/different/image-76.webp', '۷'),
(8, 'اس اس دی اینترنال ام اس آی مدل SPATIUM M460 ظرفیت یک ترابایت', '/images/different/image-77.webp', '۸'),
(9, 'کاپوچینو رژیمی ونزکافه بسته 20 عددی', '/images/different/image-78.webp', '۹'),
(10, ' مانیتور خمیده گیمینگ 32 اینچ ام اس آی مدل MAG 32C6X، رزولوشن Full HD، پنل VA، نرخ بروزرسانی 250 هرتز، با نسبت تصویر 16:9،', '/images/different/image-79.webp', '۱۰'),
(11, 'پتو مسافرتی شایسته مدل قلبی سایز 160X210 سانتی متر', '/images/different/image-80.webp', '۱۱'),
(12, 'قرص ویتامین D3 هلث پلاس بسته 30 عددی', '/images/different/image-81.webp', '۱۲'),
(13, 'سرویس روتختی مانیکاهوم مدل AYRAL PLUS آیرال پلاس دونفره چهار تکه', '/images/different/image-82.webp', '۱۳'),
(14, 'کرم ضدآفتاب سان‌سیف مدل 003، حجم 50 میلی‌لیتر', '/images/different/image-83.webp', '۱۴'),
(15, 'مجموعه 46 عددی آچار و سری بکس باس کد 46s', '/images/different/image-84.webp', '۱۵'),
(16, 'سرویس پخت و پز 8 پارچه زرساب مدل مینت کد ML-7430', '/images/different/image-85.webp', '۱۶'),
(17, 'پاوربانک لیتو مدل LP-42 ظرفیت 20000 میلی‌آمپرساعت', '/images/different/image-86.webp', '۱۷'),
(18, ' پتو افرا هوم مدل تن پوش سایز 180×140 سانتی متر', '/images/different/image-87.webp', '۱۸');

-- --------------------------------------------------------

--
-- Table structure for table `incredibles`
--

CREATE TABLE `incredibles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `price1` varchar(50) DEFAULT NULL,
  `price2` varchar(50) DEFAULT NULL,
  `takhfif` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incredibles`
--

INSERT INTO `incredibles` (`id`, `title`, `image`, `alt`, `price1`, `price2`, `takhfif`) VALUES
(1, 'گوشی موبایل ناتینگ مدل CMF Phone 1 دو سیم کارت ظرفیت 256 گیگابایت و رم 8 گیگابایت', '/images/incredibles/image-01.jpg', '', '۲۱,۹۰۰,۰۰۰', '۱۹,۷۹۰,۰۰۰', '۱۰٪'),
(2, 'گوشی موبایل سامسونگ مدل Galaxy A05 دو سیم کارت ظرفیت 128 گیگابایت و رم 6 گیگابایت', '/images/incredibles/image-02.jpg', '', '۹,۴۲۹,۰۰۰', '۸,۹۸۰,۰۰۰', '۵٪'),
(3, 'گوشی موبایل آنر مدل X9c دو سیم کارت ظرفیت 256 گیگابایت و رم 12 گیگابایت', '/images/incredibles/image-03.jpg', '', '۳۳,۴۸۰,۰۰۰', '۳۱,۹۰۰,۰۰۰', '۵٪'),
(4, 'گوشی موبایل ناتینگ مدل Phone 2a دو سیم کارت ظرفیت 256 گیگابایت رم 12 گیگابایت', '/images/incredibles/image-04.jpg', '', '۲۵,۹۰۰,۰۰۰', '۲۴,۸۷۰,۰۰۰', '۴٪'),
(5, 'لپ تاپ 15.6 اینچی ایسوس مدل Vivobook 15 A1502VA-BQ531-i5 13420H-24GB DDR4-512GB SSD-TN - کاستوم شده', '/images/incredibles/image-05.jpg', '', '۴۷,۵۹۰,۰۰۰', '۴۳,۷۹۹,۰۰۰', '۸٪'),
(6, 'لپ تاپ 15.6 اینچی ام اس آی مدل Thin 15 B12UCX-i5 12450H-16GB DDR4-1TB SSD-RTX2050-FHD', '/images/incredibles/image-06.jpg', '', '۵۴,۴۹۹,۰۰۰', '۵۱,۴۹۹,۰۰۰', '۶٪'),
(7, 'لپ تاپ 15.3 اینچی اپل مدل MacBook Air MXD33 2024 LLA-M3-16GB RAM-512GB SSD', '/images/incredibles/image-07.jpg', '', '۱۱۱,۴۹۹,۰۰۰', '۱۰۸,۶۹۹,۰۰۰', '۳٪'),
(8, 'ساعت هوشمند وونک مدل VS1-47 ultra2', '/images/incredibles/image-08.jpg', '', '۶,۰۰۰,۰۰۰', '۱,۸۹۹,۰۰۰', '۶۸٪'),
(9, 'ساعت هوشمند 35 میلی متری مدل SPACE SW4020 AMOLED', '/images/incredibles/image-09.jpg', '', '۵,۸۵۰,۰۰۰', '۳,۹۹۰,۰۰۰', '۳۲٪'),
(10, 'کرم ضد آفتاب رنگی آرت وینا، SPF 50 مدل آلوئه‌ورا مناسب انواع پوست، تنالیته رنگ متوسط، حجم 50 میلی‌لیتر، حاوی محافظ UVA ،UVB و PA+++، ضد پیری، دارای فرمولاسیون شیمیایی، با ماندگاری 4 ساعته', '/images/incredibles/image-10.jpg', '', '۱,۳۶۷,۰۰۰', '۳۹۷,۰۰۰', '۷۱٪'),
(11, 'گوته نخت ملاتونین یوروویتال -  1 میلی گرم بسته 60 عددی', '/images/incredibles/image-11.jpg', '', '۷۳۰,۵۰۰', '۹۹,۱۹۰', '۸۶٪'),
(12, 'قرص بیوتین 800 میکروگرم Health اید بسته 30 عددی', '/images/incredibles/image-12.jpg', '', '۷۵,۹۰۰', '۲۷,۰۴۰', '۶۴٪');

-- --------------------------------------------------------

--
-- Table structure for table `incredibles2`
--

CREATE TABLE `incredibles2` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `takhfif` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incredibles2`
--

INSERT INTO `incredibles2` (`id`, `link`, `image`, `alt`, `takhfif`) VALUES
(1, '#', '/images/incredibles2/image-193.jpg', 'مایع دستشویی وانیلیا مدل رز حجم 3000 میلی لیتر', '۴۵٪'),
(2, '#', '/images/incredibles2/image-198.jpg', 'اسکاچ کاتوس مدل مروارید مجموعه 2 عددی', '۴۴٪'),
(3, '#', '/images/incredibles2/image-200.jpg', 'سوسيس هات داگ پنير 60 درصد گوشت قرمز مهيا پروتئين - 1 کيلوگرم', '۴۰٪'),
(4, '#', '/images/incredibles2/image-204.png', 'نبات زعفرانی مصطفوی مقدار 500 گرم', '۴۰٪'),
(5, '#', '/images/incredibles2/image-206.jpg', 'زیتون پرورده با مغز گردو لواسانی - 500 گرم', '۴۰٪');

-- --------------------------------------------------------

--
-- Table structure for table `khandaniha`
--

CREATE TABLE `khandaniha` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khandaniha`
--

INSERT INTO `khandaniha` (`id`, `title`, `image`, `alt`) VALUES
(1, 'از شام تکراری خسته شدید؟ ۷۰ پیشنهاد خوشمزه برای همه سلیقه‌ها', '/images/different/image-80.jpg', ''),
(2, 'بررسی خواص صابون گلیسیرین و تاثیر آن بر پوست', '/images/different/image-81.jpg', ''),
(3, 'مهم‌ترین علت لرزش ماشین لباسشویی چیست؟', '/images/different/image-82.jpg', ''),
(4, 'ساعات اوج مصرف برق در تابستان؛ چگونه قبض برق را نصف کنیم؟', '/images/different/image-83.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_slider`
--

CREATE TABLE `main_slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_slider`
--

INSERT INTO `main_slider` (`id`, `image`, `alt`) VALUES
(1, '/images/slider/image-01.jpg', ''),
(2, '/images/slider/image-02.jpg', ''),
(3, '/images/slider/image-03.jpg', ''),
(4, '/images/slider/image-04.jpg', ''),
(5, '/images/slider/image-05.jpg', ''),
(6, '/images/slider/image-06.jpg', ''),
(7, '/images/slider/image-07.jpg', ''),
(8, '/images/slider/image-08.jpg', ''),
(9, '/images/slider/image-09.jpg', ''),
(10, '/images/slider/image-10.jpg', ''),
(11, '/images/slider/image-11.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `icon`) VALUES
(1, 'شگفت انگیزها', '#', '/images/header/image-1.jpg'),
(2, 'سوپرمارکت', '#', '/images/header/image-2.jpg'),
(3, 'طلای دیجیتال', '#', '/images/header/image-3.jpg'),
(4, 'پرفروش ترین ها', '#', '/images/header/image-4.jpg'),
(5, 'خرید کالای کارکرده', '#', '/images/header/image-5.jpg'),
(6, 'سوالی دارید؟', '#', ''),
(7, 'در دیجی کالا بفروشید!', '#', '');

-- --------------------------------------------------------

--
-- Table structure for table `more_sales`
--

CREATE TABLE `more_sales` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `more_sales`
--

INSERT INTO `more_sales` (`id`, `title`, `image`, `number`, `alt`) VALUES
(1, 'هل سبز مصطفوی - 10 گرم', '/images/different/image-27.webp', '۱', ''),
(2, 'رب گوجه فرنگی روژین مقدار 800 گرم', '/images/different/image-28.webp', '۲', ''),
(3, 'کنسرو ماهی تون چین چین - 180 گرم', '/images/different/image-29.webp', '۳', ''),
(4, 'پنیر سفید ایرانی پگاه - 400 گرم', '/images/different/image-30.webp', '۴', ''),
(5, 'خامه فرادما پگاه مقدار 200 میلی لیتر', '/images/different/image-31.webp', '۵', ''),
(6, 'شکر سفید الماس دانه - 1 کیلوگرم', '/images/different/image-32.webp', '۶', ''),
(7, 'دستمال کاغذی 250 برگ دو لایه تنو مدل 001', '/images/different/image-33.webp', '۷', ''),
(8, 'کالباس 90 درصد گوشت مرغ مهيا پروتئين - 250 گرم', '/images/different/image-36.webp', '۸', ''),
(9, 'پنیر فتا دوشه هراز - 400 گرم', '/images/different/image-35.webp', '۹', ''),
(10, 'کره کاله - 100 گرم', '/images/different/image-37.webp', '۱۰', ''),
(11, 'روغن سرخ کردنی بدون پالم شفاف ساعی - 1620 گرم', '/images/different/image-38.webp', '۱۱', ''),
(12, 'قرص جوشان ویتامین ث 1000 میلی گرمی  بسته 20 عددی', '/images/different/image-39.webp', '۱۲', ''),
(13, 'هل سبز مصطفوی - 10 گرم', '/images/different/image-27.webp', '۱۳', ''),
(14, 'تخم مرغ گرید A سیمرغ بسته 20 عددی', '/images/different/image-41.webp', '۱۴', ''),
(15, 'گلاب مصطفوی - 500 میلی لیتر', '/images/different/image-40.webp', '۱۵', ''),
(16, 'کرم ضدآفتاب و ضدلک بی‌رنگ لافارر مدل SPF50، مناسب پوست‌های چرب، حجم 40 میلی‌لیتر', '/images/different/image-42.webp', '۱۶', ''),
(17, 'کره پاستوریزه پاک مقدار 50 گرم', '/images/different/image-43.webp', '۱۷', ''),
(18, 'کره کاله - 50 گرم', '/images/different/image-44.webp', '۱۸', '');

-- --------------------------------------------------------

--
-- Table structure for table `overview1`
--

CREATE TABLE `overview1` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overview1`
--

INSERT INTO `overview1` (`id`, `image`, `alt`) VALUES
(1, '/images/different/image-1.gif', ''),
(2, '/images/different/image-02.jpg', ''),
(3, '/images/different/image-03.jpg', ''),
(4, '/images/different/image-04.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `overview2`
--

CREATE TABLE `overview2` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overview2`
--

INSERT INTO `overview2` (`id`, `image`, `alt`) VALUES
(1, '/images/different/image-09.jpg', ''),
(2, '/images/different/image-10.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `quick_access`
--

CREATE TABLE `quick_access` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitles` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quick_access`
--

INSERT INTO `quick_access` (`id`, `title`, `subtitles`) VALUES
(1, 'با دیجی‌کالا', '[\"اتاق خبر دیجی‌کالا\",\"فروش در دیجی‌کالا\",\"فرصت‌های شغلی\",\"گزارش تخلف در دیجی‌کالا\",\"تماس با دیجی‌کالا\",\"درباره دیجی‌کالا\"]'),
(2, 'خدمات مشتریان', '[\"پاسخ به پرسش‌های متداول\",\"رویه‌های بازگرداندن کالا\",\"شرایط استفاده\",\"حریم خصوصی\",\"گزارش باگ\"]'),
(3, 'راهنمای خرید از دیجی‌کالا', '[\"نحوه ثبت سفارش\",\"رویه ارسال سفارش\",\"شیوه‌های پرداخت\"]');

-- --------------------------------------------------------

--
-- Table structure for table `quick_access2`
--

CREATE TABLE `quick_access2` (
  `id` int(11) NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quick_access2`
--

INSERT INTO `quick_access2` (`id`, `images`) VALUES
(1, '[{\"id\": 1, \"image\": \"/images/different/image70.jpg\", \"alt\": \"\"}, {\"id\": 2, \"image\": \"/images/different/image71.jpg\", \"alt\": \"\"}, {\"id\": 3, \"image\": \"/images/different/image72.jpg\", \"alt\": \"\"}, {\"id\": 4, \"image\": \"/images/different/image73.jpg\", \"alt\": \"\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `selected_products`
--

CREATE TABLE `selected_products` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `price1` varchar(50) NOT NULL,
  `price2` varchar(50) DEFAULT NULL,
  `takhfif` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selected_products`
--

INSERT INTO `selected_products` (`id`, `image`, `alt`, `price1`, `price2`, `takhfif`) VALUES
(1, '/images/different/image-100.jpg', 'کاور مدل happy-ge4 مناسب برای گوشی موبایل شیائومی Redmi Note 8 pro', '۱,۰۰۰,۰۰۰', '۱۱۰,۰۰۰', '۸۹٪'),
(2, '/images/different/image-101.jpg', 'کاور مدل happy-ge7 مناسب برای گوشی موبایل شیائومی Redmi Note 13 4g', '۱,۱۰۰,۰۰۰', '۱۲۱,۰۰۰', '۸۹٪'),
(3, '/images/different/image-102.jpg', 'کاور مدل happy-gu4 مناسب برای گوشی موبایل شیائومی Redmi Note 8 pro ', '۹۰۰,۰۰۰', '۹۹,۰۰۰', '۸۹٪'),
(4, '/images/different/image-103.jpg', 'کاور مدل happy-gw8 مناسب برای گوشی موبایل شیائومی Redmi Note 8 pro ', '۹۰۰,۰۰۰', '۹۹,۰۰۰', '۸۹٪'),
(5, '/images/different/image-104.jpg', 'گوشی موبایل نوکیا مدل 105 2023 دو سیم‌ کارت', '۳,۱۰۰,۰۰۰', '۲,۲۳۲,۰۰۰', '۲۸٪'),
(6, '/images/different/image-105.jpg', 'گوشی موبایل اپل مدل iPhone 13 Pro Max CH دو سیم‌ کارت ظرفیت 256 گیگابایت و رم 6 گیگابایت - نات اکتیو', '۱۲۵,۰۰۰,۰۰۰', '۹۶,۲۵۰,۰۰۰', '۲۳٪'),
(7, '/images/different/image-106.jpg', 'گوشی موبایل هانوفر مدل V6 دو سیم کارت ظرفیت 32 مگابایت', '۱۲۵,۰۰۰,۰۰۰', '۹۶,۲۵۰,۰۰۰', '۲۳٪'),
(8, '/images/different/image-107.jpg', 'گوشی موبایل اپل مدل iPhone 13 Pro Max ZDA تک سیم‌ کارت ظرفیت 512 گیگابایت و رم 6 گیگابایت - نات اکتیو - پارت نامبر F', '۹۸,۹۹۹,۰۰۰', '۸۲,۱۶۹,۱۷۰', '۱۷٪'),
(9, '/images/different/image-108.jpg', 'هدفون بی سیم مدل TG-Pro2 2023', '۴,۰۰۰,۰۰۰', '۴۴۰,۰۰۰', '۸۹٪'),
(10, '/images/different/image-109.jpg', 'هدفون&nbsp;بلوتوثی مدل ایرپاد پرو 2024 کد hi1010chi', '۳,۴۰۰,۰۰۰', '۳۷۴,۰۰۰', '۸۹٪'),
(11, '/images/different/image-110.jpg', 'هندزفری بلوتوثی فرست مدل airpods pro 2 -First', '۳,۳۰۰,۰۰۰', '۳۶۳,۰۰۰', '۸۹٪'),
(12, '/images/different/image-111.jpg', 'هدفون&nbsp;بلوتوثی مدل airpods pro rl-m Air-RO365', '۴,۰۰۰,۰۰۰', '۴۸۰,۰۰۰', '۸۸٪'),
(13, '/images/different/image-112.jpg', 'کاور لوکسار مدل matte مناسب برای تبلت اپل 9.7 اینج  iPad 2 / iPad 3 / iPad 4', '۱,۰۰۰,۰۰۰', '۴۴۹,۹۰۰', '۵۵٪'),
(14, '/images/different/image-113.jpg', 'کاور بادیگارد مدل Kickstand مناسب برای تبلت اپل iPad Pro 12.9', ' ۸۹۵,۰۰۰', '۴۴۷,۵۰۰', '۵۰٪'),
(15, '/images/different/image-114.jpg', 'کاور لوکسار مدل matte مناسب برای تبلت شیائومی Redmi Pad 6 / Redmi Pad 6 Pro', ' ۱,۲۰۰,۰۰۰', '۶۲۳,۹۰۰', '۴۸٪'),
(16, '/images/different/image-115.jpg', 'کاور لوکسار مدل matte مناسب برای تبلت سامسونگ Galaxy Tab S6 Lite / P615 / P610', '۱,۲۰۰,۰۰۰', '۶۲۳,۹۰۰', '۴۸٪'),
(17, '/images/different/image-116.jpg', 'بند تهران پکن مدل Armor کد durapro مناسب برای ساعت هوشمند اپل سری Se/1/2/3/4/5/6/7/8/9 سایز 42/44/45/49', '۱,۸۵۰,۰۰۰', '۸۳۲,۵۰۰', '۵۵٪'),
(18, '/images/different/image-117.jpg', 'بند قاب تک مدل FEATHER مناسب برای ساعت هوشمند آمیزفیت GTR 2', '۲۵۳,۰۰۰', '۲۲۰,۰۰۰', '۱۳٪');

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `live` int(11) DEFAULT 0,
  `alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `title`, `image`, `live`, `alt`) VALUES
(1, 'مشاوره خرید بردگیم و بازی', '/images/story/image-01.jpg', 0, ''),
(2, 'مشاوره خرید ابزار خانگی و صنعتی', '/images/story/image-02.jpg', 0, ''),
(3, 'مشاوره خرید لوازم خانگی برقی', '/images/story/image-03.jpg', 0, ''),
(4, 'شامپو مو کانتو', 'images/story/image-04.jpg', 0, ''),
(5, 'ریمل با رنگ آبی', '/images/story/image-05.jpg', 0, ''),
(6, 'هویه سانشاین بگیرم؟', '/images/story/image-06.jpg', 0, ''),
(7, 'سلاح روزای گرم☀️', '/images/story/image-07.jpg', 0, ''),
(8, 'کوچولوی پر سر و صدا!', '/images/story/image-08.jpg', 0, ''),
(9, 'تعمیر کولر آبی', '/images/story/image-09.jpg', 0, ''),
(10, 'اسکمی یا نیوی فورس؟', '/images/story/image-10.jpg', 0, ''),
(11, 'رویال یا رفلکس', '/images/story/image-11.jpg', 0, ''),
(12, 'انتقال فایل آیفون به اندروید', '/images/story/image-12.jpg', 0, ''),
(13, ' دوربین دوچشمی آی‌بر 20x50', '/images/story/image-13.jpg', 0, ''),
(14, 'تفنگ یا ماساژور !؟ 🤔', '/images/story/image-14.jpg', 0, ''),
(15, 'لیپ گلاس محبوب کیکو میلانو', '/images/story/image-15.jpg', 0, ''),
(16, 'کوچولوی شگفت‌انگیز!', '/images/story/image-16.jpg', 0, ''),
(17, 'اصلا نشتی نداشت!!!', '/images/story/image-17.jpg', 0, ''),
(18, 'این بخور واقعا نیازت میشه', '/images/story/image-18.jpg', 0, ''),
(19, 'چرا باید مودم‌همراه بخریم؟', '/images/story/image-19.jpg', 0, ''),
(20, 'Sony a6700 🤌🏼🔥', '/images/story/image-20.jpg', 0, ''),
(21, 'بهترین شوره‌گیر کولر', '/images/story/image-21.jpg', 0, ''),
(22, 'کیف لوازم آرایش مسافرتی', '/images/story/image-22.jpg', 0, ''),
(23, '۵نکته تو خرید ظرفشویی', '/images/story/image-23.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `phone`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ل', '777', NULL, '$2y$10$uzkdwIz/6QtoLRVnxSLW5.XBOLDmOaS/CfAk1fmZCo74IiMIGYNmG', '2026-02-20 19:44:16', '2026-02-20 19:44:16'),
(2, 'a', '123', NULL, '$2y$10$pjJPzOxm5ohL3DernIce9uMl6VcK1W6iL/lkEZTKx4IxIU1HtUGvC', '2026-02-20 19:57:34', '2026-02-20 19:57:34'),
(4, '2', '2', NULL, '$2y$10$3xTJzHqqaDPaZBBCIRvM4.OrcirCYnr5h/I2UaQ9HIozgdEsNY0ay', '2026-02-26 10:27:43', '2026-02-26 19:44:22'),
(5, '3', '3', NULL, '$2y$10$ZIZBC.WOJZlPUB3Sg6LkwuQ/7QFHsJ6Oiydgo2/0KU3KwuuB0QPv2', '2026-02-26 11:56:30', '2026-02-26 11:56:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category2`
--
ALTER TABLE `category2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category4`
--
ALTER TABLE `category4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category5`
--
ALTER TABLE `category5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer1`
--
ALTER TABLE `footer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer2`
--
ALTER TABLE `footer2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer3`
--
ALTER TABLE `footer3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hottest_last_few_hours`
--
ALTER TABLE `hottest_last_few_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incredibles`
--
ALTER TABLE `incredibles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incredibles2`
--
ALTER TABLE `incredibles2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khandaniha`
--
ALTER TABLE `khandaniha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_slider`
--
ALTER TABLE `main_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `more_sales`
--
ALTER TABLE `more_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overview1`
--
ALTER TABLE `overview1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overview2`
--
ALTER TABLE `overview2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_access`
--
ALTER TABLE `quick_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_access2`
--
ALTER TABLE `quick_access2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_products`
--
ALTER TABLE `selected_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category2`
--
ALTER TABLE `category2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `footer1`
--
ALTER TABLE `footer1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer2`
--
ALTER TABLE `footer2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hottest_last_few_hours`
--
ALTER TABLE `hottest_last_few_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `incredibles`
--
ALTER TABLE `incredibles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `incredibles2`
--
ALTER TABLE `incredibles2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `khandaniha`
--
ALTER TABLE `khandaniha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_slider`
--
ALTER TABLE `main_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `more_sales`
--
ALTER TABLE `more_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `overview1`
--
ALTER TABLE `overview1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `overview2`
--
ALTER TABLE `overview2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quick_access`
--
ALTER TABLE `quick_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quick_access2`
--
ALTER TABLE `quick_access2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `selected_products`
--
ALTER TABLE `selected_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
