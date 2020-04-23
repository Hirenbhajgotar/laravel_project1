-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 05:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `blog_content` text NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `heading`, `image`, `blog_content`, `users_id`, `created_at`, `updated_at`) VALUES
(4, 'Purus sit amet luctus venenatis', 'undraw_a_day_at_the_park_owg1-1587395670.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non sodales neque sodales. Donec adipiscing tristique risus nec feugiat in fermentum. Eu facilisis sed odio morbi. Aliquam etiam erat velit scelerisque in dictum non. Tortor consequat id porta nibh venenatis cras sed. Mauris in aliquam sem fringilla ut morbi tincidunt augue. Nulla posuere sollicitudin aliquam ultrices sagittis. Semper auctor neque vitae tempus quam pellentesque nec nam. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Facilisi nullam vehicula ipsum a arcu cursus vitae. Vel turpis nunc eget lorem dolor. Commodo odio aenean sed adipiscing. Elementum integer enim neque volutpat ac tincidunt. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Felis eget nunc lobortis mattis aliquam.\r\n\r\nViverra adipiscing at in tellus integer feugiat scelerisque varius morbi. Urna nunc id cursus metus aliquam eleifend mi in. Varius quam quisque id diam vel. Massa ultricies mi quis hendrerit dolor magna eget est. Quis viverra nibh cras pulvinar. A scelerisque purus semper eget duis at tellus. Morbi tincidunt augue interdum velit. Nisl purus in mollis nunc sed id semper risus. Ultricies tristique nulla aliquet enim tortor at auctor urna. In hac habitasse platea dictumst. Convallis posuere morbi leo urna molestie at elementum eu facilisis. Nibh tortor id aliquet lectus proin. Bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida.', 63, '2020-04-20 15:14:30', '2020-04-20 09:44:30'),
(7, 'heading update', 'undraw_fans_gr54-1587283673.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Purus sit amet luctus venenatis lectus magna fringilla urna. Pharetra magna ac placerat vestibulum lectus mauris ultrices eros in. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Nullam vehicula ipsum a arcu cursus vitae congue.', 63, '2020-04-20 13:49:08', '2020-04-19 02:37:53'),
(8, 'test upadate', 'undraw_bus_stop_h370-1587395759.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat diam ut venenatis tellus. Senectus et netus et malesuada fames ac. Nibh tortor id aliquet lectus proin nibh nisl condimentum id. Enim praesent elementum facilisis leo vel fringilla est. Eu lobortis elementum nibh tellus molestie nunc. Sit amet justo donec enim diam vulputate ut. Interdum posuere lorem ipsum dolor sit amet consectetur. Cursus sit amet dictum sit amet justo donec. Sed ullamcorper morbi tincidunt ornare massa eget.', 63, '2020-04-20 15:16:00', '2020-04-20 09:46:00'),
(10, 'hukkadud', 'undraw_developer_activity_bv83-1587289445.png', 'javabbaii Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu non sodales neque sodales. Donec adipiscing tristique risus nec feugiat in fermentum. Eu facilisis sed odio morbi. Aliquam etiam erat velit scelerisque in dictum non. Tortor consequat id porta nibh venenatis cras sed. Mauris in aliquam sem fringilla ut morbi tincidunt augue. Nulla posuere sollicitudin aliquam ultrices sagittis. Semper auctor neque vitae tempus quam pellentesque nec nam. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Facilisi nullam vehicula ipsum a arcu cursus vitae. Vel turpis nunc eget lorem dolor. Commodo odio aenean sed adipiscing. Elementum integer enim neque volutpat ac tincidunt. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Felis eget nunc lobortis mattis aliquam.\r\n\r\nViverra adipiscing at in tellus integer feugiat scelerisque varius morbi. Urna nunc id cursus metus aliquam eleifend mi in. Varius quam quisque id diam vel. Massa ultricies mi quis hendrerit dolor magna eget est. Quis viverra nibh cras pulvinar. A scelerisque purus semper eget duis at tellus. Morbi tincidunt augue interdum velit. Nisl purus in mollis nunc sed id semper risus. Ultricies tristique nulla aliquet enim tortor at auctor urna. In hac habitasse platea dictumst. Convallis posuere morbi leo urna molestie at elementum eu facilisis. Nibh tortor id aliquet lectus proin. Bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida.', 63, '2020-04-20 13:49:20', '2020-04-19 04:14:05'),
(11, 'Lorem Ipsum Generator update', 'undraw_bus_stop_h370-1587283525.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel orci porta non pulvinar neque laoreet suspendisse interdum. Vitae nunc sed velit dignissim sodales ut. Molestie nunc non blandit massa enim nec dui nunc mattis. Praesent semper feugiat nibh sed pulvinar.', 63, '2020-04-20 13:49:24', '2020-04-19 02:35:25'),
(12, 'nibh sed pulvinar.', 'undraw_super_thank_you_obwk-1587283959.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel orci porta non pulvinar neque laoreet suspendisse interdum. Vitae nunc sed velit dignissim sodales ut. Molestie nunc non blandit massa enim nec dui nunc mattis. Praesent semper feugiat nibh sed pulvinar.', 63, '2020-04-20 13:49:27', '2020-04-19 02:42:39'),
(13, 'tempor incididunt ut', 'undraw_circles_y7s2-1587139268.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel orci porta non pulvinar neque laoreet suspendisse interdum. Vitae nunc sed velit dignissim sodales ut. Molestie nunc non blandit massa enim nec dui nunc mattis. Praesent semper feugiat nibh sed pulvinar.', 63, '2020-04-20 13:49:31', '2020-04-17 10:31:08'),
(14, 'Eu lobortis elementum', 'undraw_interaction_design_odgc-1587395841.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat diam ut venenatis tellus. Senectus et netus et malesuada fames ac. Nibh tortor id aliquet lectus proin nibh nisl condimentum id. Enim praesent elementum facilisis leo vel fringilla est. Eu lobortis elementum nibh tellus molestie nunc. Sit amet justo donec enim diam vulputate ut. Interdum posuere lorem ipsum dolor sit amet consectetur. Cursus sit amet dictum sit amet justo donec. Sed ullamcorper morbi tincidunt ornare massa eget.', 63, '2020-04-20 15:17:21', '2020-04-20 09:47:21'),
(15, 'tempor incididunt ut labore', 'undraw_sunlight_tn7t-1587407976.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat diam ut venenatis tellus. Senectus et netus et malesuada fames ac. Nibh tortor id aliquet lectus proin nibh nisl condimentum id. Enim praesent elementum facilisis leo vel fringilla est. Eu lobortis elementum nibh tellus molestie nunc. Sit amet justo donec enim diam vulputate ut. Interdum posuere lorem ipsum dolor sit amet consectetur. Cursus sit amet dictum sit amet justo donec. Sed ullamcorper morbi tincidunt ornare massa eget.', 64, '2020-04-20 13:09:37', '2020-04-20 13:09:37'),
(16, 'Volutpat diam ut venenatis tellus.', 'undraw_master_plan_95wa-1587408049.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dolor sed viverra ipsum nunc aliquet bibendum. Tellus molestie nunc non blandit massa enim. Enim neque volutpat ac tincidunt vitae semper quis lectus nulla. Viverra justo nec ultrices dui. Ut ornare lectus sit amet est placerat in egestas. At consectetur lorem donec massa sapien faucibus et molestie ac. Sit amet nisl purus in mollis nunc sed id. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Est ultricies integer quis auctor elit sed. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Imperdiet massa tincidunt nunc pulvinar sapien et ligula. Montes nascetur ridiculus mus mauris vitae. Vulputate dignissim suspendisse in est ante in nibh.\r\n\r\nEuismod elementum nisi quis eleifend quam adipiscing vitae. Nibh tellus molestie nunc non blandit massa. Ac tincidunt vitae semper quis lectus. Nibh praesent tristique magna sit amet purus. Ullamcorper malesuada proin libero nunc consequat interdum varius sit amet. Elementum pulvinar etiam non quam lacus. Purus ut faucibus pulvinar elementum integer enim neque. Nec dui nunc mattis enim ut tellus elementum. Integer enim neque volutpat ac tincidunt vitae semper. Bibendum enim facilisis gravida neque convallis a. Id diam vel quam elementum pulvinar etiam non quam. Leo vel fringilla est ullamcorper eget nulla facilisi etiam. Neque laoreet suspendisse interdum consectetur libero id faucibus.', 64, '2020-04-20 13:10:49', '2020-04-20 13:10:49'),
(17, 'Dolor sed viverra', 'undraw_cabin_hkfr-1587408090.png', 'Dolor sed viverra\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dolor sed viverra ipsum nunc aliquet bibendum. Tellus molestie nunc non blandit massa enim. Enim neque volutpat ac tincidunt vitae semper quis lectus nulla. Viverra justo nec ultrices dui. Ut ornare lectus sit amet est placerat in egestas. At consectetur lorem donec massa sapien faucibus et molestie ac. Sit amet nisl purus in mollis nunc sed id. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Est ultricies integer quis auctor elit sed. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Imperdiet massa tincidunt nunc pulvinar sapien et ligula. Montes nascetur ridiculus mus mauris vitae. Vulputate dignissim suspendisse in est ante in nibh.\r\n\r\nEuismod elementum nisi quis eleifend quam adipiscing vitae. Nibh tellus molestie nunc non blandit massa. Ac tincidunt vitae semper quis lectus. Nibh praesent tristique magna sit amet purus. Ullamcorper malesuada proin libero nunc consequat interdum varius sit amet. Elementum pulvinar etiam non quam lacus. Purus ut faucibus pulvinar elementum integer enim neque. Nec dui nunc mattis enim ut tellus elementum. Integer enim neque volutpat ac tincidunt vitae semper. Bibendum enim facilisis gravida neque convallis a. Id diam vel quam elementum pulvinar etiam non quam. Leo vel fringilla est ullamcorper eget nulla facilisi etiam. Neque laoreet suspendisse interdum consectetur libero id faucibus.', 64, '2020-04-20 13:11:30', '2020-04-20 13:11:30'),
(18, 'aliquet bibendum.', 'undraw_walking_outside_5ueb-1587408138.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna et pharetra pharetra massa massa ultricies mi. Sapien faucibus et molestie ac. Purus in massa tempor nec feugiat nisl pretium fusce id. Tortor dignissim convallis aenean et tortor. Quisque sagittis purus sit amet volutpat consequat. Eget nullam non nisi est. Vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis pellentesque. Quisque egestas diam in arcu cursus euismod quis viverra.\r\n\r\nEt odio pellentesque diam volutpat commodo sed. Id eu nisl nunc mi ipsum faucibus vitae aliquet. Facilisi cras fermentum odio eu. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Ultrices neque ornare aenean euismod elementum. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Adipiscing elit pellentesque habitant morbi tristique senectus. Velit dignissim sodales ut eu. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Sit amet cursus sit amet dictum sit. Nisl condimentum id venenatis a condimentum vitae. Arcu cursus vitae congue mauris rhoncus aenean vel. Id semper risus in hendrerit gravida rutrum quisque. Ipsum suspendisse ultrices gravida dictum fusce. Tempus urna et pharetra pharetra.\r\n\r\nIn mollis nunc sed id semper risus in hendrerit gravida. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu. Felis eget nunc lobortis mattis aliquam faucibus purus in. At volutpat diam ut venenatis tellus in. Vitae purus faucibus ornare suspendisse sed nisi lacus. Neque gravida in fermentum et sollicitudin ac orci phasellus. Eget mi proin sed libero enim sed faucibus turpis. Pharetra magna ac placerat vestibulum. Morbi leo urna molestie at. Eget arcu dictum varius duis at. Aenean vel elit scelerisque mauris pellentesque. Ac felis donec et odio pellentesque diam. Suspendisse sed nisi lacus sed. Massa massa ultricies mi quis hendrerit dolor magna eget. Urna duis convallis convallis tellus id interdum velit. Dui vivamus arcu felis bibendum ut.', 64, '2020-04-20 13:12:18', '2020-04-20 13:12:18'),
(19, 'euismod quis viverra.', 'undraw_quite_town_mg2q-1587408246.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna et pharetra pharetra massa massa ultricies mi. Sapien faucibus et molestie ac. Purus in massa tempor nec feugiat nisl pretium fusce id. Tortor dignissim convallis aenean et tortor. Quisque sagittis purus sit amet volutpat consequat. Eget nullam non nisi est. Vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis pellentesque. Quisque egestas diam in arcu cursus euismod quis viverra.\r\n\r\nEt odio pellentesque diam volutpat commodo sed. Id eu nisl nunc mi ipsum faucibus vitae aliquet. Facilisi cras fermentum odio eu. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Ultrices neque ornare aenean euismod elementum. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Adipiscing elit pellentesque habitant morbi tristique senectus. Velit dignissim sodales ut eu. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Sit amet cursus sit amet dictum sit. Nisl condimentum id venenatis a condimentum vitae. Arcu cursus vitae congue mauris rhoncus aenean vel. Id semper risus in hendrerit gravida rutrum quisque. Ipsum suspendisse ultrices gravida dictum fusce. Tempus urna et pharetra pharetra.\r\n\r\nIn mollis nunc sed id semper risus in hendrerit gravida. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu. Felis eget nunc lobortis mattis aliquam faucibus purus in. At volutpat diam ut venenatis tellus in. Vitae purus faucibus ornare suspendisse sed nisi lacus. Neque gravida in fermentum et sollicitudin ac orci phasellus. Eget mi proin sed libero enim sed faucibus turpis. Pharetra magna ac placerat vestibulum. Morbi leo urna molestie at. Eget arcu dictum varius duis at. Aenean vel elit scelerisque mauris pellentesque. Ac felis donec et odio pellentesque diam. Suspendisse sed nisi lacus sed. Massa massa ultricies mi quis hendrerit dolor magna eget. Urna duis convallis convallis tellus id interdum velit. Dui vivamus arcu felis bibendum ut.', 64, '2020-04-20 13:14:06', '2020-04-20 13:14:06'),
(20, 'pharetra pharetra massa', 'undraw_social_girl_562b-1587408349.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna et pharetra pharetra massa massa ultricies mi. Sapien faucibus et molestie ac. Purus in massa tempor nec feugiat nisl pretium fusce id. Tortor dignissim convallis aenean et tortor. Quisque sagittis purus sit amet volutpat consequat. Eget nullam non nisi est. Vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis pellentesque. Quisque egestas diam in arcu cursus euismod quis viverra.\r\n\r\nEt odio pellentesque diam volutpat commodo sed. Id eu nisl nunc mi ipsum faucibus vitae aliquet. Facilisi cras fermentum odio eu. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Ultrices neque ornare aenean euismod elementum. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Adipiscing elit pellentesque habitant morbi tristique senectus. Velit dignissim sodales ut eu. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Sit amet cursus sit amet dictum sit. Nisl condimentum id venenatis a condimentum vitae. Arcu cursus vitae congue mauris rhoncus aenean vel.', 64, '2020-04-20 13:15:49', '2020-04-20 13:15:49'),
(21, 'Tempus urna et pharetra', 'undraw_through_the_park_lxnl-1587408381.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna et pharetra pharetra massa massa ultricies mi. Sapien faucibus et molestie ac. Purus in massa tempor nec feugiat nisl pretium fusce id. Tortor dignissim convallis aenean et tortor. Quisque sagittis purus sit amet volutpat consequat. Eget nullam non nisi est. Vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis pellentesque. Quisque egestas diam in arcu cursus euismod quis viverra.\r\n\r\nEt odio pellentesque diam volutpat commodo sed. Id eu nisl nunc mi ipsum faucibus vitae aliquet. Facilisi cras fermentum odio eu. Nec feugiat nisl pretium fusce id velit ut tortor pretium. Ultrices neque ornare aenean euismod elementum. Justo donec enim diam vulputate ut pharetra sit amet aliquam. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Adipiscing elit pellentesque habitant morbi tristique senectus. Velit dignissim sodales ut eu. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Sit amet cursus sit amet dictum sit. Nisl condimentum id venenatis a condimentum vitae. Arcu cursus vitae congue mauris rhoncus aenean vel. Id semper risus in hendrerit gravida rutrum quisque. Ipsum suspendisse ultrices gravida dictum fusce. Tempus urna et pharetra pharetra.\r\n\r\nIn mollis nunc sed id semper risus in hendrerit gravida. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu. Felis eget nunc lobortis mattis aliquam faucibus purus in. At volutpat diam ut venenatis tellus in. Vitae purus faucibus ornare suspendisse sed nisi lacus. Neque gravida in fermentum et sollicitudin ac orci phasellus. Eget mi proin sed libero enim sed faucibus turpis. Pharetra magna ac placerat vestibulum. Morbi leo urna molestie at. Eget arcu dictum varius duis at. Aenean vel elit scelerisque mauris pellentesque. Ac felis donec et odio pellentesque diam. Suspendisse sed nisi lacus sed. Massa massa ultricies mi quis hendrerit dolor magna eget. Urna duis convallis convallis tellus id interdum velit. Dui vivamus arcu felis bibendum ut.', 64, '2020-04-20 13:16:21', '2020-04-20 13:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(63, 'hiren b', 'hiren@123.com', NULL, '$2y$10$oOXI.n3bpdppoV4kZFqGWedMrWqz7guhgxgYHlcoomoKLz4XszlQq', NULL, '2020-04-13 09:44:49', '2020-04-23 09:07:21'),
(64, 'Anil bhajgotar', 'anil@gmail.com', NULL, '$2y$10$axkGkXy9PJTrKZwZg9qfROfu1pRRbYDJw.VzZbWYp9nXtfDAihOEG', NULL, '2020-04-20 12:35:33', '2020-04-20 12:35:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
