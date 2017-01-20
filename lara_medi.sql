-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2017 at 11:59 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_medi`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `css_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `css_id`, `intro`, `description`, `name`, `created_at`, `updated_at`) VALUES
(1, 'janeh', 'During the summer, our rabbit, Tonto, began to have severe redness', ' and itching on his belly and feet. Through diagnostic testing, we learned that Tonto is severely allergic to over a dozens kinds of grass pollens. We''ve now been doing allergy injections for several months, and his itching and redness have nearly gone away. I''m very thankful to the veterinarians and staff at Wisdom for the excellent care Tonto received, and for nipping his allergies in the bud, so to speak.', 'Jane H.', NULL, NULL),
(2, 'mcphersons', 'When Samantha, our Siamese cat, began sleeping all the time', 'and urinating excessively, we brought her to see the specialists at Wisdom. After running a blood test, Dr. Winthrop confirmed what we all feared - Samantha was showing signs of diabetes. The doctor put us on a daily routine to provide Samantha insulin injections, and showed us how to administer the shots. We weren''t sure we could do it, but the gang at Wisdom was very supportive and encouraging. Now, two years later, Samantha is still free from any complications of diabetes, and her blood sugar regularly tests normal. Thank you, Wisdom Pet Medicine!', 'The McPhersons', NULL, NULL),
(3, 'johnb', 'The staff at Wisdom worked tirelessly to determine why our three-year old', 'Golden Retriever, Roxie, started going into sudden kidney failure. They stabilized her and provided fluids until her kidneys were again functioning normally, but it was still a mystery as to what caused her health to decline so quickly. The vet noted our address on Roxie''s chart, and asked if we lived on one of the orchards in the vicinity, and if Roxie had a habit of eating grapes off the vine. Our answer was "of course – she''s a Retriever." That day we learned just how toxic grapes and raisins are to pets, and Roxie is no longer allowed to roam unattended in the orchard.', 'John B', NULL, NULL),
(4, 'lorraines', 'Wisdom Pet Medicine is the only clinic around that will even', 'book pet fish for appointments. When our 13-year old Comet goldfish, McAllister, turned from silvery white to an angry red, we called around, urgently trying to find a veterinarian who could help. Wisdom not only got us in the same day, but also was able to diagnose McAllister as having a severe case of septicemia. In order to kill the harmful bacteria in his blood, we had to use a dog antibiotic in his tank every day for a week, and in the end, McAllister was good as new. I still smile upon remembering Dr. Chase pulling out an old vet school textbook to calculate the correct antibiotic dose for a fish!', 'Lorraine S', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `call_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `call_num` int(11) NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `term` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privacy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `term_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privacy_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `call_text`, `call_num`, `copyright_text`, `term`, `privacy`, `term_link`, `privacy_link`, `created_at`, `updated_at`) VALUES
(1, 'Call us toll-free at ', 1829601099, '    <p>All contents &copy; 2017 <a href="https://web.facebook.com/JAHIDUL.HAQUE.PATHAN">Jahid</a>. All rights reserved.</p>', 'Terms of use', 'Privacy policy', '#', '#', NULL, '2017-01-19 13:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `header_infos`
--

CREATE TABLE `header_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_subhead` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `header_infos`
--

INSERT INTO `header_infos` (`id`, `title`, `brand_head`, `brand_subhead`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `created_at`, `updated_at`) VALUES
(1, 'Wisdom Pet Medicine - Developed by Jahid', 'Wisdom', 'Pet Medicine', 'Home', 'Mission', 'Services', 'Staff', 'Testimonials', NULL, '2017-01-20 04:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_name`, `image_alt`, `created_at`, `updated_at`) VALUES
(1, '1484909438.jpg', 'Lifestyle Photo', NULL, '2017-01-20 04:54:14'),
(2, '1484907737.jpg', 'Mission', NULL, '2017-01-20 04:22:18'),
(3, 'carousel-vaccinations.jpg', 'Vaccination', NULL, '2017-01-20 04:51:14'),
(4, 'carousel-fish.jpg', 'Fish', NULL, NULL),
(5, 'carousel-exoticanimals.jpg', 'Exotic Animals', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2017_01_18_141910_create_header_infos_table', 1),
(26, '2017_01_18_193731_create_images_table', 1),
(27, '2017_01_19_061453_create_missons_table', 1),
(28, '2017_01_19_065200_create_services_table', 2),
(30, '2017_01_19_073811_create_staff_table', 3),
(31, '2017_01_19_125545_create_customers_table', 4),
(32, '2017_01_19_131153_add_css_id_customers', 5),
(34, '2017_01_19_133120_create_footers_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Our Mission', ' <p class="col-md-5 col-md-offset-1">Wisdom Pet Medicine strives to blend the best in traditional and alternative medicine in the diagnosis and treatment of companion animals including dogs, cats, birds, reptiles, rodents, and fish. We apply the wisdom garnered in the centuries old tradition of veterinary medicine, to find the safest treatments and&nbsp;cures.</p>\r\n      <p class="col-md-5">We strive to be your pet''s medical experts from youth through the senior years. We build preventative health care plans for each and every one of our patients, based on breed, age, and sex, so that your pet receives the most appropriate care at crucial milestones. We want to give your pet a long and healthy&nbsp;life.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'icon-exoticpets.svg', 'Exotic Pets', 'We offer specialized care for reptiles, rodents, birds, and other exotic pets.', NULL, NULL),
(2, 'icon-grooming.svg', 'Grooming', 'Our therapeutic grooming treatments help battle fleas, allergic dermatitis, and other challenging skin conditions.', NULL, NULL),
(3, 'icon-health.svg', 'GeneralHealth', 'Wellness and senior exams, ultrasound, x-ray, and dental cleanings are just a few of our general health services.', NULL, NULL),
(4, 'icon-nutrition.svg', 'Nutrition', 'Let our nutrition experts review your pet''s diet and prescribe a custom nutrition plan for optimum health and disease prevention.', NULL, NULL),
(5, 'icon-pestcontrol.svg', 'Pest Control', 'We offer the latest advances in safe and effective prevention and treatment of fleas, ticks, worms, heart worm, and other parasites.', NULL, NULL),
(6, 'icon-vaccinations.svg', 'Vaccinations', 'Our veterinarians are experienced in modern vaccination protocols that prevent many of the deadliest diseases in pets.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `image`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'doctor-winthrop.jpg', 'Dr. Winthrop', 'Dr. Winthrop is the guardian of Missy, a three-year old Llaso mix, who he adopted at the shelter. Dr. Winthrop is passionate about spay and neuter and pet adoption, and works tireless hours outside the clinic, performing free spay and neuter surgeries for the shelter.', NULL, NULL),
(2, 'doctor-chase.jpg', 'Dr. Chase', 'Dr. Chase spends much of her free time helping the local rescue organization find homes for animals, such as Kibbles - a Maine Coon Cat who is part of the large Chase household, including two dogs, three cats, and a turtle.', NULL, NULL),
(3, 'doctor-sanders.jpg', 'Dr Sanders', 'Leroy walked into Dr. Sanders front door when he was moving into a new house. After searching for weeks for Leroy''s guardians, he decided to make Leroy a part of his pet family, and now has three cats.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jahid', 'admin@gmail.com', '$2y$10$w6lL3fXjci1J9uTJ4nYk8.HRM..9N0MQkl3qI8s0x3gm2KFRXBaTm', 'Gcdisd24U0zAWuCKxvrSnzNiiOrr02rQUZuDnezmpdbJdI45UXxV5KMJWzZD', '2017-01-19 11:14:54', '2017-01-20 04:58:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_infos`
--
ALTER TABLE `header_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `header_infos`
--
ALTER TABLE `header_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
