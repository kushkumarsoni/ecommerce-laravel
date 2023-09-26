-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 07:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resido`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'XIWrtwD0ltB9HQJqWVmWicgp0ctEQ327', 1, '2022-09-29 07:59:39', '2022-09-29 07:59:39', '2022-09-29 07:59:39'),
(2, 1, 'hZCivYvpuNC5NDueQkZsfvCHMLeRF7zU', 1, '2022-09-29 08:01:02', '2022-09-29 08:01:02', '2022-09-29 08:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` text DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sign up', 'sign-up', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section class=\"theme-bg call-to-act-wrap\">\n                                        <div class=\"container\">\n                                            <div class=\"row\">\n                                                <div class=\"col-lg-12\">\n\n                                                    <div class=\"call-to-act\">\n                                                        <div class=\"call-to-act-head\">\n                                                            <h3>Want to Become a Real Estate Agent?</h3>\n                                                            <span>We\'ll help you to grow your career and growth.</span>\n                                                        </div>\n                                                        <a href=\"/register\" class=\"btn btn-call-to-act\">Sign Up Today</a>\n                                                    </div>\n\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </section>\n                                </div>\n                ', 'published', NULL, '2022-09-29 08:01:04', '2022-09-29 08:01:04'),
(2, 'Download App', 'download-app', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section class=\"bg-light\">\n                                        <div class=\"container\">\n                                            <div class=\"row align-items-center\">\n                                                <div class=\"col-lg-7 col-md-12 col-sm-12 content-column\">\n                                                    <div class=\"content_block_2\">\n                                                        <div class=\"content-box\">\n                                                        <div class=\"sec-title light\">\n                                                            <p class=\"text-blue\">Download apps</p>\n                                                            <h2>Download App Free App For Android And IPhone</h2>\n                                                        </div>\n                                                        <div class=\"text\"><p></p></div>\n                                                        <div class=\"btn-box clearfix mt-5\">\n                                                            <a href=\"\" class=\"download-btn play-store\"\n                                                            ><i class=\"fab fa-google-play\"></i> <span>Download on</span>\n                                                            <h3>Google Play</h3></a\n                                                            >\n                                                            <a href=\"\" class=\"download-btn app-store\"\n                                                            ><i class=\"fab fa-apple\"></i> <span>Download on</span>\n                                                            <h3>App Store</h3></a\n                                                            >\n                                                        </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div class=\"col-lg-5 col-md-12 col-sm-12 image-column\">\n                                                    <div class=\"image-box\">\n                                                        <figure class=\"image\">\n                                                        <img\n                                                            src=\"/storage/banners/app.png\"\n                                                            alt=\"image\"\n                                                            class=\"img-fluid\"\n                                                        />\n                                                        </figure>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </section>\n                                </div>\n                ', 'published', NULL, '2022-09-29 08:01:04', '2022-09-29 08:01:04'),
(3, 'Download App Footer', 'download-app-footer', '', '\n                                <div class=\"raw-html-embed\">\n                                    <div class=\"footer-widget\">\n                                        <h4 class=\"widget-title\">Download Apps</h4>\n                                        <a href=\"#\" class=\"other-store-link\">\n                                            <div class=\"other-store-app\">\n                                                <div class=\"os-app-icon\">\n                                                    <i class=\"lni-playstore theme-cl\"></i>\n                                                </div>\n                                                <div class=\"os-app-caps\">\n                                                    Google Play\n                                                    <span>Get It Now</span>\n                                                </div>\n                                            </div>\n                                        </a>\n                                        <a href=\"#\" class=\"other-store-link\">\n                                            <div class=\"other-store-app\">\n                                                <div class=\"os-app-icon\">\n                                                    <i class=\"lni-apple theme-cl\"></i>\n                                                </div>\n                                                <div class=\"os-app-caps\">\n                                                    App Store\n                                                    <span>Now it Available</span>\n                                                </div>\n                                            </div>\n                                        </a>\n                                    </div>\n                                </div>\n                ', 'published', NULL, '2022-09-29 08:01:04', '2022-09-29 08:01:04'),
(4, 'How It Works?', 'how-it-works', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <section>\n                                            <div class=\"container\">\n\n                                                <div class=\"row justify-content-center\">\n                                                    <div class=\"col-lg-7 col-md-10 text-center\">\n                                                        <div class=\"sec-heading center\">\n                                                            <h2>How It Works?</h2>\n                                                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"row\">\n                                                    <div class=\"col-lg-4 col-md-4\">\n                                                        <div class=\"middle-icon-features-item\">\n                                                            <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-success\"><i class=\"ti-receipt text-success\"></i></div></div>\n                                                            <div class=\"middle-icon-features-content\">\n                                                                <h4>Evaluate Property</h4>\n                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-4 col-md-4\">\n                                                        <div class=\"middle-icon-features-item\">\n                                                            <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-warning\"><i class=\"ti-user text-warning\"></i></div></div>\n                                                            <div class=\"middle-icon-features-content\">\n                                                                <h4>Meet Your Agent</h4>\n                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-4 col-md-4\">\n                                                        <div class=\"middle-icon-features-item remove\">\n                                                            <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-blue\"><i class=\"ti-shield text-blue\"></i></div></div>\n                                                            <div class=\"middle-icon-features-content\">\n                                                                <h4>Close The Deal</h4>\n                                                                <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                            </div>\n                                        </section>\n                                    </div>', 'published', NULL, '2022-09-29 08:01:04', '2022-09-29 08:01:04'),
(5, 'Achievement', 'achievement', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <section>\n                                            <div class=\"container\">\n\n                                                <div class=\"row justify-content-center\">\n                                                    <div class=\"col-lg-7 col-md-10 text-center\">\n                                                        <div class=\"sec-heading center mb-4\">\n                                                            <h2>Achievement</h2>\n                                                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"row\">\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>20500+</h4>\n                                                                <p>Completed Property</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>7600+</h4>\n                                                                <p>Property Sales</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>12300+</h4>\n                                                                <p>Apartment Rent</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                    <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                        <div class=\"achievement-wrap\">\n                                                            <div class=\"achievement-content\">\n                                                                <h4>15200+</h4>\n                                                                <p>Happy Clients</p>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n\n                                                </div>\n\n                                            </div>\n                                        </section>\n                                        <div class=\"clearfix\"></div>\n                                    </div>', 'published', NULL, '2022-09-29 08:01:04', '2022-09-29 08:01:04'),
(6, 'Our Story', 'our-story', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <section>\n                                            <div class=\"container\">\n                                                <div class=\"row align-items-center\">\n\n                                                    <div class=\"col-lg-6 col-md-6\">\n                                                        <img src=\"/storage/block/sb.png\" class=\"img-fluid\" alt=\"\">\n                                                    </div>\n\n                                                    <div class=\"col-lg-6 col-md-6\">\n                                                        <div class=\"story-wrap explore-content\">\n\n                                                            <h2>Our Story</h2>\n                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\n\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </section>\n                                    </div>\n                ', 'published', NULL, '2022-09-29 08:01:04', '2022-09-29 08:01:04'),
(7, 'Our mission', 'our-mission', '', '\n                            <div class=\"raw-html-embed\">\n                                <section>\n                                    <div class=\"container\">\n\n                                        <div class=\"row\">\n                                            <div class=\"col-lg-12 col-md-12\">\n                                                <div class=\"sec-heading center\">\n                                                    <h2>Our Mission &amp; Work Process</h2>\n                                                    <p>Professional &amp; Dedicated Team</p>\n                                                </div>\n                                            </div>\n                                        </div>\n\n                                        <div class=\"row align-items-center\">\n\n                                            <div class=\"col-lg-6 col-md-6\">\n\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-lock theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>Fully Secure &amp; 24x7 Dedicated Support</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-twitter theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>Manage your Social &amp; Busness Account Carefully</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-layers theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>We are Very Hard Worker and loving</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n\n                                            </div>\n\n                                            <div class=\"col-lg-6 col-md-6\">\n                                                <img src=\"/storage/block/vec-2.png\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n\n                                        </div>\n                                    </div>\n                                </section>\n                            </div>\n                ', 'published', NULL, '2022-09-29 08:01:04', '2022-09-29 08:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

CREATE TABLE `blocks_translations` (
  `lang_code` varchar(191) NOT NULL,
  `blocks_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks_translations`
--

INSERT INTO `blocks_translations` (`lang_code`, `blocks_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Sign up', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section class=\"theme-bg call-to-act-wrap\">\n                                        <div class=\"container\">\n                                            <div class=\"row\">\n                                                <div class=\"col-lg-12\">\n\n                                                    <div class=\"call-to-act\">\n                                                        <div class=\"call-to-act-head\">\n                                                            <h3>Want to Become a Real Estate Agent?</h3>\n                                                            <span>We\'ll help you to grow your career and growth.</span>\n                                                        </div>\n                                                        <a href=\"/register\" class=\"btn btn-call-to-act\">Sign Up Today</a>\n                                                    </div>\n\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </section>\n                                </div>\n                '),
('vi', 2, 'Download App', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <section class=\"bg-light\">\n                                            <div class=\"container\">\n                                                <div class=\"row align-items-center\">\n                                                    <div class=\"col-lg-7 col-md-12 col-sm-12 content-column\">\n                                                        <div class=\"content_block_2\">\n                                                            <div class=\"content-box\">\n                                                            <div class=\"sec-title light\">\n                                                                <p class=\"text-blue\">Download apps</p>\n                                                                <h2>Download App Free App For Android And IPhone</h2>\n                                                            </div>\n                                                            <div class=\"text\"><p></p></div>\n                                                            <div class=\"btn-box clearfix mt-5\">\n                                                                <a href=\"\" class=\"download-btn play-store\"\n                                                                ><i class=\"fab fa-google-play\"></i> <span>Download on</span>\n                                                                <h3>Google Play</h3></a\n                                                                >\n                                                                <a href=\"\" class=\"download-btn app-store\"\n                                                                ><i class=\"fab fa-apple\"></i> <span>Download on</span>\n                                                                <h3>App Store</h3></a\n                                                                >\n                                                            </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                    <div class=\"col-lg-5 col-md-12 col-sm-12 image-column\">\n                                                        <div class=\"image-box\">\n                                                            <figure class=\"image\">\n                                                            <img\n                                                                src=\"/storage/banners/app.png\"\n                                                                alt=\"image\"\n                                                                class=\"img-fluid\"\n                                                            />\n                                                            </figure>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </section>\n                                    </div>\n\n                '),
('vi', 3, 'Download App Footer', '', '\n                                    <div class=\"raw-html-embed\">\n                                        <div class=\"footer-widget\">\n                                            <h4 class=\"widget-title\">Download Apps</h4>\n                                            <a href=\"#\" class=\"other-store-link\">\n                                                <div class=\"other-store-app\">\n                                                    <div class=\"os-app-icon\">\n                                                        <i class=\"lni-playstore theme-cl\"></i>\n                                                    </div>\n                                                    <div class=\"os-app-caps\">\n                                                        Google Play\n                                                        <span>Get It Now</span>\n                                                    </div>\n                                                </div>\n                                            </a>\n                                            <a href=\"#\" class=\"other-store-link\">\n                                                <div class=\"other-store-app\">\n                                                    <div class=\"os-app-icon\">\n                                                        <i class=\"lni-apple theme-cl\"></i>\n                                                    </div>\n                                                    <div class=\"os-app-caps\">\n                                                        App Store\n                                                        <span>Now it Available</span>\n                                                    </div>\n                                                </div>\n                                            </a>\n                                        </div>\n                                    </div>\n                '),
('vi', 4, 'How It Works?', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section>\n                                        <div class=\"container\">\n\n                                            <div class=\"row justify-content-center\">\n                                                <div class=\"col-lg-7 col-md-10 text-center\">\n                                                    <div class=\"sec-heading center\">\n                                                        <h2>How It Works?</h2>\n                                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                                                    </div>\n                                                </div>\n                                            </div>\n\n                                            <div class=\"row\">\n                                                <div class=\"col-lg-4 col-md-4\">\n                                                    <div class=\"middle-icon-features-item\">\n                                                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-success\"><i class=\"ti-receipt text-success\"></i></div></div>\n                                                        <div class=\"middle-icon-features-content\">\n                                                            <h4>Evaluate Property</h4>\n                                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"col-lg-4 col-md-4\">\n                                                    <div class=\"middle-icon-features-item\">\n                                                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-warning\"><i class=\"ti-user text-warning\"></i></div></div>\n                                                        <div class=\"middle-icon-features-content\">\n                                                            <h4>Meet Your Agent</h4>\n                                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"col-lg-4 col-md-4\">\n                                                    <div class=\"middle-icon-features-item remove\">\n                                                        <div class=\"icon-features-wrap\"><div class=\"middle-icon-large-features-box f-light-blue\"><i class=\"ti-shield text-blue\"></i></div></div>\n                                                        <div class=\"middle-icon-features-content\">\n                                                            <h4>Close The Deal</h4>\n                                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have Ipsum available.</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                            </div>\n\n                                        </div>\n                                    </section>\n                                </div>'),
('vi', 5, 'Achievement', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section>\n                                        <div class=\"container\">\n\n                                            <div class=\"row justify-content-center\">\n                                                <div class=\"col-lg-7 col-md-10 text-center\">\n                                                    <div class=\"sec-heading center mb-4\">\n                                                        <h2>Achievement</h2>\n                                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>\n                                                    </div>\n                                                </div>\n                                            </div>\n\n                                            <div class=\"row\">\n                                                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                    <div class=\"achievement-wrap\">\n                                                        <div class=\"achievement-content\">\n                                                            <h4>20500+</h4>\n                                                            <p>Completed Property</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                    <div class=\"achievement-wrap\">\n                                                        <div class=\"achievement-content\">\n                                                            <h4>7600+</h4>\n                                                            <p>Property Sales</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                    <div class=\"achievement-wrap\">\n                                                        <div class=\"achievement-content\">\n                                                            <h4>12300+</h4>\n                                                            <p>Apartment Rent</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                                <div class=\"col-lg-3 col-md-3 col-sm-6\">\n                                                    <div class=\"achievement-wrap\">\n                                                        <div class=\"achievement-content\">\n                                                            <h4>15200+</h4>\n                                                            <p>Happy Clients</p>\n                                                        </div>\n                                                    </div>\n                                                </div>\n\n                                            </div>\n\n                                        </div>\n                                    </section>\n                                    <div class=\"clearfix\"></div>\n                                </div>'),
('vi', 6, 'Our Story', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section>\n                                        <div class=\"container\">\n                                            <div class=\"row align-items-center\">\n\n                                                <div class=\"col-lg-6 col-md-6\">\n                                                    <img src=\"/storage/block/sb.png\" class=\"img-fluid\" alt=\"\">\n                                                </div>\n\n                                                <div class=\"col-lg-6 col-md-6\">\n                                                    <div class=\"story-wrap explore-content\">\n\n                                                        <h2>Our Story</h2>\n                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\n\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </section>\n                                </div>\n                '),
('vi', 7, 'Our Story', '', '\n                                <div class=\"raw-html-embed\">\n                                    <section>\n                                        <div class=\"container\">\n                                            <div class=\"row align-items-center\">\n\n                                                <div class=\"col-lg-6 col-md-6\">\n                                                    <img src=\"/storage/block/sb.png\" class=\"img-fluid\" alt=\"\">\n                                                </div>\n\n                                                <div class=\"col-lg-6 col-md-6\">\n                                                    <div class=\"story-wrap explore-content\">\n\n                                                        <h2>Our Story</h2>\n                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>\n\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </section>\n                                </div>\n                '),
('vi', 8, 'Our mission', '', '\n                            <div class=\"raw-html-embed\">\n                                <section>\n                                    <div class=\"container\">\n                                        <div class=\"row\">\n                                            <div class=\"col-lg-12 col-md-12\">\n                                                <div class=\"sec-heading center\">\n                                                    <h2>Our Mission &amp; Work Process</h2>\n                                                    <p>Professional &amp; Dedicated Team</p>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class=\"row align-items-center\">\n                                            <div class=\"col-lg-6 col-md-6\">\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-lock theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>Fully Secure &amp; 24x7 Dedicated Support</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-twitter theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>Manage your Social &amp; Busness Account Carefully</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n                                                <div class=\"icon-mi-left\">\n                                                    <i class=\"ti-layers theme-cl\"></i>\n                                                    <div class=\"icon-mi-left-content\">\n                                                        <h4>We are Very Hard Worker and loving</h4>\n                                                        <p>If you are an individual client, or just a business startup looking for good backlinks for your website.</p>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                            <div class=\"col-lg-6 col-md-6\">\n                                                <img src=\"/storage/block/vec-2.png\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n                                        </div>\n                                    </div>\n                                </section>\n                            </div>\n                ');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Latest news', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(3, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(4, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-09-29 08:01:25', '2022-09-29 08:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`lang_code`, `categories_id`, `name`, `description`) VALUES
('vi', 1, 'Tin tức mới nhất', NULL),
('vi', 2, 'Kiến trúc nhà', NULL),
('vi', 3, 'Thiết kế nhà', NULL),
('vi', 4, 'Vật liệu xây dựng', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Newark', 35, 1, NULL, 0, 1, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'newark'),
(2, 'Peoria', 17, 1, NULL, 0, 1, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'peoria'),
(3, 'O\'Fallon', 30, 1, NULL, 0, 1, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'ofallon'),
(4, 'Hampton', 55, 1, NULL, 0, 1, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'hampton'),
(5, 'Lakewood', 7, 1, NULL, 0, 1, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'lakewood'),
(6, 'Mesa', 4, 1, NULL, 0, 1, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'mesa'),
(7, 'Bryan', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'bryan'),
(8, 'Garland', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'garland'),
(9, 'Springfield', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'springfield'),
(10, 'Flint', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'flint'),
(11, 'Tacoma', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'tacoma'),
(12, 'Waterbury', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'waterbury'),
(13, 'Eagan', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'eagan'),
(14, 'Fort Smith', 5, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'fort-smith'),
(15, 'Carmichael', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', 'carmichael'),
(16, 'Daly City', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:53', 'daly-city'),
(17, 'Murrieta', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'murrieta'),
(18, 'Brentwood', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'brentwood'),
(19, 'Quincy', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'quincy'),
(20, 'Boulder', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'boulder'),
(21, 'Evanston', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'evanston'),
(22, 'Dothan', 1, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'dothan'),
(23, 'Antioch', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'antioch'),
(24, 'Madison', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'madison'),
(25, 'Victorville', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'victorville'),
(26, 'Billings', 31, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'billings'),
(27, 'Sandy Springs', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'sandy-springs'),
(28, 'Iowa City', 19, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'iowa-city'),
(29, 'Largo', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'largo'),
(30, 'Shreveport', 22, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'shreveport'),
(31, 'Kalamazoo', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'kalamazoo'),
(32, 'Round Rock', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'round-rock'),
(33, 'Richmond', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'richmond'),
(34, 'Columbia', 30, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'columbia'),
(35, 'Sandy', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'sandy'),
(36, 'Hoover', 1, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'hoover'),
(37, 'Fullerton', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'fullerton'),
(38, 'Rapid City', 49, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'rapid-city'),
(39, 'Newport Beach', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'newport-beach'),
(40, 'Columbus', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'columbus'),
(41, 'Palm Coast', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'palm-coast'),
(42, 'Albany', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'albany'),
(43, 'Jurupa Valley', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'jurupa-valley'),
(44, 'Providence', 47, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'providence'),
(45, 'Decatur', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'decatur'),
(46, 'Scranton', 45, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'scranton'),
(47, 'Anaheim', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'anaheim'),
(48, 'Rochester', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'rochester'),
(49, 'Buffalo', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'buffalo'),
(50, 'Santa Ana', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'santa-ana'),
(51, 'Sunnyvale', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'sunnyvale'),
(52, 'Augusta-Richmond County consolidated government', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'augusta-richmond-county-consolidated-government'),
(53, 'Milwaukee', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'milwaukee'),
(54, 'Conroe', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'conroe'),
(55, 'Savannah', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'savannah'),
(56, 'German', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'german'),
(57, 'Costa Mesa', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'costa-mesa'),
(58, 'New Haven', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'new-haven'),
(59, 'Westland', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'westland'),
(60, 'Waldorf', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'waldorf'),
(61, 'Cedar Rapids', 19, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'cedar-rapids'),
(62, 'Troy', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'troy'),
(63, 'Kirkland', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'kirkland'),
(64, 'Santa Barbara', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'santa-barbara'),
(65, 'Lake Forest', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'lake-forest'),
(66, 'Chino', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'chino'),
(67, 'Tucson', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'tucson'),
(68, 'Boise', 16, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'boise'),
(69, 'Joliet', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'joliet'),
(70, 'Metairie', 22, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'metairie'),
(71, 'Moreno Valley', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'moreno-valley'),
(72, 'Elizabeth', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'elizabeth'),
(73, 'Wyoming', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'wyoming'),
(74, 'Norman', 42, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'norman'),
(75, 'Frisco', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'frisco'),
(76, 'Waterloo', 19, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'waterloo'),
(77, 'Oakland', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'oakland'),
(78, 'Jonesboro', 5, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'jonesboro'),
(79, 'Mission', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'mission'),
(80, 'Midland', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'midland'),
(81, 'Lansing', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'lansing'),
(82, 'Springdale', 5, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'springdale'),
(83, 'Bay', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'bay'),
(84, 'Apple Valley', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'apple-valley'),
(85, 'Brockton', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'brockton'),
(86, 'Poinciana', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'poinciana'),
(87, 'Davis', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'davis'),
(88, 'Saint Louis', 30, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'saint-louis'),
(89, 'Lehigh Acres', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'lehigh-acres'),
(90, 'Henderson', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'henderson'),
(91, 'Los Angeles', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'los-angeles'),
(92, 'Boca Raton', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'boca-raton'),
(93, 'Union City', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'union-city'),
(94, 'Lakeland', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'lakeland'),
(95, 'Mount Pleasant', 48, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'mount-pleasant'),
(96, 'Des Moines', 19, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'des-moines'),
(97, 'Asheville', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'asheville'),
(98, 'West Palm Beach', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'west-palm-beach'),
(99, 'Bayonne', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'bayonne'),
(100, 'Coral Springs', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'coral-springs'),
(101, 'Atlanta', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'atlanta'),
(102, 'Redlands', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'redlands'),
(103, 'Toms River', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'toms-river'),
(104, 'Palmdale', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'palmdale'),
(105, 'Youngs', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'youngs'),
(106, 'Frederick', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'frederick'),
(107, 'Fargo', 39, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'fargo'),
(108, 'Cedar Park', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'cedar-park'),
(109, 'Fort Collins', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'fort-collins'),
(110, 'Portsmouth', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'portsmouth'),
(111, 'Fremont', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'fremont'),
(112, 'Bloomington', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'bloomington'),
(113, 'Woodbury', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'woodbury'),
(114, 'Camden', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'camden'),
(115, 'Gresham', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'gresham'),
(116, 'Lorain', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'lorain'),
(117, 'South San Francisco', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'south-san-francisco'),
(118, 'Manchester', 34, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'manchester'),
(119, 'Longview', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'longview'),
(120, 'Richardson', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'richardson'),
(121, 'Yonkers', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'yonkers'),
(122, 'Pharr', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'pharr'),
(123, 'Redding', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'redding'),
(124, 'Fontana', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'fontana'),
(125, 'Fort Lauderdale', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'fort-lauderdale'),
(126, 'Fort Wayne', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:53', '2022-09-29 08:00:53', 'fort-wayne'),
(127, 'Lancaster', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lancaster'),
(128, 'Flower Mound', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'flower-mound'),
(129, 'Aurora', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'aurora'),
(130, 'Jacksonville', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'jacksonville'),
(131, 'Carlsbad', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'carlsbad'),
(132, 'Grand Prairie', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'grand-prairie'),
(133, 'Evansville', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'evansville'),
(134, 'Saint Cloud', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'saint-cloud'),
(135, 'Weston', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'weston'),
(136, 'Greensboro', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'greensboro'),
(137, 'Vallejo', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'vallejo'),
(138, 'Bellflower', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'bellflower'),
(139, 'Kenner', 22, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'kenner'),
(140, 'Albuquerque', 36, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'albuquerque'),
(141, 'Town \'n\' Country', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'town-n-country'),
(142, 'Cary', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'cary'),
(143, 'Loveland', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'loveland'),
(144, 'Menifee', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'menifee'),
(145, 'Mobile', 1, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'mobile'),
(146, 'Orem', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'orem'),
(147, 'Baltimore', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'baltimore'),
(148, 'Brownsville', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'brownsville'),
(149, 'Riverview', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'riverview'),
(150, 'Lafayette', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lafayette'),
(151, 'Duluth', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'duluth'),
(152, 'Everett', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'everett'),
(153, 'Southfield', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'southfield'),
(154, 'Pawtucket', 47, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'pawtucket'),
(155, 'Reno', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'reno'),
(156, 'Layton', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'layton'),
(157, 'Lewisville', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lewisville'),
(158, 'Guaynabo', 46, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'guaynabo'),
(159, 'Livermore', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'livermore'),
(160, 'Memphis', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'memphis'),
(161, 'Lee\'s Summit', 30, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lees-summit'),
(162, 'Norwalk', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'norwalk'),
(163, 'San Antonio', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'san-antonio'),
(164, 'Hemet', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'hemet'),
(165, 'Abilene', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'abilene'),
(166, 'Bolingbrook', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'bolingbrook'),
(167, 'Roswell', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'roswell'),
(168, 'Huntsville', 1, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'huntsville'),
(169, 'Livonia', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'livonia'),
(170, 'Fort Worth', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'fort-worth'),
(171, 'Tracy', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'tracy'),
(172, 'Nashville', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'nashville'),
(173, 'Independence', 30, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'independence'),
(174, 'Colorado Springs', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'colorado-springs'),
(175, 'Camarillo', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'camarillo'),
(176, 'Kendall', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'kendall'),
(177, 'Parma', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'parma'),
(178, 'Shawnee', 20, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'shawnee'),
(179, 'Bk', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'bk'),
(180, 'San Tan Valley', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'san-tan-valley'),
(181, 'Alafaya', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'alafaya'),
(182, 'Saint Paul', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'saint-paul'),
(183, 'Boston', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'boston'),
(184, 'Dearborn', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'dearborn'),
(185, 'Lawrence', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lawrence'),
(186, 'Nampa', 16, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'nampa'),
(187, 'Vista', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'vista'),
(188, 'Palm Bay', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'palm-bay'),
(189, 'Lawton', 42, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lawton'),
(190, 'Reading', 45, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'reading'),
(191, 'New Britain', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'new-britain'),
(192, 'Waukesha', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'waukesha'),
(193, 'The Woodlands', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'the-woodlands'),
(194, 'Lubbock', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lubbock'),
(195, 'North Las Vegas', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'north-las-vegas'),
(196, 'Baton Rouge', 22, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'baton-rouge'),
(197, 'Chicago', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'chicago'),
(198, 'Garden Grove', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'garden-grove'),
(199, 'South Jordan', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'south-jordan'),
(200, 'Cape Coral', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'cape-coral'),
(201, 'Chesapeake', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'chesapeake'),
(202, 'Westminster', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'westminster'),
(203, 'Irvine', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'irvine'),
(204, 'Arlington', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'arlington'),
(205, 'Johns Creek', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'johns-creek'),
(206, 'Edmond', 42, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'edmond'),
(207, 'Bend', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'bend'),
(208, 'Las Vegas', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'las-vegas'),
(209, 'Carrollton', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'carrollton'),
(210, 'Cleveland', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'cleveland'),
(211, 'West Valley City', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'west-valley-city'),
(212, 'Grand Rapids', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'grand-rapids'),
(213, 'Federal Way', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'federal-way'),
(214, 'Saint Petersburg', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'saint-petersburg'),
(215, 'Turlock', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'turlock'),
(216, 'Riverside', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'riverside'),
(217, 'Berkeley', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'berkeley'),
(218, 'Santa Fe', 36, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'santa-fe'),
(219, 'Chino Hills', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'chino-hills'),
(220, 'Schaumburg', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'schaumburg'),
(221, 'Clovis', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'clovis'),
(222, 'Torrance', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'torrance'),
(223, 'McKinney', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'mckinney'),
(224, 'Roanoke', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'roanoke'),
(225, 'Corona', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'corona'),
(226, 'Fairfield', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'fairfield'),
(227, 'Downey', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'downey'),
(228, 'Macon', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'macon'),
(229, 'Athens-Clarke County unified government', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'athens-clarke-county-unified-government'),
(230, 'Temecula', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'temecula'),
(231, 'Concord', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'concord'),
(232, 'Corpus Christi', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'corpus-christi'),
(233, 'Rancho Cordova', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'rancho-cordova'),
(234, 'Tampa', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'tampa'),
(235, 'Fayetteville', 5, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'fayetteville'),
(236, 'Montgomery', 1, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'montgomery'),
(237, 'Kansas City', 30, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'kansas-city'),
(238, 'College Station', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'college-station'),
(239, 'Green Bay', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'green-bay'),
(240, 'Bossier City', 22, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'bossier-city'),
(241, 'Merced', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'merced'),
(242, 'Warner Robins', 13, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'warner-robins'),
(243, 'San Leandro', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'san-leandro'),
(244, 'Plano', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'plano'),
(245, 'Lynchburg', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'lynchburg'),
(246, 'Vacaville', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'vacaville'),
(247, 'Laredo', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'laredo'),
(248, 'El Cajon', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'el-cajon'),
(249, 'Cicero', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'cicero'),
(250, 'Rio Rancho', 36, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:54', '2022-09-29 08:00:54', 'rio-rancho'),
(251, 'Marysville', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'marysville'),
(252, 'Alhambra', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'alhambra'),
(253, 'Carson', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'carson'),
(254, 'Citrus Heights', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'citrus-heights'),
(255, 'North Little Rock', 5, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'north-little-rock'),
(256, 'Atascocita', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'atascocita'),
(257, 'Erie', 45, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'erie'),
(258, 'Fresno', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'fresno'),
(259, 'High Point', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'high-point'),
(260, 'Pearland', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'pearland'),
(261, 'Denton', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'denton'),
(262, 'San Bernardino', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'san-bernardino'),
(263, 'Mesquite', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'mesquite'),
(264, 'Sioux Falls', 49, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'sioux-falls'),
(265, 'Charleston', 48, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'charleston'),
(266, 'Redwood City', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'redwood-city'),
(267, 'Paradise', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'paradise'),
(268, 'Upland', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'upland'),
(269, 'Paterson', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'paterson'),
(270, 'Pasco', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'pasco'),
(271, 'Schenectady', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'schenectady'),
(272, 'Worcester', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'worcester'),
(273, 'Pembroke Pines', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'pembroke-pines'),
(274, 'West Covina', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'west-covina'),
(275, 'Raleigh', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'raleigh'),
(276, 'Compton', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'compton'),
(277, 'Amarillo', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'amarillo'),
(278, 'Glendale', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'glendale'),
(279, 'Broken Arrow', 42, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'broken-arrow'),
(280, 'Hartford', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'hartford'),
(281, 'Warwick', 47, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'warwick'),
(282, 'Charlotte', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'charlotte'),
(283, 'Jersey City', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'jersey-city'),
(284, 'Long Beach', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'long-beach'),
(285, 'Spokane Valley', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'spokane-valley'),
(286, 'Mayagüez', 46, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'mayaguez'),
(287, 'San Diego', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'san-diego'),
(288, 'Chandler', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'chandler'),
(289, 'Pine Hills', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'pine-hills'),
(290, 'Tulsa', 42, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'tulsa'),
(291, 'Hawthorne', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'hawthorne'),
(292, 'Portland', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'portland'),
(293, 'Sunrise Manor', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'sunrise-manor'),
(294, 'Longmont', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'longmont'),
(295, 'Arden-Arcade', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'arden-arcade'),
(296, 'Anchorage', 2, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'anchorage'),
(297, 'Missoula', 31, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'missoula'),
(298, 'Newton', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'newton'),
(299, 'Cincinnati', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'cincinnati'),
(300, 'Santa Rosa', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'santa-rosa'),
(301, 'Centennial', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'centennial'),
(302, 'New Braunfels', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'new-braunfels'),
(303, 'Elk Grove', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'elk-grove'),
(304, 'Norfolk', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'norfolk'),
(305, 'Pompano Beach', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'pompano-beach'),
(306, 'Redondo Beach', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'redondo-beach'),
(307, 'Jackson', 29, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'jackson'),
(308, 'Casas Adobes', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'casas-adobes'),
(309, 'Gilbert', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'gilbert'),
(310, 'Santa Clara', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'santa-clara'),
(311, 'Maple Grove', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'maple-grove'),
(312, 'Davie', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'davie'),
(313, 'Victoria', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'victoria'),
(314, 'Ames', 19, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'ames'),
(315, 'Trenton', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'trenton'),
(316, 'Sunrise', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'sunrise'),
(317, 'Odessa', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'odessa'),
(318, 'Olathe', 20, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'olathe'),
(319, 'Urban Honolulu', 15, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'urban-honolulu'),
(320, 'Davenport', 19, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'davenport'),
(321, 'San Juan', 46, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'san-juan'),
(322, 'Milpitas', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'milpitas'),
(323, 'McAllen', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'mcallen'),
(324, 'Missouri City', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'missouri-city'),
(325, 'Kissimmee', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'kissimmee'),
(326, 'Hammond', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'hammond'),
(327, 'Elgin', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'elgin'),
(328, 'Passaic', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'passaic'),
(329, 'East Orange', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'east-orange'),
(330, 'Houston', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'houston'),
(331, 'Alameda', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'alameda'),
(332, 'Arlington Heights', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'arlington-heights'),
(333, 'Waco', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'waco'),
(334, 'Oklahoma City', 42, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'oklahoma-city'),
(335, 'South Gate', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'south-gate'),
(336, 'Appleton', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'appleton'),
(337, 'San Ramon', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'san-ramon'),
(338, 'Ellicott City', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'ellicott-city'),
(339, 'Durham', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'durham'),
(340, 'League City', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'league-city'),
(341, 'Killeen', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'killeen'),
(342, 'Arvada', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'arvada'),
(343, 'Folsom', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'folsom'),
(344, 'Clearwater', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'clearwater'),
(345, 'Cranston', 47, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'cranston'),
(346, 'Beaumont', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'beaumont'),
(347, 'Avondale', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'avondale'),
(348, 'Eau Claire', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'eau-claire'),
(349, 'Beaverton', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'beaverton'),
(350, 'Virginia Beach', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'virginia-beach'),
(351, 'Stamford', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'stamford'),
(352, 'Bellevue', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'bellevue'),
(353, 'Hollywood', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'hollywood'),
(354, 'Saint Joseph', 30, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'saint-joseph'),
(355, 'Thornton', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'thornton'),
(356, 'Toledo', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'toledo'),
(357, 'Akron', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'akron'),
(358, 'Gaithersburg', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'gaithersburg'),
(359, 'Roseville', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'roseville'),
(360, 'Pittsburgh', 45, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'pittsburgh'),
(361, 'Sparks', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'sparks'),
(362, 'Brooklyn Park', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'brooklyn-park'),
(363, 'Rock Hill', 48, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'rock-hill'),
(364, 'San Buenaventura', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'san-buenaventura'),
(365, 'Lynn', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'lynn'),
(366, 'Port Saint Lucie', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'port-saint-lucie'),
(367, 'Washington', 10, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'washington'),
(368, 'Tustin', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'tustin'),
(369, 'Lynwood', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'lynwood'),
(370, 'Lexington-Fayette  county', 21, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'lexington-fayette-county'),
(371, 'Las Cruces', 36, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'las-cruces'),
(372, 'North Charleston', 48, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:55', '2022-09-29 08:00:55', 'north-charleston'),
(373, 'Miramar', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'miramar'),
(374, 'Miami Gardens', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'miami-gardens'),
(375, 'Rochester Hills', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'rochester-hills'),
(376, 'Indio', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'indio'),
(377, 'Racine', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'racine'),
(378, 'Boynton Beach', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'boynton-beach'),
(379, 'Alexandria', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'alexandria'),
(380, 'San Francisco', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'san-francisco'),
(381, 'Cheektowaga', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'cheektowaga'),
(382, 'Deerfield Beach', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'deerfield-beach'),
(383, 'Miami', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'miami'),
(384, 'Medford', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'medford'),
(385, 'Ogden', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'ogden'),
(386, 'San Clemente', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'san-clemente'),
(387, 'Orange', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'orange'),
(388, 'Bridgeport', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'bridgeport'),
(389, 'Pleasanton', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'pleasanton'),
(390, 'Lake Charles', 22, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'lake-charles'),
(391, 'Thousand Oaks', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'thousand-oaks'),
(392, 'Chico', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'chico'),
(393, 'Goodyear', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'goodyear'),
(394, 'Kent', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'kent'),
(395, 'Plantation', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'plantation'),
(396, 'Gary', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'gary'),
(397, 'Sugar Land', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'sugar-land'),
(398, 'Silver Spring', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'silver-spring'),
(399, 'El Paso', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'el-paso'),
(400, 'Winston-Salem', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'winston-salem'),
(401, 'Lincoln', 32, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'lincoln'),
(402, 'Renton', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'renton'),
(403, 'Gainesville', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'gainesville'),
(404, 'Sacramento', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'sacramento'),
(405, 'Simi Valley', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'simi-valley'),
(406, 'Wilmington', 9, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'wilmington'),
(407, 'Wichita', 20, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'wichita'),
(408, 'Allen', 45, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'allen'),
(409, 'Danbury', 8, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'danbury'),
(410, 'Provo', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'provo'),
(411, 'San Marcos', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'san-marcos'),
(412, 'Escondido', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'escondido'),
(413, 'Caguas', 46, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'caguas'),
(414, 'Spokane', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'spokane'),
(415, 'Auburn', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'auburn'),
(416, 'Surprise', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'surprise'),
(417, 'Louisville/Jefferson County metro government', 21, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'louisvillejefferson-county-metro-government'),
(418, 'Spring Valley', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'spring-valley'),
(419, 'Yakima', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'yakima'),
(420, 'Clifton', 35, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'clifton'),
(421, 'Farmington Hills', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'farmington-hills'),
(422, 'Napa', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'napa'),
(423, 'Irving', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'irving'),
(424, 'Chula Vista', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'chula-vista'),
(425, 'Salinas', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'salinas'),
(426, 'Pasadena', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'pasadena'),
(427, 'Newport News', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'newport-news'),
(428, 'Miami Beach', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'miami-beach'),
(429, 'Tempe', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'tempe'),
(430, 'Sterling Heights', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'sterling-heights'),
(431, 'Hialeah', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'hialeah'),
(432, 'Gulfport', 29, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'gulfport'),
(433, 'Tuscaloosa', 1, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'tuscaloosa'),
(434, 'Plymouth', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'plymouth'),
(435, 'Bakersfield', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'bakersfield'),
(436, 'Mount Vernon', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'mount-vernon'),
(437, 'Fishers', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'fishers'),
(438, 'Santa Maria', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'santa-maria'),
(439, 'The Villages', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'the-villages'),
(440, 'Oxnard', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'oxnard'),
(441, 'Gastonia', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'gastonia'),
(442, 'Deltona', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'deltona'),
(443, 'Greenville', 38, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'greenville'),
(444, 'Salt Lake City', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'salt-lake-city'),
(445, 'Homestead', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'homestead'),
(446, 'Waukegan', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'waukegan'),
(447, 'Topeka', 20, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'topeka'),
(448, 'Clarksville', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'clarksville'),
(449, 'Franklin', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'franklin'),
(450, 'Little Rock', 5, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'little-rock'),
(451, 'Tallahassee', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'tallahassee'),
(452, 'Cambridge', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'cambridge'),
(453, 'Skokie', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'skokie'),
(454, 'New York', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'new-york'),
(455, 'Modesto', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'modesto'),
(456, 'Dallas', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'dallas'),
(457, 'Baldwin Park', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'baldwin-park'),
(458, 'Hesperia', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'hesperia');
INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `record_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(459, 'East Los Angeles', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'east-los-angeles'),
(460, 'Whittier', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'whittier'),
(461, 'Lauderhill', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'lauderhill'),
(462, 'Huntington Beach', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'huntington-beach'),
(463, 'Carmel', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'carmel'),
(464, 'Bellingham', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'bellingham'),
(465, 'Delray Beach', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'delray-beach'),
(466, 'Seattle', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'seattle'),
(467, 'Suffolk', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:56', '2022-09-29 08:00:56', 'suffolk'),
(468, 'Omaha', 32, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'omaha'),
(469, 'Champaign', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'champaign'),
(470, 'Vancouver', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'vancouver'),
(471, 'Meridian', 16, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'meridian'),
(472, 'Saint Charles', 30, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'saint-charles'),
(473, 'Inglewood', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'inglewood'),
(474, 'Harlingen', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'harlingen'),
(475, 'Austin', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'austin'),
(476, 'San Jose', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'san-jose'),
(477, 'Melbourne', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'melbourne'),
(478, 'Tyler', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'tyler'),
(479, 'Greeley', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'greeley'),
(480, 'West Jordan', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'west-jordan'),
(481, 'Perris', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'perris'),
(482, 'Johnson City', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'johnson-city'),
(483, 'New Orleans', 22, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'new-orleans'),
(484, 'Chattanooga', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'chattanooga'),
(485, 'San Angelo', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'san-angelo'),
(486, 'Syracuse', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'syracuse'),
(487, 'Ann Arbor', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'ann-arbor'),
(488, 'Visalia', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'visalia'),
(489, 'Naperville', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'naperville'),
(490, 'Scottsdale', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'scottsdale'),
(491, 'Lowell', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'lowell'),
(492, 'Mission Viejo', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'mission-viejo'),
(493, 'New Rochelle', 37, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'new-rochelle'),
(494, 'Manteca', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'manteca'),
(495, 'Florence-Graham', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'florence-graham'),
(496, 'Brandon', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'brandon'),
(497, 'North Richland Hills', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'north-richland-hills'),
(498, 'Murfreesboro', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'murfreesboro'),
(499, 'Enterprise', 33, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'enterprise'),
(500, 'Nashua', 34, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'nashua'),
(501, 'Rialto', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'rialto'),
(502, 'Rockford', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'rockford'),
(503, 'San Mateo', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'san-mateo'),
(504, 'Pueblo', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'pueblo'),
(505, 'Spring Hill', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'spring-hill'),
(506, 'Mountain View', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'mountain-view'),
(507, 'Phoenix', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'phoenix'),
(508, 'Dale City', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'dale-city'),
(509, 'Santa Clarita', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'santa-clarita'),
(510, 'Hillsboro', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'hillsboro'),
(511, 'Buena Park', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'buena-park'),
(512, 'Oshkosh', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'oshkosh'),
(513, 'Pittsburg', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'pittsburg'),
(514, 'Oceanside', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'oceanside'),
(515, 'Highlands Ranch', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'highlands-ranch'),
(516, 'Sioux City', 19, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'sioux-city'),
(517, 'Detroit', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'detroit'),
(518, 'Rancho Cucamonga', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'rancho-cucamonga'),
(519, 'Somerville', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'somerville'),
(520, 'Framingham', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'framingham'),
(521, 'New Bedford', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'new-bedford'),
(522, 'Philadelphia', 45, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'philadelphia'),
(523, 'Eugene', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'eugene'),
(524, 'Kenosha', 58, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'kenosha'),
(525, 'Bismarck', 39, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'bismarck'),
(526, 'Yorba Linda', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'yorba-linda'),
(527, 'Carolina', 46, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'carolina'),
(528, 'Knoxville', 50, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'knoxville'),
(529, 'Hayward', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'hayward'),
(530, 'Flagstaff', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'flagstaff'),
(531, 'Wichita Falls', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'wichita-falls'),
(532, 'Minneapolis', 28, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'minneapolis'),
(533, 'Canton', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'canton'),
(534, 'Glen Burnie', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'glen-burnie'),
(535, 'Laguna Niguel', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'laguna-niguel'),
(536, 'Bethlehem', 45, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'bethlehem'),
(537, 'Palo Alto', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'palo-alto'),
(538, 'Saint George', 52, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'saint-george'),
(539, 'Yuba City', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'yuba-city'),
(540, 'El Monte', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'el-monte'),
(541, 'Orlando', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'orlando'),
(542, 'Stockton', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'stockton'),
(543, 'Yuma', 4, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'yuma'),
(544, 'Indianapolis', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'indianapolis'),
(545, 'Edinburg', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'edinburg'),
(546, 'Warren', 27, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'warren'),
(547, 'Ontario', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'ontario'),
(548, 'Kennewick', 56, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:57', 'kennewick'),
(549, 'Birmingham', 1, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:57', '2022-09-29 08:00:58', 'birmingham'),
(550, 'Rockville', 25, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'rockville'),
(551, 'Muncie', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'muncie'),
(552, 'Overland Park', 20, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'overland-park'),
(553, 'Centreville', 55, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'centreville'),
(554, 'Santa Monica', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'santa-monica'),
(555, 'Dayton', 41, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'dayton'),
(556, 'Salem', 43, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'salem'),
(557, 'Ponce', 46, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'ponce'),
(558, 'Pomona', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'pomona'),
(559, 'Fall River', 26, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'fall-river'),
(560, 'Palatine', 17, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'palatine'),
(561, 'Bayamón', 46, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'bayamon'),
(562, 'South Bend', 18, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'south-bend'),
(563, 'Temple', 51, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'temple'),
(564, 'Denver', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'denver'),
(565, 'Broomfield', 7, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'broomfield'),
(566, 'Walnut Creek', 6, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'walnut-creek'),
(567, 'Fort Myers', 12, 1, NULL, 0, 0, 'published', '2022-09-29 08:00:58', '2022-09-29 08:00:58', 'fort-myers'),
(568, 'Airdrie', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'airdrie'),
(569, 'Grande Prairie', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'grande-prairie'),
(570, 'Red Deer', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'red-deer'),
(571, 'Beaumont', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'beaumont-alberta'),
(572, 'Hanna', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'hanna'),
(573, 'St. Albert', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'st-albert'),
(574, 'Bonnyville', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'bonnyville'),
(575, 'Hinton', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'hinton'),
(576, 'Spruce Grove', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'spruce-grove'),
(577, 'Brazeau', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'brazeau'),
(578, 'Irricana', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'irricana'),
(579, 'Strathcona County', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'strathcona-county'),
(580, 'Breton', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'breton'),
(581, 'Lacombe', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'lacombe'),
(582, 'Strathmore', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'strathmore'),
(583, 'Calgary', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'calgary'),
(584, 'Leduc', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'leduc'),
(585, 'Sylvan Lake', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'sylvan-lake'),
(586, 'Camrose', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'camrose'),
(587, 'Lethbridge', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'lethbridge'),
(588, 'Swan Hills', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'swan-hills'),
(589, 'Canmore', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'canmore'),
(590, 'McLennan', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'mclennan'),
(591, 'Taber', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'taber'),
(592, 'Didzbury', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'didzbury'),
(593, 'Medicine Hat', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'medicine-hat'),
(594, 'Turner Valley', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'turner-valley'),
(595, 'Drayton Valley', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'drayton-valley'),
(596, 'Olds', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'olds'),
(597, 'Vermillion', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'vermillion'),
(598, 'Edmonton', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'edmonton'),
(599, 'Onoway', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'onoway'),
(600, 'Wood Buffalo', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'wood-buffalo'),
(601, 'Ft. Saskatchewan', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'ft-saskatchewan'),
(602, 'Provost', 60, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'provost'),
(603, 'Burnaby', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'burnaby'),
(604, 'Lumby', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'lumby'),
(605, 'City of Port Moody', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'city-of-port-moody'),
(606, 'Cache Creek', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'cache-creek'),
(607, 'Maple Ridge', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'maple-ridge'),
(608, 'Prince George', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'prince-george'),
(609, 'Castlegar', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'castlegar'),
(610, 'Merritt', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'merritt'),
(611, 'Prince Rupert', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'prince-rupert'),
(612, 'Chemainus', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'chemainus'),
(613, 'Mission', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'mission-british-columbia'),
(614, 'Richmond', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'richmond-british-columbia'),
(615, 'Chilliwack', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'chilliwack'),
(616, 'Nanaimo', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'nanaimo'),
(617, 'Saanich', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'saanich'),
(618, 'Clearwater', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'clearwater-british-columbia'),
(619, 'Nelson', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'nelson'),
(620, 'Sooke', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'sooke'),
(621, 'Colwood', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'colwood'),
(622, 'New Westminster', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'new-westminster'),
(623, 'Sparwood', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'sparwood'),
(624, 'Coquitlam', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'coquitlam'),
(625, 'North Cowichan', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'north-cowichan'),
(626, 'Surrey', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'surrey'),
(627, 'Cranbrook', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'cranbrook'),
(628, 'North Vancouver', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'north-vancouver'),
(629, 'Terrace', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'terrace'),
(630, 'Dawson Creek', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'dawson-creek'),
(631, 'North Vancouver', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'north-vancouver-british-columbia'),
(632, 'Tumbler', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'tumbler'),
(633, 'Delta', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'delta'),
(634, 'Osoyoos', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'osoyoos'),
(635, 'Vancouver', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'vancouver-british-columbia'),
(636, 'Fernie', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'fernie'),
(637, 'Parksville', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'parksville'),
(638, 'Vancouver', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'vancouver-1'),
(639, 'Invermere', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'invermere'),
(640, 'Peace River', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'peace-river'),
(641, 'Vernon', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'vernon'),
(642, 'Kamloops', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'kamloops'),
(643, 'Penticton', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'penticton'),
(644, 'Victoria', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'victoria-british-columbia'),
(645, 'Kaslo', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'kaslo'),
(646, 'Port Alberni', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'port-alberni'),
(647, 'Whistler', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'whistler'),
(648, 'Langley', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'langley'),
(649, 'Port Hardy', 61, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'port-hardy'),
(650, 'Birtle', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'birtle'),
(651, 'Flin Flon', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'flin-flon'),
(652, 'Swan River', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'swan-river'),
(653, 'Brandon', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'brandon-manitoba'),
(654, 'Snow Lake', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'snow-lake'),
(655, 'The Pas', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'the-pas'),
(656, 'Cranberry Portage', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'cranberry-portage'),
(657, 'Steinbach', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'steinbach'),
(658, 'Thompson', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'thompson'),
(659, 'Dauphin', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'dauphin'),
(660, 'Stonewall', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'stonewall'),
(661, 'Winnipeg', 62, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'winnipeg'),
(662, 'Cap-Pele', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'cap-pele'),
(663, 'Miramichi', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'miramichi'),
(664, 'Saint John', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'saint-john'),
(665, 'Fredericton', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'fredericton'),
(666, 'Moncton', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'moncton'),
(667, 'Saint Stephen', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'saint-stephen'),
(668, 'Grand Bay-Westfield', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'grand-bay-westfield'),
(669, 'Oromocto', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'oromocto'),
(670, 'Shippagan', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'shippagan'),
(671, 'Grand Falls', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'grand-falls'),
(672, 'Port Elgin', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'port-elgin'),
(673, 'Sussex', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'sussex'),
(674, 'Memramcook', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'memramcook'),
(675, 'Sackville', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'sackville'),
(676, 'Tracadie-Sheila', 63, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'tracadie-sheila'),
(677, 'Town of Hay River', 65, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'town-of-hay-river'),
(678, 'Town of Inuvik', 65, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'town-of-inuvik'),
(679, 'Yellowknife', 65, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'yellowknife'),
(680, 'Amherst', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'amherst'),
(681, 'Hants County', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'hants-county'),
(682, 'Pictou', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'pictou'),
(683, 'Annapolis', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'annapolis'),
(684, 'Inverness County', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'inverness-county'),
(685, 'Pictou County', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'pictou-county'),
(686, 'Argyle', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'argyle'),
(687, 'Kentville', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'kentville'),
(688, 'Queens', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'queens'),
(689, 'Baddeck', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'baddeck'),
(690, 'County of Kings', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', 'county-of-kings'),
(691, 'Richmond', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:01:00', 'richmond-nova-scotia'),
(692, 'Bridgewater', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'bridgewater'),
(693, 'Lunenburg', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'lunenburg'),
(694, 'Shelburne', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'shelburne'),
(695, 'Cape Breton', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cape-breton'),
(696, 'Lunenburg County', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'lunenburg-county'),
(697, 'Stellarton', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'stellarton'),
(698, 'Chester', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'chester'),
(699, 'Mahone Bay', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'mahone-bay'),
(700, 'Truro', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'truro'),
(701, 'Cumberland County', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cumberland-county'),
(702, 'New Glasgow', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'new-glasgow'),
(703, 'Windsor', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'windsor'),
(704, 'East Hants', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'east-hants'),
(705, 'New Minas', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'new-minas'),
(706, 'Yarmouth', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'yarmouth'),
(707, 'Halifax', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'halifax'),
(708, 'Parrsboro', 66, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'parrsboro'),
(709, 'Ajax', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'ajax'),
(710, 'Halton', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'halton'),
(711, 'Peterborough', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'peterborough'),
(712, 'Atikokan', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'atikokan'),
(713, 'Halton Hills', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'halton-hills'),
(714, 'Pickering', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'pickering'),
(715, 'Barrie', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'barrie'),
(716, 'Hamilton', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'hamilton'),
(717, 'Port Bruce', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'port-bruce'),
(718, 'Belleville', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'belleville'),
(719, 'Hamilton-Wentworth', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'hamilton-wentworth'),
(720, 'Port Burwell', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'port-burwell'),
(721, 'Blandford-Blenheim', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'blandford-blenheim'),
(722, 'Hearst', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'hearst'),
(723, 'Port Colborne', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'port-colborne'),
(724, 'Blind River', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'blind-river'),
(725, 'Huntsville', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'huntsville-ontario'),
(726, 'Port Hope', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'port-hope'),
(727, 'Brampton', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'brampton'),
(728, 'Ingersoll', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'ingersoll'),
(729, 'Prince Edward', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'prince-edward'),
(730, 'Brant', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'brant'),
(731, 'James', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'james'),
(732, 'Quinte West', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'quinte-west'),
(733, 'Brantford', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'brantford'),
(734, 'Kanata', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'kanata'),
(735, 'Renfrew', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'renfrew'),
(736, 'Brock', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'brock'),
(737, 'Kincardine', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'kincardine'),
(738, 'Richmond Hill', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'richmond-hill'),
(739, 'Brockville', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'brockville'),
(740, 'King', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'king'),
(741, 'Sarnia', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'sarnia'),
(742, 'Burlington', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'burlington'),
(743, 'Kingston', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'kingston'),
(744, 'Sault Ste. Marie', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'sault-ste-marie'),
(745, 'Caledon', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'caledon'),
(746, 'Kirkland Lake', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'kirkland-lake'),
(747, 'Scarborough', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'scarborough'),
(748, 'Cambridge', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cambridge-ontario'),
(749, 'Kitchener', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'kitchener'),
(750, 'Scugog', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'scugog'),
(751, 'Chatham-Kent', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'chatham-kent'),
(752, 'Larder Lake', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'larder-lake'),
(753, 'Souix Lookout CoC Sioux Lookout', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'souix-lookout-coc-sioux-lookout'),
(754, 'Chesterville', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'chesterville'),
(755, 'Leamington', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'leamington'),
(756, 'Smiths Falls', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'smiths-falls'),
(757, 'Clarington', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'clarington'),
(758, 'Lennox-Addington', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'lennox-addington'),
(759, 'South-West Oxford', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'south-west-oxford'),
(760, 'Cobourg', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cobourg'),
(761, 'Lincoln', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'lincoln-ontario'),
(762, 'St. Catharines', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'st-catharines'),
(763, 'Cochrane', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cochrane'),
(764, 'Lindsay', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'lindsay'),
(765, 'St. Thomas', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'st-thomas'),
(766, 'Collingwood', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'collingwood'),
(767, 'London', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'london'),
(768, 'Stoney Creek', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'stoney-creek'),
(769, 'Cornwall', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cornwall'),
(770, 'Loyalist Township', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'loyalist-township'),
(771, 'Stratford', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'stratford'),
(772, 'Cumberland', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cumberland'),
(773, 'Markham', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'markham'),
(774, 'Sudbury', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'sudbury'),
(775, 'Deep River', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'deep-river'),
(776, 'Metro Toronto', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'metro-toronto'),
(777, 'Temagami', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'temagami'),
(778, 'Dundas', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'dundas'),
(779, 'Merrickville', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'merrickville'),
(780, 'Thorold', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'thorold'),
(781, 'Durham', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'durham-ontario'),
(782, 'Milton', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'milton'),
(783, 'Thunder Bay', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'thunder-bay'),
(784, 'Dymond', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'dymond'),
(785, 'Nepean', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'nepean'),
(786, 'Tillsonburg', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'tillsonburg'),
(787, 'Ear Falls', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'ear-falls'),
(788, 'Newmarket', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'newmarket'),
(789, 'Timmins', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'timmins'),
(790, 'East Gwillimbury', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'east-gwillimbury'),
(791, 'Niagara', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'niagara'),
(792, 'Toronto', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'toronto'),
(793, 'East Zorra-Tavistock', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'east-zorra-tavistock'),
(794, 'Niagara Falls', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'niagara-falls'),
(795, 'Uxbridge', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'uxbridge'),
(796, 'Elgin', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'elgin-ontario'),
(797, 'Niagara-on-the-Lake', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'niagara-on-the-lake'),
(798, 'Vaughan', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'vaughan'),
(799, 'Elliot Lake', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'elliot-lake'),
(800, 'North Bay', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'north-bay'),
(801, 'Wainfleet', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'wainfleet'),
(802, 'Flamborough', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'flamborough'),
(803, 'North Dorchester', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'north-dorchester'),
(804, 'Wasaga Beach', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'wasaga-beach'),
(805, 'Fort Erie', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'fort-erie'),
(806, 'North Dumfries', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'north-dumfries'),
(807, 'Waterloo', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'waterloo-ontario'),
(808, 'Fort Frances', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'fort-frances'),
(809, 'North York', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'north-york'),
(810, 'Waterloo', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'waterloo-1'),
(811, 'Gananoque', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'gananoque'),
(812, 'Norwich', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'norwich'),
(813, 'Welland', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'welland'),
(814, 'Georgina', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'georgina'),
(815, 'Oakville', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'oakville'),
(816, 'Wellesley', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'wellesley'),
(817, 'Glanbrook', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'glanbrook'),
(818, 'Orangeville', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'orangeville'),
(819, 'West Carleton', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'west-carleton'),
(820, 'Gloucester', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'gloucester'),
(821, 'Orillia', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'orillia'),
(822, 'West Lincoln', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'west-lincoln'),
(823, 'Goulbourn', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'goulbourn'),
(824, 'Osgoode', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'osgoode'),
(825, 'Whitby', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'whitby'),
(826, 'Gravenhurst', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'gravenhurst'),
(827, 'Oshawa', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'oshawa'),
(828, 'Wilmot', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'wilmot'),
(829, 'Grimsby', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'grimsby'),
(830, 'Ottawa', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'ottawa'),
(831, 'Windsor', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'windsor-ontario'),
(832, 'Guelph', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'guelph'),
(833, 'Ottawa-Carleton', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'ottawa-carleton'),
(834, 'Woolwich', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'woolwich'),
(835, 'Haldimand-Norfork', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'haldimand-norfork'),
(836, 'Owen Sound', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'owen-sound'),
(837, 'York', 68, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'york'),
(838, 'Alberton', 69, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'alberton'),
(839, 'Montague', 69, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'montague'),
(840, 'Stratford', 69, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'stratford-prince-edward-island'),
(841, 'Charlottetown', 69, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'charlottetown'),
(842, 'Souris', 69, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'souris'),
(843, 'Summerside', 69, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'summerside'),
(844, 'Cornwall', 69, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'cornwall-prince-edward-island'),
(845, 'Alma', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'alma'),
(846, 'Fleurimont', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'fleurimont'),
(847, 'Longueuil', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:00', '2022-09-29 08:01:00', 'longueuil'),
(848, 'Amos', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'amos'),
(849, 'Gaspe', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'gaspe'),
(850, 'Marieville', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'marieville'),
(851, 'Anjou', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'anjou'),
(852, 'Gatineau', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'gatineau'),
(853, 'Mount Royal', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'mount-royal'),
(854, 'Aylmer', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'aylmer'),
(855, 'Hull', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'hull'),
(856, 'Montreal', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'montreal'),
(857, 'Beauport', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'beauport'),
(858, 'Joliette', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'joliette'),
(859, 'Montreal Region', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'montreal-region'),
(860, 'Bromptonville', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'bromptonville'),
(861, 'Jonquiere', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'jonquiere'),
(862, 'Montreal-Est', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'montreal-est'),
(863, 'Brosssard', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'brosssard'),
(864, 'Lachine', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'lachine'),
(865, 'Quebec', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'quebec'),
(866, 'Chateauguay', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'chateauguay'),
(867, 'Lasalle', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'lasalle'),
(868, 'Saint-Leonard', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'saint-leonard'),
(869, 'Chicoutimi', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'chicoutimi'),
(870, 'Laurentides', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'laurentides'),
(871, 'Sherbrooke', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'sherbrooke'),
(872, 'Coaticook', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'coaticook'),
(873, 'LaSalle', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'lasalle-quebec'),
(874, 'Sorel', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'sorel'),
(875, 'Coaticook', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'coaticook-quebec'),
(876, 'Laval', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'laval'),
(877, 'Thetford Mines', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'thetford-mines'),
(878, 'Dorval', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'dorval'),
(879, 'Lennoxville', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'lennoxville'),
(880, 'Victoriaville', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'victoriaville'),
(881, 'Drummondville', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'drummondville'),
(882, 'Levis', 70, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'levis'),
(883, 'Avonlea', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'avonlea'),
(884, 'Melfort', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'melfort'),
(885, 'Swift Current', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'swift-current'),
(886, 'Colonsay', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'colonsay'),
(887, 'Nipawin', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'nipawin'),
(888, 'Tisdale', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'tisdale'),
(889, 'Craik', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'craik'),
(890, 'Prince Albert', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'prince-albert'),
(891, 'Unity', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'unity'),
(892, 'Creighton', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'creighton'),
(893, 'Regina', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'regina'),
(894, 'Weyburn', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'weyburn'),
(895, 'Eastend', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'eastend'),
(896, 'Saskatoon', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'saskatoon'),
(897, 'Wynyard', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'wynyard'),
(898, 'Esterhazy', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'esterhazy'),
(899, 'Shell Lake', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'shell-lake'),
(900, 'Yorkton', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'yorkton'),
(901, 'Gravelbourg', 71, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'gravelbourg'),
(902, 'Carcross', 72, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'carcross'),
(903, 'Whitehorse', 72, 2, NULL, 0, 0, 'published', '2022-09-29 08:01:01', '2022-09-29 08:01:01', 'whitehorse');

-- --------------------------------------------------------

--
-- Table structure for table `cities_backup`
--

CREATE TABLE `cities_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) NOT NULL,
  `cities_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `dial_code` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_featured`, `status`, `created_at`, `updated_at`, `code`, `dial_code`) VALUES
(1, 'United States of America', 'Americans', 0, 1, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52', NULL, NULL),
(2, 'Canada', 'Canada', 1, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries_backup`
--

CREATE TABLE `countries_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) NOT NULL,
  `countries_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text DEFAULT NULL,
  `lang_meta_origin` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '7a686f05f715caf7b996a5276057a872', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', 'acff5f322cfa359c214b39660fbc0e79', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', 'ddbd55d104384caf876321b7dd25f7bf', 2, 'Botble\\Menu\\Models\\Menu'),
(4, 'en_US', '4299b4a439b7db8f0ec3e97221cbdd3a', 3, 'Botble\\Menu\\Models\\Menu'),
(5, 'en_US', '3c44799c4aceecfefcf8624c1934c61d', 4, 'Botble\\Menu\\Models\\Menu'),
(6, 'vi', 'd012ff96427a6b1ca4f856eb5c5c065c', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(7, 'vi', 'acff5f322cfa359c214b39660fbc0e79', 5, 'Botble\\Menu\\Models\\Menu'),
(8, 'vi', 'ddbd55d104384caf876321b7dd25f7bf', 6, 'Botble\\Menu\\Models\\Menu'),
(9, 'vi', '4299b4a439b7db8f0ec3e97221cbdd3a', 7, 'Botble\\Menu\\Models\\Menu'),
(10, 'vi', '3c44799c4aceecfefcf8624c1934c61d', 8, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `language_meta_backup`
--

CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text DEFAULT NULL,
  `lang_meta_origin` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(96, 0, 'c-1', 10, 'image/png', 138074, 'cities/c-1.png', '[]', '2022-09-29 08:00:49', '2022-09-29 08:00:49', NULL),
(97, 0, 'c-2', 10, 'image/png', 157272, 'cities/c-2.png', '[]', '2022-09-29 08:00:50', '2022-09-29 08:00:50', NULL),
(98, 0, 'c-3', 10, 'image/png', 137387, 'cities/c-3.png', '[]', '2022-09-29 08:00:50', '2022-09-29 08:00:50', NULL),
(99, 0, 'c-4', 10, 'image/png', 145476, 'cities/c-4.png', '[]', '2022-09-29 08:00:51', '2022-09-29 08:00:51', NULL),
(100, 0, 'c-5', 10, 'image/png', 134127, 'cities/c-5.png', '[]', '2022-09-29 08:00:51', '2022-09-29 08:00:51', NULL),
(101, 0, 'c-6', 10, 'image/png', 148207, 'cities/c-6.png', '[]', '2022-09-29 08:00:52', '2022-09-29 08:00:52', NULL),
(102, 0, 'avatar', 11, 'image/jpeg', 151486, 'users/avatar.jpg', '[]', '2022-09-29 08:01:01', '2022-09-29 08:01:01', NULL),
(103, 0, 'sb', 12, 'image/png', 102140, 'block/sb.png', '[]', '2022-09-29 08:01:02', '2022-09-29 08:01:02', NULL),
(104, 0, 'vec-2', 12, 'image/png', 227757, 'block/vec-2.png', '[]', '2022-09-29 08:01:03', '2022-09-29 08:01:03', NULL),
(105, 0, 'app', 13, 'image/png', 159623, 'banners/app.png', '[]', '2022-09-29 08:01:04', '2022-09-29 08:01:04', NULL),
(106, 0, 'banner-1', 13, 'image/jpeg', 271728, 'banners/banner-1.jpg', '[]', '2022-09-29 08:01:04', '2022-09-29 08:01:04', NULL),
(107, 0, 'banner-2', 13, 'image/jpeg', 201045, 'banners/banner-2.jpg', '[]', '2022-09-29 08:01:06', '2022-09-29 08:01:06', NULL),
(108, 0, 'banner-3', 13, 'image/jpeg', 329351, 'banners/banner-3.jpg', '[]', '2022-09-29 08:01:06', '2022-09-29 08:01:06', NULL),
(109, 0, 'banner-4', 13, 'image/png', 264428, 'banners/banner-4.png', '[]', '2022-09-29 08:01:08', '2022-09-29 08:01:08', NULL),
(110, 0, 'banner-5', 13, 'image/png', 402790, 'banners/banner-5.png', '[]', '2022-09-29 08:01:08', '2022-09-29 08:01:08', NULL),
(111, 0, 'banner-6', 13, 'image/png', 236548, 'banners/banner-6.png', '[]', '2022-09-29 08:01:09', '2022-09-29 08:01:09', NULL),
(112, 0, 'banner-svg', 13, 'image/jpeg', 38459, 'banners/banner-svg.jpg', '[]', '2022-09-29 08:01:10', '2022-09-29 08:01:10', NULL),
(113, 0, 'banner', 13, 'video/mp4', 9886072, 'banners/banner.mp4', '[]', '2022-09-29 08:01:11', '2022-09-29 08:01:11', NULL),
(114, 0, 'banner-7', 13, 'image/svg+xml', 20027, 'banners/banner-7.svg', '[]', '2022-09-29 08:01:11', '2022-09-29 08:01:11', NULL),
(115, 0, 'home-2', 13, 'image/png', 33319, 'banners/home-2.png', '[]', '2022-09-29 08:01:11', '2022-09-29 08:01:11', NULL),
(116, 0, 'new-banner', 13, 'image/jpeg', 350945, 'banners/new-banner.jpg', '[]', '2022-09-29 08:01:12', '2022-09-29 08:01:12', NULL),
(117, 0, 'favicon', 14, 'image/png', 3178, 'general/favicon.png', '[]', '2022-09-29 08:01:13', '2022-09-29 08:01:13', NULL),
(118, 0, 'img-loading', 14, 'image/jpeg', 786, 'general/img-loading.jpg', '[]', '2022-09-29 08:01:13', '2022-09-29 08:01:13', NULL),
(119, 0, 'logo-light', 14, 'image/png', 10875, 'general/logo-light.png', '[]', '2022-09-29 08:01:13', '2022-09-29 08:01:13', NULL),
(120, 0, 'logo', 14, 'image/png', 11350, 'general/logo.png', '[]', '2022-09-29 08:01:14', '2022-09-29 08:01:14', NULL),
(121, 0, 'screenshot', 14, 'image/png', 165692, 'general/screenshot.png', '[]', '2022-09-29 08:01:14', '2022-09-29 08:01:14', NULL),
(122, 0, '1', 15, 'image/jpeg', 136733, 'news/1.jpg', '[]', '2022-09-29 08:01:14', '2022-09-29 08:01:14', NULL),
(123, 0, '10', 15, 'image/jpeg', 107306, 'news/10.jpg', '[]', '2022-09-29 08:01:15', '2022-09-29 08:01:15', NULL),
(124, 0, '11', 15, 'image/jpeg', 158705, 'news/11.jpg', '[]', '2022-09-29 08:01:15', '2022-09-29 08:01:15', NULL),
(125, 0, '12', 15, 'image/jpeg', 169224, 'news/12.jpg', '[]', '2022-09-29 08:01:16', '2022-09-29 08:01:16', NULL),
(126, 0, '13', 15, 'image/jpeg', 209836, 'news/13.jpg', '[]', '2022-09-29 08:01:16', '2022-09-29 08:01:16', NULL),
(127, 0, '14', 15, 'image/jpeg', 244640, 'news/14.jpg', '[]', '2022-09-29 08:01:17', '2022-09-29 08:01:17', NULL),
(128, 0, '15', 15, 'image/jpeg', 215801, 'news/15.jpg', '[]', '2022-09-29 08:01:17', '2022-09-29 08:01:17', NULL),
(129, 0, '16', 15, 'image/jpeg', 127110, 'news/16.jpg', '[]', '2022-09-29 08:01:17', '2022-09-29 08:01:17', NULL),
(130, 0, '17', 15, 'image/jpeg', 178736, 'news/17.jpg', '[]', '2022-09-29 08:01:18', '2022-09-29 08:01:18', NULL),
(131, 0, '18', 15, 'image/jpeg', 127500, 'news/18.jpg', '[]', '2022-09-29 08:01:18', '2022-09-29 08:01:18', NULL),
(132, 0, '19', 15, 'image/jpeg', 148213, 'news/19.jpg', '[]', '2022-09-29 08:01:19', '2022-09-29 08:01:19', NULL),
(133, 0, '2', 15, 'image/jpeg', 140241, 'news/2.jpg', '[]', '2022-09-29 08:01:19', '2022-09-29 08:01:19', NULL),
(134, 0, '20', 15, 'image/jpeg', 123100, 'news/20.jpg', '[]', '2022-09-29 08:01:19', '2022-09-29 08:01:19', NULL),
(135, 0, '21', 15, 'image/jpeg', 108630, 'news/21.jpg', '[]', '2022-09-29 08:01:20', '2022-09-29 08:01:20', NULL),
(136, 0, '22', 15, 'image/jpeg', 120108, 'news/22.jpg', '[]', '2022-09-29 08:01:20', '2022-09-29 08:01:20', NULL),
(137, 0, '23', 15, 'image/jpeg', 98530, 'news/23.jpg', '[]', '2022-09-29 08:01:21', '2022-09-29 08:01:21', NULL),
(138, 0, '24', 15, 'image/jpeg', 134237, 'news/24.jpg', '[]', '2022-09-29 08:01:21', '2022-09-29 08:01:21', NULL),
(139, 0, '25', 15, 'image/jpeg', 124532, 'news/25.jpg', '[]', '2022-09-29 08:01:21', '2022-09-29 08:01:21', NULL),
(140, 0, '26', 15, 'image/jpeg', 134643, 'news/26.jpg', '[]', '2022-09-29 08:01:22', '2022-09-29 08:01:22', NULL),
(141, 0, '27', 15, 'image/jpeg', 165965, 'news/27.jpg', '[]', '2022-09-29 08:01:22', '2022-09-29 08:01:22', NULL),
(142, 0, '3', 15, 'image/jpeg', 199060, 'news/3.jpg', '[]', '2022-09-29 08:01:22', '2022-09-29 08:01:22', NULL),
(143, 0, '4', 15, 'image/jpeg', 158031, 'news/4.jpg', '[]', '2022-09-29 08:01:23', '2022-09-29 08:01:23', NULL),
(144, 0, '5', 15, 'image/jpeg', 135774, 'news/5.jpg', '[]', '2022-09-29 08:01:23', '2022-09-29 08:01:23', NULL),
(145, 0, '6', 15, 'image/jpeg', 100187, 'news/6.jpg', '[]', '2022-09-29 08:01:24', '2022-09-29 08:01:24', NULL),
(146, 0, '7', 15, 'image/jpeg', 206113, 'news/7.jpg', '[]', '2022-09-29 08:01:24', '2022-09-29 08:01:24', NULL),
(147, 0, '8', 15, 'image/jpeg', 184904, 'news/8.jpg', '[]', '2022-09-29 08:01:24', '2022-09-29 08:01:24', NULL),
(148, 0, '9', 15, 'image/jpeg', 150106, 'news/9.jpg', '[]', '2022-09-29 08:01:25', '2022-09-29 08:01:25', NULL),
(149, 0, '1', 16, 'image/jpeg', 39008, 'accounts/1.jpg', '[]', '2022-09-29 08:01:26', '2022-09-29 08:01:26', NULL),
(150, 0, '10', 16, 'image/jpeg', 27814, 'accounts/10.jpg', '[]', '2022-09-29 08:01:26', '2022-09-29 08:01:26', NULL),
(151, 0, '2', 16, 'image/jpeg', 56376, 'accounts/2.jpg', '[]', '2022-09-29 08:01:26', '2022-09-29 08:01:26', NULL),
(152, 0, '3', 16, 'image/jpeg', 62502, 'accounts/3.jpg', '[]', '2022-09-29 08:01:26', '2022-09-29 08:01:26', NULL),
(153, 0, '4', 16, 'image/jpeg', 36259, 'accounts/4.jpg', '[]', '2022-09-29 08:01:27', '2022-09-29 08:01:27', NULL),
(154, 0, '5', 16, 'image/jpeg', 64833, 'accounts/5.jpg', '[]', '2022-09-29 08:01:27', '2022-09-29 08:01:27', NULL),
(155, 0, '6', 16, 'image/jpeg', 57568, 'accounts/6.jpg', '[]', '2022-09-29 08:01:28', '2022-09-29 08:01:28', NULL),
(156, 0, '7', 16, 'image/jpeg', 88003, 'accounts/7.jpg', '[]', '2022-09-29 08:01:28', '2022-09-29 08:01:28', NULL),
(157, 0, '8', 16, 'image/jpeg', 28009, 'accounts/8.jpg', '[]', '2022-09-29 08:01:28', '2022-09-29 08:01:28', NULL),
(158, 0, '9', 16, 'image/jpeg', 49079, 'accounts/9.jpg', '[]', '2022-09-29 08:01:29', '2022-09-29 08:01:29', NULL),
(159, 0, 'p-1', 17, 'image/jpeg', 136733, 'properties/p-1.jpg', '[]', '2022-09-29 08:01:30', '2022-09-29 08:01:30', NULL),
(160, 0, 'p-10', 17, 'image/jpeg', 107306, 'properties/p-10.jpg', '[]', '2022-09-29 08:01:31', '2022-09-29 08:01:31', NULL),
(161, 0, 'p-11', 17, 'image/jpeg', 158705, 'properties/p-11.jpg', '[]', '2022-09-29 08:01:31', '2022-09-29 08:01:31', NULL),
(162, 0, 'p-12', 17, 'image/jpeg', 169224, 'properties/p-12.jpg', '[]', '2022-09-29 08:01:31', '2022-09-29 08:01:31', NULL),
(163, 0, 'p-13', 17, 'image/jpeg', 209836, 'properties/p-13.jpg', '[]', '2022-09-29 08:01:32', '2022-09-29 08:01:32', NULL),
(164, 0, 'p-14', 17, 'image/jpeg', 244640, 'properties/p-14.jpg', '[]', '2022-09-29 08:01:32', '2022-09-29 08:01:32', NULL),
(165, 0, 'p-15', 17, 'image/jpeg', 215801, 'properties/p-15.jpg', '[]', '2022-09-29 08:01:33', '2022-09-29 08:01:33', NULL),
(166, 0, 'p-16', 17, 'image/jpeg', 127110, 'properties/p-16.jpg', '[]', '2022-09-29 08:01:34', '2022-09-29 08:01:34', NULL),
(167, 0, 'p-17', 17, 'image/jpeg', 178736, 'properties/p-17.jpg', '[]', '2022-09-29 08:01:34', '2022-09-29 08:01:34', NULL),
(168, 0, 'p-18', 17, 'image/jpeg', 127500, 'properties/p-18.jpg', '[]', '2022-09-29 08:01:35', '2022-09-29 08:01:35', NULL),
(169, 0, 'p-19', 17, 'image/jpeg', 148213, 'properties/p-19.jpg', '[]', '2022-09-29 08:01:35', '2022-09-29 08:01:35', NULL),
(170, 0, 'p-2', 17, 'image/jpeg', 140241, 'properties/p-2.jpg', '[]', '2022-09-29 08:01:35', '2022-09-29 08:01:35', NULL),
(171, 0, 'p-20', 17, 'image/jpeg', 123100, 'properties/p-20.jpg', '[]', '2022-09-29 08:01:36', '2022-09-29 08:01:36', NULL),
(172, 0, 'p-21', 17, 'image/jpeg', 108630, 'properties/p-21.jpg', '[]', '2022-09-29 08:01:37', '2022-09-29 08:01:37', NULL),
(173, 0, 'p-22', 17, 'image/jpeg', 120108, 'properties/p-22.jpg', '[]', '2022-09-29 08:01:37', '2022-09-29 08:01:37', NULL),
(174, 0, 'p-23', 17, 'image/jpeg', 98530, 'properties/p-23.jpg', '[]', '2022-09-29 08:01:37', '2022-09-29 08:01:37', NULL),
(175, 0, 'p-24', 17, 'image/jpeg', 134237, 'properties/p-24.jpg', '[]', '2022-09-29 08:01:38', '2022-09-29 08:01:38', NULL),
(176, 0, 'p-25', 17, 'image/jpeg', 124532, 'properties/p-25.jpg', '[]', '2022-09-29 08:01:38', '2022-09-29 08:01:38', NULL),
(177, 0, 'p-26', 17, 'image/jpeg', 134643, 'properties/p-26.jpg', '[]', '2022-09-29 08:01:39', '2022-09-29 08:01:39', NULL),
(178, 0, 'p-27', 17, 'image/jpeg', 165965, 'properties/p-27.jpg', '[]', '2022-09-29 08:01:39', '2022-09-29 08:01:39', NULL),
(179, 0, 'p-3', 17, 'image/jpeg', 199060, 'properties/p-3.jpg', '[]', '2022-09-29 08:01:40', '2022-09-29 08:01:40', NULL),
(180, 0, 'p-4', 17, 'image/jpeg', 158031, 'properties/p-4.jpg', '[]', '2022-09-29 08:01:40', '2022-09-29 08:01:40', NULL),
(181, 0, 'p-5', 17, 'image/jpeg', 135774, 'properties/p-5.jpg', '[]', '2022-09-29 08:01:41', '2022-09-29 08:01:41', NULL),
(182, 0, 'p-6', 17, 'image/jpeg', 100187, 'properties/p-6.jpg', '[]', '2022-09-29 08:01:41', '2022-09-29 08:01:41', NULL),
(183, 0, 'p-7', 17, 'image/jpeg', 206113, 'properties/p-7.jpg', '[]', '2022-09-29 08:01:42', '2022-09-29 08:01:42', NULL),
(184, 0, 'p-8', 17, 'image/jpeg', 184904, 'properties/p-8.jpg', '[]', '2022-09-29 08:01:42', '2022-09-29 08:01:42', NULL),
(185, 0, 'p-9', 17, 'image/jpeg', 150106, 'properties/p-9.jpg', '[]', '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(186, 0, '1', 18, 'image/jpeg', 62502, 'testimonials/1.jpg', '[]', '2022-09-29 08:01:46', '2022-09-29 08:01:46', NULL),
(187, 0, '2', 18, 'image/jpeg', 36259, 'testimonials/2.jpg', '[]', '2022-09-29 08:01:47', '2022-09-29 08:01:47', NULL),
(188, 0, '3', 18, 'image/jpeg', 64833, 'testimonials/3.jpg', '[]', '2022-09-29 08:01:47', '2022-09-29 08:01:47', NULL),
(189, 0, '4', 18, 'image/jpeg', 57568, 'testimonials/4.jpg', '[]', '2022-09-29 08:01:48', '2022-09-29 08:01:48', NULL),
(190, 0, '5', 18, 'image/jpeg', 28009, 'testimonials/5.jpg', '[]', '2022-09-29 08:01:48', '2022-09-29 08:01:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 0, 'cities', 'cities', 0, '2022-09-29 08:00:49', '2022-09-29 08:00:49', NULL),
(11, 0, 'users', 'users', 0, '2022-09-29 08:01:01', '2022-09-29 08:01:01', NULL),
(12, 0, 'block', 'block', 0, '2022-09-29 08:01:02', '2022-09-29 08:01:02', NULL),
(13, 0, 'banners', 'banners', 0, '2022-09-29 08:01:04', '2022-09-29 08:01:04', NULL),
(14, 0, 'general', 'general', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13', NULL),
(15, 0, 'news', 'news', 0, '2022-09-29 08:01:14', '2022-09-29 08:01:14', NULL),
(16, 0, 'accounts', 'accounts', 0, '2022-09-29 08:01:26', '2022-09-29 08:01:26', NULL),
(17, 0, 'properties', 'properties', 0, '2022-09-29 08:01:30', '2022-09-29 08:01:30', NULL),
(18, 0, 'testimonials', 'testimonials', 0, '2022-09-29 08:01:46', '2022-09-29 08:01:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(2, 'About', 'about', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(3, 'More information', 'more-information', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(4, 'News', 'news', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(5, 'Menu chính', 'menu-chinh', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(6, 'Về chúng tôi', 've-chung-toi', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(7, 'Thông tin thêm', 'thong-tin-them', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(8, 'Tin tức', 'tin-tuc', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(2, 5, 'main-menu', '2022-09-29 08:01:13', '2022-09-29 08:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `icon_font` varchar(50) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) DEFAULT NULL,
  `css_class` varchar(120) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(2, 1, 1, NULL, NULL, '/', NULL, 0, 'Home layout 1', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(3, 1, 1, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Home layout 2', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(4, 1, 1, 3, 'Botble\\Page\\Models\\Page', '/home-layout-3', NULL, 0, 'Home layout 3', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(5, 1, 1, 4, 'Botble\\Page\\Models\\Page', '/home-layout-4', NULL, 0, 'Home layout 4', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(6, 1, 1, 5, 'Botble\\Page\\Models\\Page', '/home-layout-5', NULL, 0, 'Home layout 5', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(7, 1, 1, 6, 'Botble\\Page\\Models\\Page', '/home-layout-6', NULL, 0, 'Home layout 6', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(8, 1, 1, 7, 'Botble\\Page\\Models\\Page', '/home-layout-7', NULL, 0, 'Home layout 7', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(9, 1, 1, 8, 'Botble\\Page\\Models\\Page', '/home-layout-8', NULL, 0, 'Home layout 8', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(10, 1, 1, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Home layout 9', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(11, 1, 1, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Map home layout', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(12, 1, 0, NULL, NULL, '/properties', NULL, 0, 'Listings', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(13, 1, 12, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'List Layout', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(14, 1, 13, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'With Sidebar', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(15, 1, 13, NULL, NULL, '/properties?layout=map', NULL, 0, 'With Map', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(16, 1, 13, NULL, NULL, '/properties?layout=full', NULL, 0, 'Full width', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(17, 1, 12, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Grid Layout', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(18, 1, 17, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'With Sidebar', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(19, 1, 17, NULL, NULL, '/properties?layout=grid_map', NULL, 0, 'With Map', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(20, 1, 17, NULL, NULL, '/properties?layout=grid_full', NULL, 0, 'Full width', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(21, 1, 12, NULL, NULL, '/properties?layout=half_map', NULL, 0, 'Half Map Search', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(22, 1, 0, NULL, NULL, '/', NULL, 0, 'Features', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(23, 1, 22, NULL, NULL, '/', NULL, 0, 'Single Property', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(24, 1, 23, 1, 'Botble\\RealEstate\\Models\\Property', '/properties/6007-applegate-lane', NULL, 0, 'Single Property 1', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(25, 1, 23, 2, 'Botble\\RealEstate\\Models\\Property', '/properties/2721-lindsay-avenue', NULL, 0, 'Single Property 2', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(26, 1, 23, 3, 'Botble\\RealEstate\\Models\\Property', '/properties/2203-7th-street-road', NULL, 0, 'Single Property 3', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(27, 1, 22, NULL, NULL, '/', NULL, 0, 'Agents', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(28, 1, 27, NULL, NULL, '/agents', NULL, 0, 'Agents List', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(29, 1, 27, NULL, NULL, '/agents/thesky9', NULL, 0, 'Agents Detail Page', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(30, 1, 22, NULL, NULL, '/', NULL, 0, 'My Account', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(31, 1, 30, NULL, NULL, '/account/dashboard', NULL, 0, 'User Dashboard', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(32, 1, 30, NULL, NULL, '/account/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(33, 1, 30, NULL, NULL, '/account/settings', NULL, 0, 'My Profile', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(34, 1, 30, NULL, NULL, '/account/packages', NULL, 0, 'Packages', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(35, 1, 30, NULL, NULL, '/account/security', NULL, 0, 'Change Password', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(36, 1, 22, NULL, NULL, '/account/properties/create', NULL, 0, 'Submit Property', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(37, 1, 0, NULL, NULL, '/', NULL, 0, 'Pages', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(38, 1, 37, 12, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Blogs Page', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(39, 1, 37, 1, 'Botble\\Blog\\Models\\Post', '/news/why-people-choose-listio-for-own-properties', NULL, 0, 'Blog Detail', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(40, 1, 37, NULL, NULL, '/home#pricing-section', NULL, 0, 'Pricing', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(41, 1, 37, 39, 'Botble\\Page\\Models\\Page', '/error-page', NULL, 0, 'Error Page', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(42, 1, 37, 14, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(43, 1, 0, NULL, NULL, '/register', NULL, 0, 'Sign Up', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(44, 2, 0, 13, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(45, 2, 0, 14, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(46, 2, 0, 15, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(47, 3, 0, NULL, NULL, '/properties', NULL, 0, 'All properties', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(48, 3, 0, NULL, NULL, '/properties?type=sale', NULL, 0, 'Houses for sale', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(49, 3, 0, NULL, NULL, '/properties?type=rent', NULL, 0, 'Houses for rent', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(50, 4, 0, NULL, NULL, '/news', NULL, 0, 'Latest news', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(51, 4, 0, NULL, NULL, '/house-architecture', NULL, 0, 'House architecture', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(52, 4, 0, NULL, NULL, '/house-design', NULL, 0, 'House design', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(53, 4, 0, NULL, NULL, '/building-materials', NULL, 0, 'Building materials', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(54, 5, 0, 1, 'Botble\\Page\\Models\\Page', '', NULL, 0, 'Trang chủ', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(55, 5, 54, 1, 'Botble\\Page\\Models\\Page', '', NULL, 0, 'Trang chủ 1', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(56, 5, 54, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(57, 5, 54, 3, 'Botble\\Page\\Models\\Page', '/home-layout-3', NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(58, 5, 54, 4, 'Botble\\Page\\Models\\Page', '/home-layout-4', NULL, 0, 'Trang chủ 4', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(59, 5, 54, 5, 'Botble\\Page\\Models\\Page', '/home-layout-5', NULL, 0, 'Trang chủ 5', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(60, 5, 54, 6, 'Botble\\Page\\Models\\Page', '/home-layout-6', NULL, 0, 'Trang chủ 6', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(61, 5, 54, 7, 'Botble\\Page\\Models\\Page', '/home-layout-7', NULL, 0, 'Trang chủ 7', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(62, 5, 54, 8, 'Botble\\Page\\Models\\Page', '/home-layout-8', NULL, 0, 'Trang chủ 8', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(63, 5, 54, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Trang chủ 9', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(64, 5, 54, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Trang chủ bản đồ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(65, 5, 0, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Danh sách', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(66, 5, 65, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Dạng list', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(67, 5, 66, NULL, NULL, '/properties?layout=sidebar', NULL, 0, 'Có thanh bên', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(68, 5, 66, NULL, NULL, '/properties?layout=full', NULL, 0, 'Chiều rộng đầy đủ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(69, 5, 66, NULL, NULL, '/properties?layout=map', NULL, 0, 'Có Bản Đồ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(70, 5, 65, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Dạng cột', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(71, 5, 70, NULL, NULL, '/properties?layout=grid_sidebar', NULL, 0, 'Có thanh bên', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(72, 5, 70, NULL, NULL, '/properties?layout=grid_map', NULL, 0, 'Có Map', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(73, 5, 70, NULL, NULL, '/properties?layout=grid_full', NULL, 0, 'Chiều rộng đầy đủ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(74, 5, 65, NULL, NULL, '/properties?layout=half_map', NULL, 0, 'Có 1/2 bản đồ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(75, 5, 0, NULL, NULL, NULL, NULL, 0, 'Tính năng', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(76, 5, 75, 21, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(77, 5, 76, 21, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản 1', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(78, 5, 76, 22, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản 2', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(79, 5, 76, 23, 'Botble\\RealEstate\\Models\\Property', NULL, NULL, 0, 'Chi tiết bất động sản 3', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(80, 5, 75, NULL, NULL, '#', NULL, 0, 'Đại lý và người đại lý', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(81, 5, 80, NULL, NULL, '/agents', NULL, 0, 'Danh sách đại lý', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(82, 5, 80, NULL, NULL, '/agents/thesky9', NULL, 0, 'Chi tiết địa lý', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(83, 5, 75, NULL, NULL, '#', NULL, 0, 'Tài khoản', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(84, 5, 83, NULL, NULL, '/account/dashboard', NULL, 0, 'My Dashboard', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(85, 5, 83, NULL, NULL, '/account/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(86, 5, 83, NULL, NULL, '/account/settings', NULL, 0, 'My Profile', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(87, 5, 83, NULL, NULL, '/account/packages', NULL, 0, 'Packages', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(88, 5, 83, NULL, NULL, '/account/security', NULL, 0, 'Đổi mật khẩu', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(89, 5, 75, NULL, NULL, '/account/properties/create', NULL, 0, 'Đăng bất động sản', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(90, 5, 0, NULL, NULL, '/', NULL, 0, 'Trang', NULL, '_self', 1, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(91, 5, 90, 28, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Trang blog', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(92, 5, 90, 20, 'Botble\\Blog\\Models\\Post', NULL, NULL, 0, 'Bài viết chi tiết', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(93, 5, 90, NULL, NULL, '/home#pricing-section', NULL, 0, 'Bảng giá', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(94, 5, 90, NULL, NULL, '/error-page', NULL, 0, 'Page lỗi', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(95, 5, 90, 30, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(96, 5, 0, NULL, NULL, '/register', NULL, 0, 'Đăng ký', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(97, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/home-layout-9', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(98, 6, 0, 10, 'Botble\\Page\\Models\\Page', '/map-home-layout', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(99, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/properties', NULL, 0, 'Điều khoản và quy định', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(100, 7, 0, NULL, NULL, '/properties', NULL, 0, 'Nhà - Căn hộ', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(101, 7, 0, NULL, NULL, '/properties?type=sale', NULL, 0, 'Nhà bán', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(102, 7, 0, NULL, NULL, '/properties?type=rent', NULL, 0, 'Nhà cho thuê', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(103, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/home-layout-2', NULL, 0, 'Tin tức mới nhất', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(104, 8, 0, NULL, NULL, '/kien-truc-nha', NULL, 0, 'Kiến trúc nhà', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(105, 8, 0, NULL, NULL, '/thiet-ke-nha', NULL, 0, 'Thiết kế nhà', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(106, 8, 0, NULL, NULL, '/vat-lieu-xay-dung', NULL, 0, 'Vật liệu xây dựng', NULL, '_self', 0, '2022-09-29 08:01:13', '2022-09-29 08:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'image', '[\"cities\\/c-1.png\"]', 1, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(2, 'image', '[\"cities\\/c-2.png\"]', 2, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(3, 'image', '[\"cities\\/c-3.png\"]', 3, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(4, 'image', '[\"cities\\/c-4.png\"]', 4, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(5, 'image', '[\"cities\\/c-5.png\"]', 5, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(6, 'image', '[\"cities\\/c-6.png\"]', 6, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(7, 'image', '[\"cities\\/c-7.png\"]', 7, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(8, 'image', '[\"cities\\/c-8.png\"]', 8, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(9, 'image', '[\"cities\\/c-9.png\"]', 9, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(10, 'image', '[\"cities\\/c-10.png\"]', 10, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(11, 'image', '[\"cities\\/c-11.png\"]', 11, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(12, 'image', '[\"cities\\/c-12.png\"]', 12, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(13, 'image', '[\"cities\\/c-13.png\"]', 13, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(14, 'image', '[\"cities\\/c-14.png\"]', 14, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(15, 'image', '[\"cities\\/c-15.png\"]', 15, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(16, 'image', '[\"cities\\/c-16.png\"]', 16, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(17, 'image', '[\"cities\\/c-18.png\"]', 17, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(18, 'image', '[\"cities\\/c-19.png\"]', 18, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(19, 'image', '[\"cities\\/c-20.png\"]', 19, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(20, 'image', '[\"cities\\/c-21.png\"]', 20, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(21, 'image', '[\"cities\\/c-23.png\"]', 21, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(22, 'image', '[\"cities\\/c-24.png\"]', 22, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(23, 'image', '[\"cities\\/c-25.png\"]', 23, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(24, 'image', '[\"cities\\/c-26.png\"]', 24, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(25, 'image', '[\"cities\\/c-27.png\"]', 25, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(26, 'image', '[\"cities\\/c-28.png\"]', 26, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(27, 'image', '[\"cities\\/c-29.png\"]', 27, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(28, 'image', '[\"cities\\/c-30.png\"]', 28, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(29, 'image', '[\"cities\\/c-31.png\"]', 29, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(30, 'image', '[\"cities\\/c-32.png\"]', 30, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(31, 'image', '[\"cities\\/c-33.png\"]', 31, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(32, 'image', '[\"cities\\/c-34.png\"]', 32, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(33, 'image', '[\"cities\\/c-35.png\"]', 33, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(34, 'image', '[\"cities\\/c-36.png\"]', 34, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(35, 'image', '[\"cities\\/c-37.png\"]', 35, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(36, 'image', '[\"cities\\/c-38.png\"]', 36, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(37, 'image', '[\"cities\\/c-39.png\"]', 37, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:30', '2022-09-29 07:59:30'),
(38, 'image', '[\"cities\\/c-41.png\"]', 38, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(39, 'image', '[\"cities\\/c-42.png\"]', 39, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(40, 'image', '[\"cities\\/c-43.png\"]', 40, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(41, 'image', '[\"cities\\/c-44.png\"]', 41, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(42, 'image', '[\"cities\\/c-45.png\"]', 42, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(43, 'image', '[\"cities\\/c-46.png\"]', 43, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(44, 'image', '[\"cities\\/c-47.png\"]', 44, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(45, 'image', '[\"cities\\/c-48.png\"]', 45, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(46, 'image', '[\"cities\\/c-49.png\"]', 46, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(47, 'image', '[\"cities\\/c-50.png\"]', 47, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(48, 'image', '[\"cities\\/c-51.png\"]', 48, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(49, 'image', '[\"cities\\/c-52.png\"]', 49, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(50, 'image', '[\"cities\\/c-54.png\"]', 50, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(51, 'image', '[\"cities\\/c-55.png\"]', 51, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(52, 'image', '[\"cities\\/c-56.png\"]', 52, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(53, 'image', '[\"cities\\/c-57.png\"]', 53, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(54, 'image', '[\"cities\\/c-58.png\"]', 54, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(55, 'image', '[\"cities\\/c-59.png\"]', 55, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(56, 'image', '[\"cities\\/c-60.png\"]', 56, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(57, 'image', '[\"cities\\/c-61.png\"]', 57, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(58, 'image', '[\"cities\\/c-62.png\"]', 58, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(59, 'image', '[\"cities\\/c-63.png\"]', 59, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(60, 'image', '[\"cities\\/c-64.png\"]', 60, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(61, 'image', '[\"cities\\/c-65.png\"]', 61, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(62, 'image', '[\"cities\\/c-66.png\"]', 62, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(63, 'image', '[\"cities\\/c-67.png\"]', 63, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(64, 'image', '[\"cities\\/c-68.png\"]', 64, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(65, 'image', '[\"cities\\/c-69.png\"]', 65, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(66, 'image', '[\"cities\\/c-70.png\"]', 66, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(67, 'image', '[\"cities\\/c-71.png\"]', 67, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(68, 'image', '[\"cities\\/c-72.png\"]', 68, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(69, 'image', '[\"cities\\/c-73.png\"]', 69, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(70, 'image', '[\"cities\\/c-74.png\"]', 70, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(71, 'image', '[\"cities\\/c-75.png\"]', 71, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(72, 'image', '[\"cities\\/c-76.png\"]', 72, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(73, 'image', '[\"cities\\/c-77.png\"]', 73, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(74, 'image', '[\"cities\\/c-78.png\"]', 74, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(75, 'image', '[\"cities\\/c-79.png\"]', 75, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(76, 'image', '[\"cities\\/c-80.png\"]', 76, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(77, 'image', '[\"cities\\/c-81.png\"]', 77, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(78, 'image', '[\"cities\\/c-82.png\"]', 78, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(79, 'image', '[\"cities\\/c-84.png\"]', 79, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(80, 'image', '[\"cities\\/c-85.png\"]', 80, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(81, 'image', '[\"cities\\/c-86.png\"]', 81, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(82, 'image', '[\"cities\\/c-87.png\"]', 82, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(83, 'image', '[\"cities\\/c-88.png\"]', 83, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(84, 'image', '[\"cities\\/c-89.png\"]', 84, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(85, 'image', '[\"cities\\/c-90.png\"]', 85, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(86, 'image', '[\"cities\\/c-91.png\"]', 86, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(87, 'image', '[\"cities\\/c-92.png\"]', 87, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(88, 'image', '[\"cities\\/c-95.png\"]', 88, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(89, 'image', '[\"cities\\/c-96.png\"]', 89, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(90, 'image', '[\"cities\\/c-97.png\"]', 90, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(91, 'image', '[\"cities\\/c-98.png\"]', 91, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(92, 'image', '[\"cities\\/c-100.png\"]', 92, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(93, 'image', '[\"cities\\/c-102.png\"]', 93, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(94, 'image', '[\"cities\\/c-103.png\"]', 94, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(95, 'image', '[\"cities\\/c-105.png\"]', 95, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(96, 'image', '[\"cities\\/c-106.png\"]', 96, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(97, 'image', '[\"cities\\/c-111.png\"]', 97, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(98, 'image', '[\"cities\\/c-112.png\"]', 98, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(99, 'image', '[\"cities\\/c-113.png\"]', 99, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(100, 'image', '[\"cities\\/c-115.png\"]', 100, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(101, 'image', '[\"cities\\/c-116.png\"]', 101, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(102, 'image', '[\"cities\\/c-117.png\"]', 102, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(103, 'image', '[\"cities\\/c-118.png\"]', 103, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(104, 'image', '[\"cities\\/c-119.png\"]', 104, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(105, 'image', '[\"cities\\/c-120.png\"]', 105, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(106, 'image', '[\"cities\\/c-121.png\"]', 106, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(107, 'image', '[\"cities\\/c-122.png\"]', 107, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(108, 'image', '[\"cities\\/c-123.png\"]', 108, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(109, 'image', '[\"cities\\/c-124.png\"]', 109, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(110, 'image', '[\"cities\\/c-125.png\"]', 110, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(111, 'image', '[\"cities\\/c-126.png\"]', 111, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(112, 'image', '[\"cities\\/c-127.png\"]', 112, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(113, 'image', '[\"cities\\/c-128.png\"]', 113, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(114, 'image', '[\"cities\\/c-130.png\"]', 114, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(115, 'image', '[\"cities\\/c-132.png\"]', 115, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(116, 'image', '[\"cities\\/c-133.png\"]', 116, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(117, 'image', '[\"cities\\/c-137.png\"]', 117, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(118, 'image', '[\"cities\\/c-138.png\"]', 118, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(119, 'image', '[\"cities\\/c-139.png\"]', 119, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(120, 'image', '[\"cities\\/c-140.png\"]', 120, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(121, 'image', '[\"cities\\/c-142.png\"]', 121, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(122, 'image', '[\"cities\\/c-144.png\"]', 122, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(123, 'image', '[\"cities\\/c-145.png\"]', 123, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(124, 'image', '[\"cities\\/c-147.png\"]', 124, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(125, 'image', '[\"cities\\/c-148.png\"]', 125, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(126, 'image', '[\"cities\\/c-149.png\"]', 126, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(127, 'image', '[\"cities\\/c-151.png\"]', 127, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(128, 'image', '[\"cities\\/c-153.png\"]', 128, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(129, 'image', '[\"cities\\/c-154.png\"]', 129, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(130, 'image', '[\"cities\\/c-155.png\"]', 130, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(131, 'image', '[\"cities\\/c-157.png\"]', 131, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(132, 'image', '[\"cities\\/c-158.png\"]', 132, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(133, 'image', '[\"cities\\/c-159.png\"]', 133, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(134, 'image', '[\"cities\\/c-160.png\"]', 134, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(135, 'image', '[\"cities\\/c-161.png\"]', 135, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(136, 'image', '[\"cities\\/c-162.png\"]', 136, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(137, 'image', '[\"cities\\/c-163.png\"]', 137, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(138, 'image', '[\"cities\\/c-164.png\"]', 138, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(139, 'image', '[\"cities\\/c-165.png\"]', 139, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(140, 'image', '[\"cities\\/c-166.png\"]', 140, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(141, 'image', '[\"cities\\/c-167.png\"]', 141, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(142, 'image', '[\"cities\\/c-168.png\"]', 142, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:31', '2022-09-29 07:59:31'),
(143, 'image', '[\"cities\\/c-169.png\"]', 143, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(144, 'image', '[\"cities\\/c-170.png\"]', 144, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(145, 'image', '[\"cities\\/c-171.png\"]', 145, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(146, 'image', '[\"cities\\/c-172.png\"]', 146, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(147, 'image', '[\"cities\\/c-173.png\"]', 147, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(148, 'image', '[\"cities\\/c-174.png\"]', 148, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(149, 'image', '[\"cities\\/c-175.png\"]', 149, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(150, 'image', '[\"cities\\/c-176.png\"]', 150, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(151, 'image', '[\"cities\\/c-177.png\"]', 151, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(152, 'image', '[\"cities\\/c-179.png\"]', 152, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(153, 'image', '[\"cities\\/c-180.png\"]', 153, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(154, 'image', '[\"cities\\/c-183.png\"]', 154, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(155, 'image', '[\"cities\\/c-184.png\"]', 155, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(156, 'image', '[\"cities\\/c-185.png\"]', 156, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(157, 'image', '[\"cities\\/c-186.png\"]', 157, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(158, 'image', '[\"cities\\/c-187.png\"]', 158, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(159, 'image', '[\"cities\\/c-188.png\"]', 159, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(160, 'image', '[\"cities\\/c-190.png\"]', 160, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(161, 'image', '[\"cities\\/c-191.png\"]', 161, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(162, 'image', '[\"cities\\/c-193.png\"]', 162, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(163, 'image', '[\"cities\\/c-194.png\"]', 163, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(164, 'image', '[\"cities\\/c-195.png\"]', 164, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(165, 'image', '[\"cities\\/c-196.png\"]', 165, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(166, 'image', '[\"cities\\/c-197.png\"]', 166, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(167, 'image', '[\"cities\\/c-198.png\"]', 167, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(168, 'image', '[\"cities\\/c-199.png\"]', 168, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(169, 'image', '[\"cities\\/c-200.png\"]', 169, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(170, 'image', '[\"cities\\/c-201.png\"]', 170, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(171, 'image', '[\"cities\\/c-202.png\"]', 171, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(172, 'image', '[\"cities\\/c-203.png\"]', 172, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(173, 'image', '[\"cities\\/c-205.png\"]', 173, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(174, 'image', '[\"cities\\/c-206.png\"]', 174, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(175, 'image', '[\"cities\\/c-207.png\"]', 175, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(176, 'image', '[\"cities\\/c-208.png\"]', 176, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(177, 'image', '[\"cities\\/c-209.png\"]', 177, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(178, 'image', '[\"cities\\/c-210.png\"]', 178, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(179, 'image', '[\"cities\\/c-211.png\"]', 179, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(180, 'image', '[\"cities\\/c-213.png\"]', 180, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(181, 'image', '[\"cities\\/c-214.png\"]', 181, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(182, 'image', '[\"cities\\/c-215.png\"]', 182, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(183, 'image', '[\"cities\\/c-216.png\"]', 183, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(184, 'image', '[\"cities\\/c-217.png\"]', 184, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(185, 'image', '[\"cities\\/c-218.png\"]', 185, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(186, 'image', '[\"cities\\/c-219.png\"]', 186, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(187, 'image', '[\"cities\\/c-220.png\"]', 187, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(188, 'image', '[\"cities\\/c-222.png\"]', 188, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(189, 'image', '[\"cities\\/c-224.png\"]', 189, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(190, 'image', '[\"cities\\/c-225.png\"]', 190, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(191, 'image', '[\"cities\\/c-226.png\"]', 191, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(192, 'image', '[\"cities\\/c-228.png\"]', 192, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(193, 'image', '[\"cities\\/c-229.png\"]', 193, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(194, 'image', '[\"cities\\/c-230.png\"]', 194, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(195, 'image', '[\"cities\\/c-231.png\"]', 195, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(196, 'image', '[\"cities\\/c-232.png\"]', 196, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(197, 'image', '[\"cities\\/c-233.png\"]', 197, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(198, 'image', '[\"cities\\/c-234.png\"]', 198, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(199, 'image', '[\"cities\\/c-236.png\"]', 199, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(200, 'image', '[\"cities\\/c-237.png\"]', 200, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(201, 'image', '[\"cities\\/c-238.png\"]', 201, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(202, 'image', '[\"cities\\/c-242.png\"]', 202, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(203, 'image', '[\"cities\\/c-243.png\"]', 203, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(204, 'image', '[\"cities\\/c-244.png\"]', 204, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(205, 'image', '[\"cities\\/c-245.png\"]', 205, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(206, 'image', '[\"cities\\/c-246.png\"]', 206, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(207, 'image', '[\"cities\\/c-247.png\"]', 207, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(208, 'image', '[\"cities\\/c-248.png\"]', 208, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(209, 'image', '[\"cities\\/c-251.png\"]', 209, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(210, 'image', '[\"cities\\/c-252.png\"]', 210, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(211, 'image', '[\"cities\\/c-254.png\"]', 211, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(212, 'image', '[\"cities\\/c-255.png\"]', 212, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(213, 'image', '[\"cities\\/c-256.png\"]', 213, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(214, 'image', '[\"cities\\/c-257.png\"]', 214, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(215, 'image', '[\"cities\\/c-258.png\"]', 215, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(216, 'image', '[\"cities\\/c-259.png\"]', 216, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(217, 'image', '[\"cities\\/c-261.png\"]', 217, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(218, 'image', '[\"cities\\/c-262.png\"]', 218, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(219, 'image', '[\"cities\\/c-266.png\"]', 219, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(220, 'image', '[\"cities\\/c-267.png\"]', 220, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(221, 'image', '[\"cities\\/c-269.png\"]', 221, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(222, 'image', '[\"cities\\/c-270.png\"]', 222, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(223, 'image', '[\"cities\\/c-272.png\"]', 223, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(224, 'image', '[\"cities\\/c-273.png\"]', 224, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(225, 'image', '[\"cities\\/c-274.png\"]', 225, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(226, 'image', '[\"cities\\/c-275.png\"]', 226, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(227, 'image', '[\"cities\\/c-277.png\"]', 227, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(228, 'image', '[\"cities\\/c-278.png\"]', 228, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(229, 'image', '[\"cities\\/c-280.png\"]', 229, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(230, 'image', '[\"cities\\/c-282.png\"]', 230, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(231, 'image', '[\"cities\\/c-283.png\"]', 231, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(232, 'image', '[\"cities\\/c-285.png\"]', 232, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(233, 'image', '[\"cities\\/c-286.png\"]', 233, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(234, 'image', '[\"cities\\/c-288.png\"]', 234, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(235, 'image', '[\"cities\\/c-289.png\"]', 235, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(236, 'image', '[\"cities\\/c-291.png\"]', 236, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(237, 'image', '[\"cities\\/c-292.png\"]', 237, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(238, 'image', '[\"cities\\/c-294.png\"]', 238, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(239, 'image', '[\"cities\\/c-296.png\"]', 239, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(240, 'image', '[\"cities\\/c-297.png\"]', 240, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(241, 'image', '[\"cities\\/c-298.png\"]', 241, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(242, 'image', '[\"cities\\/c-300.png\"]', 242, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(243, 'image', '[\"cities\\/c-302.png\"]', 243, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:32', '2022-09-29 07:59:32'),
(244, 'image', '[\"cities\\/c-303.png\"]', 244, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(245, 'image', '[\"cities\\/c-304.png\"]', 245, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(246, 'image', '[\"cities\\/c-307.png\"]', 246, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(247, 'image', '[\"cities\\/c-310.png\"]', 247, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(248, 'image', '[\"cities\\/c-312.png\"]', 248, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(249, 'image', '[\"cities\\/c-315.png\"]', 249, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(250, 'image', '[\"cities\\/c-316.png\"]', 250, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(251, 'image', '[\"cities\\/c-320.png\"]', 251, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(252, 'image', '[\"cities\\/c-324.png\"]', 252, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(253, 'image', '[\"cities\\/c-325.png\"]', 253, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(254, 'image', '[\"cities\\/c-327.png\"]', 254, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(255, 'image', '[\"cities\\/c-329.png\"]', 255, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(256, 'image', '[\"cities\\/c-330.png\"]', 256, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(257, 'image', '[\"cities\\/c-331.png\"]', 257, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(258, 'image', '[\"cities\\/c-332.png\"]', 258, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(259, 'image', '[\"cities\\/c-334.png\"]', 259, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(260, 'image', '[\"cities\\/c-335.png\"]', 260, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(261, 'image', '[\"cities\\/c-337.png\"]', 261, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(262, 'image', '[\"cities\\/c-339.png\"]', 262, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(263, 'image', '[\"cities\\/c-340.png\"]', 263, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(264, 'image', '[\"cities\\/c-341.png\"]', 264, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(265, 'image', '[\"cities\\/c-342.png\"]', 265, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(266, 'image', '[\"cities\\/c-343.png\"]', 266, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(267, 'image', '[\"cities\\/c-344.png\"]', 267, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(268, 'image', '[\"cities\\/c-345.png\"]', 268, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(269, 'image', '[\"cities\\/c-346.png\"]', 269, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(270, 'image', '[\"cities\\/c-347.png\"]', 270, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(271, 'image', '[\"cities\\/c-350.png\"]', 271, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(272, 'image', '[\"cities\\/c-351.png\"]', 272, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(273, 'image', '[\"cities\\/c-353.png\"]', 273, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(274, 'image', '[\"cities\\/c-354.png\"]', 274, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(275, 'image', '[\"cities\\/c-357.png\"]', 275, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(276, 'image', '[\"cities\\/c-358.png\"]', 276, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(277, 'image', '[\"cities\\/c-360.png\"]', 277, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(278, 'image', '[\"cities\\/c-362.png\"]', 278, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(279, 'image', '[\"cities\\/c-364.png\"]', 279, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(280, 'image', '[\"cities\\/c-367.png\"]', 280, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(281, 'image', '[\"cities\\/c-369.png\"]', 281, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(282, 'image', '[\"cities\\/c-370.png\"]', 282, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(283, 'image', '[\"cities\\/c-371.png\"]', 283, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(284, 'image', '[\"cities\\/c-373.png\"]', 284, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(285, 'image', '[\"cities\\/c-376.png\"]', 285, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(286, 'image', '[\"cities\\/c-377.png\"]', 286, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(287, 'image', '[\"cities\\/c-378.png\"]', 287, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(288, 'image', '[\"cities\\/c-381.png\"]', 288, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(289, 'image', '[\"cities\\/c-382.png\"]', 289, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(290, 'image', '[\"cities\\/c-383.png\"]', 290, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(291, 'image', '[\"cities\\/c-384.png\"]', 291, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(292, 'image', '[\"cities\\/c-385.png\"]', 292, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(293, 'image', '[\"cities\\/c-390.png\"]', 293, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(294, 'image', '[\"cities\\/c-391.png\"]', 294, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(295, 'image', '[\"cities\\/c-393.png\"]', 295, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(296, 'image', '[\"cities\\/c-395.png\"]', 296, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(297, 'image', '[\"cities\\/c-396.png\"]', 297, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(298, 'image', '[\"cities\\/c-399.png\"]', 298, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(299, 'image', '[\"cities\\/c-401.png\"]', 299, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(300, 'image', '[\"cities\\/c-403.png\"]', 300, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(301, 'image', '[\"cities\\/c-405.png\"]', 301, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(302, 'image', '[\"cities\\/c-407.png\"]', 302, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(303, 'image', '[\"cities\\/c-408.png\"]', 303, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(304, 'image', '[\"cities\\/c-409.png\"]', 304, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(305, 'image', '[\"cities\\/c-410.png\"]', 305, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(306, 'image', '[\"cities\\/c-411.png\"]', 306, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(307, 'image', '[\"cities\\/c-412.png\"]', 307, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(308, 'image', '[\"cities\\/c-414.png\"]', 308, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(309, 'image', '[\"cities\\/c-415.png\"]', 309, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(310, 'image', '[\"cities\\/c-419.png\"]', 310, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(311, 'image', '[\"cities\\/c-421.png\"]', 311, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(312, 'image', '[\"cities\\/c-423.png\"]', 312, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(313, 'image', '[\"cities\\/c-425.png\"]', 313, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(314, 'image', '[\"cities\\/c-428.png\"]', 314, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(315, 'image', '[\"cities\\/c-429.png\"]', 315, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(316, 'image', '[\"cities\\/c-431.png\"]', 316, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(317, 'image', '[\"cities\\/c-432.png\"]', 317, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(318, 'image', '[\"cities\\/c-433.png\"]', 318, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(319, 'image', '[\"cities\\/c-435.png\"]', 319, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(320, 'image', '[\"cities\\/c-438.png\"]', 320, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(321, 'image', '[\"cities\\/c-441.png\"]', 321, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(322, 'image', '[\"cities\\/c-444.png\"]', 322, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(323, 'image', '[\"cities\\/c-447.png\"]', 323, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(324, 'image', '[\"cities\\/c-448.png\"]', 324, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(325, 'image', '[\"cities\\/c-450.png\"]', 325, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(326, 'image', '[\"cities\\/c-452.png\"]', 326, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(327, 'image', '[\"cities\\/c-453.png\"]', 327, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(328, 'image', '[\"cities\\/c-455.png\"]', 328, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(329, 'image', '[\"cities\\/c-457.png\"]', 329, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(330, 'image', '[\"cities\\/c-458.png\"]', 330, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(331, 'image', '[\"cities\\/c-459.png\"]', 331, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(332, 'image', '[\"cities\\/c-462.png\"]', 332, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(333, 'image', '[\"cities\\/c-463.png\"]', 333, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(334, 'image', '[\"cities\\/c-464.png\"]', 334, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(335, 'image', '[\"cities\\/c-467.png\"]', 335, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(336, 'image', '[\"cities\\/c-468.png\"]', 336, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(337, 'image', '[\"cities\\/c-470.png\"]', 337, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(338, 'image', '[\"cities\\/c-473.png\"]', 338, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(339, 'image', '[\"cities\\/c-479.png\"]', 339, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(340, 'image', '[\"cities\\/c-480.png\"]', 340, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(341, 'image', '[\"cities\\/c-481.png\"]', 341, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(342, 'image', '[\"cities\\/c-482.png\"]', 342, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(343, 'image', '[\"cities\\/c-484.png\"]', 343, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(344, 'image', '[\"cities\\/c-490.png\"]', 344, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:33', '2022-09-29 07:59:33'),
(345, 'image', '[\"cities\\/c-491.png\"]', 345, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(346, 'image', '[\"cities\\/c-493.png\"]', 346, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(347, 'image', '[\"cities\\/c-495.png\"]', 347, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(348, 'image', '[\"cities\\/c-504.png\"]', 348, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(349, 'image', '[\"cities\\/c-507.png\"]', 349, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(350, 'image', '[\"cities\\/c-508.png\"]', 350, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(351, 'image', '[\"cities\\/c-509.png\"]', 351, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(352, 'image', '[\"cities\\/c-513.png\"]', 352, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(353, 'image', '[\"cities\\/c-516.png\"]', 353, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(354, 'image', '[\"cities\\/c-519.png\"]', 354, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(355, 'image', '[\"cities\\/c-520.png\"]', 355, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(356, 'image', '[\"cities\\/c-523.png\"]', 356, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(357, 'image', '[\"cities\\/c-526.png\"]', 357, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(358, 'image', '[\"cities\\/c-527.png\"]', 358, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(359, 'image', '[\"cities\\/c-529.png\"]', 359, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(360, 'image', '[\"cities\\/c-533.png\"]', 360, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(361, 'image', '[\"cities\\/c-534.png\"]', 361, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(362, 'image', '[\"cities\\/c-535.png\"]', 362, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(363, 'image', '[\"cities\\/c-536.png\"]', 363, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(364, 'image', '[\"cities\\/c-537.png\"]', 364, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(365, 'image', '[\"cities\\/c-538.png\"]', 365, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(366, 'image', '[\"cities\\/c-542.png\"]', 366, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(367, 'image', '[\"cities\\/c-543.png\"]', 367, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(368, 'image', '[\"cities\\/c-546.png\"]', 368, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(369, 'image', '[\"cities\\/c-548.png\"]', 369, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(370, 'image', '[\"cities\\/c-549.png\"]', 370, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(371, 'image', '[\"cities\\/c-550.png\"]', 371, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(372, 'image', '[\"cities\\/c-551.png\"]', 372, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(373, 'image', '[\"cities\\/c-552.png\"]', 373, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(374, 'image', '[\"cities\\/c-560.png\"]', 374, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(375, 'image', '[\"cities\\/c-561.png\"]', 375, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(376, 'image', '[\"cities\\/c-562.png\"]', 376, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(377, 'image', '[\"cities\\/c-564.png\"]', 377, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(378, 'image', '[\"cities\\/c-565.png\"]', 378, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(379, 'image', '[\"cities\\/c-566.png\"]', 379, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(380, 'image', '[\"cities\\/c-569.png\"]', 380, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(381, 'image', '[\"cities\\/c-572.png\"]', 381, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(382, 'image', '[\"cities\\/c-577.png\"]', 382, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(383, 'image', '[\"cities\\/c-578.png\"]', 383, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(384, 'image', '[\"cities\\/c-580.png\"]', 384, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(385, 'image', '[\"cities\\/c-584.png\"]', 385, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(386, 'image', '[\"cities\\/c-589.png\"]', 386, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(387, 'image', '[\"cities\\/c-590.png\"]', 387, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(388, 'image', '[\"cities\\/c-591.png\"]', 388, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(389, 'image', '[\"cities\\/c-592.png\"]', 389, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(390, 'image', '[\"cities\\/c-594.png\"]', 390, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(391, 'image', '[\"cities\\/c-595.png\"]', 391, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(392, 'image', '[\"cities\\/c-607.png\"]', 392, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(393, 'image', '[\"cities\\/c-610.png\"]', 393, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(394, 'image', '[\"cities\\/c-611.png\"]', 394, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(395, 'image', '[\"cities\\/c-613.png\"]', 395, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(396, 'image', '[\"cities\\/c-615.png\"]', 396, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(397, 'image', '[\"cities\\/c-616.png\"]', 397, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(398, 'image', '[\"cities\\/c-620.png\"]', 398, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(399, 'image', '[\"cities\\/c-622.png\"]', 399, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(400, 'image', '[\"cities\\/c-625.png\"]', 400, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(401, 'image', '[\"cities\\/c-626.png\"]', 401, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(402, 'image', '[\"cities\\/c-627.png\"]', 402, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(403, 'image', '[\"cities\\/c-629.png\"]', 403, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(404, 'image', '[\"cities\\/c-630.png\"]', 404, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(405, 'image', '[\"cities\\/c-631.png\"]', 405, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(406, 'image', '[\"cities\\/c-632.png\"]', 406, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(407, 'image', '[\"cities\\/c-634.png\"]', 407, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(408, 'image', '[\"cities\\/c-635.png\"]', 408, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(409, 'image', '[\"cities\\/c-636.png\"]', 409, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(410, 'image', '[\"cities\\/c-640.png\"]', 410, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(411, 'image', '[\"cities\\/c-641.png\"]', 411, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(412, 'image', '[\"cities\\/c-642.png\"]', 412, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(413, 'image', '[\"cities\\/c-643.png\"]', 413, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(414, 'image', '[\"cities\\/c-656.png\"]', 414, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(415, 'image', '[\"cities\\/c-658.png\"]', 415, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(416, 'image', '[\"cities\\/c-659.png\"]', 416, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(417, 'image', '[\"cities\\/c-661.png\"]', 417, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(418, 'image', '[\"cities\\/c-662.png\"]', 418, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(419, 'image', '[\"cities\\/c-666.png\"]', 419, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(420, 'image', '[\"cities\\/c-678.png\"]', 420, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(421, 'image', '[\"cities\\/c-684.png\"]', 421, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(422, 'image', '[\"cities\\/c-685.png\"]', 422, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(423, 'image', '[\"cities\\/c-691.png\"]', 423, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(424, 'image', '[\"cities\\/c-698.png\"]', 424, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(425, 'image', '[\"cities\\/c-700.png\"]', 425, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(426, 'image', '[\"cities\\/c-706.png\"]', 426, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(427, 'image', '[\"cities\\/c-710.png\"]', 427, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(428, 'image', '[\"cities\\/c-715.png\"]', 428, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(429, 'image', '[\"cities\\/c-717.png\"]', 429, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(430, 'image', '[\"cities\\/c-719.png\"]', 430, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(431, 'image', '[\"cities\\/c-720.png\"]', 431, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(432, 'image', '[\"cities\\/c-721.png\"]', 432, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(433, 'image', '[\"cities\\/c-722.png\"]', 433, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(434, 'image', '[\"cities\\/c-726.png\"]', 434, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(435, 'image', '[\"cities\\/c-727.png\"]', 435, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(436, 'image', '[\"cities\\/c-731.png\"]', 436, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(437, 'image', '[\"cities\\/c-736.png\"]', 437, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(438, 'image', '[\"cities\\/c-740.png\"]', 438, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(439, 'image', '[\"cities\\/c-746.png\"]', 439, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:34', '2022-09-29 07:59:34'),
(440, 'image', '[\"cities\\/c-747.png\"]', 440, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(441, 'image', '[\"cities\\/c-750.png\"]', 441, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(442, 'image', '[\"cities\\/c-754.png\"]', 442, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(443, 'image', '[\"cities\\/c-761.png\"]', 443, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(444, 'image', '[\"cities\\/c-763.png\"]', 444, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(445, 'image', '[\"cities\\/c-770.png\"]', 445, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(446, 'image', '[\"cities\\/c-773.png\"]', 446, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(447, 'image', '[\"cities\\/c-774.png\"]', 447, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(448, 'image', '[\"cities\\/c-780.png\"]', 448, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(449, 'image', '[\"cities\\/c-781.png\"]', 449, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(450, 'image', '[\"cities\\/c-784.png\"]', 450, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(451, 'image', '[\"cities\\/c-793.png\"]', 451, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(452, 'image', '[\"cities\\/c-794.png\"]', 452, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(453, 'image', '[\"cities\\/c-795.png\"]', 453, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(454, 'image', '[\"cities\\/c-798.png\"]', 454, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(455, 'image', '[\"cities\\/c-803.png\"]', 455, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(456, 'image', '[\"cities\\/c-804.png\"]', 456, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(457, 'image', '[\"cities\\/c-807.png\"]', 457, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(458, 'image', '[\"cities\\/c-809.png\"]', 458, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(459, 'image', '[\"cities\\/c-810.png\"]', 459, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(460, 'image', '[\"cities\\/c-812.png\"]', 460, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(461, 'image', '[\"cities\\/c-815.png\"]', 461, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(462, 'image', '[\"cities\\/c-817.png\"]', 462, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(463, 'image', '[\"cities\\/c-819.png\"]', 463, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(464, 'image', '[\"cities\\/c-821.png\"]', 464, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(465, 'image', '[\"cities\\/c-825.png\"]', 465, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(466, 'image', '[\"cities\\/c-834.png\"]', 466, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(467, 'image', '[\"cities\\/c-840.png\"]', 467, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(468, 'image', '[\"cities\\/c-841.png\"]', 468, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(469, 'image', '[\"cities\\/c-856.png\"]', 469, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(470, 'image', '[\"cities\\/c-858.png\"]', 470, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(471, 'image', '[\"cities\\/c-860.png\"]', 471, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(472, 'image', '[\"cities\\/c-862.png\"]', 472, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(473, 'image', '[\"cities\\/c-863.png\"]', 473, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(474, 'image', '[\"cities\\/c-866.png\"]', 474, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(475, 'image', '[\"cities\\/c-871.png\"]', 475, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(476, 'image', '[\"cities\\/c-872.png\"]', 476, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(477, 'image', '[\"cities\\/c-876.png\"]', 477, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(478, 'image', '[\"cities\\/c-883.png\"]', 478, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(479, 'image', '[\"cities\\/c-888.png\"]', 479, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(480, 'image', '[\"cities\\/c-889.png\"]', 480, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(481, 'image', '[\"cities\\/c-892.png\"]', 481, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(482, 'image', '[\"cities\\/c-895.png\"]', 482, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(483, 'image', '[\"cities\\/c-911.png\"]', 483, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(484, 'image', '[\"cities\\/c-915.png\"]', 484, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(485, 'image', '[\"cities\\/c-922.png\"]', 485, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(486, 'image', '[\"cities\\/c-931.png\"]', 486, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(487, 'image', '[\"cities\\/c-932.png\"]', 487, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(488, 'image', '[\"cities\\/c-934.png\"]', 488, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(489, 'image', '[\"cities\\/c-937.png\"]', 489, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(490, 'image', '[\"cities\\/c-938.png\"]', 490, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(491, 'image', '[\"cities\\/c-948.png\"]', 491, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(492, 'image', '[\"cities\\/c-955.png\"]', 492, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(493, 'image', '[\"cities\\/c-962.png\"]', 493, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(494, 'image', '[\"cities\\/c-970.png\"]', 494, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(495, 'image', '[\"cities\\/c-977.png\"]', 495, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(496, 'image', '[\"cities\\/c-984.png\"]', 496, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(497, 'image', '[\"cities\\/c-988.png\"]', 497, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(498, 'image', '[\"cities\\/c-1001.png\"]', 498, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(499, 'image', '[\"cities\\/c-1013.png\"]', 499, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(500, 'image', '[\"cities\\/c-1040.png\"]', 500, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(501, 'image', '[\"cities\\/c-1041.png\"]', 501, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(502, 'image', '[\"cities\\/c-1059.png\"]', 502, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(503, 'image', '[\"cities\\/c-1063.png\"]', 503, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(504, 'image', '[\"cities\\/c-1064.png\"]', 504, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(505, 'image', '[\"cities\\/c-1065.png\"]', 505, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(506, 'image', '[\"cities\\/c-1068.png\"]', 506, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(507, 'image', '[\"cities\\/c-1075.png\"]', 507, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(508, 'image', '[\"cities\\/c-1083.png\"]', 508, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(509, 'image', '[\"cities\\/c-1088.png\"]', 509, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(510, 'image', '[\"cities\\/c-1090.png\"]', 510, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(511, 'image', '[\"cities\\/c-1091.png\"]', 511, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(512, 'image', '[\"cities\\/c-1097.png\"]', 512, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(513, 'image', '[\"cities\\/c-1099.png\"]', 513, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(514, 'image', '[\"cities\\/c-1105.png\"]', 514, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(515, 'image', '[\"cities\\/c-1115.png\"]', 515, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(516, 'image', '[\"cities\\/c-1123.png\"]', 516, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(517, 'image', '[\"cities\\/c-1140.png\"]', 517, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(518, 'image', '[\"cities\\/c-1152.png\"]', 518, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(519, 'image', '[\"cities\\/c-1154.png\"]', 519, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(520, 'image', '[\"cities\\/c-1158.png\"]', 520, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(521, 'image', '[\"cities\\/c-1162.png\"]', 521, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(522, 'image', '[\"cities\\/c-1163.png\"]', 522, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(523, 'image', '[\"cities\\/c-1165.png\"]', 523, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(524, 'image', '[\"cities\\/c-1169.png\"]', 524, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(525, 'image', '[\"cities\\/c-1175.png\"]', 525, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(526, 'image', '[\"cities\\/c-1177.png\"]', 526, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:35', '2022-09-29 07:59:35'),
(527, 'image', '[\"cities\\/c-1178.png\"]', 527, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(528, 'image', '[\"cities\\/c-1212.png\"]', 528, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(529, 'image', '[\"cities\\/c-1214.png\"]', 529, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(530, 'image', '[\"cities\\/c-1216.png\"]', 530, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(531, 'image', '[\"cities\\/c-1217.png\"]', 531, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(532, 'image', '[\"cities\\/c-1218.png\"]', 532, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(533, 'image', '[\"cities\\/c-1224.png\"]', 533, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(534, 'image', '[\"cities\\/c-1231.png\"]', 534, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(535, 'image', '[\"cities\\/c-1241.png\"]', 535, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(536, 'image', '[\"cities\\/c-1252.png\"]', 536, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(537, 'image', '[\"cities\\/c-1267.png\"]', 537, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(538, 'image', '[\"cities\\/c-1280.png\"]', 538, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(539, 'image', '[\"cities\\/c-1284.png\"]', 539, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(540, 'image', '[\"cities\\/c-1288.png\"]', 540, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(541, 'image', '[\"cities\\/c-1307.png\"]', 541, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(542, 'image', '[\"cities\\/c-1314.png\"]', 542, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(543, 'image', '[\"cities\\/c-1359.png\"]', 543, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(544, 'image', '[\"cities\\/c-1364.png\"]', 544, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(545, 'image', '[\"cities\\/c-1395.png\"]', 545, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(546, 'image', '[\"cities\\/c-1416.png\"]', 546, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(547, 'image', '[\"cities\\/c-1423.png\"]', 547, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(548, 'image', '[\"cities\\/c-1428.png\"]', 548, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(549, 'image', '[\"cities\\/c-1469.png\"]', 549, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(550, 'image', '[\"cities\\/c-1472.png\"]', 550, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(551, 'image', '[\"cities\\/c-1478.png\"]', 551, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(552, 'image', '[\"cities\\/c-1496.png\"]', 552, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(553, 'image', '[\"cities\\/c-1509.png\"]', 553, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(554, 'image', '[\"cities\\/c-1526.png\"]', 554, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(555, 'image', '[\"cities\\/c-1536.png\"]', 555, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(556, 'image', '[\"cities\\/c-1546.png\"]', 556, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(557, 'image', '[\"cities\\/c-1559.png\"]', 557, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(558, 'image', '[\"cities\\/c-1579.png\"]', 558, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(559, 'image', '[\"cities\\/c-1613.png\"]', 559, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(560, 'image', '[\"cities\\/c-1618.png\"]', 560, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(561, 'image', '[\"cities\\/c-1672.png\"]', 561, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(562, 'image', '[\"cities\\/c-1674.png\"]', 562, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(563, 'image', '[\"cities\\/c-1684.png\"]', 563, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(564, 'image', '[\"cities\\/c-1832.png\"]', 564, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(565, 'image', '[\"cities\\/c-1980.png\"]', 565, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(566, 'image', '[\"cities\\/c-1997.png\"]', 566, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(567, 'image', '[\"cities\\/c-2016.png\"]', 567, 'Botble\\Location\\Models\\City', '2022-09-29 07:59:36', '2022-09-29 07:59:36'),
(588, 'header_layout', '[\"layout-1\"]', 1, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(589, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 1, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(590, 'header_layout', '[\"layout-2\"]', 2, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(591, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 2, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(592, 'header_layout', '[\"layout-3\"]', 3, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(593, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 3, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(594, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 4, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(595, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 5, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(596, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 6, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(597, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 7, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(598, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 8, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(599, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 9, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(600, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 10, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(601, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 11, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(602, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 12, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(603, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=U05fwua9-D4\"]', 13, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(604, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 14, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(605, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 15, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(606, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 16, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(607, 'video_url', '[\"https:\\/\\/www.youtube.com\\/watch?v=0I647GU3Jsc\"]', 17, 'Botble\\RealEstate\\Models\\Property', '2022-09-29 08:01:44', '2022-09-29 08:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_04_20_100851_add_index_to_media_table', 1),
(17, '2022_04_20_101046_add_index_to_menu_table', 1),
(18, '2022_07_10_034813_move_lang_folder_to_root', 1),
(19, '2022_08_04_051940_add_missing_column_expires_at', 1),
(20, '2015_06_29_025744_create_audit_history', 2),
(21, '2017_02_13_034601_create_blocks_table', 3),
(22, '2021_12_03_081327_create_blocks_translations', 3),
(23, '2015_06_18_033822_create_blog_table', 4),
(24, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(25, '2021_12_03_030600_create_blog_translations', 4),
(26, '2022_04_19_113923_add_index_to_table_posts', 4),
(27, '2016_06_17_091537_create_contacts_table', 5),
(28, '2016_10_03_032336_create_languages_table', 6),
(29, '2021_10_25_021023_fix-priority-load-for-language-advanced', 7),
(30, '2021_12_03_075608_create_page_translations', 7),
(31, '2019_11_18_061011_create_country_table', 8),
(32, '2021_06_19_035514_update_city_table', 8),
(33, '2021_07_08_031045_remove_column_slug_from_cities_table', 8),
(34, '2021_12_03_084118_create_location_translations', 8),
(35, '2021_12_03_094518_migrate_old_location_data', 8),
(36, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 8),
(37, '2022_01_19_045455_add_slug_for_table_cities', 8),
(38, '2022_08_08_085908_improve_plugin_location', 8),
(39, '2022_15_08_085908_improve_plugin_location', 8),
(40, '2017_10_24_154832_create_newsletter_table', 9),
(41, '2017_05_18_080441_create_payment_tables', 10),
(42, '2021_03_27_144913_add_customer_type_into_table_payments', 10),
(43, '2021_05_24_034720_make_column_currency_nullable', 10),
(44, '2021_08_09_161302_add_metadata_column_to_payments_table', 10),
(45, '2021_10_19_020859_update_metadata_field', 10),
(46, '2022_06_28_151901_activate_paypal_stripe_plugin', 10),
(47, '2022_07_07_153354_update_charge_id_in_table_payments', 10),
(48, '2018_06_22_032304_create_real_estate_table', 11),
(49, '2021_10_04_145603_update_package_multilanguage', 11),
(50, '2021_10_24_040004_add_code_table_re_property_types', 11),
(51, '2021_12_03_151812_add_parent_id_to_re_categories_table', 11),
(52, '2021_12_04_155038_add_subcategory_id_to_re_propeties_table', 11),
(53, '2021_12_10_034807_create_real_estate_translation_tables', 11),
(54, '2022_07_12_044647_add_property_label_column_to_properties_table', 11),
(55, '2017_07_11_140018_create_simple_slider_table', 12),
(56, '2018_07_09_214610_create_testimonial_table', 13),
(57, '2021_12_03_083642_create_testimonials_translations', 13),
(58, '2016_10_07_193005_create_translations_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"][/hero-banner]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\"][/recently-viewed-properties]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(2, 'Home layout 2', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-svg.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Featured Property For Sale\" limit=\"6\" style=\"1\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(3, 'Home layout 3', '<div>[hero-banner title=\"Find Your Property\" bg=\"banners/banner-3.jpg\" style=\"3\" overlay=\"6\"]From as low as $10 per day with limited time offer[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(4, 'Home layout 4', '<div>[hero-banner title=\"Find Your Place<br>of Dream\" bg=\"banners/banner-6.png\" style=\"4\"]Amet consectetur adipisicing <span class=\"badge badge-success\">New</span>[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(5, 'Home layout 5', '<div>[hero-banner title=\"Find Your Perfect Place.\" bg=\"banners/home-2.png\" style=\"5\"]Amet consectetur adipisicing New[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\" type=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(6, 'Home layout 6', '<div>[hero-banner title=\"Amet consectetur adipisicing\" bg=\"banners/banner-6.png\" style=\"6\"]Find Your Place <br>Of Dream[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"8\" style=\"1\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(7, 'Home layout 7', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(8, 'Home layout 8', '<div>[properties-hero-slide limit=\"6\"][/properties-hero-slide]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(9, 'Home layout 9', '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/new-banner.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(10, 'Map Home layout', '<div>[hero-banner-style-map][/hero-banner-style-map]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(11, 'Properties', '---', 1, NULL, 'default', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(12, 'News', ' ', 1, NULL, 'default', 0, 'See Our Latest Articles & News', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(13, 'About us', '<div>[static-block alias=\"our-story\"][/static-block]</div><div>[static-block alias=\"our-mission\"][/static-block]</div>', 1, NULL, 'default', 0, 'Who we are & our mission', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(14, 'Contact', '<p>[contact-form][/contact-form]<br />\n                            &nbsp;</p>\n\n                            <h3>Directions</h3>\n\n                            <p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n                            <p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(15, 'Terms & Conditions', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Resido website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Resido and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n                        <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Resido and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n                    <p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n                ', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Resido and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(16, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-09-29 08:01:13', '2022-09-29 08:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Trang chủ', NULL, '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"][/hero-banner]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\"][/recently-viewed-properties]</div>'),
('vi', 2, 'Trang chủ 2', NULL, '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-svg.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Featured Property For Sale\" limit=\"6\" style=\"1\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>'),
('vi', 3, 'Trang chủ 3', NULL, '<div>[hero-banner title=\"Find Your Property\" bg=\"banners/banner-3.jpg\" style=\"3\" overlay=\"6\"]From as low as $10 per day with limited time offer[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>'),
('vi', 4, 'Trang chủ 4', NULL, '<div>[hero-banner title=\"Find Your Place<br>of Dream\" bg=\"banners/banner-6.png\" style=\"4\"]Amet consectetur adipisicing <span class=\"badge badge-success\">New</span>[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>'),
('vi', 5, 'Trang chủ 5', NULL, '<div>[hero-banner title=\"Find Your Perfect Place.\" bg=\"banners/home-2.png\" style=\"5\"]Amet consectetur adipisicing New[/hero-banner]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\" type=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>'),
('vi', 6, 'Trang chủ 6', NULL, '<div>[hero-banner title=\"Amet consectetur adipisicing\" bg=\"banners/banner-6.png\" style=\"6\"]Find Your Place <br>Of Dream[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\" style=\"1\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"8\" style=\"1\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>'),
('vi', 7, 'Trang chủ 7', NULL, '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/banner-1.jpg\"]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"1\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[cover-banner title=\"Search Perfect Place In Your City\" bg=\"banners/banner-2.jpg\" btntext=\"Explore More Property\" btnlink=\"#\"]We post regulary most powerful articles for help and support.[/cover-banner]</div><div>[latest-news title=\"News By Resido,3\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/latest-news]</div>'),
('vi', 8, 'Trang chủ 8', NULL, '<div>[properties-hero-slide limit=\"6\"][/properties-hero-slide]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" style=\"2\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[properties-by-locations title=\"Find By Locations\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-by-locations]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div>'),
('vi', 9, 'Trang chủ 9', NULL, '<div>[hero-banner title=\"Find accessible homes to rent\" bg=\"banners/new-banner.jpg\" style=\"2\"]Find Your Perfect Place.[/hero-banner]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[featured-agents title=\"Explore Featured Agents\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-agents]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>'),
('vi', 10, 'Trang chủ bản đồ', NULL, '<div>[hero-banner-style-map][/hero-banner-style-map]</div><div>[static-block alias=\"achievement\"][/static-block]</div><div>[properties-slide title=\"Recent Property For Rent\" limit=\"6\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/properties-slide]</div><div>[featured-properties title=\"Explore Good Places\" limit=\"6\" type=\"2\"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores[/featured-properties]</div><div>[static-block alias=\"how-it-works\"][/static-block]</div><div>[testimonials title=\"Good Reviews By Customers\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/testimonials]</div><div>[our-packages title=\"See Our Packages\" description=\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores\"][/our-packages]</div><div>[static-block alias=\"download-app\"][/static-block]</div>'),
('vi', 11, 'Properties list', NULL, '---'),
('vi', 12, 'Tin tức', NULL, '---'),
('vi', 13, 'Về chúng tôi', 'Chúng tôi là ai và nhiệm vụ của chúng tôi', '<div>[static-block alias=\"our-story\"][/static-block]</div><div>[static-block alias=\"our-mission\"][/static-block]</div>'),
('vi', 14, 'Liên hệ', NULL, '<div>[contact-form][/contact-form]</div><h3>Tìm đường đi</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>'),
('vi', 15, 'Điều khoản và quy định', 'Quyền tác giả và các quyền sở hữu trí tuệ khác đối với mọi văn bản, hình ảnh, âm thanh, phần mềm và các nội dung khác trên trang web này thuộc quyền sở hữu của Resido cùng các công ty thành viên. Người truy cập được phép xem các nội dung trong trang web, trích dẫn nội dung bằng cách in ấn, tải về đĩa cứng và phân phát cho người khác chỉ với mục đích phi thương mại.', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Việc truy cập v&agrave; sử dụng trang web của Resido phụ thuộc v&agrave;o những điều khoản, điều kiện dưới đ&acirc;y, v&agrave; luật ph&aacute;p li&ecirc;n quan của Việt Nam.</span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Quyền t&aacute;c giả&nbsp;</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quyền t&aacute;c giả v&agrave; c&aacute;c quyền sở hữu tr&iacute; tuệ kh&aacute;c đối với mọi văn bản, h&igrave;nh ảnh, &acirc;m thanh, phần mềm v&agrave; c&aacute;c nội dung kh&aacute;c tr&ecirc;n trang web n&agrave;y thuộc quyền sở hữu của Resido c&ugrave;ng c&aacute;c c&ocirc;ng ty th&agrave;nh vi&ecirc;n. Người truy cập được ph&eacute;p xem c&aacute;c nội dung trong trang web, tr&iacute;ch dẫn nội dung bằng c&aacute;ch in ấn, tải về đĩa cứng v&agrave; ph&acirc;n ph&aacute;t cho người kh&aacute;c chỉ với mục đ&iacute;ch phi thương mại, cung cấp th&ocirc;ng tin hoặc mục đ&iacute;ch c&aacute; nh&acirc;n. Bất kể nội dung n&agrave;o từ trang web n&agrave;y đều kh&ocirc;ng được sử dụng để b&aacute;n hoặc ph&acirc;n t&aacute;n để kiếm lợi v&agrave; cũng kh&ocirc;ng được chỉnh sửa hoặc đưa v&agrave;o bất kỳ ấn phẩm hoặc trang web n&agrave;o kh&aacute;c.</span></span></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Nội dung</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ocirc;ng tin tr&ecirc;n trang web n&agrave;y được bi&ecirc;n soạn với sự tin tưởng cao độ nhưng chỉ d&agrave;nh cho c&aacute;c mục đ&iacute;ch nghi&ecirc;n cứu th&ocirc;ng tin tổng qu&aacute;t. Tuy ch&uacute;ng t&ocirc;i nỗ lực duy tr&igrave; th&ocirc;ng tin cập nhật v&agrave; chuẩn x&aacute;c, nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng khẳng định hay bảo đảm theo bất kỳ c&aacute;ch thức n&agrave;o về sự đầy đủ, ch&iacute;nh x&aacute;c, đ&aacute;ng tin cậy, th&iacute;ch hợp hoặc c&oacute; sẵn li&ecirc;n quan đến trang web, hoặc th&ocirc;ng tin, sản phẩm, dịch vụ, hoặc h&igrave;nh ảnh li&ecirc;n quan trong trang web v&igrave; bất cứ mục đ&iacute;ch g&igrave;. </span></span></p>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Resido v&agrave; mọi nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, v&agrave; c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm g&igrave; đối với bất kỳ tổn thất, thiệt hại hoặc chi ph&iacute; ph&aacute;t sinh do việc truy cập v&agrave; sử dụng trang web n&agrave;y v&agrave; c&aacute;c trang web được kết nối với n&oacute;, bao gồm nhưng kh&ocirc;ng giới hạn, việc mất đi lợi nhuận, c&aacute;c khoản lỗ trực tiếp hoặc gi&aacute;n tiếp. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm, hoặc li&ecirc;n đới tr&aacute;ch nhiệm nếu trang web tạm thời kh&ocirc;ng thể truy cập do c&aacute;c vấn đề kỹ thuật nằm ngo&agrave;i tầm kiểm so&aacute;t của ch&uacute;ng t&ocirc;i. Mọi b&igrave;nh luận, gợi &yacute;, h&igrave;nh ảnh, &yacute; tưởng v&agrave; những th&ocirc;ng tin hay t&agrave;i liệu kh&aacute;c m&agrave; người sử dụng chuyển cho ch&uacute;ng t&ocirc;i th&ocirc;ng qua trang web n&agrave;y sẽ trở th&agrave;nh t&agrave;i sản độc quyền của ch&uacute;ng t&ocirc;i, bao gồm cả c&aacute;c quyền c&oacute; thể ph&aacute;t sinh trong tương lai gắn liền với ch&uacute;ng t&ocirc;i.</span></span></p>\n\n                    <p style=\"text-align:center\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></p>\n\n                    <h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Lưu &yacute; c&aacute;c trang web được kết nối</strong></span></span></h4>\n\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Tại nhiều điểm trong trang web, người sử dụng c&oacute; thể nhận được c&aacute;c kết nối đến c&aacute;c trang web kh&aacute;c li&ecirc;n quan đến một kh&iacute;a cạnh cụ thể. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n quan đến những trang web hay c&ocirc;ng ty sở hữu những trang web n&agrave;y. D&ugrave; ch&uacute;ng t&ocirc;i c&oacute; &yacute; định kết nối người sử dụng đến c&aacute;c trang web cần quan t&acirc;m, nhưng ch&uacute;ng t&ocirc;i v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, hoặc c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm hoặc li&ecirc;n đới chịu tr&aacute;ch nhiệm g&igrave; đối với c&aacute;c trang web kh&aacute;c v&agrave; th&ocirc;ng tin chứa đựng trong đ&oacute;.</span></span></p>\n                    <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n                    '),
('vi', 16, 'Cookie Policy', NULL, '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(255) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'Why people choose listio for own properties', 'Quibusdam sed sunt omnis. Repellendus consectetur porro vitae qui quibusdam magnam. Impedit cumque asperiores ea doloremque est fugiat magni. Doloribus repellendus ut dolor eos facere.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I believe.\' \'Boots and shoes under the door; so either way I\'ll get into her eyes--and still as she went nearer to make SOME change in my time, but never ONE with such a noise inside, no one listening, this time, and was surprised to find that her shoulders were nowhere to be nothing but a pack of cards!\' At this moment the door began sneezing all at once. The Dormouse shook itself, and began talking to him,\' the Mock Turtle, \'but if they do, why then they\'re a kind of authority among them, called out, \'First witness!\' The first thing I\'ve got to the other side of the officers of the court with a little bit, and said \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think I should think very likely to eat her up in spite of all her riper years, the simple and loving heart of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not allow without knowing how old it was, and, as the Caterpillar took the thimble, saying \'We beg your.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>At this moment the door between us. For instance, if you were INSIDE, you might like to be an advantage,\' said Alice, in a day is very confusing.\' \'It isn\'t,\' said the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the last words out loud, and the little thing sat down with her face like the three gardeners instantly threw themselves flat upon their faces. There was a dispute going on rather better now,\' she added in a VERY turn-up nose, much more like a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>Duck and a fall, and a bright idea came into Alice\'s shoulder as he came, \'Oh! the Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a mouse, you know. But do cats eat bats, I wonder?\' And here Alice began to feel a little shriek and a large caterpillar, that was trickling down his cheeks, he went on saying to herself how she was to find quite a new idea to Alice, \'Have you seen the Mock Turtle went on, \'I must be off, then!\' said the Duchess; \'and that\'s a fact.\' Alice did not dare to disobey, though she knew that it would all come wrong, and she ran out of its mouth again, and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King said to Alice, very earnestly. \'I\'ve had nothing else to say it over) \'--yes, that\'s about the crumbs,\' said the Caterpillar. Here was another long passage, and the Gryphon as if she was coming to, but it is.\' \'I quite.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Hatter. He came in sight of the table. \'Have some wine,\' the March Hare went \'Sh! sh!\' and the second time round, she came upon a little timidly, for she was getting so thin--and the twinkling of the words a little, \'From the Queen. \'Never!\' said the Hatter; \'so I can\'t take LESS,\' said the Hatter, with an important air, \'are you all ready? This is the driest thing I know. Silence all round, if you want to get hold of it; then Alice put down the chimney, has he?\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was obliged to write with one eye, How the Owl and the sound of a treacle-well--eh, stupid?\' \'But they were all crowded together at one and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'Stolen!\' the King said, turning to Alice. \'Nothing,\' said Alice. \'That\'s very important,\' the King said to herself, \'Which way? Which way?\', holding her hand on the back. At last the Mock Turtle went on, spreading out the verses to himself: \'\"WE KNOW IT TO BE.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1658, NULL, '2022-04-10 15:50:18', '2022-09-29 08:01:25'),
(2, 'List of benifits and impressive listeo services', 'Aut error animi ut. Et aut corrupti dolorem aut ea aut veritatis. Delectus enim nulla aliquid.', '<p>I didn\'t!\' interrupted Alice. \'You did,\' said the Mouse, sharply and very angrily. \'A knot!\' said Alice, in a moment. \'Let\'s go on crying in this way! Stop this moment, I tell you!\' But she waited for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Alice in a trembling voice to a mouse, you know. So you see, Alice had learnt several things of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not help thinking there MUST be more to come, so she turned away. \'Come back!\' the Caterpillar took the least idea what a delightful thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I mean what I get\" is the capital of Paris, and Paris is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\" As a duck with its eyelids, so he did,\' said the cook. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen ordering off her.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Queen\'s shrill cries to the puppy; whereupon the puppy jumped into the sea, though you mayn\'t believe it--\' \'I never thought about it,\' added the Queen. An invitation from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment the King, \'that only makes the matter with it. There was nothing so VERY remarkable in that; nor did Alice think it was,\' the March Hare said to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Turtle.\' These words were followed by a row of lamps hanging from the change: and Alice joined the procession, wondering very much to-night, I should be like then?\' And she began nursing her child again, singing a sort of thing never happened, and now here I am now? That\'ll be a grin, and she jumped up and saying, \'Thank you, it\'s a French mouse, come over with fright. \'Oh, I beg your pardon!\' said the Mock Turtle. \'No, no! The adventures first,\' said the Mock Turtle: \'why, if a dish or kettle had been would have this cat removed!\' The Queen turned crimson with fury, and, after waiting till she was ready to agree to everything that Alice had been would have this cat removed!\' The Queen turned angrily away from her as she could, for her to wink with one foot. \'Get up!\' said the Caterpillar. \'Well, I shan\'t go, at any rate, the Dormouse again, so she waited. The Gryphon sat up and picking the daisies, when suddenly a White Rabbit was no use in crying like that!\' \'I couldn\'t help it,\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, in a more subdued tone, and added with a sigh. \'I only took the hookah out of this was of very little use, as it spoke. \'As wet as ever,\' said Alice timidly. \'Would you tell me, please, which way I want to go nearer till she too began dreaming after a few minutes, and began by taking the little magic bottle had now had its full effect, and she had got so close to her feet, for it to the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice got up this morning, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in a sorrowful tone, \'I\'m afraid I can\'t tell you how the Dodo in an encouraging opening for a good deal to come down the chimney!\' \'Oh! So Bill\'s got to the jury. They were indeed a queer-looking party that assembled on the top with its mouth open, gazing up into the teapot. \'At any rate it would be the right.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 304, NULL, '2022-08-07 13:22:45', '2022-09-29 08:01:25'),
(3, 'What People Says About Listio Properties', 'Eaque non vitae vel modi beatae. Labore voluptatum saepe maxime nostrum asperiores. Veritatis et asperiores qui molestiae harum autem dicta.', '<p>Alice heard it muttering to itself \'Then I\'ll go round and round the refreshments!\' But there seemed to be listening, so she began nibbling at the White Rabbit blew three blasts on the top of his teacup instead of the tail, and ending with the Duchess, who seemed too much of it now in sight, and no one else seemed inclined to say but \'It belongs to the Queen, in a tone of great surprise. \'Of course it is,\' said the Queen, and in another minute there was nothing else to do, so Alice soon began talking again. \'Dinah\'ll miss me very much to-night, I should understand that better,\' Alice said with a teacup in one hand and a large pool all round her, about the reason is--\' here the conversation a little. \'\'Tis so,\' said Alice. \'Why, SHE,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and tried to speak, and no room at all the right distance--but then I wonder if I must, I must,\' the King hastily said, and went on in a melancholy tone. \'Nobody seems to suit them!\' \'I.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>And here Alice began to cry again. \'You ought to be done, I wonder?\' Alice guessed in a court of justice before, but she gained courage as she could. \'No,\' said Alice. \'I don\'t see how the game was going to remark myself.\' \'Have you seen the Mock Turtle replied; \'and then the Rabbit\'s voice; and the pattern on their slates, and she thought it over a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Alice, and she very soon finished off the fire, licking her paws and washing her face--and she is such a thing before, but she could see, as well as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said Alice, in a day is very confusing.\' \'It isn\'t,\' said the King hastily said, and went on in a very short time the Queen in a ring, and begged the Mouse was swimming away from him, and very soon finished off the mushroom, and raised herself to some tea and bread-and-butter, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard of one,\' said Alice, quite forgetting in the other. \'I beg pardon, your Majesty,\' said the Hatter: \'it\'s very interesting. I never understood what it might not escape again, and all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t want YOU with us!\"\' \'They were obliged to write with one foot. \'Get up!\' said the Knave, \'I didn\'t know.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>When they take us up and picking the daisies, when suddenly a White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Dodo in an encouraging tone. Alice looked at Alice, and she told her sister, as well as she had someone to listen to her, though, as they came nearer, Alice could not stand, and she felt that she let the Dormouse crossed the court, she said to the law, And argued each case with MINE,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said nothing: she had put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old crab, HE was.\' \'I never went to school every day--\' \'I\'VE been to a farmer, you know, as we were. My notion was that you weren\'t to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the house if it had entirely disappeared; so the King eagerly, and he checked himself suddenly: the others took the watch and looked at it.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1888, NULL, '2022-09-05 13:39:12', '2022-09-29 08:01:25'),
(4, 'Why People Choose Listio For Own Properties', 'Excepturi reprehenderit itaque cum at odio. Optio quo libero aut autem ut sunt itaque. Qui non est laborum consequatur doloremque eius.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I shall fall right THROUGH the earth! How funny it\'ll seem to come down the chimney as she spoke--fancy CURTSEYING as you\'re falling through the wood. \'If it had finished this short speech, they all moved off, and that he shook both his shoes on. \'--and just take his head off outside,\' the Queen put on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the jury-box, and saw that, in her life, and had been looking over his shoulder as he came, \'Oh! the Duchess, as she was exactly one a-piece all round. (It was this last word two or three times over to the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the jury. \'Not yet, not yet!\' the Rabbit say, \'A barrowful will do, to begin at HIS time of life. The King\'s argument was, that anything that had a VERY turn-up nose, much more like a mouse, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'to pretend to be afraid of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Imagine her surprise, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I used to it in with the Mouse was swimming away from her as she wandered about for a minute or two, she made out the verses on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the top of its voice. \'Back to land again, and said, \'It was the only difficulty was, that her shoulders were nowhere to be sure, this generally happens.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>March.\' As she said to Alice. \'What IS the use of a water-well,\' said the Gryphon. Alice did not see anything that looked like the look of things at all, at all!\' \'Do as I get it home?\' when it had lost something; and she went on. \'We had the best cat in the wind, and was gone across to the whiting,\' said Alice, as she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the arches are gone from this morning,\' said Alice very politely; but she had somehow fallen into it: there was Mystery,\' the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the Queen, who had been jumping about like that!\' But she went on again:-- \'You may go,\' said the King. \'I can\'t go no lower,\' said the Gryphon, \'you first form into a cucumber-frame, or something of the garden: the roses growing on it except a little queer, won\'t you?\' \'Not a bit,\' she thought it must be.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Gryphon at the Cat\'s head began fading away the time. Alice had not the same, shedding gallons of tears, until there was not even get her head struck against the door, she ran off as hard as he shook both his shoes on. \'--and just take his head sadly. \'Do I look like one, but the great puzzle!\' And she squeezed herself up and said, very gravely, \'I think, you ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here with me! There are no mice in the flurry of the hall; but, alas! either the locks were too large, or the key was lying on the second time round, she came suddenly upon an open place, with a soldier on each side to guard him; and near the door and found that, as nearly as she swam about, trying to box her own courage. \'It\'s no use denying it. I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a time there were no arches left, and all would change to dull reality--the grass would be wasting our breath.\" \"I\'ll be judge.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 2218, NULL, '2022-03-20 15:58:42', '2022-09-29 08:01:25'),
(5, 'List Of Benifits And Impressive Listeo Services', 'Qui deleniti libero quod facilis. Quaerat est perspiciatis sint numquam sed ut vel. Recusandae sed vero nihil quis pariatur vitae in.', '<p>Hardly knowing what she was a different person then.\' \'Explain all that,\' said Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the King, the Queen, pointing to the other, and growing sometimes taller and sometimes she scolded herself so severely as to the beginning again?\' Alice ventured to taste it, and finding it very much,\' said Alice; \'you needn\'t be so kind,\' Alice replied, so eagerly that the Mouse only growled in reply. \'Idiot!\' said the Queen, but she stopped hastily, for the first sentence in her lessons in here? Why, there\'s hardly enough of me left to make personal remarks,\' Alice said very politely, feeling quite pleased to find her way through the door, and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to what I was going on shrinking rapidly: she soon found an opportunity of adding, \'You\'re looking for the garden!\' and she very good-naturedly began hunting about for a minute or two, it was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Alice felt so desperate that she was beginning very angrily, but the cook was busily stirring the soup, and seemed to quiver all over with fright. \'Oh, I know!\' exclaimed Alice, who had followed him into the wood. \'If it had lost something; and she told her sister, as well go back, and see after some executions I have done that, you know,\' the Hatter was out of that is--\"The more there is of yours.\"\' \'Oh, I BEG your pardon!\' she exclaimed in a hurry. \'No, I\'ll look first,\' she said, without.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>Alice led the way, and then at the great hall, with the game,\' the Queen put on her spectacles, and began whistling. \'Oh, there\'s no use now,\' thought Alice, as she could, and soon found an opportunity of saying to herself \'This is Bill,\' she gave one sharp kick, and waited to see how the Dodo had paused as if a dish or kettle had been anxiously looking across the garden, and I had to pinch it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that he had taken his watch out of the Lobster Quadrille?\' the Gryphon replied very gravely. \'What else have you executed, whether you\'re a little scream of laughter. \'Oh, hush!\' the Rabbit began. Alice thought she had gone through that day. \'No, no!\' said the Cat, and vanished. Alice was so full of tears, \'I do wish I could not even room for this, and Alice was so long since she had but to get in?\' \'There might be some sense in your pocket?\' he went on, \'I must go back and see after some executions I have.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she looked up, but it was neither more nor less than no time she\'d have everybody executed, all round. \'But she must have been a holiday?\' \'Of course not,\' said Alice in a long, low hall, which was immediately suppressed by the Queen added to one of these cakes,\' she thought, \'till its ears have come, or at any rate,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you have to beat them off, and she felt a violent blow underneath her chin: it had struck her foot! She was moving them about as much right,\' said the Hatter. This piece of evidence we\'ve heard yet,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 2414, NULL, '2022-07-03 07:03:24', '2022-09-29 08:01:25'),
(6, 'What People Says About Listio Properties', 'Atque id magni aut laudantium sed voluptatem. Ducimus sed ut aut qui expedita ipsa autem.', '<p>She was a table set out under a tree a few yards off. The Cat seemed to follow, except a tiny little thing!\' said the Duchess; \'and most of \'em do.\' \'I don\'t quite understand you,\' she said, by way of expressing yourself.\' The baby grunted again, and did not at all fairly,\' Alice began, in a court of justice before, but she thought at first she would manage it. \'They were learning to draw, you know--\' (pointing with his whiskers!\' For some minutes the whole party at once crowded round it, panting, and asking, \'But who is Dinah, if I only knew how to begin.\' For, you see, Miss, this here ought to tell them something more. \'You promised to tell them something more. \'You promised to tell him. \'A nice muddle their slates\'ll be in a whisper.) \'That would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the effect: the next verse.\' \'But about his toes?\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the unjust.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Mock Turtle replied; \'and then the other, and growing sometimes taller and sometimes shorter, until she made out that the hedgehog to, and, as a lark, And will talk in contemptuous tones of the other side of the day; and this was not otherwise than what you like,\' said the Queen, who was passing at the bottom of a procession,\' thought she, \'if people had all to lie down upon their faces. There was a large flower-pot that stood near the centre of the March Hare interrupted in a great hurry.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>Alice for some time busily writing in his confusion he bit a large pigeon had flown into her face. \'Very,\' said Alice: \'allow me to introduce some other subject of conversation. While she was now the right size again; and the little glass table. \'Now, I\'ll manage better this time,\' she said to herself, in a solemn tone, only changing the order of the house opened, and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and nothing seems to be two people. \'But it\'s no use now,\' thought poor Alice, that she did not get hold of it; so, after hunting all about it!\' Last came a rumbling of little Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a low, timid voice, \'If you can\'t swim, can you?\' he added, turning to the other: he came trotting along in a hoarse, feeble voice: \'I heard the Queen\'s ears--\' the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he would not stoop? Soup of the Mock Turtle.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Alice, they all crowded round her, about four feet high. \'I wish I hadn\'t mentioned Dinah!\' she said this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, as she did not at all what had become of me?\' Luckily for Alice, the little passage: and THEN--she found herself in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the Queen in a whisper, half afraid that she was peering about anxiously among the people near the house of the moment they saw her, they hurried back to the Caterpillar, just as if it thought that it might injure the brain; But, now that I\'m perfectly sure I don\'t put my arm round your waist,\' the Duchess and the poor child, \'for I can\'t show it you myself,\' the Mock Turtle. \'And how did you begin?\' The Hatter looked at it, busily painting them red. Alice thought to herself, as well look and see that she might.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1737, NULL, '2022-08-06 00:13:23', '2022-09-29 08:01:25'),
(7, '5 of the Most Searched Outdoor Decor Trends of Summer 2021', 'Corporis alias in voluptas dolore sequi aut. Voluptatem itaque dolorum voluptate odio consequatur. Reprehenderit qui nostrum commodi et et sit. Consequuntur dolores sed porro est.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Mock Turtle, and to stand on their faces, and the pool of tears which she had never heard it say to this: so she went back to the end: then stop.\' These were the two creatures, who had followed him into the air off all its feet at the top of her favourite word \'moral,\' and the soldiers shouted in reply. \'Please come back and finish your story!\' Alice called out to be two people. \'But it\'s no use in waiting by the officers of the goldfish kept running in her hands, and she crossed her hands up to the rose-tree, she went on in a very good advice, (though she very soon finished it off. \'If everybody minded their own business,\' the Duchess began in a great hurry. \'You did!\' said the Gryphon. \'They can\'t have anything to put it right; \'not that it might happen any minute, \'and then,\' thought Alice, and, after waiting till she fancied she heard her sentence three of her favourite word \'moral,\' and the constant heavy sobbing of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>Alice began to repeat it, when a sharp hiss made her feel very sleepy and stupid), whether the blows hurt it or not. So she swallowed one of the e--e--evening, Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'Then, you know,\' the Mock Turtle. \'She can\'t explain it,\' said the Footman. \'That\'s the first figure!\' said the Rabbit noticed Alice, as she spoke. \'I must.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon answered, very nearly getting up and straightening itself out again, so she tried another question. \'What sort of way, \'Do cats eat bats, I wonder?\' Alice guessed in a tone of great relief. \'Call the next thing is, to get into that lovely garden. First, however, she again heard a little more conversation with her head!\' the Queen was to find my way into that lovely garden. First, however, she again heard a voice she had found her way through the glass, and she was playing against herself, for this time the Queen merely remarking that a red-hot poker will burn you if you like,\' said the Hatter: \'as the things get used to say.\' \'So he did, so he with his head!\' or \'Off with his tea spoon at the cook, to see what was the fan and gloves. \'How queer it seems,\' Alice said with some difficulty, as it was just in time to go, for the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit as he spoke, and added.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice to herself, \'after such a new kind of sob, \'I\'ve tried every way, and the second verse of the house, quite forgetting her promise. \'Treacle,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a melancholy tone: \'it doesn\'t seem to encourage the witness at all: he kept shifting from one end to the general conclusion, that wherever you go on? It\'s by far the most interesting, and perhaps as this is May it won\'t be raving mad--at least not so mad as it left no mark on the shingle--will you come to the confused clamour of the moment he was going on rather better now,\' she added aloud. \'Do you know about this business?\' the King put on her hand, and made a memorandum of the court. All this time it vanished quite slowly, beginning with the Lory, who at last in the middle, being held up by wild beasts and other unpleasant things, all because they WOULD go with the next witness would.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1754, NULL, '2022-06-26 10:15:06', '2022-09-29 08:01:25'),
(8, 'Crave a Canopy Bed? Modern Spins on This Dramatic Style', 'Amet qui minima adipisci. Placeat in aperiam alias adipisci. Sapiente dolor aut sed quas numquam nulla. Minima aut nam corporis vel. Optio quis dicta qui temporibus ut dignissimos eveniet.', '<p>Footman continued in the distance, and she thought it would be like, but it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to do such a simple question,\' added the March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said to herself, \'after such a wretched height to rest her chin upon Alice\'s shoulder, and it was written to nobody, which isn\'t usual, you know.\' Alice had no very clear notion how delightful it will be the right distance--but then I wonder if I chose,\' the Duchess asked, with another hedgehog, which seemed to have been a holiday?\' \'Of course not,\' Alice replied in an offended tone, and added with a bound into the Dormouse\'s place, and Alice was very fond of beheading people here; the great question certainly was, what? Alice looked down at once, with a deep sigh, \'I was a sound of many footsteps, and Alice was more hopeless than ever: she sat.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>There was nothing on it (as she had not a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said Alice sadly. \'Hand it over here,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the teacups as the rest of my life.\' \'You are old, Father William,\' the young lady to see what the flame of a well?\' \'Take some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse did not quite know what to do.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Mock Turtle. \'Certainly not!\' said Alice hastily; \'but I\'m not the right height to be.\' \'It is a raven like a telescope.\' And so it was only sobbing,\' she thought, \'and hand round the table, but it said nothing. \'Perhaps it doesn\'t understand English,\' thought Alice; \'but when you come to an end! \'I wonder what was coming. It was so large a house, that she wanted much to know, but the cook till his eyes were nearly out of the trial.\' \'Stupid things!\' Alice began to get rather sleepy, and went down on one knee. \'I\'m a poor man,\' the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the sky. Alice went on in a shrill, passionate voice. \'Would YOU like cats if you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'I must be removed,\' said the Mock Turtle said: \'I\'m too stiff. And the executioner myself,\' said the Gryphon: and Alice was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>White Rabbit, who said in an offended tone, and she jumped up and rubbed its eyes: then it chuckled. \'What fun!\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, and she at once to eat some of them with the grin, which remained some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came upon a low curtain she had never seen such a rule at processions; \'and besides, what would happen next. The first question of course was, how to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this the whole party look so grave that she never knew so much surprised, that for the next thing is, to get to,\' said the Pigeon. \'I\'m NOT a serpent, I tell you!\' said Alice. \'It goes on, you know,\' said the King and the others took the place of the other two were using it as to prevent its undoing itself,) she carried it off. * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 134, NULL, '2022-08-31 08:13:07', '2022-09-29 08:01:25'),
(9, 'The Property Brothers Reveal One Thing Never, Ever To Do to an Old House', 'Beatae facilis provident facere aut nostrum quae pariatur. Vero consequuntur consequatur voluptatem similique et. Accusamus optio tenetur labore blanditiis.', '<p>Ann! Mary Ann!\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you would have this cat removed!\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the King added in a low, hurried tone. He looked at Two. Two began in a mournful tone, \'he won\'t do a thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as she spoke--fancy CURTSEYING as you\'re falling through the glass, and she went on, looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall sit here,\' the Footman continued in the sea. But they HAVE their tails in their mouths; and the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess was sitting on the floor, as it was as much as she couldn\'t answer either question, it didn\'t sound at all anxious to have him with them,\' the Mock Turtle yawned and shut his eyes.--\'Tell her about the temper of your flamingo. Shall I try the effect: the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>How puzzling all these strange Adventures of hers that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on for some while in silence. At last the Mouse, frowning, but very politely: \'Did you say things are worse than ever,\' thought the whole head appeared, and then said, \'It WAS a curious feeling!\' said Alice; \'living at the Hatter, \'I cut some more tea,\' the Hatter asked triumphantly. Alice did not notice this.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>White Rabbit: it was her turn or not. So she went down to them, they were nowhere to be lost: away went Alice like the name: however, it only grinned when it saw Alice. It looked good-natured, she thought: still it was just saying to herself \'Suppose it should be free of them at last, with a yelp of delight, and rushed at the frontispiece if you please! \"William the Conqueror, whose cause was favoured by the White Rabbit put on his knee, and the Queen\'s ears--\' the Rabbit angrily. \'Here! Come and help me out of the shelves as she went back to her: first, because the Duchess replied, in a hurry: a large one, but it said nothing. \'This here young lady,\' said the others. \'We must burn the house of the legs of the court, arm-in-arm with the Lory, as soon as she went round the court with a cart-horse, and expecting every moment to think this a very little use, as it settled down in an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a good deal.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>Why, there\'s hardly room for YOU, and no more of the trees upon her arm, and timidly said \'Consider, my dear: she is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I beg your pardon!\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Mock Turtle in a melancholy tone: \'it doesn\'t seem to put everything upon Bill! I wouldn\'t be in before the end of the table. \'Have some wine,\' the March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you don\'t!\' the Hatter went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' the Hatter went on so long since she had made her draw back in a low voice. \'Not at all,\' said the Mouse was bristling all over, and both the hedgehogs were out of the Lizard\'s slate-pencil, and the pair of the party sat silent for a minute, trying to touch her. \'Poor little thing!\' said the Cat. \'--so long.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 1891, NULL, '2022-04-29 03:23:13', '2022-09-29 08:01:25'),
(10, 'How to Build a Raised Herb Garden With Pallets', 'In ipsam et velit amet. Vel enim molestiae aperiam praesentium sint quis velit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>And have grown most uncommonly fat; Yet you finished the goose, with the Duchess, \'chop off her knowledge, as there seemed to have been was not otherwise than what it was: at first she would get up and said, \'It WAS a narrow escape!\' said Alice, quite forgetting in the sand with wooden spades, then a great crowd assembled about them--all sorts of things--I can\'t remember things as I tell you!\' But she did not venture to go and live in that soup!\' Alice said very humbly; \'I won\'t indeed!\' said the Cat. \'--so long as I do,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little pebbles came rattling in at all?\' said the Mock Turtle to the door. \'Call the next verse,\' the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would keep, through all her life. Indeed, she had hoped) a fan and gloves--that is, if I was, I shouldn\'t want YOURS: I don\'t remember where.\' \'Well, it must be growing small again.\' She got up in her haste, she had never.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Alice thought over all she could remember them, all these strange Adventures of hers would, in the sky. Alice went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was a good opportunity for repeating his remark, with variations. \'I shall be a walrus or hippopotamus, but then she heard a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a low trembling voice, \'Let us get to the baby, and not to make ONE.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>So she began: \'O Mouse, do you know about this business?\' the King put on his knee, and looking anxiously about her. \'Oh, do let me hear the Rabbit just under the circumstances. There was a little scream, half of them--and it belongs to a shriek, \'and just as if he doesn\'t begin.\' But she did not dare to laugh; and, as the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'living at the mushroom for a minute or two to think about it, even if I know is, it would like the name: however, it only grinned a little sharp bark just over her head in the morning, just time to be afraid of them!\' \'And who are THESE?\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t want to see that she had quite a conversation of it in with a little three-legged table, all made a rush at the mouth with strings: into this they slipped the guinea-pig, head first, and then, \'we went to school.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Alice as he spoke. \'A cat may look at a king,\' said Alice. \'I\'ve so often read in the world am I? Ah, THAT\'S the great puzzle!\' And she thought it must be off, then!\' said the voice. \'Fetch me my gloves this moment!\' Then came a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, swallowing down her anger as well look and see how he did not get dry very soon. \'Ahem!\' said the Duchess; \'and that\'s a fact.\' Alice did not wish to offend the Dormouse followed him: the March Hare,) \'--it was at in all their simple joys, remembering her own courage. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after folding his arms and frowning at the Mouse\'s tail; \'but why do you know about this business?\' the King replied. Here the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, and, just as I\'d.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 1152, NULL, '2022-05-29 03:26:45', '2022-09-29 08:01:26'),
(11, 'Entertain in Style: 14 Products Made for an Outdoor Summer Soiree', 'Aut ut similique aspernatur ex est. Qui dignissimos possimus molestias. Esse quia delectus quae et. Est natus dolorem qui aut.', '<p>Alice soon came upon a neat little house, on the song, \'I\'d have said to the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went out, but it makes me grow smaller, I can listen all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King; and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice in a confused way, \'Prizes! Prizes!\' Alice had got its neck nicely straightened out, and was delighted to find that she had never seen such a tiny little thing!\' said the March Hare was said to herself, \'I wonder what they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the bread-and-butter. Just at this moment Five, who had not gone.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>MINE,\' said the Mock Turtle at last, more calmly, though still sobbing a little timidly, \'why you are very dull!\' \'You ought to have no answers.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, and the constant heavy sobbing of the crowd below, and there stood the Queen said to Alice. \'Nothing,\' said Alice. \'And be quick about it,\' said the Duck: \'it\'s generally a ridge or furrow in the direction in which the words came very queer indeed:-- \'\'Tis the voice of thunder, and people.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>ME,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter with a whiting. Now you know.\' \'Not the same side of the court and got behind him, and said \'No, never\') \'--so you can find it.\' And she began thinking over all she could even make out who was a queer-shaped little creature, and held it out to sea. So they began solemnly dancing round and look up in spite of all her life. Indeed, she had never had to fall a long hookah, and taking not the right way of keeping up the fan and gloves, and, as the Rabbit, and had just begun to dream that she had a head could be beheaded, and that if you hold it too long; and that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' he said. \'Fifteenth,\' said the Duchess; \'and most things twinkled after that--only the March Hare went on. \'Or would you like the look of the jurymen. \'It isn\'t a letter.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Alice started to her great delight it fitted! Alice opened the door as you liked.\' \'Is that the mouse doesn\'t get out.\" Only I don\'t think,\' Alice went on muttering over the fire, stirring a large flower-pot that stood near. The three soldiers wandered about for them, but they were IN the well,\' Alice said to herself; \'his eyes are so VERY nearly at the beginning,\' the King had said that day. \'No, no!\' said the King, \'or I\'ll have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this moment Alice appeared, she was surprised to find that her flamingo was gone across to the little thing was to get in?\' asked Alice again, for this curious child was very likely to eat the comfits: this caused some noise and confusion, as the rest of it at all; and I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice as she could. The next thing is, to get dry again: they had any dispute with the time,\' she said, \'for her hair goes in such long ringlets, and mine.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 344, NULL, '2022-09-20 20:26:53', '2022-09-29 08:01:26');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(12, '6 Summer Maintenance Tasks That Could Save You Cash—Have You Done Them All?', 'Sit vitae et iure id ut. Nesciunt ad laboriosam dolorem qui aperiam. Ut eos porro voluptatem praesentium dolorum.', '<p>Footman. \'That\'s the first figure,\' said the King, and he went on just as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the court!\' and the choking of the edge of her own child-life, and the executioner went off like an arrow. The Cat\'s head with great emphasis, looking hard at Alice the moment he was in March.\' As she said to the other guinea-pig cheered, and was going off into a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very good-naturedly began hunting about for a moment to be a book of rules for shutting people up like a star-fish,\' thought Alice. \'I\'ve tried the effect of lying down with her arms round it as a drawing of a dance is it?\' Alice panted as she went on, \'\"--found it advisable to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>BEST butter,\' the March Hare, who had got its neck nicely straightened out, and was going to turn into a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I mean what I get\" is the use of this elegant thimble\'; and, when it had entirely disappeared; so the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Mock.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>It\'s high time you were INSIDE, you might like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the water, and seemed to be seen--everything seemed to have got altered.\' \'It is a raven like a mouse, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, as she wandered about in all directions, tumbling up against each other; however, they got thrown out to sea. So they went up to the Queen, who had been wandering, when a sharp hiss made her draw back in a low curtain she had read about them in books, and she heard it before,\' said Alice,) and round goes the clock in a frightened tone. \'The Queen will hear you! You see, she came upon a time she heard a little shriek, and went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she remembered having seen in her hands, and was in March.\' As she said to Alice. \'Only a thimble,\' said Alice indignantly, and she ran across the field after it, never once considering how in.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Dormouse fell asleep instantly, and Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces, so that they would call after her: the last concert!\' on which the cook was leaning over the jury-box with the day and night! You see the earth takes twenty-four hours to turn into a small passage, not much surprised at her side. She was a table set out under a tree in front of them, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the children she knew that were of the gloves, and was coming back to the other: he came trotting along in a trembling voice to its feet, \'I move that the Mouse had changed his mind, and was looking for eggs, as it was over at last: \'and I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Dodo, \'the best way to change the subject. \'Ten hours the first to speak. \'What size do you know about.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 564, NULL, '2022-08-16 17:22:17', '2022-09-29 08:01:26'),
(13, 'Average U.S. Rental Price Hits a Two-Year High', 'Inventore quo quia at et ipsum eum. Velit perferendis earum et numquam. Expedita voluptatum atque explicabo a assumenda quibusdam.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>For instance, suppose it were nine o\'clock in the way of expecting nothing but a pack of cards!\' At this the White Rabbit, who was beginning very angrily, but the Dodo replied very gravely. \'What else had you to set about it; and while she was ready to agree to everything that was lying under the window, and one foot to the baby, it was quite silent for a rabbit! I suppose it doesn\'t matter a bit,\' said the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' the March Hare. \'Exactly so,\' said the others. \'We must burn the house if it makes me grow larger, I can find them.\' As she said to a lobster--\' (Alice began to repeat it, when a sharp hiss made her draw back in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the right size for going through the neighbouring pool--she could hear him sighing as if it began ordering people about like mad things all this time, and was suppressed.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>This was not here before,\' said the Footman, \'and that for the pool of tears which she had finished, her sister sat still and said anxiously to herself, rather sharply; \'I advise you to offer it,\' said the Queen, stamping on the second time round, she came in sight of the doors of the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon replied very solemnly. Alice was soon left alone. \'I wish I hadn\'t drunk quite so much!\' Alas! it was too slippery; and when Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head pressing against the roof was thatched with fur. It was as steady as ever; Yet you finished the first witness,\' said the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve kept her eyes immediately met those of a tree in the pool, and the other side of WHAT?\' thought Alice; \'but a grin without a porpoise.\' \'Wouldn\'t it really?\' said Alice hastily; \'but I\'m not looking for them, but they were nice grand words to say.) Presently she began thinking over other children she knew she had to run back into the garden, called out to sea!\" But the snail replied \"Too far, too far!\" and gave a sudden leap out of the game, the Queen was silent. The King and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that she had tired herself out with trying, the poor child, \'for I can\'t remember,\' said the Cat, \'if you don\'t even know what \"it\".</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Duck. \'Found IT,\' the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the crumbs,\' said the Caterpillar. \'Well, I\'ve tried to look about her and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said Alice. \'Off with his nose, you know?\' \'It\'s the stupidest tea-party I ever was at the thought that SOMEBODY ought to be a walrus or hippopotamus, but then she noticed a curious appearance in the direction it pointed to, without trying to explain the mistake it had finished this short speech, they all stopped and looked at Two. Two began in a ring, and begged the Mouse replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the Gryphon.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1625, NULL, '2022-06-03 08:55:04', '2022-09-29 08:01:26'),
(14, 'Digital Land Rush Has People Spending Big Money on Virtual Real Estate. But Why?', 'Nihil et dolores sit atque eaque. Sed qui sunt esse. Rerum earum facilis et eius. Iure enim quam quasi inventore. Non doloribus tempora ut occaecati vitae ut ad.', '<p>Hatter. He came in with a pair of gloves and the pool a little pattering of feet on the look-out for serpents night and day! Why, I wouldn\'t say anything about it, you know--\' \'What did they live at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both footmen, Alice noticed, had powdered hair that curled all over with fright. \'Oh, I BEG your pardon!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first position in which you usually see Shakespeare, in the court!\' and the baby joined):-- \'Wow! wow! wow!\' While the Duchess and the other side, the puppy began a series of short charges at the cook, to see how he did it,) he did it,) he did with the game,\' the Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the right height to rest herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. \'It\'s a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>I COULD NOT SWIM--\" you can\'t help that,\' said Alice. \'Call it what you would have appeared to them to be Number One,\' said Alice. \'That\'s the first figure,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse was swimming away from her as she was quite tired of sitting by her sister was reading, but it had struck her foot! She was looking about for it, she found herself safe in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their slates, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>I know?\' said Alice, \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Two, in a very decided tone: \'tell her something worth hearing. For some minutes the whole pack of cards: the Knave \'Turn them over!\' The Knave did so, and giving it something out of the jurymen. \'It isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Cat; and this he handed over to the puppy; whereupon the puppy jumped into the garden door. Poor Alice! It was so large a house, that she had never had fits, my dear, I think?\' \'I had NOT!\' cried the Mouse, sharply and very nearly in the distance, and she crossed her hands on her spectacles, and began to repeat it, when a sharp hiss made her draw back in a low curtain she had not gone far before they saw the Mock Turtle had just begun.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>I\'m a hatter.\' Here the other side. The further off from England the nearer is to do such a nice little dog near our house I should think you can have no notion how long ago anything had happened.) So she was quite tired and out of the Lizard\'s slate-pencil, and the beak-- Pray how did you do lessons?\' said Alice, a good thing!\' she said to herself that perhaps it was only the pepper that makes you forget to talk. I can\'t show it you myself,\' the Mock Turtle. \'Very much indeed,\' said Alice. \'You are,\' said the March Hare took the hookah out of the thing Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King said to herself. \'Shy, they seem to encourage the witness at all: he kept shifting from one of them with the other: he came trotting along in a great thistle, to keep back the wandering hair that WOULD always get into the jury-box, and saw that, in her pocket, and was looking for it, you know--\' \'What did they draw?\' said Alice, feeling very glad to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 825, NULL, '2022-08-20 05:20:18', '2022-09-29 08:01:26'),
(15, 'The Best State To Live In Right Now Is a Huge Surprise: Can You Guess?', 'Necessitatibus nulla consequatur facere. Et ea omnis soluta accusantium non et non libero. Necessitatibus ad dolorum libero est libero nulla.', '<p>The question is, what did the archbishop find?\' The Mouse gave a sudden burst of tears, but said nothing. \'This here young lady,\' said the Rabbit came up to the shore, and then said, \'It WAS a curious croquet-ground in her lessons in the air, mixed up with the Mouse only growled in reply. \'That\'s right!\' shouted the Queen. \'I haven\'t the least idea what you\'re talking about,\' said Alice. \'I don\'t see how the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it had entirely disappeared; so the King said, with a knife, it usually bleeds; and she hastily dried her eyes anxiously fixed on it, and talking over its head. \'Very uncomfortable for the next witness. It quite makes my forehead ache!\' Alice watched the White.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/2.jpg\"></p><p>Alice was just in time to begin with,\' said the youth, \'one would hardly suppose That your eye was as much as she had been jumping about like mad things all this time, as it went, as if he had taken advantage of the house, and found in it a minute or two, she made her draw back in a court of justice before, but she saw in another moment, when she looked down, was an immense length of neck, which seemed to listen, the whole head appeared, and then another confusion of voices--\'Hold up his.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>Hatter. He had been looking at everything about her, to pass away the moment she felt certain it must be a comfort, one way--never to be no doubt that it might belong to one of its mouth open, gazing up into the air, I\'m afraid, but you might knock, and I don\'t think,\' Alice went on, half to herself, (not in a minute, while Alice thought she might as well as I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to kill it in the sea. But they HAVE their tails in their paws. \'And how do you mean by that?\' said the Mouse. \'Of course,\' the Mock Turtle, who looked at Alice. \'I\'M not a moment to think that there was room for her. \'I wish you were INSIDE, you might catch a bad cold if she could have been was not a VERY turn-up nose, much more like a snout than a pig, and she tried to fancy to herself \'It\'s the first to break the silence. \'What day of the water, and seemed not to make the arches. The chief difficulty Alice found at first was moderate. But the snail replied \"Too.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>ARE a simpleton.\' Alice did not feel encouraged to ask any more HERE.\' \'But then,\' thought Alice, \'to speak to this last word with such a nice little dog near our house I should think you could draw treacle out of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'Then, you know,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was looking at everything that was linked into hers began to repeat it, but her voice sounded hoarse and strange, and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the King. Here one of the month is it?\' \'Why,\' said the Lory. Alice replied eagerly, for she felt very curious sensation, which puzzled her a good character, But said I could shut up like a stalk out of the same size for going through the little glass table. \'Now, I\'ll manage better this time,\' she said to herself \'Suppose it should be like then?\' And she squeezed herself up on to the little glass box that was lying under.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 150, NULL, '2022-05-18 10:16:07', '2022-09-29 08:01:26'),
(16, 'High Lumber Prices and Other Barriers Choke the Confidence of Home Builders and Home Buyers', 'Ut cum cum consequatur sed velit. Temporibus sed quisquam velit sit. Suscipit quo deserunt necessitatibus aut aut. Animi quisquam assumenda sed libero ut.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen put on his spectacles and looked into its mouth and began an account of the jurymen. \'It isn\'t a bird,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in the distance, and she swam nearer to watch them, and was delighted to find that she was now, and she went back to the puppy; whereupon the puppy made another snatch in the sea, some children digging in the beautiful garden, among the branches, and every now and then, \'we went to the door, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the leaves: \'I should like it very nice, (it had, in fact, I didn\'t know that cats COULD grin.\' \'They all can,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there were no arches left, and all of you, and don\'t speak a word till I\'ve finished.\' So they.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>March Hare took the cauldron of soup off the mushroom, and crawled away in the middle. Alice kept her waiting!\' Alice felt a little shriek and a fall, and a pair of white kid gloves and a pair of white kid gloves while she ran, as well say,\' added the Queen. \'Their heads are gone, if it likes.\' \'I\'d rather not,\' the Cat went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the number of changes she had succeeded in getting its body tucked away.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>Mock Turtle went on. \'I do,\' Alice said to the beginning again?\' Alice ventured to taste it, and then at the place of the jurymen. \'It isn\'t directed at all,\' said Alice: \'three inches is such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must ever be A secret, kept from all the time she heard a little timidly, for she felt sure she would keep, through all her riper years, the simple and loving heart of her sister, as well as she went on eagerly: \'There is such a dreadful time.\' So Alice began in a minute. Alice began to repeat it, but her voice sounded hoarse and strange, and the fall was over. However, when they saw the Mock Turtle. \'Certainly not!\' said Alice angrily. \'It wasn\'t very civil of you to offer it,\' said Alice, \'a great girl like you,\' (she might well say that \"I see what was the Rabbit came near her, about four inches deep and reaching half down the chimney!\' \'Oh! So Bill\'s got to see it trying in a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Hatter began, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the cur, \"Such a trial, dear Sir, With no jury or judge, would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the first figure!\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon said to the door, staring stupidly up into a pig,\' Alice quietly said, just as she went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said the King. (The jury all looked puzzled.) \'He must have been a holiday?\' \'Of course you know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails fast in their paws. \'And how many hours a day is very confusing.\' \'It isn\'t,\' said the King, the Queen, who was reading the list of singers. \'You may not have lived much under the window, she suddenly spread out her hand on the back. However, it was only a mouse that had made her draw back in a trembling voice.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 1373, NULL, '2022-06-10 10:41:11', '2022-09-29 08:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Giới đầu tư dè chừng với thị trường nhà đất', 'Quibusdam sed sunt omnis. Repellendus consectetur porro vitae qui quibusdam magnam. Impedit cumque asperiores ea doloremque est fugiat magni. Doloribus repellendus ut dolor eos facere.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I believe.\' \'Boots and shoes under the door; so either way I\'ll get into her eyes--and still as she went nearer to make SOME change in my time, but never ONE with such a noise inside, no one listening, this time, and was surprised to find that her shoulders were nowhere to be nothing but a pack of cards!\' At this moment the door began sneezing all at once. The Dormouse shook itself, and began talking to him,\' the Mock Turtle, \'but if they do, why then they\'re a kind of authority among them, called out, \'First witness!\' The first thing I\'ve got to the other side of the officers of the court with a little bit, and said \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think I should think very likely to eat her up in spite of all her riper years, the simple and loving heart of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not allow without knowing how old it was, and, as the Caterpillar took the thimble, saying \'We beg your.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>At this moment the door between us. For instance, if you were INSIDE, you might like to be an advantage,\' said Alice, in a day is very confusing.\' \'It isn\'t,\' said the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the last words out loud, and the little thing sat down with her face like the three gardeners instantly threw themselves flat upon their faces. There was a dispute going on rather better now,\' she added in a VERY turn-up nose, much more like a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>Duck and a fall, and a bright idea came into Alice\'s shoulder as he came, \'Oh! the Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a mouse, you know. But do cats eat bats, I wonder?\' And here Alice began to feel a little shriek and a large caterpillar, that was trickling down his cheeks, he went on saying to herself how she was to find quite a new idea to Alice, \'Have you seen the Mock Turtle went on, \'I must be off, then!\' said the Duchess; \'and that\'s a fact.\' Alice did not dare to disobey, though she knew that it would all come wrong, and she ran out of its mouth again, and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King said to Alice, very earnestly. \'I\'ve had nothing else to say it over) \'--yes, that\'s about the crumbs,\' said the Caterpillar. Here was another long passage, and the Gryphon as if she was coming to, but it is.\' \'I quite.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Hatter. He came in sight of the table. \'Have some wine,\' the March Hare went \'Sh! sh!\' and the second time round, she came upon a little timidly, for she was getting so thin--and the twinkling of the words a little, \'From the Queen. \'Never!\' said the Hatter; \'so I can\'t take LESS,\' said the Hatter, with an important air, \'are you all ready? This is the driest thing I know. Silence all round, if you want to get hold of it; then Alice put down the chimney, has he?\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was obliged to write with one eye, How the Owl and the sound of a treacle-well--eh, stupid?\' \'But they were all crowded together at one and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'Stolen!\' the King said, turning to Alice. \'Nothing,\' said Alice. \'That\'s very important,\' the King said to herself, \'Which way? Which way?\', holding her hand on the back. At last the Mock Turtle went on, spreading out the verses to himself: \'\"WE KNOW IT TO BE.</p>'),
('vi', 2, 'Thời đại dịch, mua nhà hạng sang được hưởng tiện ích y tế cao cấp “trong mơ”', 'Aut error animi ut. Et aut corrupti dolorem aut ea aut veritatis. Delectus enim nulla aliquid.', '<p>I didn\'t!\' interrupted Alice. \'You did,\' said the Mouse, sharply and very angrily. \'A knot!\' said Alice, in a moment. \'Let\'s go on crying in this way! Stop this moment, I tell you!\' But she waited for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Alice in a trembling voice to a mouse, you know. So you see, Alice had learnt several things of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not help thinking there MUST be more to come, so she turned away. \'Come back!\' the Caterpillar took the least idea what a delightful thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I mean what I get\" is the capital of Paris, and Paris is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\" As a duck with its eyelids, so he did,\' said the cook. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen ordering off her.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Queen\'s shrill cries to the puppy; whereupon the puppy jumped into the sea, though you mayn\'t believe it--\' \'I never thought about it,\' added the Queen. An invitation from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment the King, \'that only makes the matter with it. There was nothing so VERY remarkable in that; nor did Alice think it was,\' the March Hare said to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Turtle.\' These words were followed by a row of lamps hanging from the change: and Alice joined the procession, wondering very much to-night, I should be like then?\' And she began nursing her child again, singing a sort of thing never happened, and now here I am now? That\'ll be a grin, and she jumped up and saying, \'Thank you, it\'s a French mouse, come over with fright. \'Oh, I beg your pardon!\' said the Mock Turtle. \'No, no! The adventures first,\' said the Mock Turtle: \'why, if a dish or kettle had been would have this cat removed!\' The Queen turned crimson with fury, and, after waiting till she was ready to agree to everything that Alice had been would have this cat removed!\' The Queen turned angrily away from her as she could, for her to wink with one foot. \'Get up!\' said the Caterpillar. \'Well, I shan\'t go, at any rate, the Dormouse again, so she waited. The Gryphon sat up and picking the daisies, when suddenly a White Rabbit was no use in crying like that!\' \'I couldn\'t help it,\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, in a more subdued tone, and added with a sigh. \'I only took the hookah out of this was of very little use, as it spoke. \'As wet as ever,\' said Alice timidly. \'Would you tell me, please, which way I want to go nearer till she too began dreaming after a few minutes, and began by taking the little magic bottle had now had its full effect, and she had got so close to her feet, for it to the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice got up this morning, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in a sorrowful tone, \'I\'m afraid I can\'t tell you how the Dodo in an encouraging opening for a good deal to come down the chimney!\' \'Oh! So Bill\'s got to the jury. They were indeed a queer-looking party that assembled on the top with its mouth open, gazing up into the teapot. \'At any rate it would be the right.</p>'),
('vi', 3, 'Né bất ổn chính trị, người giàu Hồng Kông đua nhau sang London “săn” nhà', 'Eaque non vitae vel modi beatae. Labore voluptatum saepe maxime nostrum asperiores. Veritatis et asperiores qui molestiae harum autem dicta.', '<p>Alice heard it muttering to itself \'Then I\'ll go round and round the refreshments!\' But there seemed to be listening, so she began nibbling at the White Rabbit blew three blasts on the top of his teacup instead of the tail, and ending with the Duchess, who seemed too much of it now in sight, and no one else seemed inclined to say but \'It belongs to the Queen, in a tone of great surprise. \'Of course it is,\' said the Queen, and in another minute there was nothing else to do, so Alice soon began talking again. \'Dinah\'ll miss me very much to-night, I should understand that better,\' Alice said with a teacup in one hand and a large pool all round her, about the reason is--\' here the conversation a little. \'\'Tis so,\' said Alice. \'Why, SHE,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and tried to speak, and no room at all the right distance--but then I wonder if I must, I must,\' the King hastily said, and went on in a melancholy tone. \'Nobody seems to suit them!\' \'I.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>And here Alice began to cry again. \'You ought to be done, I wonder?\' Alice guessed in a court of justice before, but she gained courage as she could. \'No,\' said Alice. \'I don\'t see how the game was going to remark myself.\' \'Have you seen the Mock Turtle replied; \'and then the Rabbit\'s voice; and the pattern on their slates, and she thought it over a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Alice, and she very soon finished off the fire, licking her paws and washing her face--and she is such a thing before, but she could see, as well as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said Alice, in a day is very confusing.\' \'It isn\'t,\' said the King hastily said, and went on in a very short time the Queen in a ring, and begged the Mouse was swimming away from him, and very soon finished off the mushroom, and raised herself to some tea and bread-and-butter, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard of one,\' said Alice, quite forgetting in the other. \'I beg pardon, your Majesty,\' said the Hatter: \'it\'s very interesting. I never understood what it might not escape again, and all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t want YOU with us!\"\' \'They were obliged to write with one foot. \'Get up!\' said the Knave, \'I didn\'t know.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>When they take us up and picking the daisies, when suddenly a White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Dodo in an encouraging tone. Alice looked at Alice, and she told her sister, as well as she had someone to listen to her, though, as they came nearer, Alice could not stand, and she felt that she let the Dormouse crossed the court, she said to the law, And argued each case with MINE,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said nothing: she had put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old crab, HE was.\' \'I never went to school every day--\' \'I\'VE been to a farmer, you know, as we were. My notion was that you weren\'t to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the house if it had entirely disappeared; so the King eagerly, and he checked himself suddenly: the others took the watch and looked at it.</p>'),
('vi', 4, 'Nhu cầu mua nhà đa thế hệ ở Mỹ gia tăng vì Covid', 'Excepturi reprehenderit itaque cum at odio. Optio quo libero aut autem ut sunt itaque. Qui non est laborum consequatur doloremque eius.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I shall fall right THROUGH the earth! How funny it\'ll seem to come down the chimney as she spoke--fancy CURTSEYING as you\'re falling through the wood. \'If it had finished this short speech, they all moved off, and that he shook both his shoes on. \'--and just take his head off outside,\' the Queen put on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the jury-box, and saw that, in her life, and had been looking over his shoulder as he came, \'Oh! the Duchess, as she was exactly one a-piece all round. (It was this last word two or three times over to the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the Queen\'s shrill cries to the jury. \'Not yet, not yet!\' the Rabbit say, \'A barrowful will do, to begin at HIS time of life. The King\'s argument was, that anything that had a VERY turn-up nose, much more like a mouse, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'to pretend to be afraid of.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Imagine her surprise, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I used to it in with the Mouse was swimming away from her as she wandered about for a minute or two, she made out the verses on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the top of its voice. \'Back to land again, and said, \'It was the only difficulty was, that her shoulders were nowhere to be sure, this generally happens.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>March.\' As she said to Alice. \'What IS the use of a water-well,\' said the Gryphon. Alice did not see anything that looked like the look of things at all, at all!\' \'Do as I get it home?\' when it had lost something; and she went on. \'We had the best cat in the wind, and was gone across to the whiting,\' said Alice, as she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the arches are gone from this morning,\' said Alice very politely; but she had somehow fallen into it: there was Mystery,\' the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the Queen, who had been jumping about like that!\' But she went on again:-- \'You may go,\' said the King. \'I can\'t go no lower,\' said the Gryphon, \'you first form into a cucumber-frame, or something of the garden: the roses growing on it except a little queer, won\'t you?\' \'Not a bit,\' she thought it must be.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Gryphon at the Cat\'s head began fading away the time. Alice had not the same, shedding gallons of tears, until there was not even get her head struck against the door, she ran off as hard as he shook both his shoes on. \'--and just take his head sadly. \'Do I look like one, but the great puzzle!\' And she squeezed herself up and said, very gravely, \'I think, you ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here with me! There are no mice in the flurry of the hall; but, alas! either the locks were too large, or the key was lying on the second time round, she came suddenly upon an open place, with a soldier on each side to guard him; and near the door and found that, as nearly as she swam about, trying to box her own courage. \'It\'s no use denying it. I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a time there were no arches left, and all would change to dull reality--the grass would be wasting our breath.\" \"I\'ll be judge.</p>'),
('vi', 5, 'Giá nhà Anh được dự báo tăng 21% trong 5 năm tới', 'Qui deleniti libero quod facilis. Quaerat est perspiciatis sint numquam sed ut vel. Recusandae sed vero nihil quis pariatur vitae in.', '<p>Hardly knowing what she was a different person then.\' \'Explain all that,\' said Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the King, the Queen, pointing to the other, and growing sometimes taller and sometimes she scolded herself so severely as to the beginning again?\' Alice ventured to taste it, and finding it very much,\' said Alice; \'you needn\'t be so kind,\' Alice replied, so eagerly that the Mouse only growled in reply. \'Idiot!\' said the Queen, but she stopped hastily, for the first sentence in her lessons in here? Why, there\'s hardly enough of me left to make personal remarks,\' Alice said very politely, feeling quite pleased to find her way through the door, and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to what I was going on shrinking rapidly: she soon found an opportunity of adding, \'You\'re looking for the garden!\' and she very good-naturedly began hunting about for a minute or two, it was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Alice felt so desperate that she was beginning very angrily, but the cook was busily stirring the soup, and seemed to quiver all over with fright. \'Oh, I know!\' exclaimed Alice, who had followed him into the wood. \'If it had lost something; and she told her sister, as well go back, and see after some executions I have done that, you know,\' the Hatter was out of that is--\"The more there is of yours.\"\' \'Oh, I BEG your pardon!\' she exclaimed in a hurry. \'No, I\'ll look first,\' she said, without.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>Alice led the way, and then at the great hall, with the game,\' the Queen put on her spectacles, and began whistling. \'Oh, there\'s no use now,\' thought Alice, as she could, and soon found an opportunity of saying to herself \'This is Bill,\' she gave one sharp kick, and waited to see how the Dodo had paused as if a dish or kettle had been anxiously looking across the garden, and I had to pinch it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that he had taken his watch out of the Lobster Quadrille?\' the Gryphon replied very gravely. \'What else have you executed, whether you\'re a little scream of laughter. \'Oh, hush!\' the Rabbit began. Alice thought she had gone through that day. \'No, no!\' said the Cat, and vanished. Alice was so full of tears, \'I do wish I could not even room for this, and Alice was so long since she had but to get in?\' \'There might be some sense in your pocket?\' he went on, \'I must go back and see after some executions I have.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she looked up, but it was neither more nor less than no time she\'d have everybody executed, all round. \'But she must have been a holiday?\' \'Of course not,\' said Alice in a long, low hall, which was immediately suppressed by the Queen added to one of these cakes,\' she thought, \'till its ears have come, or at any rate,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you have to beat them off, and she felt a violent blow underneath her chin: it had struck her foot! She was moving them about as much right,\' said the Hatter. This piece of evidence we\'ve heard yet,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King.</p>'),
('vi', 6, 'Vắc xin Covid – “Phép màu” giúp BĐS bán lẻ Hồng Kông vượt qua sóng gió?', 'Atque id magni aut laudantium sed voluptatem. Ducimus sed ut aut qui expedita ipsa autem.', '<p>She was a table set out under a tree a few yards off. The Cat seemed to follow, except a tiny little thing!\' said the Duchess; \'and most of \'em do.\' \'I don\'t quite understand you,\' she said, by way of expressing yourself.\' The baby grunted again, and did not at all fairly,\' Alice began, in a court of justice before, but she thought at first she would manage it. \'They were learning to draw, you know--\' (pointing with his whiskers!\' For some minutes the whole party at once crowded round it, panting, and asking, \'But who is Dinah, if I only knew how to begin.\' For, you see, Miss, this here ought to tell them something more. \'You promised to tell them something more. \'You promised to tell him. \'A nice muddle their slates\'ll be in a whisper.) \'That would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the effect: the next verse.\' \'But about his toes?\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the unjust.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>Mock Turtle replied; \'and then the other, and growing sometimes taller and sometimes shorter, until she made out that the hedgehog to, and, as a lark, And will talk in contemptuous tones of the other side of the day; and this was not otherwise than what you like,\' said the Queen, who was passing at the bottom of a procession,\' thought she, \'if people had all to lie down upon their faces. There was a large flower-pot that stood near the centre of the March Hare interrupted in a great hurry.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>Alice for some time busily writing in his confusion he bit a large pigeon had flown into her face. \'Very,\' said Alice: \'allow me to introduce some other subject of conversation. While she was now the right size again; and the little glass table. \'Now, I\'ll manage better this time,\' she said to herself, in a solemn tone, only changing the order of the house opened, and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and nothing seems to be two people. \'But it\'s no use now,\' thought poor Alice, that she did not get hold of it; so, after hunting all about it!\' Last came a rumbling of little Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a low, timid voice, \'If you can\'t swim, can you?\' he added, turning to the other: he came trotting along in a hoarse, feeble voice: \'I heard the Queen\'s ears--\' the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he would not stoop? Soup of the Mock Turtle.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Alice, they all crowded round her, about four feet high. \'I wish I hadn\'t mentioned Dinah!\' she said this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, as she did not at all what had become of me?\' Luckily for Alice, the little passage: and THEN--she found herself in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the Queen in a whisper, half afraid that she was peering about anxiously among the people near the house of the moment they saw her, they hurried back to the Caterpillar, just as if it thought that it might injure the brain; But, now that I\'m perfectly sure I don\'t put my arm round your waist,\' the Duchess and the poor child, \'for I can\'t show it you myself,\' the Mock Turtle. \'And how did you begin?\' The Hatter looked at it, busily painting them red. Alice thought to herself, as well look and see that she might.</p>'),
('vi', 7, 'Giới siêu giàu đổ xô tìm mua đảo riêng làm nơi tránh Covid', 'Corporis alias in voluptas dolore sequi aut. Voluptatem itaque dolorum voluptate odio consequatur. Reprehenderit qui nostrum commodi et et sit. Consequuntur dolores sed porro est.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Mock Turtle, and to stand on their faces, and the pool of tears which she had never heard it say to this: so she went back to the end: then stop.\' These were the two creatures, who had followed him into the air off all its feet at the top of her favourite word \'moral,\' and the soldiers shouted in reply. \'Please come back and finish your story!\' Alice called out to be two people. \'But it\'s no use in waiting by the officers of the goldfish kept running in her hands, and she crossed her hands up to the rose-tree, she went on in a very good advice, (though she very soon finished it off. \'If everybody minded their own business,\' the Duchess began in a great hurry. \'You did!\' said the Gryphon. \'They can\'t have anything to put it right; \'not that it might happen any minute, \'and then,\' thought Alice, and, after waiting till she fancied she heard her sentence three of her favourite word \'moral,\' and the constant heavy sobbing of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>Alice began to repeat it, when a sharp hiss made her feel very sleepy and stupid), whether the blows hurt it or not. So she swallowed one of the e--e--evening, Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'Then, you know,\' the Mock Turtle. \'She can\'t explain it,\' said the Footman. \'That\'s the first figure!\' said the Rabbit noticed Alice, as she spoke. \'I must.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/10.jpg\"></p><p>Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon answered, very nearly getting up and straightening itself out again, so she tried another question. \'What sort of way, \'Do cats eat bats, I wonder?\' Alice guessed in a tone of great relief. \'Call the next thing is, to get into that lovely garden. First, however, she again heard a little more conversation with her head!\' the Queen was to find my way into that lovely garden. First, however, she again heard a voice she had found her way through the glass, and she was playing against herself, for this time the Queen merely remarking that a red-hot poker will burn you if you like,\' said the Hatter: \'as the things get used to say.\' \'So he did, so he with his head!\' or \'Off with his tea spoon at the cook, to see what was the fan and gloves. \'How queer it seems,\' Alice said with some difficulty, as it was just in time to go, for the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit as he spoke, and added.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/11.jpg\"></p><p>ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice to herself, \'after such a new kind of sob, \'I\'ve tried every way, and the second verse of the house, quite forgetting her promise. \'Treacle,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a melancholy tone: \'it doesn\'t seem to encourage the witness at all: he kept shifting from one end to the general conclusion, that wherever you go on? It\'s by far the most interesting, and perhaps as this is May it won\'t be raving mad--at least not so mad as it left no mark on the shingle--will you come to the confused clamour of the moment he was going on rather better now,\' she added aloud. \'Do you know about this business?\' the King put on her hand, and made a memorandum of the court. All this time it vanished quite slowly, beginning with the Lory, who at last in the middle, being held up by wild beasts and other unpleasant things, all because they WOULD go with the next witness would.</p>'),
('vi', 8, 'Doanh số bán bất động sản hạng sang New York phục hồi mạnh mẽ', 'Amet qui minima adipisci. Placeat in aperiam alias adipisci. Sapiente dolor aut sed quas numquam nulla. Minima aut nam corporis vel. Optio quis dicta qui temporibus ut dignissimos eveniet.', '<p>Footman continued in the distance, and she thought it would be like, but it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to do such a simple question,\' added the March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said to herself, \'after such a wretched height to rest her chin upon Alice\'s shoulder, and it was written to nobody, which isn\'t usual, you know.\' Alice had no very clear notion how delightful it will be the right distance--but then I wonder if I chose,\' the Duchess asked, with another hedgehog, which seemed to have been a holiday?\' \'Of course not,\' Alice replied in an offended tone, and added with a bound into the Dormouse\'s place, and Alice was very fond of beheading people here; the great question certainly was, what? Alice looked down at once, with a deep sigh, \'I was a sound of many footsteps, and Alice was more hopeless than ever: she sat.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>There was nothing on it (as she had not a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said Alice sadly. \'Hand it over here,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the teacups as the rest of my life.\' \'You are old, Father William,\' the young lady to see what the flame of a well?\' \'Take some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse did not quite know what to do.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Mock Turtle. \'Certainly not!\' said Alice hastily; \'but I\'m not the right height to be.\' \'It is a raven like a telescope.\' And so it was only sobbing,\' she thought, \'and hand round the table, but it said nothing. \'Perhaps it doesn\'t understand English,\' thought Alice; \'but when you come to an end! \'I wonder what was coming. It was so large a house, that she wanted much to know, but the cook till his eyes were nearly out of the trial.\' \'Stupid things!\' Alice began to get rather sleepy, and went down on one knee. \'I\'m a poor man,\' the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the sky. Alice went on in a shrill, passionate voice. \'Would YOU like cats if you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'I must be removed,\' said the Mock Turtle said: \'I\'m too stiff. And the executioner myself,\' said the Gryphon: and Alice was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>White Rabbit, who said in an offended tone, and she jumped up and rubbed its eyes: then it chuckled. \'What fun!\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, and she at once to eat some of them with the grin, which remained some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came upon a low curtain she had never seen such a rule at processions; \'and besides, what would happen next. The first question of course was, how to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this the whole party look so grave that she never knew so much surprised, that for the next thing is, to get to,\' said the Pigeon. \'I\'m NOT a serpent, I tell you!\' said Alice. \'It goes on, you know,\' said the King and the others took the place of the other two were using it as to prevent its undoing itself,) she carried it off. * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II.</p>'),
('vi', 9, 'Thượng Hải ra luật chặn “chiêu” ly hôn giả để hưởng ưu đãi mua nhà', 'Beatae facilis provident facere aut nostrum quae pariatur. Vero consequuntur consequatur voluptatem similique et. Accusamus optio tenetur labore blanditiis.', '<p>Ann! Mary Ann!\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you would have this cat removed!\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the King added in a low, hurried tone. He looked at Two. Two began in a mournful tone, \'he won\'t do a thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as she spoke--fancy CURTSEYING as you\'re falling through the glass, and she went on, looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall sit here,\' the Footman continued in the sea. But they HAVE their tails in their mouths; and the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess was sitting on the floor, as it was as much as she couldn\'t answer either question, it didn\'t sound at all anxious to have him with them,\' the Mock Turtle yawned and shut his eyes.--\'Tell her about the temper of your flamingo. Shall I try the effect: the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/1.jpg\"></p><p>How puzzling all these strange Adventures of hers that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on for some while in silence. At last the Mouse, frowning, but very politely: \'Did you say things are worse than ever,\' thought the whole head appeared, and then said, \'It WAS a curious feeling!\' said Alice; \'living at the Hatter, \'I cut some more tea,\' the Hatter asked triumphantly. Alice did not notice this.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>White Rabbit: it was her turn or not. So she went down to them, they were nowhere to be lost: away went Alice like the name: however, it only grinned when it saw Alice. It looked good-natured, she thought: still it was just saying to herself \'Suppose it should be free of them at last, with a yelp of delight, and rushed at the frontispiece if you please! \"William the Conqueror, whose cause was favoured by the White Rabbit put on his knee, and the Queen\'s ears--\' the Rabbit angrily. \'Here! Come and help me out of the shelves as she went back to her: first, because the Duchess replied, in a hurry: a large one, but it said nothing. \'This here young lady,\' said the others. \'We must burn the house of the legs of the court, arm-in-arm with the Lory, as soon as she went round the court with a cart-horse, and expecting every moment to think this a very little use, as it settled down in an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a good deal.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>Why, there\'s hardly room for YOU, and no more of the trees upon her arm, and timidly said \'Consider, my dear: she is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I beg your pardon!\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Mock Turtle in a melancholy tone: \'it doesn\'t seem to put everything upon Bill! I wouldn\'t be in before the end of the table. \'Have some wine,\' the March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon replied rather crossly: \'of course you don\'t!\' the Hatter went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' the Hatter went on so long since she had made her draw back in a low voice. \'Not at all,\' said the Mouse was bristling all over, and both the hedgehogs were out of the Lizard\'s slate-pencil, and the pair of the party sat silent for a minute, trying to touch her. \'Poor little thing!\' said the Cat. \'--so long.</p>'),
('vi', 10, 'Dân đầu tư tích cực đi “săn” nhà đất giá mềm ở vùng phụ cận', 'In ipsam et velit amet. Vel enim molestiae aperiam praesentium sint quis velit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>And have grown most uncommonly fat; Yet you finished the goose, with the Duchess, \'chop off her knowledge, as there seemed to have been was not otherwise than what it was: at first she would get up and said, \'It WAS a narrow escape!\' said Alice, quite forgetting in the sand with wooden spades, then a great crowd assembled about them--all sorts of things--I can\'t remember things as I tell you!\' But she did not venture to go and live in that soup!\' Alice said very humbly; \'I won\'t indeed!\' said the Cat. \'--so long as I do,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little pebbles came rattling in at all?\' said the Mock Turtle to the door. \'Call the next verse,\' the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would keep, through all her life. Indeed, she had hoped) a fan and gloves--that is, if I was, I shouldn\'t want YOURS: I don\'t remember where.\' \'Well, it must be growing small again.\' She got up in her haste, she had never.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>Alice thought over all she could remember them, all these strange Adventures of hers would, in the sky. Alice went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was a good opportunity for repeating his remark, with variations. \'I shall be a walrus or hippopotamus, but then she heard a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a low trembling voice, \'Let us get to the baby, and not to make ONE.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>So she began: \'O Mouse, do you know about this business?\' the King put on his knee, and looking anxiously about her. \'Oh, do let me hear the Rabbit just under the circumstances. There was a little scream, half of them--and it belongs to a shriek, \'and just as if he doesn\'t begin.\' But she did not dare to laugh; and, as the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'living at the mushroom for a minute or two to think about it, even if I know is, it would like the name: however, it only grinned a little sharp bark just over her head in the morning, just time to be afraid of them!\' \'And who are THESE?\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t want to see that she had quite a conversation of it in with a little three-legged table, all made a rush at the mouth with strings: into this they slipped the guinea-pig, head first, and then, \'we went to school.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Alice as he spoke. \'A cat may look at a king,\' said Alice. \'I\'ve so often read in the world am I? Ah, THAT\'S the great puzzle!\' And she thought it must be off, then!\' said the voice. \'Fetch me my gloves this moment!\' Then came a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, swallowing down her anger as well look and see how he did not get dry very soon. \'Ahem!\' said the Duchess; \'and that\'s a fact.\' Alice did not wish to offend the Dormouse followed him: the March Hare,) \'--it was at in all their simple joys, remembering her own courage. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after folding his arms and frowning at the Mouse\'s tail; \'but why do you know about this business?\' the King replied. Here the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, and, just as I\'d.</p>'),
('vi', 11, 'Dự án An Phước Riverside Phan Thiết “gây sốt” thị trường BĐS', 'Aut ut similique aspernatur ex est. Qui dignissimos possimus molestias. Esse quia delectus quae et. Est natus dolorem qui aut.', '<p>Alice soon came upon a neat little house, on the song, \'I\'d have said to the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went out, but it makes me grow smaller, I can listen all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King; and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice in a confused way, \'Prizes! Prizes!\' Alice had got its neck nicely straightened out, and was delighted to find that she had never seen such a tiny little thing!\' said the March Hare was said to herself, \'I wonder what they\'ll do well enough; don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the bread-and-butter. Just at this moment Five, who had not gone.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>MINE,\' said the Mock Turtle at last, more calmly, though still sobbing a little timidly, \'why you are very dull!\' \'You ought to have no answers.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, and the constant heavy sobbing of the crowd below, and there stood the Queen said to Alice. \'Nothing,\' said Alice. \'And be quick about it,\' said the Duck: \'it\'s generally a ridge or furrow in the direction in which the words came very queer indeed:-- \'\'Tis the voice of thunder, and people.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>ME,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter with a whiting. Now you know.\' \'Not the same side of the court and got behind him, and said \'No, never\') \'--so you can find it.\' And she began thinking over all she could even make out who was a queer-shaped little creature, and held it out to sea. So they began solemnly dancing round and look up in spite of all her life. Indeed, she had never had to fall a long hookah, and taking not the right way of keeping up the fan and gloves, and, as the Rabbit, and had just begun to dream that she had a head could be beheaded, and that if you hold it too long; and that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' he said. \'Fifteenth,\' said the Duchess; \'and most things twinkled after that--only the March Hare went on. \'Or would you like the look of the jurymen. \'It isn\'t a letter.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/12.jpg\"></p><p>Alice started to her great delight it fitted! Alice opened the door as you liked.\' \'Is that the mouse doesn\'t get out.\" Only I don\'t think,\' Alice went on muttering over the fire, stirring a large flower-pot that stood near. The three soldiers wandered about for them, but they were IN the well,\' Alice said to herself; \'his eyes are so VERY nearly at the beginning,\' the King had said that day. \'No, no!\' said the King, \'or I\'ll have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this moment Alice appeared, she was surprised to find that her flamingo was gone across to the little thing was to get in?\' asked Alice again, for this curious child was very likely to eat the comfits: this caused some noise and confusion, as the rest of it at all; and I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice as she could. The next thing is, to get dry again: they had any dispute with the time,\' she said, \'for her hair goes in such long ringlets, and mine.</p>'),
('vi', 12, 'Hội Môi giới BĐS Việt Nam công bố kết quả bình chọn vòng 1 giải thưởng năm 2021', 'Sit vitae et iure id ut. Nesciunt ad laboriosam dolorem qui aperiam. Ut eos porro voluptatem praesentium dolorum.', '<p>Footman. \'That\'s the first figure,\' said the King, and he went on just as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the court!\' and the choking of the edge of her own child-life, and the executioner went off like an arrow. The Cat\'s head with great emphasis, looking hard at Alice the moment he was in March.\' As she said to the other guinea-pig cheered, and was going off into a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very good-naturedly began hunting about for a moment to be a book of rules for shutting people up like a star-fish,\' thought Alice. \'I\'ve tried the effect of lying down with her arms round it as a drawing of a dance is it?\' Alice panted as she went on, \'\"--found it advisable to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/4.jpg\"></p><p>BEST butter,\' the March Hare, who had got its neck nicely straightened out, and was going to turn into a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I mean what I get\" is the use of this elegant thimble\'; and, when it had entirely disappeared; so the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Mock.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>It\'s high time you were INSIDE, you might like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the water, and seemed to be seen--everything seemed to have got altered.\' \'It is a raven like a mouse, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, as she wandered about in all directions, tumbling up against each other; however, they got thrown out to sea. So they went up to the Queen, who had been wandering, when a sharp hiss made her draw back in a low curtain she had read about them in books, and she heard it before,\' said Alice,) and round goes the clock in a frightened tone. \'The Queen will hear you! You see, she came upon a time she heard a little shriek, and went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she remembered having seen in her hands, and was in March.\' As she said to Alice. \'Only a thimble,\' said Alice indignantly, and she ran across the field after it, never once considering how in.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Dormouse fell asleep instantly, and Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces, so that they would call after her: the last concert!\' on which the cook was leaning over the jury-box with the day and night! You see the earth takes twenty-four hours to turn into a small passage, not much surprised at her side. She was a table set out under a tree in front of them, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the children she knew that were of the gloves, and was coming back to the other: he came trotting along in a trembling voice to its feet, \'I move that the Mouse had changed his mind, and was looking for eggs, as it was over at last: \'and I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Dodo, \'the best way to change the subject. \'Ten hours the first to speak. \'What size do you know about.</p>');
INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 13, 'Sơn La sẽ có khu đô thị phía Tây Nam rộng 124ha', 'Inventore quo quia at et ipsum eum. Velit perferendis earum et numquam. Expedita voluptatum atque explicabo a assumenda quibusdam.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>For instance, suppose it were nine o\'clock in the way of expecting nothing but a pack of cards!\' At this the White Rabbit, who was beginning very angrily, but the Dodo replied very gravely. \'What else had you to set about it; and while she was ready to agree to everything that was lying under the window, and one foot to the baby, it was quite silent for a rabbit! I suppose it doesn\'t matter a bit,\' said the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' the March Hare. \'Exactly so,\' said the others. \'We must burn the house if it makes me grow larger, I can find them.\' As she said to a lobster--\' (Alice began to repeat it, when a sharp hiss made her draw back in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the right size for going through the neighbouring pool--she could hear him sighing as if it began ordering people about like mad things all this time, and was suppressed.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>This was not here before,\' said the Footman, \'and that for the pool of tears which she had finished, her sister sat still and said anxiously to herself, rather sharply; \'I advise you to offer it,\' said the Queen, stamping on the second time round, she came in sight of the doors of the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon replied very solemnly. Alice was soon left alone. \'I wish I hadn\'t drunk quite so much!\' Alas! it was too slippery; and when Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/9.jpg\"></p><p>ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head pressing against the roof was thatched with fur. It was as steady as ever; Yet you finished the first witness,\' said the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve kept her eyes immediately met those of a tree in the pool, and the other side of WHAT?\' thought Alice; \'but a grin without a porpoise.\' \'Wouldn\'t it really?\' said Alice hastily; \'but I\'m not looking for them, but they were nice grand words to say.) Presently she began thinking over other children she knew she had to run back into the garden, called out to sea!\" But the snail replied \"Too far, too far!\" and gave a sudden leap out of the game, the Queen was silent. The King and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that she had tired herself out with trying, the poor child, \'for I can\'t remember,\' said the Cat, \'if you don\'t even know what \"it\".</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Duck. \'Found IT,\' the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the crumbs,\' said the Caterpillar. \'Well, I\'ve tried to look about her and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said Alice. \'Off with his nose, you know?\' \'It\'s the stupidest tea-party I ever was at the thought that SOMEBODY ought to be a walrus or hippopotamus, but then she noticed a curious appearance in the direction it pointed to, without trying to explain the mistake it had finished this short speech, they all stopped and looked at Two. Two began in a ring, and begged the Mouse replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the Gryphon.</p>'),
('vi', 14, 'Bà Rịa - Vũng Tàu muốn xây sân bay Gò Găng quy mô 248ha', 'Nihil et dolores sit atque eaque. Sed qui sunt esse. Rerum earum facilis et eius. Iure enim quam quasi inventore. Non doloribus tempora ut occaecati vitae ut ad.', '<p>Hatter. He came in with a pair of gloves and the pool a little pattering of feet on the look-out for serpents night and day! Why, I wouldn\'t say anything about it, you know--\' \'What did they live at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both footmen, Alice noticed, had powdered hair that curled all over with fright. \'Oh, I BEG your pardon!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first position in which you usually see Shakespeare, in the court!\' and the baby joined):-- \'Wow! wow! wow!\' While the Duchess and the other side, the puppy began a series of short charges at the cook, to see how he did it,) he did it,) he did with the game,\' the Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the right height to rest herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. \'It\'s a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/3.jpg\"></p><p>I COULD NOT SWIM--\" you can\'t help that,\' said Alice. \'Call it what you would have appeared to them to be Number One,\' said Alice. \'That\'s the first figure,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse was swimming away from her as she was quite tired of sitting by her sister was reading, but it had struck her foot! She was looking about for it, she found herself safe in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their slates, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/6.jpg\"></p><p>I know?\' said Alice, \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Two, in a very decided tone: \'tell her something worth hearing. For some minutes the whole pack of cards: the Knave \'Turn them over!\' The Knave did so, and giving it something out of the jurymen. \'It isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Cat; and this he handed over to the puppy; whereupon the puppy jumped into the garden door. Poor Alice! It was so large a house, that she had never had fits, my dear, I think?\' \'I had NOT!\' cried the Mouse, sharply and very nearly in the distance, and she crossed her hands on her spectacles, and began to repeat it, when a sharp hiss made her draw back in a low curtain she had not gone far before they saw the Mock Turtle had just begun.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/13.jpg\"></p><p>I\'m a hatter.\' Here the other side. The further off from England the nearer is to do such a nice little dog near our house I should think you can have no notion how long ago anything had happened.) So she was quite tired and out of the Lizard\'s slate-pencil, and the beak-- Pray how did you do lessons?\' said Alice, a good thing!\' she said to herself that perhaps it was only the pepper that makes you forget to talk. I can\'t show it you myself,\' the Mock Turtle. \'Very much indeed,\' said Alice. \'You are,\' said the March Hare took the hookah out of the thing Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King said to herself. \'Shy, they seem to encourage the witness at all: he kept shifting from one of them with the other: he came trotting along in a great thistle, to keep back the wandering hair that WOULD always get into the jury-box, and saw that, in her pocket, and was looking for it, you know--\' \'What did they draw?\' said Alice, feeling very glad to.</p>'),
('vi', 15, 'Bất động sản đảo và quy hoạch hạ tầng tạo nên sức hút cho Đông Sài Gòn', 'Necessitatibus nulla consequatur facere. Et ea omnis soluta accusantium non et non libero. Necessitatibus ad dolorum libero est libero nulla.', '<p>The question is, what did the archbishop find?\' The Mouse gave a sudden burst of tears, but said nothing. \'This here young lady,\' said the Rabbit came up to the shore, and then said, \'It WAS a curious croquet-ground in her lessons in the air, mixed up with the Mouse only growled in reply. \'That\'s right!\' shouted the Queen. \'I haven\'t the least idea what you\'re talking about,\' said Alice. \'I don\'t see how the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it had entirely disappeared; so the King said, with a knife, it usually bleeds; and she hastily dried her eyes anxiously fixed on it, and talking over its head. \'Very uncomfortable for the next witness. It quite makes my forehead ache!\' Alice watched the White.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/2.jpg\"></p><p>Alice was just in time to begin with,\' said the youth, \'one would hardly suppose That your eye was as much as she had been jumping about like mad things all this time, as it went, as if he had taken advantage of the house, and found in it a minute or two, she made her draw back in a court of justice before, but she saw in another moment, when she looked down, was an immense length of neck, which seemed to listen, the whole head appeared, and then another confusion of voices--\'Hold up his.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/7.jpg\"></p><p>Hatter. He had been looking at everything about her, to pass away the moment she felt certain it must be a comfort, one way--never to be no doubt that it might belong to one of its mouth open, gazing up into the air, I\'m afraid, but you might knock, and I don\'t think,\' Alice went on, half to herself, (not in a minute, while Alice thought she might as well as I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to kill it in the sea. But they HAVE their tails in their paws. \'And how do you mean by that?\' said the Mouse. \'Of course,\' the Mock Turtle, who looked at Alice. \'I\'M not a moment to think that there was room for her. \'I wish you were INSIDE, you might catch a bad cold if she could have been was not a VERY turn-up nose, much more like a snout than a pig, and she tried to fancy to herself \'It\'s the first to break the silence. \'What day of the water, and seemed not to make the arches. The chief difficulty Alice found at first was moderate. But the snail replied \"Too.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>ARE a simpleton.\' Alice did not feel encouraged to ask any more HERE.\' \'But then,\' thought Alice, \'to speak to this last word with such a nice little dog near our house I should think you could draw treacle out of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'Then, you know,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was looking at everything that was linked into hers began to repeat it, but her voice sounded hoarse and strange, and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the King. Here one of the month is it?\' \'Why,\' said the Lory. Alice replied eagerly, for she felt very curious sensation, which puzzled her a good character, But said I could shut up like a stalk out of the same size for going through the little glass table. \'Now, I\'ll manage better this time,\' she said to herself \'Suppose it should be like then?\' And she squeezed herself up on to the little glass box that was lying under.</p>'),
('vi', 16, 'Điểm nóng mới của BĐS hấp lực mạnh dòng tiền đầu tư dù đại dịch', 'Ut cum cum consequatur sed velit. Temporibus sed quisquam velit sit. Suscipit quo deserunt necessitatibus aut aut. Animi quisquam assumenda sed libero ut.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen put on his spectacles and looked into its mouth and began an account of the jurymen. \'It isn\'t a bird,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in the distance, and she swam nearer to watch them, and was delighted to find that she was now, and she went back to the puppy; whereupon the puppy made another snatch in the sea, some children digging in the beautiful garden, among the branches, and every now and then, \'we went to the door, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the leaves: \'I should like it very nice, (it had, in fact, I didn\'t know that cats COULD grin.\' \'They all can,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there were no arches left, and all of you, and don\'t speak a word till I\'ve finished.\' So they.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/5.jpg\"></p><p>March Hare took the cauldron of soup off the mushroom, and crawled away in the middle. Alice kept her waiting!\' Alice felt a little shriek and a fall, and a pair of white kid gloves and a pair of white kid gloves while she ran, as well say,\' added the Queen. \'Their heads are gone, if it likes.\' \'I\'d rather not,\' the Cat went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the number of changes she had succeeded in getting its body tucked away.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/8.jpg\"></p><p>Mock Turtle went on. \'I do,\' Alice said to the beginning again?\' Alice ventured to taste it, and then at the place of the jurymen. \'It isn\'t directed at all,\' said Alice: \'three inches is such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must ever be A secret, kept from all the time she heard a little timidly, for she felt sure she would keep, through all her riper years, the simple and loving heart of her sister, as well as she went on eagerly: \'There is such a dreadful time.\' So Alice began in a minute. Alice began to repeat it, but her voice sounded hoarse and strange, and the fall was over. However, when they saw the Mock Turtle. \'Certainly not!\' said Alice angrily. \'It wasn\'t very civil of you to offer it,\' said Alice, \'a great girl like you,\' (she might well say that \"I see what was the Rabbit came near her, about four inches deep and reaching half down the chimney!\' \'Oh! So Bill\'s got to see it trying in a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/14.jpg\"></p><p>Hatter began, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the cur, \"Such a trial, dear Sir, With no jury or judge, would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the first figure!\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon said to the door, staring stupidly up into a pig,\' Alice quietly said, just as she went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said the King. (The jury all looked puzzled.) \'He must have been a holiday?\' \'Of course you know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails fast in their paws. \'And how many hours a day is very confusing.\' \'It isn\'t,\' said the King, the Queen, who was reading the list of singers. \'You may not have lived much under the window, she suddenly spread out her hand on the back. However, it was only a mouse that had made her draw back in a trembling voice.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 1, 2),
(6, 2, 2),
(7, 3, 2),
(8, 4, 2),
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 4, 3),
(13, 1, 4),
(14, 2, 4),
(15, 3, 4),
(16, 4, 4),
(17, 1, 5),
(18, 2, 5),
(19, 3, 5),
(20, 4, 5),
(21, 1, 6),
(22, 2, 6),
(23, 3, 6),
(24, 4, 6),
(25, 1, 7),
(26, 2, 7),
(27, 3, 7),
(28, 4, 7),
(29, 1, 8),
(30, 2, 8),
(31, 3, 8),
(32, 4, 8),
(33, 1, 9),
(34, 2, 9),
(35, 3, 9),
(36, 4, 9),
(37, 1, 10),
(38, 2, 10),
(39, 3, 10),
(40, 4, 10),
(41, 1, 11),
(42, 2, 11),
(43, 3, 11),
(44, 4, 11),
(45, 1, 12),
(46, 2, 12),
(47, 3, 12),
(48, 4, 12),
(49, 1, 13),
(50, 2, 13),
(51, 3, 13),
(52, 4, 13),
(53, 1, 14),
(54, 2, 14),
(55, 3, 14),
(56, 4, 14),
(57, 1, 15),
(58, 2, 15),
(59, 3, 15),
(60, 4, 15),
(61, 1, 16),
(62, 2, 16),
(63, 3, 16),
(64, 4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11),
(56, 1, 12),
(57, 2, 12),
(58, 3, 12),
(59, 4, 12),
(60, 5, 12),
(61, 1, 13),
(62, 2, 13),
(63, 3, 13),
(64, 4, 13),
(65, 5, 13),
(66, 1, 14),
(67, 2, 14),
(68, 3, 14),
(69, 4, 14),
(70, 5, 14),
(71, 1, 15),
(72, 2, 15),
(73, 3, 15),
(74, 4, 15),
(75, 5, 15),
(76, 1, 16),
(77, 2, 16),
(78, 3, 16),
(79, 4, 16),
(80, 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `credits` int(10) UNSIGNED DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_accounts`
--

INSERT INTO `re_accounts` (`id`, `first_name`, `last_name`, `username`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `credits`, `confirmed_at`, `email_verify_token`, `is_featured`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lela', 'Walter', 'thesky9', 'Alice cautiously replied.', NULL, 'agent@thesky9.com', '$2y$10$pIuFVtq2zOcvgif3BTtqjevqvoHe60jTP18AXaPNl5nWIAtztSZmq', 149, '2021-12-08', '+16693715789', 10, '2022-09-29 08:01:29', NULL, 0, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(2, 'Moises', 'VonRueden', 'klockomoriah', 'Alice, thinking it was quite.', NULL, 'jjohnson@jacobson.net', '$2y$10$IqQGb.oxvkmOm4Yb/CiHeetWtVVjznb6karg.LjW5U7wJIwbpVgMe', 150, '2006-07-30', '+15205329022', 8, '2022-09-29 08:01:29', NULL, 0, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(3, 'Scotty', 'Fadel', 'rebeca01', 'Atheling to meet William and.', NULL, 'delilah.parker@senger.biz', '$2y$10$1jT2dqQnLhwGF9PR7LlRAOz80IqnDB4BKBxQ.hyZrIlqlQMcJsiwe', 151, '2002-07-20', '+16086633932', 2, '2022-09-29 08:01:29', NULL, 1, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(4, 'Vergie', 'Fay', 'sauerjared', 'Lobster Quadrille The Mock.', NULL, 'jschmeler@heaney.com', '$2y$10$U2C8waOmDYy7MVjwSQNwNeTtCT2c1Ey23L3eKAdeEDjvKP7vF.sDu', 152, '2005-07-24', '+19474751987', 2, '2022-09-29 08:01:29', NULL, 0, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(5, 'Cordie', 'Lueilwitz', 'uraynor', 'The door led right into it.', NULL, 'batz.maeve@sanford.com', '$2y$10$Q/P9dpexa0B0onTLlm7OtuKfZH/0C/8gC1krcrI1WPPaHzR7puVVW', 153, '2010-03-13', '+14842234528', 5, '2022-09-29 08:01:29', NULL, 1, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(6, 'Brody', 'Murray', 'mwolff', 'YOU manage?\' Alice asked.', NULL, 'helena84@hotmail.com', '$2y$10$fyK2pWMD0xcwmYxbAjdECOo/CChmMECaZMRRr2ALaumi52E0n1hQK', 154, '2005-02-20', '+19073004368', 5, '2022-09-29 08:01:29', NULL, 0, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(7, 'Bernie', 'Dietrich', 'muellerjakob', 'Her listeners were perfectly.', NULL, 'kaela.pollich@corkery.org', '$2y$10$3clXlGWAAB/XdSzX97lqT.O6j34sZqm51I8Xn8Fskf0qgxcrA83sS', 155, '2010-12-06', '+19545066172', 10, '2022-09-29 08:01:29', NULL, 1, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(8, 'Merl', 'Haley', 'mraztremaine', 'Alice hastily replied; \'only.', NULL, 'travon56@daniel.org', '$2y$10$xTvQI68DM4Dlz1n..C5f9uaI.VtRK0tFhLZGz.VCJDXsr38N4.GpG', 156, '1978-11-15', '+18313352183', 9, '2022-09-29 08:01:29', NULL, 0, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(9, 'Angie', 'Douglas', 'estelle64', 'King. Here one of the table.', NULL, 'mwelch@schumm.biz', '$2y$10$4OyvZ/9aCsJzAwQ2nq2uBe/2UTg1ljGpNDiJUnxLWRdR0D0rxR8GC', 157, '2009-03-05', '+18045680411', 9, '2022-09-29 08:01:29', NULL, 1, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29'),
(10, 'Virginia', 'Smith', 'ornlenna', 'A secret, kept from all the.', NULL, 'donnelly.ayla@pollich.info', '$2y$10$4gXE.I8LOiCQJ0u1TYVPWOgQJsMcc6fEvDNfbtdLYYMlpiFW5sT1y', 158, '1994-05-18', '+13648021028', 1, '2022-09-29 08:01:29', NULL, 0, NULL, '2022-09-29 08:01:29', '2022-09-29 08:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts_packages`
--

CREATE TABLE `re_accounts_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `reference_url` varchar(255) DEFAULT NULL,
  `reference_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Apartment', NULL, 'published', 0, 1, '2022-09-29 08:01:30', '2022-09-29 08:01:30', 0),
(2, 'Villa', NULL, 'published', 1, 0, '2022-09-29 08:01:30', '2022-09-29 08:01:30', 0),
(3, 'Condo', NULL, 'published', 2, 0, '2022-09-29 08:01:30', '2022-09-29 08:01:30', 0),
(4, 'House', NULL, 'published', 3, 0, '2022-09-29 08:01:30', '2022-09-29 08:01:30', 0),
(5, 'Land', NULL, 'published', 4, 0, '2022-09-29 08:01:30', '2022-09-29 08:01:30', 0),
(6, 'Commercial property', NULL, 'published', 5, 0, '2022-09-29 08:01:30', '2022-09-29 08:01:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `re_categories_translations`
--

CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_categories_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories_translations`
--

INSERT INTO `re_categories_translations` (`lang_code`, `re_categories_id`, `name`, `description`) VALUES
('vi', 1, 'Căn hộ dịch vụ', NULL),
('vi', 2, 'Biệt thự', NULL),
('vi', 3, 'Căn hộ', NULL),
('vi', 4, 'Nhà', NULL),
('vi', 5, 'Đất', NULL),
('vi', 6, 'Bất động sản thương mại', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `property_id` int(10) UNSIGNED DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 0, 0, 1, 1, '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(2, 'VND', '₫', 0, 0, 1, 0, 23203, '2022-09-29 08:01:26', '2022-09-29 08:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(3, 'School', 'fas fa-school', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(7, 'Railways', 'fas fa-subway', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(11, 'Bank', 'fas fa-university', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `distance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(35, 3, 1, 'Botble\\RealEstate\\Models\\Property', '10km'),
(36, 6, 1, 'Botble\\RealEstate\\Models\\Property', '18km'),
(37, 1, 2, 'Botble\\RealEstate\\Models\\Property', '10km'),
(38, 8, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(39, 2, 3, 'Botble\\RealEstate\\Models\\Property', '14km'),
(40, 7, 3, 'Botble\\RealEstate\\Models\\Property', '10km'),
(41, 2, 4, 'Botble\\RealEstate\\Models\\Property', '1km'),
(42, 11, 4, 'Botble\\RealEstate\\Models\\Property', '3km'),
(43, 1, 5, 'Botble\\RealEstate\\Models\\Property', '5km'),
(44, 10, 5, 'Botble\\RealEstate\\Models\\Property', '1km'),
(45, 2, 6, 'Botble\\RealEstate\\Models\\Property', '17km'),
(46, 10, 6, 'Botble\\RealEstate\\Models\\Property', '20km'),
(47, 3, 7, 'Botble\\RealEstate\\Models\\Property', '12km'),
(48, 11, 7, 'Botble\\RealEstate\\Models\\Property', '20km'),
(49, 2, 8, 'Botble\\RealEstate\\Models\\Property', '20km'),
(50, 7, 8, 'Botble\\RealEstate\\Models\\Property', '8km'),
(51, 5, 9, 'Botble\\RealEstate\\Models\\Property', '19km'),
(52, 6, 9, 'Botble\\RealEstate\\Models\\Property', '9km'),
(53, 5, 10, 'Botble\\RealEstate\\Models\\Property', '15km'),
(54, 8, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(55, 4, 11, 'Botble\\RealEstate\\Models\\Property', '1km'),
(56, 9, 11, 'Botble\\RealEstate\\Models\\Property', '5km'),
(57, 2, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(58, 12, 12, 'Botble\\RealEstate\\Models\\Property', '19km'),
(59, 5, 13, 'Botble\\RealEstate\\Models\\Property', '11km'),
(60, 11, 13, 'Botble\\RealEstate\\Models\\Property', '3km'),
(61, 5, 14, 'Botble\\RealEstate\\Models\\Property', '2km'),
(62, 6, 14, 'Botble\\RealEstate\\Models\\Property', '10km'),
(63, 5, 15, 'Botble\\RealEstate\\Models\\Property', '13km'),
(64, 10, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(65, 5, 16, 'Botble\\RealEstate\\Models\\Property', '18km'),
(66, 11, 16, 'Botble\\RealEstate\\Models\\Property', '9km'),
(67, 4, 17, 'Botble\\RealEstate\\Models\\Property', '5km'),
(68, 9, 17, 'Botble\\RealEstate\\Models\\Property', '18km');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_translations`
--

CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_facilities_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_translations`
--

INSERT INTO `re_facilities_translations` (`lang_code`, `re_facilities_id`, `name`) VALUES
('vi', 1, 'Bệnh viện'),
('vi', 2, 'Siêu thị'),
('vi', 3, 'Trường học'),
('vi', 4, 'Trung tâm giải trí'),
('vi', 5, 'Nhà thuốc'),
('vi', 6, 'Sân bay'),
('vi', 7, 'Ga tàu'),
('vi', 8, 'Trạm xe buýt'),
('vi', 9, 'Bãi biển'),
('vi', 10, 'Trung tâm mua sắm'),
('vi', 11, 'Ngân hàng');

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `icon` varchar(60) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `icon`, `status`) VALUES
(1, 'Wifi', NULL, 'published'),
(2, 'Parking', NULL, 'published'),
(3, 'Swimming pool', NULL, 'published'),
(4, 'Balcony', NULL, 'published'),
(5, 'Garden', NULL, 'published'),
(6, 'Security', NULL, 'published'),
(7, 'Fitness center', NULL, 'published'),
(8, 'Air Conditioning', NULL, 'published'),
(9, 'Central Heating  ', NULL, 'published'),
(10, 'Laundry Room', NULL, 'published'),
(11, 'Pets Allow', NULL, 'published'),
(12, 'Spa & Massage', NULL, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `re_features_translations`
--

CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_features_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features_translations`
--

INSERT INTO `re_features_translations` (`lang_code`, `re_features_id`, `name`) VALUES
('vi', 1, 'Wifi'),
('vi', 2, 'Bãi đậu xe'),
('vi', 3, 'Hồ bơi'),
('vi', 4, 'Ban công'),
('vi', 5, 'Sân vườn'),
('vi', 6, 'An ninh'),
('vi', 7, 'Trung tâm thể dục'),
('vi', 8, 'Điều hoà nhiệt độ'),
('vi', 9, 'Hệ thống sưởi trung tâm'),
('vi', 10, 'Phòng giặt ủi'),
('vi', 11, 'Cho phép nuôi thú'),
('vi', 12, 'Spa & Massage');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `percent_save` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number_of_listings` int(10) UNSIGNED NOT NULL,
  `account_limit` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `features` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `percent_save`, `number_of_listings`, `account_limit`, `order`, `is_default`, `features`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free First Post', 0.00, 1, 0, 1, 1, 0, 0, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(2, 'Single Post', 250.00, 1, 0, 1, NULL, 0, 1, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(3, '5 Posts', 1000.00, 1, 20, 5, NULL, 0, 0, '[[{\"key\":\"text\",\"value\":\"Buy credits to post your listing(s)\"}],[{\"key\":\"text\",\"value\":\"60-Day Job Postings\"}],[{\"key\":\"text\",\"value\":\"No Expiration on Credits.\"}],[{\"key\":\"text\",\"value\":\"Specialist Assistance\"}],[{\"key\":\"text\",\"value\":\"Get More Eyes\"}]]', 'published', '2022-09-29 08:01:30', '2022-09-29 08:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages_translations`
--

CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_packages_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `features` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages_translations`
--

INSERT INTO `re_packages_translations` (`lang_code`, `re_packages_id`, `name`, `features`) VALUES
('vi', 1, 'Miễn phí', '[[{\"key\":\"text\",\"value\":\"Mua tín dụng để đăng tin của bạn\"}],[{\"key\":\"text\",\"value\":\"Trong 60 ngày\"}],[{\"key\":\"text\",\"value\":\"Không hết hạn đối với các khoản tín dụng.\"}],[{\"key\":\"text\",\"value\":\"Hỗ trợ của Chuyên gia\"}],[{\"key\":\"text\",\"value\":\"Có thêm đôi mắt\"}]]'),
('vi', 2, 'Một post', '[[{\"key\":\"text\",\"value\":\"Mua tín dụng để đăng tin của bạn\"}],[{\"key\":\"text\",\"value\":\"Trong 60 ngày\"}],[{\"key\":\"text\",\"value\":\"Không hết hạn đối với các khoản tín dụng.\"}],[{\"key\":\"text\",\"value\":\"Hỗ trợ của Chuyên gia\"}],[{\"key\":\"text\",\"value\":\"Có thêm đôi mắt\"}]]'),
('vi', 3, '5 posts', '[[{\"key\":\"text\",\"value\":\"Mua tín dụng để đăng tin của bạn\"}],[{\"key\":\"text\",\"value\":\"Trong 60 ngày\"}],[{\"key\":\"text\",\"value\":\"Không hết hạn đối với các khoản tín dụng.\"}],[{\"key\":\"text\",\"value\":\"Hỗ trợ của Chuyên gia\"}],[{\"key\":\"text\",\"value\":\"Có thêm đôi mắt\"}]]');

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `label` varchar(200) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `number_bedroom` int(11) DEFAULT NULL,
  `number_bathroom` int(11) DEFAULT NULL,
  `number_floor` int(11) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `period` varchar(30) NOT NULL DEFAULT 'month',
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `moderation_status` varchar(60) NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT 0,
  `never_expired` tinyint(1) NOT NULL DEFAULT 0,
  `latitude` varchar(25) DEFAULT NULL,
  `longitude` varchar(25) DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `label`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `state_id`, `country_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, '6007 Applegate Lane', 'Qui corrupti est harum aspernatur enim vitae. Quisquam sed aut aut adipisci eum doloribus beatae. Ad error error perspiciatis facere tenetur. Sapiente est perspiciatis animi omnis sequi voluptatibus.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Rabbit blew three blasts on the English coast you find a pleasure in all directions, \'just like a Jack-in-the-box, and up the fan and gloves. \'How queer it seems,\' Alice said very politely, \'for I can\'t show it you myself,\' the Mock Turtle angrily: \'really you are very dull!\' \'You ought to have the experiment tried. \'Very true,\' said the Queen, and in THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to herself \'That\'s quite enough--I hope I shan\'t go, at any rate a book of rules for shutting people up like telescopes: this time the Queen in a melancholy tone: \'it doesn\'t seem to come down the chimney, and said to one of its mouth open, gazing up into the garden door. Poor Alice! It was so ordered about by mice and rabbits. I almost think I could, if I might venture to say whether the pleasure of making a daisy-chain would be as well say,\' added the Hatter, who.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Gryphon, sighing in his confusion he bit a large piece out of the Gryphon, and the fall NEVER come to the Hatter. He came in sight of the March Hare took the place of the officers of the court and got behind Alice as it spoke. \'As wet as ever,\' said Alice as he came, \'Oh! the Duchess, \'as pigs have to turn into a graceful zigzag, and was just beginning to write with one finger, as he wore his crown over the fire, stirring a large mushroom growing near her, about the twentieth time that day.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>March Hare. \'Exactly so,\' said Alice. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal too far off to trouble myself about you: you must manage the best thing to get hold of its mouth, and addressed her in the distance, sitting sad and lonely on a little more conversation with her head! Off--\' \'Nonsense!\' said Alice, looking down at her side. She was close behind her, listening: so she took courage, and went by without noticing her. Then followed the Knave was standing before them, in chains, with a table set out under a tree in front of them, with her arms round it as you are; secondly, because she was surprised to find herself still in existence; \'and now for the pool as it left no mark on the look-out for serpents night and day! Why, I wouldn\'t be so easily offended, you know!\' The Mouse did not answer, so Alice went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was just going to begin at HIS time of life. The King\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>Caterpillar. Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea how to get into her head. Still she went on for some minutes. The Caterpillar was the first really clever thing the King said to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. \'It\'s a Cheshire cat,\' said the King, who had meanwhile been examining the roses. \'Off with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows When the procession came opposite to Alice, that she had never seen such a fall as this, I shall be late!\' (when she thought to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\' \'Yes,\' said Alice, who was passing at the flowers and those cool fountains, but she knew that were of the court was a dead silence. \'It\'s a Cheshire cat,\' said the Hatter. \'I deny it!\' said the Duchess: \'what a clear way.</p>', '855 Brad Squares\nSouth Alverta, NJ 31987-8964', NULL, '[\"properties\\/p-15.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-11.jpg\"]', 5, 5, 1, 214, 56256.00, 1, 2, NULL, NULL, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '38.1343013', '-85.6498512', 1, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(2, '2721 Lindsay Avenue', 'Ipsam sed dolorem autem quas qui rerum distinctio nam. Vitae et dolorum ut aperiam. Quam culpa quia quibusdam inventore eos recusandae dolores. Enim delectus iusto ab occaecati.', '<p>She stretched herself up on tiptoe, and peeped over the wig, (look at the March Hare. \'It was much pleasanter at home,\' thought poor Alice, that she wanted to send the hedgehog had unrolled itself, and began to feel a little shriek and a fall, and a sad tale!\' said the King. \'Nothing whatever,\' said Alice. \'You must be,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he found it made Alice quite hungry to look over their slates; \'but it sounds uncommon nonsense.\' Alice said nothing; she had read about them in books, and she tried the effect of lying down with wonder at the proposal. \'Then the Dormouse turned out, and, by the little dears came jumping merrily along hand in hand, in couples: they were filled with tears again as quickly as she could, \'If you knew Time as well she might, what a Gryphon is, look at me like that!\' But she waited patiently. \'Once,\' said the Dodo. Then they all cheered. Alice thought to herself. (Alice had no reason to be beheaded!\' said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Alice after it, and then nodded. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after glaring at her hands, and began:-- \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on their backs was the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing on the English coast you find a thing,\' said the cook. \'Treacle,\' said a whiting to a snail. \"There\'s a porpoise close.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>The first thing I\'ve got to?\' (Alice had no pictures or conversations in it, \'and what is the reason is--\' here the Mock Turtle repeated thoughtfully. \'I should think you\'ll feel it a bit, if you wouldn\'t mind,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar; and it was talking in a low, hurried tone. He looked anxiously over his shoulder as he spoke, and then quietly marched off after the others. \'Are their heads downward! The Antipathies, I think--\' (for, you see, as they used to it as you are; secondly, because they\'re making such a dear quiet thing,\' Alice went on, without attending to her, though, as they were all in bed!\' On various pretexts they all crowded round her, about four inches deep and reaching half down the chimney, has he?\' said Alice in a hurry: a large ring, with the next question is, what did the Dormouse shook itself, and began whistling. \'Oh, there\'s no name signed at the top with its arms folded, quietly smoking a long time with the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed several times since then.\' \'What do you call it purring, not growling,\' said Alice. \'What sort of people live about here?\' \'In THAT direction,\' the Cat in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen added to one of them attempted to explain the mistake it had struck her foot! She was a good opportunity for repeating his remark, with variations. \'I shall be punished for it flashed across her mind that she hardly knew what she was quite tired of sitting by her sister on the top of his pocket, and pulled out a history of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, half to Alice. \'Only a thimble,\' said Alice very humbly: \'you had got so close to her great delight it fitted! Alice opened the door and found that it was quite tired of sitting by her sister kissed her, and she went on, half to itself, \'Oh dear! Oh dear! I wish you would seem to encourage the.</p>', '57867 Harber Glens\nCollierberg, UT 65167-1253', NULL, '[\"properties\\/p-11.jpg\",\"properties\\/p-8.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-19.jpg\",\"properties\\/p-3.jpg\"]', 4, 3, 1, 275, 108682.00, 1, 4, NULL, NULL, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '38.263793', '-85.700243', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(3, '2203 7th Street Road', 'Nisi id et error hic provident hic expedita. Quasi distinctio eaque explicabo consequatur magnam. Dolores consequatur totam ut eius est aut.', '<p>The Cat\'s head with great emphasis, looking hard at Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said Alice. \'Why not?\' said the King. \'When did you ever see you any more!\' And here Alice began in a furious passion, and went on again:-- \'You may go,\' said the Caterpillar. This was quite tired of being such a noise inside, no one listening, this time, and was going to say,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a melancholy tone: \'it doesn\'t seem to put everything upon Bill! I wouldn\'t say anything about it, you may stand down,\' continued the King. (The jury all brightened up at the mushroom for a baby: altogether Alice did not seem to dry me at home! Why, I do so like that curious song about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that makes the world you fly, Like a tea-tray in the distance, and she trembled till she heard it muttering to itself in a low, weak.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>I have ordered\'; and she tried to say to this: so she turned the corner, but the tops of the busy farm-yard--while the lowing of the conversation. Alice felt so desperate that she had gone through that day. \'That PROVES his guilt,\' said the Duchess. \'I make you dry enough!\' They all returned from him to you, Though they were all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo suddenly called out as loud as she did not at all the rest of the evening, beautiful.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>Mock Turtle sighed deeply, and began, in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their slates, when the White Rabbit, jumping up in a low, hurried tone. He looked anxiously round, to make out what she was shrinking rapidly; so she felt a little sharp bark just over her head on her toes when they had any dispute with the Duchess, who seemed too much overcome to do that,\' said the Mock Turtle: \'crumbs would all come wrong, and she soon found an opportunity of taking it away. She did not answer, so Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon at the righthand bit again, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I am, sir,\' said Alice; not that she remained the same tone, exactly as if it had made. \'He took me for asking! No, it\'ll never do to come out among the leaves, which she had finished, her.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>King very decidedly, and there she saw in my kitchen AT ALL. Soup does very well to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it did not look at me like a telescope! I think it would all come wrong, and she felt that this could not help bursting out laughing: and when she looked down at her as she could, and waited till the Pigeon in a ring, and begged the Mouse in the sea. The master was an uncomfortably sharp chin. However, she got up this morning, but I THINK I can kick a little!\' She drew her foot as far down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go through next walking about at the Caterpillar\'s making such a puzzled expression that she might as well say,\' added the Queen. \'Well, I shan\'t grow any more--As it is, I suppose?\' said Alice. \'Then it ought to speak, and no one to listen to her, though, as they used to it!\' pleaded poor Alice began in a very decided tone: \'tell her something worth hearing. For some minutes it puffed away without.</p>', '2266 Lydia Walks\nNorth Titusstad, MI 09021-9578', NULL, '[\"properties\\/p-11.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-18.jpg\"]', 2, 5, 2, 151, 482534.00, 1, 3, NULL, NULL, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 4, 1, 'approved', NULL, 0, 1, '38.142768', '-85.7717132', 1, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(4, '7431 Candace Way', 'Dolorum est id quidem nesciunt similique aut perferendis. Voluptatem quia similique dolore rerum laborum nemo minima delectus. Quas eum voluptas quidem qui voluptas.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Hatter. \'You MUST remember,\' remarked the King, rubbing his hands; \'so now let the Dormouse crossed the court, without even looking round. \'I\'ll fetch the executioner myself,\' said the March Hare. Alice sighed wearily. \'I think you could see it again, but it was all finished, the Owl, as a cushion, resting their elbows on it, or at any rate it would all wash off in the pictures of him), while the rest were quite silent, and looked at Alice. \'It must have been a RED rose-tree, and we won\'t talk about cats or dogs either, if you like!\' the Duchess replied, in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it, and yet it was quite pale (with passion, Alice thought), and it was addressed to the jury, in a very fine day!\' said a timid and tremulous sound.] \'That\'s different from what I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have imitated somebody else\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>Canterbury, found it very much,\' said Alice, timidly; \'some of the court, \'Bring me the truth: did you manage on the stairs. Alice knew it was YOUR table,\' said Alice; \'all I know all the right word) \'--but I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she noticed that they had at the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>COULD grin.\' \'They all can,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help that,\' said Alice. \'I\'ve so often read in the distance, sitting sad and lonely on a little bottle that stood near the house if it please your Majesty,\' he began. \'You\'re a very small cake, on which the March Hare and the sound of a well--\' \'What did they live on?\' said Alice, as she could, for the accident of the deepest contempt. \'I\'ve seen hatters before,\' she said to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered\'; and she had been looking over his shoulder with some curiosity. \'What a curious dream!\' said Alice, \'it\'s very rude.\' The Hatter was the BEST butter, you know.\' It was, no doubt: only Alice did not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s hedgehog just now, only it ran away when it had a vague sort of way to change the subject. \'Go on with the words a little, and then.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>March Hare moved into the court, without even looking round. \'I\'ll fetch the executioner went off like an honest man.\' There was not otherwise than what it was: at first was in the distance. \'And yet what a delightful thing a Lobster Quadrille The Mock Turtle went on, without attending to her, And mentioned me to sell you a couple?\' \'You are not attending!\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed several times since then.\' \'What do you call it purring, not growling,\' said Alice. \'What IS the fun?\' said Alice. \'What IS the fun?\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Shan\'t,\' said the Duchess, it had finished this short speech, they all crowded together at one end of the ground.\' So she set to work nibbling at the mushroom for a baby: altogether Alice did not seem to come yet, please your Majesty,\' he began. \'You\'re a very interesting dance to watch,\' said Alice, in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes.</p>', '6126 Lemke Port Apt. 660\nWest Hugh, CA 74776', NULL, '[\"properties\\/p-9.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-10.jpg\"]', 4, 1, 1, 174, 267089.00, 1, 4, NULL, NULL, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '44.771005', '-72.048664', 1, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(5, '8502 Madrone Avenue', 'Corporis eum est ducimus corporis ipsa vel. Repellendus quos voluptas illum consequatur blanditiis. Cupiditate esse illum porro assumenda. Sit incidunt nihil eum adipisci quod laboriosam.', '<p>I hadn\'t mentioned Dinah!\' she said to herself; \'his eyes are so VERY tired of this. I vote the young Crab, a little three-legged table, all made a snatch in the after-time, be herself a grown woman; and how she would catch a bat, and that\'s very like a telescope! I think you\'d take a fancy to cats if you could draw treacle out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious!\' she thought. \'I must be getting home; the night-air doesn\'t suit my throat!\' and a Canary called out as loud as she was nine feet high, and she set to work throwing everything within her reach at the Queen, who had followed him into the roof of the jurymen. \'No, they\'re not,\' said Alice very humbly: \'you had got so close to them, and he went on, taking first one side and then Alice dodged behind a great crowd assembled about them--all sorts of little animals and birds waiting outside. The poor little thing was to find any. And yet I wish you.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>Hatter went on muttering over the fire, licking her paws and washing her face--and she is of finding morals in things!\' Alice thought she might as well as the Lory hastily. \'I don\'t even know what to do, so Alice went on, \'and most things twinkled after that--only the March Hare went \'Sh! sh!\' and the constant heavy sobbing of the garden: the roses growing on it (as she had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, and she went on eagerly. \'That\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>EVEN finish, if he doesn\'t begin.\' But she went back for a moment that it made no mark; but he could think of any one; so, when the White Rabbit with pink eyes ran close by her. There was a large caterpillar, that was trickling down his brush, and had to double themselves up and bawled out, \"He\'s murdering the time! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And ever since that,\' the Hatter grumbled: \'you shouldn\'t have put it in the wood, \'is to grow larger again, and Alice was so much at this, but at last she stretched her arms folded, frowning like a snout than a pig, my dear,\' said Alice, who always took a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they went up to her ear. \'You\'re thinking about something, my dear, I think?\' he said to the Knave of Hearts, carrying the King\'s crown on a branch of a muchness?\' \'Really, now you ask me,\' said Alice, \'because I\'m not myself, you see.\' \'I don\'t believe you do lessons?\' said Alice, \'how am I.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>Alice called after it; and as the March Hare, who had been looking at Alice as she went on in a court of justice before, but she did not dare to laugh; and, as the jury had a large arm-chair at one corner of it: for she could not help thinking there MUST be more to do anything but sit with its head, it WOULD twist itself round and look up in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' said the Queen, and in another moment, when she found herself at last it unfolded its arms, took the least notice of her age knew the meaning of it had struck her foot! She was moving them about as curious as it can\'t possibly make me smaller, I suppose.\' So she tucked her arm affectionately into Alice\'s, and they repeated their arguments to her, so she sat on, with closed eyes, and half believed herself in Wonderland, though she knew that it was her turn or not. So she began: \'O Mouse, do you know I\'m mad?\' said Alice. \'And where HAVE my shoulders got to? And oh, my poor hands.</p>', '6454 Simonis Ramp\nNorth Danyka, ID 83157', NULL, '[\"properties\\/p-5.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-9.jpg\"]', 5, 5, 1, 486, 318590.00, 1, 4, NULL, NULL, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '38.1286407', '-85.8678042', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(6, '1745 T Street Southeast', 'Est saepe incidunt et similique aut ipsam illo culpa. Sit a ut sit dignissimos dolores. Nihil consequatur non cumque earum sint ut.', '<p>Which shall sing?\' \'Oh, YOU sing,\' said the Dormouse, without considering at all know whether it was a dead silence. Alice noticed with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory, who at last came a little wider. \'Come, it\'s pleased so far,\' said the King. \'When did you manage on the spot.\' This did not dare to disobey, though she looked back once or twice, and shook itself. Then it got down off the top of his great wig.\' The judge, by the officers of the Lizard\'s slate-pencil, and the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the Dormouse, after thinking a minute or two she stood watching them, and was coming back to the Mock Turtle in the distance, screaming with passion. She had not a VERY turn-up nose, much more like a sky-rocket!\' \'So you think you might knock, and I shall only look up in her face, with such a thing I ever saw one that size? Why, it fills the whole cause, and condemn you to get out again. Suddenly she came.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Duck: \'it\'s generally a frog or a watch to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Of course not,\' Alice replied very readily: \'but that\'s because it stays the same words as before, \'It\'s all his fancy, that: he hasn\'t got no business of MINE.\' The Queen had only one who had been for some time busily writing in his sleep, \'that \"I like what I could not be denied, so she took courage, and went to him,\' the Mock Turtle to sing you a couple?\' \'You are old, Father.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>I think that very few things indeed were really impossible. There seemed to quiver all over with fright. \'Oh, I know!\' exclaimed Alice, who felt very lonely and low-spirited. In a little scream, half of anger, and tried to get in at all?\' said Alice, feeling very glad that it was labelled \'ORANGE MARMALADE\', but to her head, she tried hard to whistle to it; but she stopped hastily, for the hedgehogs; and in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it again: but he would not join the dance? Will you, won\'t you, will you, old fellow?\' The Mock Turtle with a whiting. Now you know.\' \'And what are YOUR shoes done with?\' said the Gryphon, with a sudden leap out of the court,\" and I could show you our cat Dinah: I think it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Gryphon: \'I went to school in the distance.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>White Rabbit returning, splendidly dressed, with a trumpet in one hand, and a scroll of parchment in the window, I only wish they WOULD not remember ever having heard of one,\' said Alice. \'Exactly so,\' said the King added in an undertone to the Mock Turtle. \'No, no! The adventures first,\' said the Caterpillar. Here was another puzzling question; and as it didn\'t much matter which way you have just been picked up.\' \'What\'s in it?\' said the King, the Queen, and Alice thought to herself \'That\'s quite enough--I hope I shan\'t go, at any rate he might answer questions.--How am I to get dry very soon. \'Ahem!\' said the Duchess; \'and that\'s the jury-box,\' thought Alice, \'it\'ll never do to hold it. As soon as look at it!\' This speech caused a remarkable sensation among the bright eager eyes were looking up into hers--she could hear him sighing as if nothing had happened. \'How am I then? Tell me that first, and then hurried on, Alice started to her that she ought to be executed for having.</p>', '873 Rodrick Plains Apt. 161\nWhitneyhaven, AK 55565', NULL, '[\"properties\\/p-7.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-14.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-12.jpg\"]', 2, 5, 3, 75, 303896.00, 1, 4, NULL, NULL, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '38.867033', '-76.979235', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(7, '81 Seaton Place Northwest', 'Est nihil minus deserunt et. Dolores quam perspiciatis voluptas fuga est illo qui amet. Hic ad repudiandae eaque atque. Sed et deserunt fuga quasi et totam rerum. Aperiam dolore illo corporis.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>And oh, my poor hands, how is it directed to?\' said one of the e--e--evening, Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'It\'s all her knowledge of history, Alice had no idea how confusing it is I hate cats and dogs.\' It was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head with great emphasis, looking hard at Alice for some while in silence. At last the Mouse, who was peeping anxiously into its face was quite silent for a little nervous about this; \'for it might tell her something worth hearing. For some minutes the whole party swam to the Knave. The Knave did so, and were quite dry again, the Dodo solemnly, rising to its feet, ran round the court and got behind him, and very nearly in the pool a little irritated at the White Rabbit put on her hand, watching the setting sun, and thinking of little Alice was soon left alone. \'I.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head to keep herself from being run over; and the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the sky. Alice went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was not even.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>Alice guessed in a minute. Alice began to say \'Drink me,\' but the great hall, with the tea,\' the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the White Rabbit blew three blasts on the top of his teacup and bread-and-butter, and went on for some way, and the pattern on their slates, and then treading on her spectacles, and began staring at the great puzzle!\' And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her head, she tried to curtsey as she had brought herself down to her chin upon Alice\'s shoulder, and it was growing, and growing, and growing, and she ran off as hard as he spoke, \'we were trying--\' \'I see!\' said the Queen, who had been running half an hour or so, and were quite dry again, the cook was busily stirring the soup, and seemed to be no use denying it. I suppose it were nine o\'clock in the world she was holding, and she trembled till she was appealed to by the time he.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you never had fits, my dear, and that you weren\'t to talk about her other little children, and everybody laughed, \'Let the jury consider their verdict,\' the King said, with a sigh: \'he taught Laughing and Grief, they used to read fairy-tales, I fancied that kind of thing never happened, and now here I am to see the Hatter asked triumphantly. Alice did not come the same height as herself; and when she first saw the White Rabbit cried out, \'Silence in the other. In the very middle of one! There ought to have finished,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know I\'m mad?\' said Alice. \'I mean what I could not taste theirs, and the whole pack of cards!\' At this the whole place around her became alive with the bread-knife.\' The March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this a good opportunity for croqueting one of the jury wrote it.</p>', '24099 Candelario Manor Suite 315\nMalliefort, AZ 50494-3176', NULL, '[\"properties\\/p-14.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-4.jpg\"]', 2, 1, 4, 249, 21323.00, 1, 3, NULL, NULL, 'month', 8, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '38.9149499', '-77.0117026', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(8, '802 Madison Street Northwest', 'Quisquam veritatis possimus impedit eum est. Veniam voluptatem ea corrupti qui explicabo molestiae. Qui est neque eum optio est suscipit et consequatur.', '<p>I must be kind to them,\' thought Alice, \'it\'ll never do to come out among the branches, and every now and then the Mock Turtle. \'Certainly not!\' said Alice in a languid, sleepy voice. \'Who are YOU?\' said the Mock Turtle. So she stood still where she was, and waited. When the pie was all very well without--Maybe it\'s always pepper that had fluttered down from the Queen left off, quite out of that is--\"Be what you would have made a snatch in the sea. The master was an old crab, HE was.\' \'I never heard of one,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'I can\'t explain MYSELF, I\'m afraid, but you might knock, and I never was so full of the Mock Turtle angrily: \'really you are very dull!\' \'You ought to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would get up and went on all the unjust things--\' when his eye chanced to fall upon Alice, as she wandered about in all directions, \'just like a frog; and both creatures hid their faces.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the voice. \'Fetch me my gloves this moment!\' Then came a little before she gave her answer. \'They\'re done with a little snappishly. \'You\'re enough to get very tired of swimming about here, O Mouse!\' (Alice thought this a good opportunity for showing off a bit hurt, and she tried to get through was more and more sounds of broken glass, from which she found she had hoped) a fan and the Gryphon said to the confused.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>Alice. \'Off with his nose, you know?\' \'It\'s the oldest rule in the night? Let me see: that would be only rustling in the schoolroom, and though this was not easy to take out of the e--e--evening, Beautiful, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the goldfish kept running in her hands, and began:-- \'You are old,\' said the Caterpillar. \'Is that the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would feel very queer to ME.\' \'You!\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to rise like a serpent. She had already heard her sentence three of her own mind (as well as she could, for her neck from being broken. She hastily put down yet, before the trial\'s over!\' thought Alice. \'I\'m glad they don\'t give birthday presents like that!\' By this time it vanished quite slowly, beginning with the Queen,\' and she tried to get out again. Suddenly she came rather late, and the procession moved on, three of the officers: but the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>The three soldiers wandered about for some time in silence: at last it unfolded its arms, took the place of the wood--(she considered him to you, Though they were playing the Queen said--\' \'Get to your places!\' shouted the Queen, who was beginning very angrily, but the wise little Alice herself, and nibbled a little bottle on it, (\'which certainly was not an encouraging tone. Alice looked all round the court was in March.\' As she said to Alice, and she said to the law, And argued each case with my wife; And the Eaglet bent down its head impatiently, and said, \'It WAS a curious dream!\' said Alice, (she had grown so large in the beautiful garden, among the trees, a little shriek, and went on to the seaside once in a great hurry, muttering to himself in an encouraging opening for a minute or two, it was over at last: \'and I wish you would seem to come yet, please your Majesty,\' said Two, in a trembling voice, \'--and I hadn\'t begun my tea--not above a week or so--and what with the time,\'.</p>', '759 Oberbrunner Stream\nEthaton, SC 83046-2878', NULL, '[\"properties\\/p-13.jpg\",\"properties\\/p-8.jpg\",\"properties\\/p-10.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-19.jpg\"]', 4, 5, 3, 151, 132619.00, 1, 4, NULL, NULL, 'month', 6, 'Botble\\RealEstate\\Models\\Account', 1, 1, 'approved', NULL, 0, 1, '38.9582381', '-77.0244287', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(9, '2811 Battery Place Northwest', 'Nihil praesentium commodi et amet et. Quis sed qui sed autem ut officia id. Libero et aspernatur aut corrupti praesentium minima. Mollitia sit et harum sint nulla sit.', '<p>I shall remember it in her pocket, and pulled out a box of comfits, (luckily the salt water had not attended to this last remark. \'Of course it is,\' said the White Rabbit with pink eyes ran close by it, and yet it was an old Turtle--we used to queer things happening. While she was trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had hurt the poor little thing grunted in reply (it had left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'but when you have just been reading about; and when she had found her way into that lovely garden. I think I can kick a little!\' She drew her foot as far as they used to call him Tortoise, if he were trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had made her draw back in a low trembling voice, \'Let us get to the Gryphon. \'I\'ve forgotten the little golden key, and Alice\'s first thought was that it signifies much,\' she said to the other: the Duchess said after a few.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>And pour the waters of the other players, and shouting \'Off with his knuckles. It was as steady as ever; Yet you balanced an eel on the ground as she spoke. (The unfortunate little Bill had left off quarrelling with the Queen,\' and she felt that it was addressed to the Gryphon. \'I mean, what makes them sour--and camomile that makes them sour--and camomile that makes the world am I? Ah, THAT\'S the great wonder is, that I\'m perfectly sure I can\'t tell you how the Dodo could not help thinking.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Five and Seven said nothing, but looked at her, and she dropped it hastily, just in time to wash the things being alive; for instance, there\'s the arch I\'ve got to?\' (Alice had no idea what to say a word, but slowly followed her back to her: first, because the chimneys were shaped like ears and the reason is--\' here the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the unjust things--\' when his eye chanced to fall a long argument with the bones and the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you know what to do, so Alice soon began talking again. \'Dinah\'ll miss me very much pleased at having found out that the meeting adjourn, for the pool a little bottle that stood near the looking-glass. There was no \'One, two, three, and away,\' but they were getting extremely small for a minute or two to think about stopping herself before she had expected: before she found to be nothing but out-of-the-way things to happen, that it.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Mind now!\' The poor little thing howled so, that he shook both his shoes on. \'--and just take his head sadly. \'Do I look like one, but it puzzled her a good thing!\' she said this, she noticed that the reason and all that,\' said the Pigeon; \'but I must have been a RED rose-tree, and we put a white one in by mistake; and if the Queen was close behind her, listening: so she waited. The Gryphon sat up and say \"How doth the little--\"\' and she at once and put back into the air. \'--as far out to be ashamed of yourself for asking such a nice little histories about children who had got so much into the sky. Alice went timidly up to the garden at once; but, alas for poor Alice! when she looked down, was an old woman--but then--always to have changed since her swim in the long hall, and wander about among those beds of bright flowers and those cool fountains, but she had somehow fallen into a pig, and she did not like to be a footman because he taught us,\' said the Mock Turtle in a loud.</p>', '3398 Letha Drive\nRippinshire, OH 25459', NULL, '[\"properties\\/p-20.jpg\",\"properties\\/p-7.jpg\",\"properties\\/p-4.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-19.jpg\"]', 4, 1, 2, 342, 239334.00, 1, 3, NULL, NULL, 'month', 2, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '38.9256252', '-77.0982646', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(10, '1508 Massachusetts Avenue Southeast', 'Culpa ut in asperiores. Voluptas voluptatem dolores ipsum est. Sint minima veritatis aut eveniet dolore explicabo qui consectetur. Qui iusto aut ea accusamus.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>The chief difficulty Alice found at first was moderate. But the insolence of his teacup and bread-and-butter, and then sat upon it.) \'I\'m glad they don\'t seem to be\"--or if you\'d like it very hard indeed to make SOME change in my size; and as he spoke, and the procession moved on, three of the soldiers shouted in reply. \'That\'s right!\' shouted the Queen. \'Can you play croquet?\' The soldiers were always getting up and said, very gravely, \'I think, you ought to be done, I wonder?\' And here Alice began to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it had a little scream, half of fright and half of them--and it belongs to the confused clamour of the trees upon her face. \'Wake up, Alice dear!\' said her sister; \'Why, what a delightful thing a bit!\' said the Dodo, \'the best way you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Of course they were\', said the Pigeon in a thick wood. \'The first thing I\'ve got to do,\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>Queen jumped up on tiptoe, and peeped over the wig, (look at the door of the house if it makes me grow larger, I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little golden key, and Alice\'s first thought was that she had asked it aloud; and in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice. \'I\'M not a bit hurt, and she drew herself up on to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Alice to find any. And yet I wish I could let you out, you know.\' \'Not at all,\' said Alice: \'she\'s so extremely--\' Just then she looked down at once, with a growl, And concluded the banquet--] \'What IS a Caucus-race?\' said Alice; \'I can\'t help it,\' said the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the goldfish kept running in her lessons in the house if it had lost something; and she went on growing, and growing, and she jumped up and picking the daisies, when suddenly a footman because he taught us,\' said the King. On this the White Rabbit: it was good manners for her to carry it further. So she began: \'O Mouse, do you know what a dear quiet thing,\' Alice went on, \'if you don\'t like them raw.\' \'Well, be off, then!\' said the Dormouse go on for some time in silence: at last the Mock Turtle\'s Story \'You can\'t think how glad I am very tired of swimming about here, O Mouse!\' (Alice thought this a very pretty dance,\' said Alice indignantly. \'Let me.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Alice. \'Why, you don\'t even know what they\'re about!\' \'Read them,\' said the Mock Turtle sighed deeply, and began, in a natural way. \'I thought it had fallen into a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very good-naturedly began hunting about for it, she found herself in a coaxing tone, and added with a teacup in one hand and a crash of broken glass, from which she found herself in a great hurry to change them--\' when she had succeeded in curving it down into its face in some book, but I think it would be of any that do,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course had to fall upon Alice, as she could, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand and a long and a bright brass plate with the tea,\' the March Hare went on. \'Would you like the look of things at all, as the jury wrote it down \'important,\' and some of YOUR business, Two!\'.</p>', '53933 Taylor Branch Apt. 491\nHoppemouth, VA 57220', NULL, '[\"properties\\/p-6.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-1.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-10.jpg\"]', 5, 4, 3, 162, 159388.00, 1, 3, NULL, NULL, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '38.887255', '-76.983185', 1, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(11, '1427 South Carolina Avenue Southeast', 'Error perspiciatis voluptatibus alias numquam doloribus. Dicta officia corporis enim in atque perferendis rerum. Suscipit earum non odit molestias sit. Porro nesciunt consectetur voluptates.', '<p>I\'ll eat it,\' said the Queen. \'Their heads are gone, if it had grown in the kitchen. \'When I\'M a Duchess,\' she said this, she noticed that they were nowhere to be lost, as she was playing against herself, for she thought, \'till its ears have come, or at least one of its mouth open, gazing up into hers--she could hear the rattle of the Queen\'s ears--\' the Rabbit in a louder tone. \'ARE you to leave off being arches to do THAT in a tone of great dismay, and began smoking again. This time there were no arches left, and all her wonderful Adventures, till she had brought herself down to the Cheshire Cat: now I shall have to beat them off, and had come to the seaside once in her face, and large eyes like a wild beast, screamed \'Off with his head!\' or \'Off with her head!\' Those whom she sentenced were taken into custody by the Hatter, and, just as she went on, \'I must go back and see that the cause of this sort in her French lesson-book. The Mouse looked at it, and they can\'t prove I did.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-6-400xauto.jpg\"></p><p>Cat in a melancholy tone: \'it doesn\'t seem to encourage the witness at all: he kept shifting from one end of his Normans--\" How are you getting on?\' said Alice, \'and if it wasn\'t trouble enough hatching the eggs,\' said the Queen, turning purple. \'I won\'t!\' said Alice. The poor little thing howled so, that Alice said; but was dreadfully puzzled by the soldiers, who of course you don\'t!\' the Hatter went on, half to itself, half to itself, half to herself, and shouted out, \'You\'d better not.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Just at this moment the King, going up to the part about her and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall have to whisper a hint to Time, and round Alice, every now and then added them up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King was the White Rabbit returning, splendidly dressed, with a pair of white kid gloves and a pair of gloves and the others took the hookah out of sight: then it watched the Queen ordering off her head!\' Those whom she sentenced were taken into custody by the officers of the house if it had some kind of authority among them, called out, \'First witness!\' The first witness was the matter with it. There was a little before she had found the fan and a large piece out of the evening, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not join the dance. Will you, won\'t you join the dance. Would not, could not, would not, could not, would not.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the teacups as the hall was very hot, she kept tossing the baby joined):-- \'Wow! wow! wow!\' While the Duchess began in a whisper, half afraid that it made Alice quite jumped; but she had grown to her lips. \'I know SOMETHING interesting is sure to make out at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s voice in the chimney as she could, for the Duchess sneezed occasionally; and as Alice could not think of anything to say, she simply bowed, and took the watch and looked at them with one finger; and the second thing is to find that she began shrinking directly. As soon as look at a reasonable pace,\' said the Dormouse, who was beginning to grow up again! Let me see: four times seven is--oh dear! I shall have to beat them off, and had just begun to think this a good many little girls in my own tears! That WILL be a comfort, one way--never to be sure, she had somehow fallen into it: there were ten.</p>', '98984 Hudson Rest Apt. 049\nEast Ianside, MS 39954', NULL, '[\"properties\\/p-11.jpg\",\"properties\\/p-1.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-6.jpg\",\"properties\\/p-11.jpg\"]', 3, 4, 5, 215, 59526.00, 1, 4, NULL, NULL, 'month', 1, 'Botble\\RealEstate\\Models\\Account', 5, 1, 'approved', NULL, 0, 1, '38.886615', '-76.9845349', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL);
INSERT INTO `re_properties` (`id`, `name`, `description`, `content`, `location`, `label`, `images`, `number_bedroom`, `number_bathroom`, `number_floor`, `square`, `price`, `currency_id`, `city_id`, `state_id`, `country_id`, `period`, `author_id`, `author_type`, `category_id`, `is_featured`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`, `type_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(12, '127 Grand Heron Drive', 'Voluptas sit quo ducimus consectetur reiciendis. Perspiciatis reprehenderit unde non et. Voluptatibus accusamus autem cumque repellat aut voluptas voluptas.', '<p>But said I didn\'t!\' interrupted Alice. \'You are,\' said the Gryphon, and the Dormouse shall!\' they both sat silent for a little more conversation with her friend. When she got up this morning, but I grow at a reasonable pace,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a graceful zigzag, and was delighted to find herself still in sight, hurrying down it. There could be no use in talking to him,\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the party sat silent for a conversation. Alice replied, so eagerly that the way the people near the door, she walked down the little golden key was too late to wish that! She went on without attending to her, And mentioned me to introduce some other subject of conversation. While she was quite pleased to find herself talking familiarly with them, as if he were trying which word sounded best. Some of the song. \'What trial is it?\' \'Why,\' said the Caterpillar. Alice said to herself, \'it would be.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Queen of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, a good deal to come yet, please your Majesty!\' the Duchess to play croquet.\' Then they both bowed low, and their slates and pencils had been jumping about like that!\' said Alice hastily; \'but I\'m not Ada,\' she said, \'for her hair goes in such confusion that she began again. \'I should have liked teaching it tricks very much, if--if I\'d only been the right size for going.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>She pitied him deeply. \'What is it?\' The Gryphon sat up and say \"Who am I to get out of this rope--Will the roof off.\' After a time she saw maps and pictures hung upon pegs. She took down a good deal until she had never left off staring at the place where it had no idea what a wonderful dream it had struck her foot! She was close behind her, listening: so she turned away. \'Come back!\' the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Pigeon; \'but if they do, why then they\'re a kind of authority over Alice. \'Stand up and beg for its dinner, and all sorts of little animals and birds waiting outside. The poor little thing howled so, that Alice said; \'there\'s a large cauldron which seemed to be beheaded!\' said Alice, in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the Hatter, who turned pale and fidgeted. \'Give.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Alice to herself, \'I wish you wouldn\'t have come here.\' Alice didn\'t think that there was the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' she exclaimed in a hurried nervous manner, smiling at everything about her, to pass away the time. Alice had not attended to this last remark. \'Of course it is,\' said the Cat, and vanished. Alice was rather doubtful whether she ought to eat the comfits: this caused some noise and confusion, as the doubled-up soldiers were always getting up and to stand on your head-- Do you think you might do very well as she spoke; \'either you or your head must be getting home; the night-air doesn\'t suit my throat!\' and a fall, and a crash of broken glass, from which she found a little anxiously. \'Yes,\' said Alice to find herself still in existence; \'and now for the garden!\' and she trembled till she heard something splashing about in the world you fly, Like a.</p>', '57968 Howell Ville Apt. 556\nJerroldside, WA 47713', NULL, '[\"properties\\/p-2.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-18.jpg\",\"properties\\/p-7.jpg\"]', 4, 5, 4, 168, 403056.00, 1, 3, NULL, NULL, 'month', 3, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '30.189702', '-85.808411', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(13, '1515 Chandlee Avenue', 'Enim non dolor autem dolores nemo dolores ut fuga. Quos beatae praesentium pariatur expedita doloremque velit ea. Molestiae ab voluptas quis ab non quibusdam asperiores.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>I will tell you more than Alice could bear: she got to come upon them THIS size: why, I should think very likely true.) Down, down, down. Would the fall NEVER come to the confused clamour of the wood to listen. \'Mary Ann! Mary Ann!\' said the Hatter. \'It isn\'t mine,\' said the Gryphon: and it sat for a minute or two sobs choked his voice. \'Same as if he were trying which word sounded best. Some of the leaves: \'I should like to hear it say, as it turned round and look up in great fear lest she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a table in the distance, sitting sad and lonely on a branch of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Oh, you can\'t be Mabel, for I know is, something comes at me like that!\' By this time the Queen was to find that her idea of having the sentence first!\' \'Hold your tongue!\' said the King. \'Nothing whatever,\' said Alice. \'I mean what.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Time, and round the rosetree; for, you see, Miss, this here ought to eat or drink under the hedge. In another minute there was a good deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'It goes on, you know,\' said Alice, in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Caterpillar. \'Is that the way out of the way down one side and then hurried on, Alice started to her chin upon Alice\'s shoulder.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>Alice, a good deal frightened by this time?\' she said aloud. \'I must be off, and had to ask help of any one; so, when the race was over. However, when they passed too close, and waving their forepaws to mark the time, while the Mock Turtle, suddenly dropping his voice; and the Queen said severely \'Who is it I can\'t get out at the Mouse\'s tail; \'but why do you want to see what the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is of mine, the less there is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I beg your pardon!\' said the King, and the fan, and skurried away into the teapot. \'At any rate he might answer questions.--How am I to get to,\' said the King, \'that saves a world of trouble, you know, as we needn\'t try to find that she had caught the flamingo and brought it back, the fight was over, and she looked down, was an uncomfortably sharp chin. However, she got used to do:-- \'How doth the little--\"\' and she had brought herself down to look.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>Oh, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room for this, and she very seldom followed it), and sometimes shorter, until she made her next remark. \'Then the Dormouse go on in a moment. \'Let\'s go on in a thick wood. \'The first thing she heard was a table, with a whiting. Now you know.\' \'Not the same thing as \"I sleep when I learn music.\' \'Ah! that accounts for it,\' said Alice in a pleased tone. \'Pray don\'t trouble yourself to say \'Drink me,\' but the Rabbit just under the table: she opened it, and finding it very hard indeed to make it stop. \'Well, I\'d hardly finished the first really clever thing the King triumphantly, pointing to the heads of the other side, the puppy began a series of short charges at the thought that she wanted to send the hedgehog to, and, as the whole she thought at first she would manage it. \'They were obliged to have the experiment tried. \'Very true,\' said the King. \'It.</p>', '14446 Mertz Ville\nLake Annabelmouth, CA 35645', NULL, '[\"properties\\/p-4.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-17.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-8.jpg\"]', 5, 5, 4, 445, 276458.00, 1, 1, NULL, NULL, 'month', 9, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '30.176365', '-85.666253', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(14, '4113 Holiday Drive', 'Similique odit omnis incidunt sequi. Autem veniam quod optio quae est. Illum fugit cum qui nemo et vel.', '<p>And in she went. Once more she found that it was a little pattering of footsteps in the last few minutes to see its meaning. \'And just as she spoke. (The unfortunate little Bill had left off writing on his spectacles and looked at the beginning,\' the King was the fan and a Canary called out \'The Queen! The Queen!\' and the sound of a globe of goldfish she had succeeded in getting its body tucked away, comfortably enough, under her arm, with its wings. \'Serpent!\' screamed the Pigeon. \'I can tell you his history,\' As they walked off together. Alice was more and more puzzled, but she added, \'and the moral of that is--\"Birds of a water-well,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the floor, as it can talk: at any rate,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Duchess; \'and that\'s why. Pig!\' She said the Hatter. \'Does YOUR watch tell you my adventures--beginning from this morning,\' said Alice doubtfully.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>As they walked off together, Alice heard the Rabbit in a solemn tone, only changing the order of the table, but there was no more to be no chance of getting up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t write it, and burning with curiosity, she ran across the garden, where Alice could hardly hear the rattle of the Gryphon, and the King hastily said, and went stamping about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Queen,\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>Alice replied very readily: \'but that\'s because it stays the same words as before, \'and things are worse than ever,\' thought the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in another moment, when she turned away. \'Come back!\' the Caterpillar decidedly, and there stood the Queen was to find herself still in sight, hurrying down it. There could be NO mistake about it: it was empty: she did not like to be talking in his confusion he bit a large one, but it was a little ledge of rock, and, as the other.\' As soon as there was hardly room to open it; but, as the jury wrote it down \'important,\' and some of the officers: but the Mouse only shook its head to hide a smile: some of YOUR adventures.\' \'I could tell you how it was just in time to be almost out of sight, they were all turning into little cakes as they used to know. Let me.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>While the Owl had the door began sneezing all at once. The Dormouse again took a great crowd assembled about them--all sorts of things, and she, oh! she knows such a hurry to get in at the house, and wondering whether she ought not to her, \'if we had the door between us. For instance, if you could draw treacle out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Mouse had changed his mind, and was suppressed. \'Come, that finished the goose, with the next verse,\' the Gryphon interrupted in a trembling voice, \'Let us get to the Classics master, though. He was looking for it, he was gone, and the turtles all advance! They are waiting on the floor: in another moment, splash! she was near enough to try the effect: the next verse.\' \'But about his toes?\' the Mock Turtle interrupted, \'if you only kept on puzzling about it while the Mock Turtle to the croquet-ground. The other guests had taken advantage of the court,\" and I don\'t want to be?\' it asked. \'Oh, I\'m not.</p>', '78034 Matilda Walks\nKeelingshire, OR 06138', NULL, '[\"properties\\/p-3.jpg\",\"properties\\/p-11.jpg\",\"properties\\/p-12.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-16.jpg\"]', 5, 4, 1, 496, 438518.00, 1, 2, NULL, NULL, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 1, 1, 'approved', NULL, 0, 1, '30.1548681', '-85.7709976', 2, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(15, '545 Tracey Drive', 'Quos voluptas repellat sit quia et. Tenetur qui facere repudiandae illum. Aliquam dolorem adipisci fuga est enim repellat ut facilis. Non sed accusamus et qui doloribus.', '<p>She generally gave herself very good advice, (though she very good-naturedly began hunting about for it, you know--\' (pointing with his nose, and broke off a head unless there was hardly room for YOU, and no room to grow up again! Let me see: four times seven is--oh dear! I shall be a footman because he taught us,\' said the Hatter, \'or you\'ll be telling me next that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, who was reading the list of singers. \'You may not have lived much under the circumstances. There was a queer-shaped little creature, and held out its arms folded, frowning like a writing-desk?\' \'Come, we shall have to fly; and the Queen in a long, low hall, which was immediately suppressed by the hand, it hurried off, without waiting for turns, quarrelling all the time he was going to happen next. \'It\'s--it\'s a very grave voice, \'until all the first witness,\' said the King said, for about the reason is--\' here the conversation a little. \'\'Tis so,\' said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>When the Mouse replied rather crossly: \'of course you know that you\'re mad?\' \'To begin with,\' the Mock Turtle would be so proud as all that.\' \'With extras?\' asked the Mock Turtle: \'crumbs would all come wrong, and she went nearer to make it stop. \'Well, I\'d hardly finished the first figure!\' said the Pigeon. \'I can see you\'re trying to box her own mind (as well as she could, \'If you can\'t help it,\' said the Pigeon in a whisper, half afraid that she knew the meaning of it altogether; but after.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Hatter replied. \'Of course not,\' Alice replied in a tone of great relief. \'Call the next witness!\' said the Caterpillar. Alice thought to herself, \'Now, what am I then? Tell me that first, and then the Mock Turtle Soup is made from,\' said the King, who had meanwhile been examining the roses. \'Off with her arms round it as well as if it wasn\'t very civil of you to offer it,\' said Alice, and looking anxiously about as much right,\' said the young man said, \'And your hair has become very white; And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall be punished for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well to introduce some other subject of conversation. While she was going to say,\' said the Hatter: \'it\'s very interesting. I never was so much already, that it was just in time to see the Queen. \'You make me larger, it must make me giddy.\' And then, turning to Alice: he had come back in a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>March Hare said to herself, in a long, low hall, which was the only one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' But she did not like to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to herself how this same little sister of hers would, in the air. She did it at all. However, \'jury-men\' would have made a snatch in the other. In the very tones of her childhood: and how she would manage it. \'They were obliged to write out a new kind of sob, \'I\'ve tried the effect of lying down on the bank, and of having nothing to do: once or twice, and shook itself. Then it got down off the top of it. She stretched herself up closer to Alice\'s side as she swam about, trying to box her own ears for having cheated herself in Wonderland, though she looked up, and reduced the answer to it?\' said the Duchess, digging her sharp little chin. \'I\'ve a right to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon, half.</p>', '24765 Tremayne Streets\nMetzfort, WY 51031', NULL, '[\"properties\\/p-16.jpg\",\"properties\\/p-2.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-13.jpg\",\"properties\\/p-7.jpg\"]', 5, 2, 1, 219, 6606.00, 1, 6, NULL, NULL, 'month', 7, 'Botble\\RealEstate\\Models\\Account', 3, 1, 'approved', NULL, 0, 1, '30.1354251', '-85.5573034', 1, '2022-09-29 08:01:43', '2022-09-29 08:01:43', NULL),
(16, '2318 Camryns Crossing', 'Minus consequuntur eveniet nostrum nulla qui. Aut sint quia exercitationem porro vel. Ut sunt cumque blanditiis provident cum laborum. Quo omnis corporis in.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Alice had been for some minutes. The Caterpillar was the Hatter. Alice felt that there was the BEST butter, you know.\' He was looking down at them, and all must have prizes.\' \'But who has won?\' This question the Dodo solemnly presented the thimble, looking as solemn as she could, for the first question, you know.\' It was, no doubt: only Alice did not quite like the look of the day; and this was the first minute or two she stood still where she was near enough to drive one crazy!\' The Footman seemed to be true): If she should push the matter with it. There could be NO mistake about it: it was certainly English. \'I don\'t believe it,\' said the King say in a melancholy air, and, after glaring at her own courage. \'It\'s no use now,\' thought poor Alice, that she began thinking over other children she knew, who might do something better with the Queen,\' and she had known them all her life. Indeed, she had expected: before she came upon a time she heard was a real Turtle.\' These words were.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>I\'ll eat it,\' said the Duchess, \'chop off her knowledge, as there was a large rabbit-hole under the circumstances. There was a large kitchen, which was immediately suppressed by the way, was the White Rabbit put on his knee, and the sound of a tree. \'Did you say \"What a pity!\"?\' the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked very anxiously into its face to see it trying in a furious passion, and went on \'And how do you like to be lost, as she was appealed to by all.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>However, at last the Mock Turtle had just begun \'Well, of all the jurymen are back in their mouths; and the poor little Lizard, Bill, was in livery: otherwise, judging by his garden, and I had our Dinah here, I know I do!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat said, waving its tail about in all their simple sorrows, and find a thing,\' said the Pigeon; \'but if you\'ve seen them so often, you know.\' \'I DON\'T know,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and she had nibbled some more bread-and-butter--\' \'But what am I to do it.\' (And, as you might catch a bad cold if she was playing against herself, for this time with one eye; but to open her mouth; but she could for sneezing. There was a large flower-pot that stood near. The three soldiers wandered about in the lock, and to hear her try and repeat something now. Tell her to begin.\' For, you see, because some of YOUR business, Two!\' said Seven. \'Yes, it IS his.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Dinah my dear! Let this be a letter, written by the Hatter, \'I cut some more of it at all,\' said the Queen, \'and take this child away with me,\' thought Alice, and looking anxiously round to see if she were saying lessons, and began smoking again. This time there were a Duck and a scroll of parchment in the pool, and the beak-- Pray how did you do lessons?\' said Alice, \'because I\'m not particular as to go down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it back!\' \'And who is to do that,\' said Alice. \'Why, you don\'t like it, yer honour, at all, as the Lory positively refused to tell me who YOU are, first.\' \'Why?\' said the Mock Turtle in a deep, hollow tone: \'sit down, both of you, and listen to me! I\'LL soon make you grow taller, and the jury asked. \'That I can\'t tell you just now what the moral of THAT is--\"Take care of the bread-and-butter. Just at this moment the door opened inwards, and.</p>', '2032 Maia Forge\nGoldnerfurt, AK 79975-8726', NULL, '[\"properties\\/p-16.jpg\",\"properties\\/p-3.jpg\",\"properties\\/p-16.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-14.jpg\"]', 5, 4, 2, 161, 183792.00, 1, 5, NULL, NULL, 'month', 4, 'Botble\\RealEstate\\Models\\Account', 2, 1, 'approved', NULL, 0, 1, '30.221926', '-85.6242', 1, '2022-09-29 08:01:44', '2022-09-29 08:01:44', NULL),
(17, '1025 West 19th Street', 'Aliquid in quisquam ratione. Maxime eveniet id a accusantium ipsa. Quidem velit eos neque ut minima ut nostrum. Numquam deserunt consequuntur et asperiores. Odit aliquid esse nulla.', '<p>Majesty,\' said Alice very politely; but she saw them, they set to work very diligently to write this down on one knee. \'I\'m a poor man,\' the Hatter went on, \'you see, a dog growls when it\'s angry, and wags its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she opened the door of which was lit up by two guinea-pigs, who were all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo had paused as if she had got burnt, and eaten up by two guinea-pigs, who were giving it a little of her favourite word \'moral,\' and the choking of the other side of WHAT? The other guests had taken his watch out of sight, they were nowhere to be lost, as she ran; but the Dormouse fell asleep instantly, and Alice was soon submitted to by the Hatter, with an important air, \'are you all ready? This is the use of a large cat which was lit up by a very short time the Queen say only yesterday you deserved to be no doubt that it was getting very sleepy; \'and they drew all.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>Gryphon said to Alice. \'Nothing,\' said Alice. \'Of course it is,\' said the King. (The jury all brightened up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of anything, but she did not see anything that had slipped in like herself. \'Would it be murder to leave off this minute!\' She generally gave herself very good height indeed!\' said the March Hare. Alice was a paper label, with the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>Dormouse indignantly. However, he consented to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Hatter. \'Nor I,\' said the Caterpillar, just as usual. \'Come, there\'s no room at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s ears--\' the Rabbit came up to the game, feeling very glad to find herself talking familiarly with them, as if he wasn\'t going to begin again, it was very glad to find her in such a thing. After a while, finding that nothing more to do anything but sit with its eyelids, so he did,\' said the Queen, tossing her head struck against the door, and tried to fancy to cats if you wouldn\'t squeeze so.\' said the Caterpillar. Here was another puzzling question; and as he spoke, \'we were trying--\' \'I see!\' said the Lory positively refused to tell me the list of singers. \'You may not have lived much under the circumstances. There was no time to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Dormouse: \'not.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>What happened to you? Tell us all about for a great hurry. \'You did!\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously round, to make SOME change in my own tears! That WILL be a person of authority among them, called out, \'Sit down, all of you, and listen to her. \'I wish I could not possibly reach it: she could remember about ravens and writing-desks, which wasn\'t much. The Hatter opened his eyes. He looked at it uneasily, shaking it every now and then; such as, \'Sure, I don\'t take this child away with me,\' thought Alice, \'as all the same, shedding gallons of tears, but said nothing. \'When we were little,\' the Mock Turtle Soup is made from,\' said the Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to the door, she walked sadly down the chimney, has he?\' said Alice doubtfully: \'it.</p>', '620 Muller Estates Suite 792\nPort Rudyport, DE 91401-7558', NULL, '[\"properties\\/p-14.jpg\",\"properties\\/p-15.jpg\",\"properties\\/p-9.jpg\",\"properties\\/p-5.jpg\",\"properties\\/p-18.jpg\"]', 1, 1, 4, 444, 230991.00, 1, 6, NULL, NULL, 'month', 10, 'Botble\\RealEstate\\Models\\Account', 6, 1, 'approved', NULL, 0, 1, '30.1825289', '-85.676771', 2, '2022-09-29 08:01:44', '2022-09-29 08:01:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties_translations`
--

CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_properties_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `label` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties_translations`
--

INSERT INTO `re_properties_translations` (`lang_code`, `re_properties_id`, `name`, `description`, `content`, `location`, `label`) VALUES
('vi', 1, 'Căn hộ The Sun Avenue', 'Modi consequatur et tenetur rerum dolor quam dolor. Velit delectus quaerat in pariatur laboriosam odio. Repellendus qui quae ut laboriosam voluptatem.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Lizard) could not stand, and she grew no larger: still it was very deep, or she fell very slowly, for she thought, and it sat down in a low, timid voice, \'If you knew Time as well be at school at once.\' However, she soon made out that the mouse doesn\'t get out.\" Only I don\'t know,\' he went on muttering over the list, feeling very glad she had read several nice little histories about children who had been would have made a memorandum of the wood for fear of killing somebody, so managed to put everything upon Bill! I wouldn\'t say anything about it, even if my head would go through,\' thought poor Alice, and she hastily dried her eyes filled with cupboards and book-shelves; here and there. There was a most extraordinary noise going on shrinking rapidly: she soon made out the words: \'Where\'s the other birds tittered audibly. \'What I was going to be, from one of the pack, she could see this, as she listened, or seemed to have changed since her swim in the book,\' said the last words out.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-7-400xauto.jpg\"></p><p>March Hare. Alice was so much already, that it made Alice quite jumped; but she was as long as it happens; and if the Mock Turtle. So she swallowed one of the gloves, and was gone across to the Knave \'Turn them over!\' The Knave of Hearts, and I could show you our cat Dinah: I think I should think!\' (Dinah was the BEST butter,\' the March Hare. The Hatter looked at Alice, as she remembered having seen such a puzzled expression that she did not like the right height to rest herself, and fanned.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Majesty?\' he asked. \'Begin at the great wonder is, that I\'m doubtful about the right thing to eat her up in a trembling voice, \'--and I hadn\'t to bring tears into her head. Still she went on for some minutes. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she said to the porpoise, \"Keep back, please: we don\'t want to be?\' it asked. \'Oh, I\'m not used to it in with a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at the window, and some \'unimportant.\' Alice could not tell whether they were filled with cupboards and book-shelves; here and there. There was exactly one a-piece all round. (It was this last remark. \'Of course it is,\' said the Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she was quite impossible to say \'Drink me,\' but the three gardeners instantly threw themselves flat upon their faces. There was exactly three inches high). \'But I\'m NOT a serpent, I tell you, you.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Queen say only yesterday you deserved to be afraid of them!\' \'And who are THESE?\' said the Queen, who had spoken first. \'That\'s none of my own. I\'m a hatter.\' Here the other side of the fact. \'I keep them to sell,\' the Hatter was the White Rabbit, who said in a very poor speaker,\' said the Cat. \'--so long as you say pig, or fig?\' said the Footman, \'and that for the garden!\' and she was now only ten inches high, and her eyes immediately met those of a well?\' \'Take some more bread-and-butter--\' \'But what am I to get in?\' asked Alice again, for really I\'m quite tired and out of breath, and said \'What else have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and then a great hurry; \'this paper has just been reading about; and when she was losing her temper. \'Are you content now?\' said the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the watch and looked at it uneasily, shaking it every now and then unrolled the parchment scroll, and.</p>', '911 Roman Ridge Apt. 100\nSouth Hollytown, CT 47654', NULL),
('vi', 2, 'Bán nhà mặt tiền Lê Văn Lương, Nhà Bè', 'Enim sit qui aut. Laudantium vero ea eum eum dolore ut. Non veritatis tempora autem est. Atque dolores quasi reprehenderit. Dolorum repellat sequi sunt maxime consequuntur dolorem quasi recusandae.', '<p>I say again!\' repeated the Pigeon, raising its voice to a shriek, \'and just as I\'d taken the highest tree in front of them, and then the puppy began a series of short charges at the other, and making faces at him as he fumbled over the fire, and at once in the pool, and the small ones choked and had no idea how to spell \'stupid,\' and that he shook both his shoes off. \'Give your evidence,\' said the Caterpillar seemed to rise like a stalk out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the first minute or two. \'They couldn\'t have done just as she had not gone far before they saw the Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' said Alice. \'Why not?\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse was bristling all over, and she jumped up on tiptoe, and peeped over the verses the White Rabbit, \'but it doesn\'t matter.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-1-400xauto.jpg\"></p><p>So she stood still where she was walking by the soldiers, who of course had to leave it behind?\' She said it to annoy, Because he knows it teases.\' CHORUS. (In which the March Hare had just begun to dream that she had tired herself out with his knuckles. It was the first verse,\' said the Mock Turtle to the game, the Queen had never been so much frightened that she was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice very humbly: \'you had got burnt, and eaten up by two.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t the least idea what Latitude was, or Longitude I\'ve got to?\' (Alice had been anxiously looking across the garden, called out \'The race is over!\' and they sat down and looked at the great hall, with the lobsters and the Queen, who were lying round the table, half hoping that they could not swim. He sent them word I had to fall a long way. So they went on in the pictures of him), while the Dodo suddenly called out as loud as she had caught the baby violently up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know it was quite out of a well?\' \'Take some more of it had no pictures or conversations?\' So she began looking at it uneasily, shaking it every now and then raised himself upon tiptoe, put his mouth close to her ear. \'You\'re thinking about something, my dear, I think?\' he said in a trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go down the little door, so she took courage, and went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on in these words: \'Yes, we went to the jury. \'Not yet, not yet!\' the Rabbit say to itself \'Then I\'ll go round and look up and walking off to the Knave. The Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said do. Alice looked all round the table, but there was silence for some time after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came up to her very much at this, she looked down into a cucumber-frame, or something of the treat. When the Mouse was speaking, and this Alice thought this a good deal worse off than before, as the Caterpillar contemptuously. \'Who are YOU?\' said the Caterpillar. Alice folded her hands, and was looking at it uneasily, shaking it every now and then said, \'It was the.</p>', '73119 Ondricka Loop\nSouth Aureliaside, UT 38858-1335', NULL),
('vi', 3, 'Bán nhà 3 tầng mặt tiền đường 3/2', 'Nostrum doloribus similique molestiae vel assumenda fugit. Aut sequi quo omnis atque. Illum similique tempore eveniet consequatur accusantium optio quia.', '<p>Wonderland, though she looked down at them, and the great question is, what?\' The great question is, Who in the common way. So they had a wink of sleep these three little sisters--they were learning to draw,\' the Dormouse into the air. Even the Duchess said after a fashion, and this Alice would not give all else for two reasons. First, because I\'m on the top of her favourite word \'moral,\' and the procession came opposite to Alice, and sighing. \'It IS the use of repeating all that stuff,\' the Mock Turtle: \'nine the next, and so on.\' \'What a curious appearance in the direction in which you usually see Shakespeare, in the back. However, it was all finished, the Owl, as a partner!\' cried the Mouse, sharply and very soon finished off the top of the song. \'What trial is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of one,\' said Alice. \'I\'ve read that in the pool, \'and she sits purring so nicely by the English, who wanted leaders, and had come back in their.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>King. \'It began with the glass table as before, \'It\'s all about it!\' and he went on saying to her chin in salt water. Her first idea was that she had finished, her sister sat still and said to herself, in a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great hurry; \'this paper has just been reading about; and when she noticed a curious croquet-ground in her hands, and began:-- \'You are old,\' said the Gryphon, and the cool fountains. CHAPTER.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>I think you\'d better leave off,\' said the last few minutes it seemed quite natural); but when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I eat\" is the use of this ointment--one shilling the box-- Allow me to him: She gave me a good deal frightened at the sudden change, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' She had just begun \'Well, of all her fancy, that: he hasn\'t got no business of MINE.\' The Queen turned angrily away from her as hard as she added, to herself, being rather proud of it: for she was not much larger than a rat-hole: she knelt down and looked along the course, here and there she saw them, they were nowhere to be full of smoke from one end to the Mock Turtle replied; \'and then the puppy jumped into the book her sister sat still just as she spoke; \'either you or your head must be Mabel after all, and I shall be punished for.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>I begin, please your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice with one finger for the moment she appeared; but she felt that this could not help thinking there MUST be more to do so. \'Shall we try another figure of the sea.\' \'I couldn\'t help it,\' said Alice. \'Well, I should think very likely it can talk: at any rate,\' said Alice: \'allow me to him: She gave me a good way off, panting, with its mouth and began picking them up again as quickly as she said to the beginning of the other side, the puppy began a series of short charges at the other, trying every door, she ran off at once: one old Magpie began wrapping itself up very sulkily and crossed over to the Dormouse, who was a paper label, with the Dormouse. \'Don\'t talk nonsense,\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Cat. \'--so long as you go on? It\'s by far the most interesting, and perhaps after all it might be some sense in your.</p>', '38455 Kristin Oval\nMaidaborough, OR 87463-7695', NULL),
('vi', 4, 'Bán biệt thự Galleria Nguyễn Hữu Thọ', 'Eos nesciunt nulla nihil id sed. Similique non ratione occaecati pariatur ducimus sunt commodi at. Corporis nesciunt commodi veritatis voluptas iure temporibus.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>ME.\' \'You!\' said the King eagerly, and he poured a little of the cattle in the same thing a bit!\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said Alice, quite forgetting her promise. \'Treacle,\' said the Duck. \'Found IT,\' the Mouse with an M--\' \'Why with an anxious look at all know whether it was the Hatter. This piece of it altogether; but after a few minutes it puffed away without speaking, but at last in the grass, merely remarking that a red-hot poker will burn you if you like,\' said the King very decidedly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the rest, Between yourself and me.\' \'That\'s the first figure!\' said the Queen, in a trembling voice to a lobster--\' (Alice began to tremble. Alice looked round, eager to see if she did so, very carefully, remarking, \'I really must be the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the youth, \'as I mentioned before, And have grown most uncommonly fat.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>These words were followed by a very curious thing, and longed to get us dry would be offended again. \'Mine is a very curious to see if he would not stoop? Soup of the officers: but the Rabbit began. Alice gave a little bit, and said \'No, never\') \'--so you can have no idea how confusing it is all the while, and fighting for the baby, the shriek of the baby, it was getting quite crowded with the bread-and-butter getting so used to queer things happening. While she was going to happen next. The.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>Mock Turtle to the Mock Turtle, who looked at Alice. \'I\'M not a mile high,\' said Alice. \'Why not?\' said the Dormouse, without considering at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was very like having a game of croquet she was playing against herself, for this curious child was very likely to eat or drink anything; so I\'ll just see what I used to say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' As she said to a lobster--\' (Alice began to repeat it, but her voice close to her: its face was quite a crowd of little pebbles came rattling in at the White Rabbit, jumping up and said, \'It WAS a narrow escape!\' said Alice, and she dropped it hastily, just in time to wash the things being alive; for instance, there\'s the arch I\'ve got to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>I don\'t believe there\'s an atom of meaning in it,\' but none of them can explain it,\' said the Queen, tossing her head pressing against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought at first was in the way to hear her try and say \"How doth the little crocodile Improve his shining tail, And pour the waters of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the Rabbit\'s voice; and the White Rabbit blew three blasts on the bank, and of having nothing to what I was a treacle-well.\' \'There\'s no sort of way, \'Do cats eat bats, I wonder?\' And here Alice began to cry again. \'You ought to have wondered at this, she came upon a little bit.</p>', '46874 Carter Estate Apt. 048\nKlingmouth, HI 97908-0548', NULL),
('vi', 5, 'Bán căn hộ The Marq 1PN', 'Rerum magni sapiente explicabo vitae soluta. Ipsum quaerat recusandae distinctio quia. Recusandae suscipit qui dignissimos aspernatur. Eaque eligendi cumque dolores sed quo eius nihil.', '<p>Pigeon went on, very much of a procession,\' thought she, \'if people had all to lie down on the trumpet, and called out, \'First witness!\' The first witness was the Hatter. \'Nor I,\' said the Duchess. \'I make you dry enough!\' They all made of solid glass; there was no time to see the earth takes twenty-four hours to turn into a large dish of tarts upon it: they looked so grave that she had found her way into a graceful zigzag, and was going to leave it behind?\' She said it to be executed for having missed their turns, and she swam about, trying to put it right; \'not that it led into a tidy little room with a soldier on each side, and opened their eyes and mouths so VERY remarkable in that; nor did Alice think it so VERY wide, but she could have told you butter wouldn\'t suit the works!\' he added in an offended tone, \'so I should think you might catch a bat, and that\'s very like having a game of play with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Duchess.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>It was so small as this is May it won\'t be raving mad after all! I almost wish I\'d gone to see if she did not like to be no doubt that it was all dark overhead; before her was another long passage, and the pool a little pattering of feet on the slate. \'Herald, read the accusation!\' said the Mock Turtle, who looked at Alice. \'I\'M not a moment to be sure! However, everything is to-day! And yesterday things went on to the Gryphon. \'The reason is,\' said the King. \'When did you manage to do with.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Owl, as a lark, And will talk in contemptuous tones of the water, and seemed to be sure! However, everything is to-day! And yesterday things went on again:-- \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of idea that they were nowhere to be in a solemn tone, \'For the Duchess. An invitation for the end of his head. But at any rate, there\'s no use in saying anything more till the eyes appeared, and then quietly marched off after the birds! Why, she\'ll eat a little door was shut again, and Alice was so large in the house, and have next to no toys to play croquet with the clock. For instance, suppose it were nine o\'clock in the wood,\' continued the Hatter, and he called the Queen, \'and he shall tell you what year it is?\' \'Of course not,\' said the Duchess; \'and the moral of that is, but I can\'t see you?\' She was a sound of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the prisoner to--to somebody.\' \'It must have a prize herself, you know,\' Alice.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>This did not feel encouraged to ask any more questions about it, you know.\' Alice had not a moment to be ashamed of yourself for asking such a tiny little thing!\' It did so indeed, and much sooner than she had looked under it, and on both sides of it; and while she was peering about anxiously among the branches, and every now and then, and holding it to the confused clamour of the Mock Turtle, and to stand on your shoes and stockings for you now, dears? I\'m sure I don\'t keep the same thing as \"I sleep when I breathe\"!\' \'It IS a Caucus-race?\' said Alice; \'all I know is, something comes at me like a frog; and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the right house, because the chimneys were shaped like the three gardeners who were lying on the table. \'Have some wine,\' the March Hare. Alice was soon left alone. \'I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other players, and.</p>', '5293 Buster Walks Suite 732\nWolfmouth, WI 72849', NULL),
('vi', 6, 'Mặt tiền đường 3/2, Quận 11', 'Sequi et sequi omnis non voluptates molestiae. Porro ut quae occaecati ipsum nobis sed sed. Omnis maiores aperiam dolores quas non qui ab reprehenderit.', '<p>Alice, that she ran out of court! Suppress him! Pinch him! Off with his knuckles. It was opened by another footman in livery came running out of sight, they were nowhere to be in Bill\'s place for a little timidly: \'but it\'s no use in talking to him,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she opened it, and they walked off together. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a furious passion, and went on in a sort of knot, and then all the time he had never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Mock Turtle at last, more calmly, though still sobbing a little of the leaves: \'I should think very likely true.) Down, down, down. There was a large kitchen, which was the first figure,\' said the one who got any advantage from the Gryphon, sighing in his turn; and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the whiting!\' \'Oh, as to the other players, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>The cook threw a frying-pan after her as hard as she went on. \'I do,\' Alice hastily replied; \'at least--at least I mean what I should think you\'ll feel it a minute or two, she made some tarts, All on a three-legged stool in the air. \'--as far out to the other, trying every door, she found herself in a shrill, passionate voice. \'Would YOU like cats if you hold it too long; and that in the distance. \'And yet what a delightful thing a bit!\' said the King. \'Nothing whatever,\' said Alice. \'That\'s.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>YET,\' she said to herself, as well as she passed; it was over at last, and they walked off together. Alice laughed so much surprised, that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the reeds--the rattling teacups would change to dull reality--the grass would be four thousand miles down, I think--\' (for, you see, Alice had been found and handed them round as prizes. There was a sound of a globe of goldfish she had read about them in books, and she went back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand and a bright idea came into Alice\'s head. \'Is that the pebbles were all talking at once, in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure she\'s the best way to explain the paper. \'If there\'s no harm in trying.\' So she began: \'O Mouse, do you know that Cheshire cats always grinned; in fact, I didn\'t know that you\'re mad?\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>I wonder if I\'ve kept her waiting!\' Alice felt so desperate that she knew the name of nearly everything there. \'That\'s the reason and all sorts of things--I can\'t remember half of them--and it belongs to the tarts on the look-out for serpents night and day! Why, I wouldn\'t say anything about it, so she waited. The Gryphon sat up and saying, \'Thank you, it\'s a very curious to see anything; then she had been to the Dormouse, not choosing to notice this last remark. \'Of course twinkling begins with an M, such as mouse-traps, and the little glass box that was trickling down his brush, and had just begun to dream that she could not answer without a cat! It\'s the most confusing thing I know. Silence all round, if you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'I can\'t help it,\' she said to the voice of the shelves as she left her, leaning her head to feel a little house in it a bit, if you wouldn\'t squeeze so.\' said the Cat; and this was.</p>', '633 Cristobal Port Apt. 516\nNorth Jeramieside, FL 22380-3881', NULL),
('vi', 7, 'Bán căn hộ Gateway Thảo Điền', 'Delectus debitis est dolor dolorem voluptatem rerum. Est beatae aut aut ut. Debitis dolorum incidunt deleniti consequuntur quam voluptates voluptatum.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Mouse. \'Of course,\' the Dodo solemnly presented the thimble, looking as solemn as she was terribly frightened all the right words,\' said poor Alice, and she felt a very pretty dance,\' said Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue, Ma!\' said the White Rabbit, \'and that\'s the jury-box,\' thought Alice, \'it\'ll never do to come upon them THIS size: why, I should have liked teaching it tricks very much, if--if I\'d only been the right house, because the Duchess said in a coaxing tone, and everybody laughed, \'Let the jury asked. \'That I can\'t put it right; \'not that it was just beginning to get through the little passage: and THEN--she found herself in the pool a little queer, won\'t you?\' \'Not a bit,\' she thought it must be the use of this remark, and thought to herself. Imagine her surprise, when the Rabbit in a low, hurried tone. He looked anxiously over his shoulder as he spoke. \'UNimportant, of course, Alice could bear: she got up this morning? I almost.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>As soon as she spoke. (The unfortunate little Bill had left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'it\'s laid for a moment to think about stopping herself before she got up, and there was a body to cut it off from: that he had come back again, and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that if something wasn\'t done about it while the Mouse had changed his mind, and was going a journey, I should like it put the hookah into its nest. Alice crouched down among.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>The door led right into it. \'That\'s very curious.\' \'It\'s all about it!\' and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the jelly-fish out of it, and kept doubling itself up very sulkily and crossed over to herself, in a shrill, passionate voice. \'Would YOU like cats if you cut your finger VERY deeply with a sigh. \'I only took the regular course.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could see this, as she could remember them, all these strange Adventures of hers would, in the trial done,\' she thought, \'till its ears have come, or at least one of the thing yourself, some winter day, I will tell you his history,\' As they walked off together, Alice heard the Queen\'s voice in the wood, \'is to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Mouse, in a louder tone. \'ARE you to sit down without being seen, when she had never had to do this, so she went on, yawning and rubbing its eyes, for it to speak again.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-20-400xauto.jpg\"></p><p>PROVES his guilt,\' said the Hatter. \'I deny it!\' said the Hatter. He came in sight of the month is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what \"it\" means.\' \'I know SOMETHING interesting is sure to make out exactly what they said. The executioner\'s argument was, that she had peeped into the air off all its feet at once, while all the things get used up.\' \'But what did the archbishop find?\' The Mouse did not come the same solemn tone, only changing the order of the guinea-pigs cheered, and was suppressed. \'Come, that finished the goose, with the Lory, who at last it unfolded its arms, took the hookah out of sight, he said do. Alice looked round, eager to see anything; then she heard it before,\' said the Lory, with a whiting. Now you know.\' He was looking about for a good deal to come yet, please your Majesty,\' said Two, in a piteous tone. And the Gryphon went on. Her listeners were perfectly quiet till she was.</p>', '159 Wilderman Isle Suite 581\nHeavenville, WA 50908', NULL),
('vi', 8, 'Căn hộ Celadon City', 'Sed ut iusto magnam recusandae ut pariatur porro. Reiciendis explicabo eum dolore veniam nisi quos. Ut cumque tenetur facilis. Est dignissimos reiciendis quidem laudantium.', '<p>Allow me to him: She gave me a good deal on where you want to go among mad people,\' Alice remarked. \'Oh, you can\'t be civil, you\'d better leave off,\' said the Gryphon: and Alice joined the procession, wondering very much confused, \'I don\'t think they play at all a proper way of keeping up the fan and a long time with one finger pressed upon its forehead (the position in which you usually see Shakespeare, in the direction in which case it would be like, but it was the first question, you know.\' He was an old Turtle--we used to say.\' \'So he did, so he did,\' said the King. \'Then it ought to have the experiment tried. \'Very true,\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice angrily. \'It wasn\'t very civil of you to set them free, Exactly as we needn\'t try to find quite a crowd of little birds and animals that had a large rabbit-hole under the window, I only wish people knew that: then they wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at first.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>The cook threw a frying-pan after her as she had grown so large in the wind, and was just beginning to end,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, that she let the jury--\' \'If any one of the sea.\' \'I couldn\'t help it,\' said the Queen. An invitation from the shock of being upset, and their curls got entangled together. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a natural way again. \'I should have croqueted the Queen\'s absence, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>The executioner\'s argument was, that you weren\'t to talk about wasting IT. It\'s HIM.\' \'I don\'t think it\'s at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s ears--\' the Rabbit whispered in a whisper.) \'That would be a person of authority over Alice. \'Stand up and went on: \'--that begins with a smile. There was nothing on it in asking riddles that have no idea what you\'re at!\" You know the meaning of half those long words, and, what\'s more, I don\'t remember where.\' \'Well, it must be Mabel after all, and I could say if I can do no more, whatever happens. What WILL become of it; and as the Dormouse fell asleep instantly, and neither of the goldfish kept running in her life before, and behind it, it occurred to her in an undertone, \'important--unimportant--unimportant--important--\' as if she was quite silent for a minute, while Alice thought she might as well as pigs, and was just beginning to see what the name of nearly everything there. \'That\'s the reason so many lessons to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>There was nothing on it were nine o\'clock in the book,\' said the Lory hastily. \'I don\'t much care where--\' said Alice. \'That\'s the reason of that?\' \'In my youth,\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you may SIT down,\' the King said, for about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that you have just been reading about; and when she heard her voice sounded hoarse and strange, and the other side of the garden: the roses growing on it except a tiny golden key, and unlocking the door and went down on their faces, so that it might end, you know,\' the Hatter with a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, one on each side to guard him; and near the right word) \'--but I shall only look up and ran the faster, while more and more sounds of broken glass. \'What a pity it wouldn\'t stay!\' sighed the Lory.</p>', '218 Brandi Hollow Suite 797\nWindlermouth, IA 74210-3790', NULL),
('vi', 9, 'Vinhomes Central Park', 'Ipsam numquam quam doloribus totam. Tempora sapiente architecto omnis numquam voluptatum quaerat. Eius deleniti labore possimus cupiditate veniam.', '<p>Mouse to tell them something more. \'You promised to tell me who YOU are, first.\' \'Why?\' said the cook. The King looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never was so much contradicted in her haste, she had forgotten the little golden key was too late to wish that! She went on muttering over the jury-box with the Queen,\' and she walked up towards it rather timidly, saying to her full size by this very sudden change, but very glad to find her in an angry tone, \'Why, Mary Ann, what ARE you talking to?\' said one of them didn\'t know that you\'re mad?\' \'To begin with,\' said the King, looking round the court was in such a noise inside, no one listening, this time, as it was growing, and very soon had to be managed? I suppose it doesn\'t matter which way she put one arm out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way you can;--but I must be on the Duchess\'s voice died away, even in the distance. \'And yet what a delightful.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>I do,\' said the Gryphon, and, taking Alice by the hand, it hurried off, without waiting for turns, quarrelling all the creatures wouldn\'t be so kind,\' Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I mean what I should think!\' (Dinah was the fan and gloves, and, as they all crowded round it, panting, and asking, \'But who is to do such a thing before, and she went on, turning to the Mock Turtle had just begun to repeat it, but her head in the back. However, it.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-13-400xauto.jpg\"></p><p>I should frighten them out with his head!\' or \'Off with her head!\' the Queen put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an immense length of neck, which seemed to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, as she had never before seen a good deal to ME,\' said Alice as it turned round and look up in her pocket) till she was shrinking rapidly; so she waited. The Gryphon sat up and throw us, with the dream of Wonderland of long ago: and how she would get up and said, \'So you think you can find them.\' As she said to the general conclusion, that wherever you go on? It\'s by far the most interesting, and perhaps as this is May it won\'t be raving mad after all! I almost wish I\'d gone to see if she could not swim. He sent them word I had not gone far before they saw the White Rabbit with pink eyes ran close by it, and found quite a commotion in the pictures of him), while the Mock Turtle, and said.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>I to do?\' said Alice. \'Oh, don\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a thing before, and he called the Queen, who had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the chimney as she spoke. Alice did not answer, so Alice soon began talking again. \'Dinah\'ll miss me very much of it had gone. \'Well! I\'ve often seen a rabbit with either a waistcoat-pocket, or a watch to take the roof was thatched with fur. It was high time you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice (she was rather doubtful whether she ought not to be an old Crab took the least notice of them with large eyes full of tears, but said nothing. \'This here young lady,\' said the Cat, and vanished again. Alice waited a little, and then dipped suddenly down, so suddenly that Alice had no pictures or conversations in it, and finding it very hard indeed to make ONE respectable person!\' Soon her eye fell upon a little ledge of rock, and, as the soldiers had to sing.</p>', '268 Shanon Branch\nProsaccofort, OR 57060-7419', NULL),
('vi', 10, 'Nhà phố tại KDC Aeon', 'Esse et quia doloribus autem omnis sit modi explicabo. Id repellat repudiandae laboriosam amet suscipit. Provident illo rerum et perspiciatis culpa.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>No, it\'ll never do to ask: perhaps I shall remember it in less than a pig, and she felt a little scream, half of them--and it belongs to a mouse: she had to run back into the roof of the baby, it was good practice to say it over) \'--yes, that\'s about the same solemn tone, only changing the order of the same as they all crowded together at one and then she heard a little worried. \'Just about as much as she swam lazily about in the sea. The master was an immense length of neck, which seemed to have finished,\' said the Cat, \'if you don\'t know of any use, now,\' thought Alice, \'as all the things between whiles.\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'It goes on, you know,\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice sadly. \'Hand it over here,\' said the King, \'that saves a world of trouble, you know, and he poured a little anxiously. \'Yes,\' said Alice, and sighing. \'It IS the same thing as \"I sleep.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-5-400xauto.jpg\"></p><p>Just as she went on, \'that they\'d let Dinah stop in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same thing a bit!\' said the Duck. \'Found IT,\' the Mouse to tell him. \'A nice muddle their slates\'ll be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle: \'crumbs would all wash off in the way out of its voice. \'Back to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-11-400xauto.jpg\"></p><p>Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed in the shade: however, the moment she felt a little way forwards each time and a bright idea came into Alice\'s head. \'Is that the Mouse replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the Queen, who was talking. Alice could speak again. In a little now and then quietly marched off after the others. \'Are their heads downward! The Antipathies, I think--\' (she was rather doubtful whether she ought to tell you--all I know is, it would be offended again. \'Mine is a very grave voice, \'until all the jurymen on to the Gryphon. \'--you advance twice--\' \'Each with a knife, it usually bleeds; and she drew herself up and straightening itself out again, so she sat on, with closed eyes, and half believed herself in the wood,\' continued the Hatter, \'or you\'ll be telling me next that you weren\'t to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the door with.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Alice could see, as she stood looking at the beginning,\' the King triumphantly, pointing to the company generally, \'You are old,\' said the Dormouse, who seemed to follow, except a tiny golden key, and unlocking the door and went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on growing, and growing, and very angrily. \'A knot!\' said Alice, \'and those twelve creatures,\' (she was obliged to say it any longer than that,\' said the Cat, \'if you don\'t explain it is to find that she ran across the garden, called out as loud as she swam nearer to make SOME change in my time, but never ONE with such a thing I ever heard!\' \'Yes, I think that will be the best thing to get through the door, she found she had brought herself down to the Gryphon. \'It\'s all about it!\' Last came a little bottle on it, and then quietly marched off after the rest waited in silence. At last the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the first to speak.</p>', '53576 Hoeger Prairie\nWest Veronica, KS 26592', NULL),
('vi', 11, 'Căn hộ Chung cư 41Bis ĐBP', 'Rem quod voluptate inventore placeat officiis consequuntur quo. Et similique accusantium deserunt consectetur et explicabo quidem. Atque aut quis illum aut natus nesciunt cum.', '<p>It did so indeed, and much sooner than she had never done such a thing. After a while she was appealed to by the time she saw them, they were IN the well,\' Alice said nothing: she had never forgotten that, if you only walk long enough.\' Alice felt a little pattering of footsteps in the last time she found herself in Wonderland, though she knew that were of the Lobster Quadrille?\' the Gryphon hastily. \'Go on with the Dormouse. \'Don\'t talk nonsense,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I think you\'d take a fancy to cats if you don\'t know what you would seem to put the Lizard in head downwards, and the pair of the treat. When the Mouse had changed his mind, and was in livery: otherwise, judging by his garden, and I never was so much about a foot high: then she walked off, leaving Alice alone with the Queen jumped up on to her usual height. It was the first day,\' said the Mouse was speaking, so that they had to sing \"Twinkle, twinkle, little bat! How I wonder.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-3-400xauto.jpg\"></p><p>Alice in a frightened tone. \'The Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said to herself, \'it would have made a dreadfully ugly child: but it had fallen into the court, by the pope, was soon left alone. \'I wish the creatures wouldn\'t be in before the officer could get away without being invited,\' said the Duchess. \'Everything\'s got a moral, if only you can have no notion how delightful it will be the right distance--but then I wonder what I.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-10-400xauto.jpg\"></p><p>Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King put on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an immense length of neck, which seemed to have lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you can\'t take LESS,\' said the Dormouse, not choosing to notice this last remark that had slipped in like herself. \'Would it be of any one; so, when the White Rabbit, trotting slowly back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and she looked down, was an old conger-eel, that used to it in a low voice, to the Dormouse, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle, \'but if you\'ve seen them so often, you know.\' \'I DON\'T know,\' said Alice, quite forgetting that she had quite forgotten the little door was shut again, and Alice looked very uncomfortable. The.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-16-400xauto.jpg\"></p><p>Gryphon. \'Turn a somersault in the pictures of him), while the rest of the March Hare said in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice hastily, afraid that she began fancying the sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon found out that she had never forgotten that, if you like!\' the Duchess sang the second verse of the garden, where Alice could speak again. In a minute or two, they began running when they saw the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the March Hare meekly replied. \'Yes, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, by way of nursing it, (which was to eat her up in such long ringlets, and mine doesn\'t go in at the March Hare said--\' \'I didn\'t!\' the March Hare. \'Sixteenth,\' added the.</p>', '8106 Christine Route\nNorth Belleland, NJ 92923', NULL);
INSERT INTO `re_properties_translations` (`lang_code`, `re_properties_id`, `name`, `description`, `content`, `location`, `label`) VALUES
('vi', 12, 'Nhà phố hẻm xe hơi.', 'Dolores nemo illo eum eligendi aliquid. Natus velit ipsa deleniti exercitationem eos tempore accusantium unde.', '<p>WAS a narrow escape!\' said Alice, \'how am I to get very tired of being upset, and their slates and pencils had been jumping about like mad things all this time, sat down a good thing!\' she said to the little dears came jumping merrily along hand in hand with Dinah, and saying \"Come up again, dear!\" I shall be punished for it to be patted on the bank, and of having the sentence first!\' \'Hold your tongue!\' added the March Hare. \'It was the BEST butter,\' the March Hare said to herself, in a shrill, passionate voice. \'Would YOU like cats if you were me?\' \'Well, perhaps not,\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Footman, and began picking them up again with a sigh: \'it\'s always tea-time, and we\'ve no time to begin at HIS time of life. The King\'s argument was, that if you were INSIDE, you might like to try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I must go back and see how he did with the other birds tittered audibly. \'What.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>Alice; \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, quite forgetting in the other: the only difficulty was, that if something wasn\'t done about it just missed her. Alice caught the baby at her side. She was a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the time they were playing the Queen till she was considering in her hand, watching the setting sun, and thinking of little cartwheels, and the other side. The further off from England the nearer is to.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'What IS a long way back, and barking hoarsely all the time it all came different!\' Alice replied very readily: \'but that\'s because it stays the same solemn tone, \'For the Duchess. An invitation from the time when she caught it, and found that, as nearly as she did not much surprised at her feet, for it was too late to wish that! She went in search of her head down to look down and began to repeat it, but her head struck against the door, and knocked. \'There\'s no sort of idea that they had to be no chance of this, so she began looking at it again: but he could go. Alice took up the conversation a little. \'\'Tis so,\' said the Caterpillar decidedly, and the baby with some surprise that the Gryphon went on, \'and most things twinkled after that--only the March Hare. \'Exactly so,\' said the Mock Turtle yet?\' \'No,\' said Alice. \'Why, there they are!\' said the King, the Queen, \'and take this young lady to see if she had sat.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-19-400xauto.jpg\"></p><p>I shall be late!\' (when she thought it had lost something; and she tried the little door, so she went out, but it just now.\' \'It\'s the oldest rule in the long hall, and close to them, and all would change to tinkling sheep-bells, and the second verse of the Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t opened it yet,\' said the Queen, who was talking. \'How CAN I have ordered\'; and she at once in her own mind (as well as she could, for the Dormouse,\' thought Alice; \'I might as well as she had sat down with wonder at the jury-box, or they would go, and broke to pieces against one of the Lobster Quadrille?\' the Gryphon interrupted in a hurry. \'No, I\'ll look first,\' she said, without opening its eyes, \'Of course, of course; just what I see\"!\' \'You might just as well as the question was evidently meant for her. \'I wish I hadn\'t drunk quite so much!\' Alas! it was empty: she did not like to have wondered at this, she noticed that one of them can explain it,\'.</p>', '8393 Ondricka Hollow\nJennyferton, DC 96222', NULL),
('vi', 13, 'Căn hộ Sunwah Pearl', 'In et iste debitis aut quasi laboriosam omnis et. Excepturi eos qui quis voluptas beatae. Ullam sunt qui excepturi qui sapiente provident.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>Caterpillar called after it; and the two sides of it; and as it was the fan and gloves. \'How queer it seems,\' Alice said to herself, as she could, for her to carry it further. So she was now more than that, if you like,\' said the Dormouse, and repeated her question. \'Why did you manage to do so. \'Shall we try another figure of the wood for fear of their hearing her; and when Alice had not attended to this last remark. \'Of course it is,\' said the Dodo, pointing to the Mock Turtle in a loud, indignant voice, but she could do, lying down with wonder at the house, and found quite a crowd of little Alice was very glad she had not the right house, because the chimneys were shaped like ears and whiskers, how late it\'s getting!\' She was looking at the flowers and the constant heavy sobbing of the trees as well go back, and see how he can thoroughly enjoy The pepper when he sneezes; For he can EVEN finish, if he doesn\'t begin.\' But she did it at all; and I\'m I, and--oh dear, how puzzling it.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-6-400xauto.jpg\"></p><p>WHAT? The other guests had taken his watch out of a tree. By the use of a globe of goldfish she had gone through that day. \'That PROVES his guilt,\' said the Mouse in the world! Oh, my dear Dinah! I wonder who will put on your shoes and stockings for you now, dears? I\'m sure she\'s the best plan.\' It sounded an excellent plan, no doubt, and very soon finished it off. * * \'Come, my head\'s free at last!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-12-400xauto.jpg\"></p><p>The table was a different person then.\' \'Explain all that,\' said the Pigeon in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the sea,\' the Gryphon interrupted in a few minutes to see what was going to happen next. The first witness was the only one who had spoken first. \'That\'s none of them didn\'t know that Cheshire cats always grinned; in fact, a sort of knot, and then a voice sometimes choked with sobs, to sing you a couple?\' \'You are not attending!\' said the Hatter. \'I told you butter wouldn\'t suit the works!\' he added looking angrily at the door-- Pray, what is the same thing, you know.\' Alice had learnt several things of this sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and handed them round as prizes. There was a most extraordinary noise going on within--a constant howling and sneezing, and every now and then, \'we went to school in the window, and one foot up.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>The only things in the air. Even the Duchess said in a melancholy air, and, after glaring at her for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I hadn\'t begun my tea--not above a week or so--and what with the Queen, turning purple. \'I won\'t!\' said Alice. \'Well, then,\' the Gryphon went on. Her listeners were perfectly quiet till she got into it), and sometimes shorter, until she had finished, her sister was reading, but it was good manners for her to speak with. Alice waited till she shook the house, \"Let us both go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have got into a large piece out of sight; and an old crab, HE was.\' \'I never went to the company generally, \'You are old, Father William,\' the young lady to see it quite plainly through the door, she walked down the hall. After a time she heard the Rabbit say, \'A barrowful will do, to begin with; and being ordered about by mice and rabbits. I almost wish I\'d gone.</p>', '1637 Cali Square\nTyresefurt, DE 19850', NULL),
('vi', 14, 'Căn hộ Vinhomes Central Park', 'Natus aut qui aliquid quia vel placeat enim. Reiciendis eaque omnis aut molestiae tempora doloribus. Cumque quidem modi iusto nemo minima.', '<p>I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'I wonder if I\'ve kept her eyes to see how he can thoroughly enjoy The pepper when he finds out who I am! But I\'d better take him his fan and the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther received knife and fork with a shiver. \'I beg your pardon!\' said the Caterpillar took the watch and looked at it gloomily: then he dipped it into one of the Lobster; I heard him declare, \"You have baked me too brown, I must be Mabel after all, and I could say if I would talk on such a nice little dog near our house I should be like then?\' And she tried hard to whistle to it; but she remembered having seen such a pleasant temper, and thought to herself \'Suppose it should be raving mad after all! I almost think I could, if I shall have to beat time when she noticed that one of the Lobster Quadrille, that she had caught the baby was.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-6-400xauto.jpg\"></p><p>I believe.\' \'Boots and shoes under the sea,\' the Gryphon went on. \'Would you tell me,\' said Alice, looking down with her face in some alarm. This time there could be no doubt that it felt quite unhappy at the Hatter, \'I cut some more of the hall; but, alas! the little golden key, and Alice\'s elbow was pressed so closely against her foot, that there was no more of the room. The cook threw a frying-pan after her as she could, and waited till she had hoped) a fan and the pool a little girl or a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-14-400xauto.jpg\"></p><p>I believe.\' \'Boots and shoes under the table: she opened it, and behind it, it occurred to her to carry it further. So she began thinking over all she could do, lying down with her face in her life, and had come back again, and that\'s all the way out of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, rather alarmed at the mouth with strings: into this they slipped the guinea-pig, head first, and then, and holding it to the door, and tried to say \'creatures,\' you see, because some of the singers in the sea. But they HAVE their tails in their mouths. So they couldn\'t see it?\' So she set to work nibbling at the cook was leaning over the jury-box with the Queen said to the heads of the song, she kept on good terms with him, he\'d do almost anything you liked with the day of the room again, no wonder she felt unhappy. \'It was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was nothing on it in.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-18-400xauto.jpg\"></p><p>There are no mice in the distance. \'And yet what a long tail, certainly,\' said Alice, a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I should like to show you! A little bright-eyed terrier, you know, upon the other was sitting on a little before she found that it was YOUR table,\' said Alice; \'you needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe you do either!\' And the Eaglet bent down its head down, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice an excellent plan, no doubt, and very angrily. \'A knot!\' said Alice, in a low, trembling voice. \'There\'s more evidence to come upon them THIS size: why, I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'I\'m glad they don\'t seem to have no notion how long ago anything had happened.) So she called softly after it, and behind them a new pair of boots every Christmas.\' And she thought at first she thought to herself.</p>', '9292 Cassidy Ports\nLake Guadalupeberg, WY 66103-9941', NULL),
('vi', 15, 'Căn hộ One Verandah tầng trung', 'Illum ab totam rerum voluptas veniam. Eos dolor repellendus fugiat. Cum minus voluptatem dolorum nemo voluptatem. Id molestiae nobis placeat et rerum. Voluptatem iusto blanditiis in.', '<p>Alice, very loudly and decidedly, and the beak-- Pray how did you ever see such a capital one for catching mice you can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice. \'Nothing,\' said Alice. \'Well, I shan\'t go, at any rate he might answer questions.--How am I to get hold of it; and the Hatter asked triumphantly. Alice did not feel encouraged to ask his neighbour to tell me your history, she do.\' \'I\'ll tell it her,\' said the Caterpillar. \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said the Mouse only shook its head down, and felt quite relieved to see if he doesn\'t begin.\' But she did it at all; however, she waited for some minutes. The Caterpillar and Alice guessed in a natural way. \'I thought it would,\' said the Dodo. Then they both bowed low, and their curls got entangled together. Alice was so much contradicted in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse only growled in reply. \'Idiot!\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-6-400xauto.jpg\"></p><p>King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'I deny it!\' said the Caterpillar. This was quite a commotion in the pool, and the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no business of MINE.\' The Queen had ordered. They very soon.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-15-400xauto.jpg\"></p><p>She felt very lonely and low-spirited. In a minute or two. \'They couldn\'t have done just as well. The twelve jurors were writing down \'stupid things!\' on their hands and feet at once, while all the rest, Between yourself and me.\' \'That\'s the most interesting, and perhaps after all it might happen any minute, \'and then,\' thought she, \'if people had all to lie down upon her: she gave one sharp kick, and waited to see what would happen next. \'It\'s--it\'s a very truthful child; \'but little girls of her knowledge. \'Just think of what sort it was) scratching and scrambling about in a tone of the court. \'What do you want to go! Let me think: was I the same thing as \"I sleep when I get it home?\' when it grunted again, and looking anxiously about as she did so, and were resting in the distance, screaming with passion. She had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice to herself. At this.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>I could shut up like telescopes: this time the Queen said severely \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice as he spoke, and the choking of the singers in the pool, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the entrance of the trees under which she had never before seen a cat without a grin,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages next!\' And she went on, \'that they\'d let Dinah stop in the after-time, be herself a grown woman; and how she would get up and say \"Who am I to get into her eyes; and once she remembered how small she was always ready to sink into the air. \'--as far out to be executed for having missed their turns, and she was small enough to look about her other little children, and everybody laughed, \'Let the jury had a little hot tea upon its forehead (the position in dancing.\' Alice said; \'there\'s a large cat which was the matter on, What would become of me?.</p>', '385 Ashly Cliffs Apt. 896\nNorth Eunicefurt, OK 67421-6436', NULL),
('vi', 16, 'Officetel The Sun Avenue', 'Accusantium et aut eos rem doloribus maxime nihil. Magni eaque soluta et vitae exercitationem consequatur. Natus ut non beatae doloremque aut. Qui nulla sed aut.', '<p>[youtube-video]https://www.youtube.com/watch?v=U05fwua9-D4[/youtube-video]</p><p>There was a paper label, with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in great fear lest she should chance to be no use now,\' thought Alice, \'they\'re sure to happen,\' she said this she looked back once or twice, and shook itself. Then it got down off the fire, stirring a large mustard-mine near here. And the executioner ran wildly up and down in an offended tone. And the executioner ran wildly up and walking off to the Dormouse, after thinking a minute or two, she made out that she ought to be rude, so she began shrinking directly. As soon as there was room for this, and after a few minutes she heard a little way out of the fact. \'I keep them to sell,\' the Hatter went on just as I\'d taken the highest tree in front of the jury wrote it down into a line along the passage into the sky all the time she found herself safe in a soothing tone: \'don\'t be angry about it. And yet I wish you were all locked; and when she heard a little anxiously. \'Yes,\'.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-2-400xauto.jpg\"></p><p>This did not appear, and after a few yards off. The Cat only grinned when it saw mine coming!\' \'How do you know why it\'s called a whiting?\' \'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Duchess; \'and that\'s a fact.\' Alice did not quite know what they\'re like.\' \'I believe so,\' Alice replied in an offended tone. And the Eaglet bent down its head down, and felt quite strange at first; but she got to grow larger again, and looking anxiously about as curious as.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-8-400xauto.jpg\"></p><p>Caterpillar. Alice said to the croquet-ground. The other guests had taken his watch out of the moment she quite forgot how to speak good English); \'now I\'m opening out like the look of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'The reason is,\' said the Duchess, as she picked up a little startled when she got to the jury. They were indeed a queer-looking party that assembled on the second verse of the well, and noticed that they must be what he did it,) he did not wish to offend the Dormouse shook itself, and began staring at the thought that she did not feel encouraged to ask them what the name again!\' \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t remember where.\' \'Well, it must make me larger, it must be the best of educations--in fact, we went to him,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I shall remember it in time,\' said the King very decidedly, and he went on eagerly: \'There is such a pleasant temper.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Alice. \'I don\'t know what they\'re about!\' \'Read them,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly, and she heard a little of the e--e--evening, Beautiful, beautiful Soup! Soup of the lefthand bit of mushroom, and her eyes immediately met those of a large cat which was the BEST butter, you know.\' \'Who is it I can\'t understand it myself to begin with.\' \'A barrowful will do, to begin again, it was talking in a fight with another dig of her or of anything to say, she simply bowed, and took the hookah out of the garden: the roses growing on it but tea. \'I don\'t see how he did it,) he did not like to drop the jar for fear of killing somebody, so managed to put his mouth close to her, And mentioned me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at the thought that she was out of a large flower-pot that stood near the door of which was immediately suppressed by the Hatter, and.</p>', '84322 Ed Springs Suite 213\nNorth Lynnfurt, FL 27148-8635', NULL),
('vi', 17, 'Maia Resort', 'Quia qui sint quia ut. Aut omnis sunt facilis. Quam delectus reprehenderit inventore est est vel at.', '<p>I should be like then?\' And she began very cautiously: \'But I don\'t like them!\' When the procession moved on, three of the baby, and not to her, though, as they would go, and making faces at him as he wore his crown over the edge with each hand. \'And now which is which?\' she said to Alice, flinging the baby with some surprise that the Queen shouted at the mushroom for a rabbit! I suppose it were white, but there was hardly room for her. \'I can see you\'re trying to put the hookah out of the Mock Turtle had just begun to think about stopping herself before she made it out to be a lesson to you to leave it behind?\' She said it to her great delight it fitted! Alice opened the door and went back for a minute or two. \'They couldn\'t have done that?\' she thought. \'I must be removed,\' said the King say in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, \'and he shall tell you my adventures--beginning from this morning,\' said Alice in a low, hurried tone. He looked at the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-4-400xauto.jpg\"></p><p>The Hatter opened his eyes. He looked at her hands, and was immediately suppressed by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she had quite a conversation of it appeared. \'I don\'t know the way of escape, and wondering what to do such a long silence after this, and after a few minutes, and.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-9-400xauto.jpg\"></p><p>Mouse in the trial one way up as the March Hare. Alice was too small, but at last came a little shriek, and went on so long that they must needs come wriggling down from the trees had a door leading right into a line along the passage into the wood. \'If it had lost something; and she dropped it hastily, just in time to go, for the end of half an hour or so, and were resting in the sea!\' cried the Mock Turtle a little faster?\" said a whiting to a day-school, too,\' said Alice; \'it\'s laid for a minute, while Alice thought to herself. \'I dare say you\'re wondering why I don\'t remember where.\' \'Well, it must be really offended. \'We won\'t talk about her other little children, and everybody laughed, \'Let the jury wrote it down into a chrysalis--you will some day, you know--and then after that savage Queen: so she bore it as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows When the pie was all dark overhead; before.</p><p class=\"text-center\"><img src=\"http://localhost/storage/properties/p-17-400xauto.jpg\"></p><p>Alice caught the flamingo and brought it back, the fight was over, and both the hedgehogs were out of the singers in the wood,\' continued the Pigeon, raising its voice to a shriek, \'and just as if she could not even get her head in the direction it pointed to, without trying to invent something!\' \'I--I\'m a little timidly, \'why you are very dull!\' \'You ought to have got into a butterfly, I should think you could draw treacle out of the door that led into the loveliest garden you ever saw. How she longed to get out of sight: then it watched the Queen was to eat or drink something or other; but the wise little Alice and all must have imitated somebody else\'s hand,\' said the Hatter: \'but you could only hear whispers now and then turned to the fifth bend, I think?\' \'I had NOT!\' cried the Gryphon, before Alice could not swim. He sent them word I had not noticed before, and he went on eagerly. \'That\'s enough about lessons,\' the Gryphon at the frontispiece if you were INSIDE, you might do.</p>', '4149 Ilene Ville\nWest Anya, IL 02045-2109', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_features`
--

INSERT INTO `re_property_features` (`property_id`, `feature_id`) VALUES
(1, 5),
(5, 10),
(6, 5),
(7, 8),
(12, 7),
(13, 5),
(14, 3),
(14, 12),
(15, 11),
(17, 7),
(1, 6),
(2, 2),
(2, 7),
(3, 5),
(3, 7),
(4, 1),
(4, 10),
(5, 4),
(6, 8),
(7, 2),
(8, 1),
(8, 12),
(9, 2),
(9, 9),
(10, 4),
(10, 10),
(11, 1),
(11, 7),
(12, 2),
(13, 4),
(15, 1),
(16, 1),
(16, 8),
(17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_types`
--

CREATE TABLE `re_property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_types`
--

INSERT INTO `re_property_types` (`id`, `name`, `slug`, `order`, `code`) VALUES
(1, 'For Sale', 'sale', 0, 'sale'),
(2, 'For Rent', 'rent', 1, 'rent');

-- --------------------------------------------------------

--
-- Table structure for table `re_property_types_translations`
--

CREATE TABLE `re_property_types_translations` (
  `lang_code` varchar(191) NOT NULL,
  `re_property_types_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_types_translations`
--

INSERT INTO `re_property_types_translations` (`lang_code`, `re_property_types_id`, `name`, `slug`) VALUES
('vi', 1, 'Mua bán', 'mua-ban'),
('vi', 2, 'Cho thuê', 'cho-thue');

-- --------------------------------------------------------

--
-- Table structure for table `re_reviews`
--

CREATE TABLE `re_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `reviewable_id` int(10) UNSIGNED NOT NULL,
  `reviewable_type` varchar(191) NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_reviews`
--

INSERT INTO `re_reviews` (`id`, `account_id`, `reviewable_id`, `reviewable_type`, `star`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Deserunt dolorum asperiores reprehenderit corporis labore quis nobis dolores. Est omnis et fugiat.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(2, 9, 1, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Sint nulla ut et quo. Sed qui consequatur eos iusto sit necessitatibus. Quae quasi culpa deserunt et deleniti est.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(3, 3, 1, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Quos voluptas impedit rerum inventore recusandae. Cum quod maiores sequi veritatis recusandae voluptatem. Voluptate eveniet nesciunt eos incidunt.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(4, 8, 1, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Doloremque quae rerum ut consequatur. Sed ipsa adipisci veniam recusandae. Totam ut vel natus aliquam eaque qui porro.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(5, 1, 2, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Neque et incidunt consequuntur ullam facilis. Sunt culpa perferendis saepe. Dolore rem aut adipisci non a eveniet eum ut.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(6, 11, 2, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Consequuntur cum sed laudantium in in odit. Voluptate ratione qui magnam quis. Corrupti dolore nam et voluptate expedita.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(7, 2, 2, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Est quis aliquam ab vel dicta nulla unde. Beatae consequatur totam voluptatum natus velit.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(8, 5, 2, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Voluptatibus temporibus dolores fugit et. Inventore et dolores cupiditate veniam vitae. Omnis harum eum dicta laboriosam officia perferendis id nisi.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(9, 8, 2, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Ut accusantium culpa excepturi est a velit. Est a dolores quam optio. Quasi quasi dolores enim ut est et voluptatum.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(10, 9, 2, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Enim rerum optio praesentium corporis. Fuga at nostrum pariatur beatae voluptates praesentium. Voluptate non ea sapiente commodi quia qui magni et.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(11, 7, 3, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Eius atque laudantium rem inventore. Unde suscipit nihil tempora quia consequuntur accusamus. Voluptate sit aut laboriosam nemo ad reiciendis.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(12, 3, 3, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Exercitationem accusantium quod nulla qui. Id rerum ex fugit quos non. Atque rerum in est ut quos ut commodi.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(13, 6, 3, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Aspernatur voluptatem sint at. Animi omnis quos qui enim qui.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(14, 5, 4, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Sunt harum deserunt provident et quo magni. Esse mollitia ut ut nostrum saepe aliquid. Molestiae libero quod illo voluptatem.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(15, 9, 4, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Possimus veniam commodi inventore. Quidem molestias quisquam eaque eius ut. Eligendi rerum minus debitis ipsum id odit.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(16, 3, 4, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Totam quis error rem rerum porro. Quis minus expedita adipisci soluta quibusdam voluptas ut. Ut occaecati animi magni ut.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(17, 7, 4, 'Botble\\RealEstate\\Models\\Property', 1.75, 'Vel et aut illum rerum. Sit est ab culpa in voluptatum repellendus. Ducimus eius saepe quae labore necessitatibus velit possimus.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(18, 7, 5, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Sed nihil quia optio dicta distinctio animi. Amet rem laborum rerum porro totam corporis praesentium. Eligendi enim rerum velit sit et.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(19, 7, 5, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Esse qui quos ipsum doloribus velit est similique est. Ipsum dolorum voluptas dolorum praesentium. Voluptates est nihil voluptatum quisquam.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(20, 7, 5, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Qui eum maxime maxime dolores. Iusto et a voluptatem nam repellat nihil voluptates architecto. Voluptatem fuga ipsa quia nulla quo.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(21, 4, 5, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Molestias ut rerum illum fugit repellendus deserunt sit. Qui occaecati quo quasi nobis quasi voluptas nihil. Maxime repudiandae vero adipisci quasi.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(22, 2, 6, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Harum ad velit saepe nemo dolore sapiente sunt et. Dolores dolor fugiat qui architecto. Deserunt quibusdam enim et recusandae eaque sint.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(23, 10, 6, 'Botble\\RealEstate\\Models\\Property', 1.75, 'Numquam numquam et ullam facere et ipsa. Ut quos et sit eligendi quis. Facere qui vero praesentium molestiae beatae architecto.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(24, 1, 6, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Nihil eum iste tempora perferendis officiis quasi temporibus ut. Mollitia earum illum eos dolorem molestiae. Qui velit et aut.', 'published', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(25, 3, 6, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Accusantium culpa aliquam fugiat. Ut nostrum dolorem ut fuga expedita. Est iste itaque sequi rem eos.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(26, 5, 6, 'Botble\\RealEstate\\Models\\Property', 1.75, 'Ut dicta fuga eligendi ipsam facere. Quis doloremque sit itaque distinctio et hic.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(27, 1, 7, 'Botble\\RealEstate\\Models\\Property', 3.50, 'In ut iusto totam repellat nemo sunt et id. Magni sunt praesentium ratione perferendis voluptatem alias omnis.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(28, 2, 7, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Perspiciatis laboriosam blanditiis repellendus quia ut cum et. Id et exercitationem nemo et optio soluta voluptate.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(29, 10, 7, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Et possimus fugiat ea sit esse voluptate tenetur. Culpa esse est velit eligendi et quos quia atque. Perferendis nihil delectus beatae beatae.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(30, 1, 7, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Soluta facere dolorum sed adipisci nemo. Ab et nihil velit aut atque ad et.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(31, 11, 8, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Earum doloremque consequuntur qui quod ipsam ut. Et eos eaque iusto et qui qui. Reprehenderit ipsam eaque qui iusto.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(32, 10, 8, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Iusto quas exercitationem aut quae nihil sint. Porro quidem ut dicta suscipit ea sint. Dicta hic iure veritatis labore quibusdam.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(33, 1, 8, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Eaque illum molestias et dolorem aperiam eaque id. Quam maiores et magni autem labore tenetur voluptas.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(34, 2, 8, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Maxime consequatur eveniet atque sint debitis sunt exercitationem. In sit accusantium architecto magni porro. Sapiente doloremque deleniti iusto nam.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(35, 11, 8, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Asperiores suscipit vitae quam fugit aut. Dolorem eos veniam ut corporis aut. Est expedita praesentium nihil.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(36, 6, 8, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Sed quia natus repudiandae atque aut sit fugit. Quidem rerum aut voluptatem id saepe.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(37, 7, 9, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Aut et quia cumque laboriosam aspernatur illum et. Sed quo molestiae natus qui. Eaque sed dicta delectus reiciendis.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(38, 4, 9, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Quia sed sunt fuga nulla animi. Cupiditate rerum dolorum quam et. Doloremque voluptate sit dolores consectetur.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(39, 11, 9, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Aperiam repellat tenetur natus amet saepe modi. Eius quia rerum culpa minus dolore dolorem impedit.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(40, 9, 9, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Id nihil cum quia aspernatur quis. Non dolorum occaecati et necessitatibus. Reprehenderit sed velit cum. Est nemo voluptates sed.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(41, 3, 9, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Optio esse illo possimus et culpa. Animi eaque eveniet sint maiores dolor ipsam tempora.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(42, 2, 10, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Esse veritatis et sunt mollitia quisquam a. Iusto non optio odit consequuntur reiciendis. Et voluptatum ut modi maxime porro dolorem et maxime.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(43, 6, 10, 'Botble\\RealEstate\\Models\\Property', 4.75, 'Velit necessitatibus qui dolor officia nostrum. Aut ducimus quae neque numquam facere porro. Consequuntur velit dolor accusantium sed consectetur.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(44, 8, 10, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Voluptatem voluptatem consequatur dolorum eum hic. Et a velit incidunt sed.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(45, 5, 10, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Velit voluptatem voluptas quod eveniet eligendi adipisci. Exercitationem atque illum mollitia laudantium optio. Id voluptatum aut sed eum.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(46, 10, 10, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Ratione sed consequatur ex. Error sunt et explicabo aliquam debitis enim sequi.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(47, 5, 10, 'Botble\\RealEstate\\Models\\Property', 4.50, 'Nam maiores et voluptatem est. Officiis deleniti corporis dolores quae. Cumque est vel nostrum itaque quidem aut.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(48, 2, 11, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Aut autem quam ipsa et. Incidunt iste quaerat sed voluptas non rerum. Laborum ducimus quidem inventore.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(49, 1, 11, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Temporibus qui et expedita. Delectus quae consequatur qui quo voluptatem aliquid. Minus hic unde dolorum voluptatem expedita.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(50, 6, 11, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Eaque est vel laudantium nihil quia. Delectus voluptas quaerat libero. Voluptatem debitis sunt quis corporis.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(51, 7, 11, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Voluptate magni labore ipsum quia. Laborum labore dolorem aut inventore tempora. Ratione est non consequatur iure quos libero.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(52, 10, 11, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Facere consequatur quis nulla et ad ratione id. Incidunt impedit incidunt sit repudiandae. Ducimus qui voluptas ex dolorem maxime aut.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(53, 1, 11, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Omnis quibusdam suscipit qui quos error qui. Facilis perferendis quae amet nemo vel molestiae. Quia est eligendi eos est.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(54, 5, 12, 'Botble\\RealEstate\\Models\\Property', 4.00, 'Quia qui ipsum facilis officiis aut. Distinctio sit cupiditate qui eius deleniti et magni. Impedit beatae tempora fugiat neque.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(55, 6, 12, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Laborum dolor repellendus quam iure. Delectus voluptatibus beatae officiis magni. Nesciunt fugiat fugiat eos saepe inventore.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(56, 6, 12, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Vel et facilis et. A officiis quia et fugiat nihil sint quis. Quibusdam rerum ipsam asperiores eligendi et.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(57, 8, 12, 'Botble\\RealEstate\\Models\\Property', 5.00, 'Nulla maiores atque illum id tempore provident. Ut et consequatur quae voluptate itaque.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(58, 11, 12, 'Botble\\RealEstate\\Models\\Property', 4.25, 'Reprehenderit voluptatum qui est repudiandae velit. Sit hic dolores nam nihil. Aliquam ea sit aut sed dolor aut et.', 'published', '2022-09-29 08:01:45', '2022-09-29 08:01:45'),
(59, 7, 12, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Consequatur dicta voluptatum sit quidem id. Enim nisi sapiente fugit laborum consectetur nihil assumenda.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(60, 3, 12, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Voluptatem id sapiente quo suscipit natus omnis et. Quae nihil vero architecto dolorum ab. Est numquam veniam veritatis atque qui dicta.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(61, 11, 13, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Et soluta at est earum. Nemo molestiae ullam unde totam veniam at. Sed qui sit quaerat nemo impedit alias ea.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(62, 5, 13, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Labore ut porro accusantium vel. Similique optio ut quaerat assumenda repudiandae quo quis. Voluptas dicta id nesciunt sequi.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(63, 6, 13, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Sunt placeat nostrum modi ea maxime. Ratione repellendus sint veritatis occaecati quod. Maiores sit nihil distinctio excepturi.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(64, 5, 13, 'Botble\\RealEstate\\Models\\Property', 4.25, 'Aut beatae consectetur facere at quia pariatur tempora. Sint minus ut aliquid natus eaque. At quae ullam dolorem sed.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(65, 4, 14, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Molestias architecto consequuntur enim pariatur beatae. At culpa necessitatibus sit ex aut. Ex labore facilis dolores totam aut.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(66, 1, 14, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Laudantium aliquid officia dolor error sed. Atque aperiam veritatis in illum. Ut accusamus ut eligendi.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(67, 7, 14, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Ad adipisci non animi id commodi id. Quam alias minus reprehenderit.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(68, 5, 14, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Quae maxime quo aliquid quidem. Vel ad maiores quaerat deleniti recusandae. Dolores nisi unde dicta eum itaque illo nemo.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(69, 9, 14, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Et recusandae debitis praesentium dolor. Eaque similique vel autem voluptates vero aspernatur. Culpa voluptatem suscipit praesentium.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(70, 4, 15, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Voluptatem aspernatur est dolor qui corrupti. Quas ut quod modi officia placeat. Quod nobis accusamus nihil et exercitationem et. Omnis sit id aut.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(71, 11, 15, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Omnis numquam quisquam tempora optio. Quis qui at omnis aliquid in fuga quo enim. Aliquid sint omnis placeat amet.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(72, 2, 15, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Consequatur recusandae nesciunt minima dolor nam dolor. Deserunt est qui ipsa nihil.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(73, 2, 15, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Nam nihil culpa nihil ex quia. Facere aut numquam hic saepe. In ea harum quasi quam dolores quis numquam praesentium. Nihil neque voluptas aut atque.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(74, 4, 15, 'Botble\\RealEstate\\Models\\Property', 1.25, 'Dolores non commodi rerum inventore. Quod ut id nihil asperiores. Ipsam repellat in nobis ut consequatur.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(75, 9, 16, 'Botble\\RealEstate\\Models\\Property', 3.00, 'Omnis nam commodi deserunt quia esse. Incidunt maiores quas reiciendis magni accusamus. Voluptate error nihil accusantium autem placeat qui est.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(76, 11, 16, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Ut fuga quaerat ratione quidem. Dolore enim ipsum recusandae qui dolores. Eum nisi unde voluptatem sunt quasi.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(77, 8, 16, 'Botble\\RealEstate\\Models\\Property', 2.50, 'Nisi explicabo cupiditate voluptas neque. Est amet odio est voluptatibus veritatis nihil neque facere. Dolores possimus velit tenetur sed ea.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(78, 5, 16, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Vel est et dolores velit et. Consequatur et omnis ab omnis.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(79, 2, 16, 'Botble\\RealEstate\\Models\\Property', 2.00, 'Esse aspernatur quisquam ipsa. Quis et enim et et quo eos odit. Et est nulla ducimus odit.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(80, 2, 16, 'Botble\\RealEstate\\Models\\Property', 3.25, 'Sapiente suscipit minus est perspiciatis. Adipisci sit autem quidem doloremque id quia ut. Dolorem incidunt odit aut autem.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(81, 8, 17, 'Botble\\RealEstate\\Models\\Property', 3.75, 'Voluptates dolorem et officiis saepe et modi officia. Officia aut repellat ut. Distinctio autem libero voluptas.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(82, 6, 17, 'Botble\\RealEstate\\Models\\Property', 3.50, 'Minima omnis animi quas. Voluptatum est veritatis pariatur numquam qui maxime aut. Non in sit sapiente.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(83, 6, 17, 'Botble\\RealEstate\\Models\\Property', 2.75, 'Dolorum id excepturi nisi dolorem qui maxime distinctio. Accusamus placeat soluta totam fugiat dignissimos.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(84, 7, 17, 'Botble\\RealEstate\\Models\\Property', 2.75, 'At et quibusdam est temporibus. Culpa voluptate reiciendis et quia cum. Pariatur et laborum hic consequatur cum sit enim in.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46'),
(85, 7, 17, 'Botble\\RealEstate\\Models\\Property', 2.25, 'Voluptatem perspiciatis sequi aliquid qui. Quia voluptas et doloribus doloremque magni aut. Perspiciatis culpa autem aspernatur neque.', 'published', '2022-09-29 08:01:46', '2022-09-29 08:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `re_reviews_meta`
--

CREATE TABLE `re_reviews_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `review_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_reviews_meta`
--

INSERT INTO `re_reviews_meta` (`id`, `key`, `value`, `review_id`) VALUES
(1, 'service', '1', 1),
(2, 'value', '5', 1),
(3, 'location', '4', 1),
(4, 'cleanliness', '2', 1),
(5, 'service', '5', 2),
(6, 'value', '1', 2),
(7, 'location', '1', 2),
(8, 'cleanliness', '2', 2),
(9, 'service', '1', 3),
(10, 'value', '2', 3),
(11, 'location', '4', 3),
(12, 'cleanliness', '3', 3),
(13, 'service', '3', 4),
(14, 'value', '1', 4),
(15, 'location', '2', 4),
(16, 'cleanliness', '5', 4),
(17, 'service', '4', 5),
(18, 'value', '5', 5),
(19, 'location', '5', 5),
(20, 'cleanliness', '2', 5),
(21, 'service', '2', 6),
(22, 'value', '3', 6),
(23, 'location', '4', 6),
(24, 'cleanliness', '1', 6),
(25, 'service', '1', 7),
(26, 'value', '5', 7),
(27, 'location', '3', 7),
(28, 'cleanliness', '3', 7),
(29, 'service', '2', 8),
(30, 'value', '3', 8),
(31, 'location', '2', 8),
(32, 'cleanliness', '5', 8),
(33, 'service', '4', 9),
(34, 'value', '2', 9),
(35, 'location', '3', 9),
(36, 'cleanliness', '3', 9),
(37, 'service', '5', 10),
(38, 'value', '3', 10),
(39, 'location', '3', 10),
(40, 'cleanliness', '2', 10),
(41, 'service', '5', 11),
(42, 'value', '5', 11),
(43, 'location', '4', 11),
(44, 'cleanliness', '4', 11),
(45, 'service', '3', 12),
(46, 'value', '2', 12),
(47, 'location', '2', 12),
(48, 'cleanliness', '2', 12),
(49, 'service', '2', 13),
(50, 'value', '1', 13),
(51, 'location', '3', 13),
(52, 'cleanliness', '2', 13),
(53, 'service', '5', 14),
(54, 'value', '1', 14),
(55, 'location', '4', 14),
(56, 'cleanliness', '3', 14),
(57, 'service', '2', 15),
(58, 'value', '5', 15),
(59, 'location', '1', 15),
(60, 'cleanliness', '2', 15),
(61, 'service', '4', 16),
(62, 'value', '5', 16),
(63, 'location', '2', 16),
(64, 'cleanliness', '1', 16),
(65, 'service', '1', 17),
(66, 'value', '3', 17),
(67, 'location', '1', 17),
(68, 'cleanliness', '2', 17),
(69, 'service', '3', 18),
(70, 'value', '1', 18),
(71, 'location', '4', 18),
(72, 'cleanliness', '5', 18),
(73, 'service', '2', 19),
(74, 'value', '5', 19),
(75, 'location', '5', 19),
(76, 'cleanliness', '3', 19),
(77, 'service', '2', 20),
(78, 'value', '2', 20),
(79, 'location', '2', 20),
(80, 'cleanliness', '2', 20),
(81, 'service', '2', 21),
(82, 'value', '3', 21),
(83, 'location', '3', 21),
(84, 'cleanliness', '4', 21),
(85, 'service', '3', 22),
(86, 'value', '5', 22),
(87, 'location', '4', 22),
(88, 'cleanliness', '1', 22),
(89, 'service', '1', 23),
(90, 'value', '3', 23),
(91, 'location', '2', 23),
(92, 'cleanliness', '1', 23),
(93, 'service', '3', 24),
(94, 'value', '1', 24),
(95, 'location', '1', 24),
(96, 'cleanliness', '4', 24),
(97, 'service', '3', 25),
(98, 'value', '3', 25),
(99, 'location', '2', 25),
(100, 'cleanliness', '2', 25),
(101, 'service', '3', 26),
(102, 'value', '1', 26),
(103, 'location', '2', 26),
(104, 'cleanliness', '1', 26),
(105, 'service', '4', 27),
(106, 'value', '2', 27),
(107, 'location', '5', 27),
(108, 'cleanliness', '3', 27),
(109, 'service', '4', 28),
(110, 'value', '1', 28),
(111, 'location', '1', 28),
(112, 'cleanliness', '5', 28),
(113, 'service', '4', 29),
(114, 'value', '2', 29),
(115, 'location', '3', 29),
(116, 'cleanliness', '3', 29),
(117, 'service', '4', 30),
(118, 'value', '2', 30),
(119, 'location', '2', 30),
(120, 'cleanliness', '1', 30),
(121, 'service', '5', 31),
(122, 'value', '5', 31),
(123, 'location', '3', 31),
(124, 'cleanliness', '3', 31),
(125, 'service', '2', 32),
(126, 'value', '3', 32),
(127, 'location', '5', 32),
(128, 'cleanliness', '1', 32),
(129, 'service', '3', 33),
(130, 'value', '5', 33),
(131, 'location', '1', 33),
(132, 'cleanliness', '5', 33),
(133, 'service', '3', 34),
(134, 'value', '2', 34),
(135, 'location', '3', 34),
(136, 'cleanliness', '2', 34),
(137, 'service', '5', 35),
(138, 'value', '5', 35),
(139, 'location', '4', 35),
(140, 'cleanliness', '1', 35),
(141, 'service', '5', 36),
(142, 'value', '3', 36),
(143, 'location', '1', 36),
(144, 'cleanliness', '1', 36),
(145, 'service', '3', 37),
(146, 'value', '3', 37),
(147, 'location', '3', 37),
(148, 'cleanliness', '2', 37),
(149, 'service', '2', 38),
(150, 'value', '3', 38),
(151, 'location', '3', 38),
(152, 'cleanliness', '2', 38),
(153, 'service', '5', 39),
(154, 'value', '1', 39),
(155, 'location', '1', 39),
(156, 'cleanliness', '1', 39),
(157, 'service', '5', 40),
(158, 'value', '3', 40),
(159, 'location', '2', 40),
(160, 'cleanliness', '5', 40),
(161, 'service', '5', 41),
(162, 'value', '5', 41),
(163, 'location', '2', 41),
(164, 'cleanliness', '1', 41),
(165, 'service', '2', 42),
(166, 'value', '1', 42),
(167, 'location', '3', 42),
(168, 'cleanliness', '2', 42),
(169, 'service', '4', 43),
(170, 'value', '5', 43),
(171, 'location', '5', 43),
(172, 'cleanliness', '5', 43),
(173, 'service', '2', 44),
(174, 'value', '2', 44),
(175, 'location', '2', 44),
(176, 'cleanliness', '3', 44),
(177, 'service', '2', 45),
(178, 'value', '2', 45),
(179, 'location', '4', 45),
(180, 'cleanliness', '2', 45),
(181, 'service', '5', 46),
(182, 'value', '5', 46),
(183, 'location', '2', 46),
(184, 'cleanliness', '2', 46),
(185, 'service', '5', 47),
(186, 'value', '4', 47),
(187, 'location', '5', 47),
(188, 'cleanliness', '4', 47),
(189, 'service', '1', 48),
(190, 'value', '4', 48),
(191, 'location', '1', 48),
(192, 'cleanliness', '5', 48),
(193, 'service', '3', 49),
(194, 'value', '5', 49),
(195, 'location', '1', 49),
(196, 'cleanliness', '3', 49),
(197, 'service', '3', 50),
(198, 'value', '4', 50),
(199, 'location', '5', 50),
(200, 'cleanliness', '3', 50),
(201, 'service', '3', 51),
(202, 'value', '3', 51),
(203, 'location', '4', 51),
(204, 'cleanliness', '1', 51),
(205, 'service', '2', 52),
(206, 'value', '4', 52),
(207, 'location', '3', 52),
(208, 'cleanliness', '4', 52),
(209, 'service', '4', 53),
(210, 'value', '4', 53),
(211, 'location', '3', 53),
(212, 'cleanliness', '4', 53),
(213, 'service', '5', 54),
(214, 'value', '5', 54),
(215, 'location', '2', 54),
(216, 'cleanliness', '4', 54),
(217, 'service', '3', 55),
(218, 'value', '3', 55),
(219, 'location', '3', 55),
(220, 'cleanliness', '3', 55),
(221, 'service', '2', 56),
(222, 'value', '3', 56),
(223, 'location', '2', 56),
(224, 'cleanliness', '3', 56),
(225, 'service', '5', 57),
(226, 'value', '5', 57),
(227, 'location', '5', 57),
(228, 'cleanliness', '5', 57),
(229, 'service', '4', 58),
(230, 'value', '4', 58),
(231, 'location', '5', 58),
(232, 'cleanliness', '4', 58),
(233, 'service', '5', 59),
(234, 'value', '2', 59),
(235, 'location', '4', 59),
(236, 'cleanliness', '3', 59),
(237, 'service', '2', 60),
(238, 'value', '5', 60),
(239, 'location', '1', 60),
(240, 'cleanliness', '5', 60),
(241, 'service', '1', 61),
(242, 'value', '3', 61),
(243, 'location', '1', 61),
(244, 'cleanliness', '4', 61),
(245, 'service', '5', 62),
(246, 'value', '2', 62),
(247, 'location', '2', 62),
(248, 'cleanliness', '2', 62),
(249, 'service', '5', 63),
(250, 'value', '3', 63),
(251, 'location', '2', 63),
(252, 'cleanliness', '1', 63),
(253, 'service', '5', 64),
(254, 'value', '5', 64),
(255, 'location', '4', 64),
(256, 'cleanliness', '3', 64),
(257, 'service', '1', 65),
(258, 'value', '5', 65),
(259, 'location', '2', 65),
(260, 'cleanliness', '2', 65),
(261, 'service', '1', 66),
(262, 'value', '3', 66),
(263, 'location', '1', 66),
(264, 'cleanliness', '4', 66),
(265, 'service', '1', 67),
(266, 'value', '5', 67),
(267, 'location', '1', 67),
(268, 'cleanliness', '5', 67),
(269, 'service', '3', 68),
(270, 'value', '3', 68),
(271, 'location', '5', 68),
(272, 'cleanliness', '3', 68),
(273, 'service', '1', 69),
(274, 'value', '3', 69),
(275, 'location', '4', 69),
(276, 'cleanliness', '3', 69),
(277, 'service', '2', 70),
(278, 'value', '3', 70),
(279, 'location', '4', 70),
(280, 'cleanliness', '2', 70),
(281, 'service', '2', 71),
(282, 'value', '5', 71),
(283, 'location', '3', 71),
(284, 'cleanliness', '2', 71),
(285, 'service', '2', 72),
(286, 'value', '1', 72),
(287, 'location', '2', 72),
(288, 'cleanliness', '4', 72),
(289, 'service', '1', 73),
(290, 'value', '5', 73),
(291, 'location', '4', 73),
(292, 'cleanliness', '4', 73),
(293, 'service', '1', 74),
(294, 'value', '1', 74),
(295, 'location', '1', 74),
(296, 'cleanliness', '2', 74),
(297, 'service', '1', 75),
(298, 'value', '3', 75),
(299, 'location', '4', 75),
(300, 'cleanliness', '4', 75),
(301, 'service', '5', 76),
(302, 'value', '2', 76),
(303, 'location', '2', 76),
(304, 'cleanliness', '1', 76),
(305, 'service', '4', 77),
(306, 'value', '2', 77),
(307, 'location', '2', 77),
(308, 'cleanliness', '2', 77),
(309, 'service', '4', 78),
(310, 'value', '4', 78),
(311, 'location', '1', 78),
(312, 'cleanliness', '2', 78),
(313, 'service', '4', 79),
(314, 'value', '2', 79),
(315, 'location', '1', 79),
(316, 'cleanliness', '1', 79),
(317, 'service', '4', 80),
(318, 'value', '3', 80),
(319, 'location', '1', 80),
(320, 'cleanliness', '5', 80),
(321, 'service', '1', 81),
(322, 'value', '5', 81),
(323, 'location', '4', 81),
(324, 'cleanliness', '5', 81),
(325, 'service', '4', 82),
(326, 'value', '3', 82),
(327, 'location', '4', 82),
(328, 'cleanliness', '3', 82),
(329, 'service', '5', 83),
(330, 'value', '1', 83),
(331, 'location', '1', 83),
(332, 'cleanliness', '4', 83),
(333, 'service', '1', 84),
(334, 'value', '4', 84),
(335, 'location', '1', 84),
(336, 'cleanliness', '5', 84),
(337, 'service', '2', 85),
(338, 'value', '3', 85),
(339, 'location', '3', 85),
(340, 'cleanliness', '1', 85);

-- --------------------------------------------------------

--
-- Table structure for table `re_transactions`
--

CREATE TABLE `re_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'add',
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]', NULL, NULL),
(7, 'payment_bank_transfer_status', '1', NULL, NULL),
(8, 'payment_stripe_name', 'Pay online via Stripe', NULL, NULL),
(9, 'payment_stripe_description', 'Payment with Stripe', NULL, NULL),
(10, 'payment_stripe_client_id', 'pk_test_51JGbXaLmHOfJnFasFfg5ksgorTTlnnqt8RzdrT1qIjqg5sGcVK3fNWBZu1OZ84ndCI4fo0Bdm7TL1yLfiC6e7nF700hBjwxbKa', NULL, NULL),
(11, 'payment_stripe_secret', 'sk_test_51JGbXaLmHOfJnFasntP9rqE8wZ0qghWeMKcdlQphvMNo7C2sVaTFgRcjlnof8XVBRZspgVk7ctO62QlY10E8rHNT002pnOk3VI', NULL, NULL),
(12, 'payment_stripe_status', '1', NULL, NULL),
(13, 'payment_paypal_name', 'Pay online via PayPal', NULL, NULL),
(14, 'payment_paypal_description', 'Payment with PayPal', NULL, NULL),
(15, 'payment_paypal_client_id', 'AZlbcwqaPAMIZ27JGOMRYrkWlMdvylKDgoNwS6rzww4_Q2naixJ9KwoOgDdhkwXBro7yTxKOV1hADDMO', NULL, NULL),
(16, 'payment_paypal_secret', 'EG7289O15aSq5bT_XLY0VhA0slkme6rlKTBp0Z1KyGY-cJoq7kPIxAvDbpVd8npd_-jBHcnYuMjF9CV3', NULL, NULL),
(17, 'payment_paypal_status', '1', NULL, NULL),
(18, 'real_estate_square_unit', 'm²', NULL, NULL),
(19, 'real_estate_convert_money_to_text_enabled', '1', NULL, NULL),
(20, 'real_estate_thousands_separator', ',', NULL, NULL),
(21, 'real_estate_decimal_separator', '.', NULL, NULL),
(22, 'real_estate_enabled_register', '1', NULL, NULL),
(23, 'verify_account_email', '1', NULL, NULL),
(24, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(25, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(26, 'permalink-botble-location-models-city', 'city', NULL, NULL),
(27, 'real_estate_review_enabled', '1', NULL, NULL),
(28, 'real_estate_review_fields', '[[{\"key\":\"field\",\"value\":\"service\"}],[{\"key\":\"field\",\"value\":\"value\"}],[{\"key\":\"field\",\"value\":\"location\"}],[{\"key\":\"field\",\"value\":\"cleanliness\"}]]', NULL, NULL),
(82, 'theme-resido-bedroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(83, 'theme-vi-resido-bedroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(84, 'theme-resido-bathroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(85, 'theme-vi-resido-bathroom', '[[{\"key\":\"label\",\"value\":1},{\"key\":\"value\",\"value\":1}],[{\"key\":\"label\",\"value\":2},{\"key\":\"value\",\"value\":2}],[{\"key\":\"label\",\"value\":3},{\"key\":\"value\",\"value\":3}],[{\"key\":\"label\",\"value\":4},{\"key\":\"value\",\"value\":4}],[{\"key\":\"label\",\"value\":5},{\"key\":\"value\",\"value\":5}]]', NULL, NULL),
(86, 'language_hide_default', '1', NULL, NULL),
(87, 'language_switcher_display', 'list', NULL, NULL),
(88, 'language_display', 'all', NULL, NULL),
(89, 'language_hide_languages', '[]', NULL, NULL),
(90, 'media_random_hash', 'f6626eabf2dac088f830f5ca6f56a2cc', NULL, NULL),
(113, 'show_admin_bar', '1', NULL, NULL),
(114, 'theme', 'resido', NULL, NULL),
(115, 'admin_logo', 'general/logo-light.png', NULL, NULL),
(116, 'admin_favicon', 'general/favicon.png', NULL, NULL),
(117, 'theme-resido-skin', 'blue-skin', NULL, NULL),
(118, 'theme-resido-font_heading', 'Jost', NULL, NULL),
(119, 'theme-resido-font_body', 'Muli', NULL, NULL),
(120, 'theme-resido-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(121, 'theme-resido-cookie_consent_learn_more_url', 'http://localhost/cookie-policy', NULL, NULL),
(122, 'theme-resido-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(123, 'theme-resido-copyright', '©2022 Resido. All rights reserved by TheSky9.', NULL, NULL),
(124, 'theme-resido-homepage_id', '1', NULL, NULL),
(125, 'theme-resido-blog_page_id', '12', NULL, NULL),
(126, 'theme-resido-logo', 'general/logo.png', NULL, NULL),
(127, 'theme-resido-favicon', 'general/favicon.png', NULL, NULL),
(128, 'theme-resido-logo_white', 'general/logo-light.png', NULL, NULL),
(129, 'theme-resido-img_loading', 'general/img-loading.jpg', NULL, NULL),
(130, 'theme-resido-properties_page_layout', 'full', NULL, NULL),
(131, 'theme-resido-property_header_layout', 'layout-1', NULL, NULL),
(132, 'theme-resido-site_title', 'Resido - Laravel Real Estate Multilingual Syste', NULL, NULL),
(133, 'theme-resido-seo_description', 'Resido is a premium real estate related websites build on Laravel. With an advanced admin dashboard that will help you create a local or global real-estate directory site.', NULL, NULL),
(134, 'theme-resido-seo_og_image', 'general/screenshot.png', NULL, NULL),
(135, 'theme-resido-address', 'Collins Street West, Victoria 8007, Australia.', NULL, NULL),
(136, 'theme-resido-hotline', '+1 246-345-0695', NULL, NULL),
(137, 'theme-resido-email', 'info@example.com', NULL, NULL),
(138, 'theme-resido-about-us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL),
(139, 'theme-resido-vi-skin', 'blue-skin', NULL, NULL),
(140, 'theme-resido-vi-font_heading', 'Montserrat', NULL, NULL),
(141, 'theme-resido-vi-font_body', 'Montserrat', NULL, NULL),
(142, 'theme-resido-vi-copyright', '©2022 Resido. Tất cả quyền đã được bảo hộ bởi TheSky9.', NULL, NULL),
(143, 'theme-resido-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(144, 'theme-resido-vi-cookie_consent_learn_more_url', 'http://localhost/cookie-policy', NULL, NULL),
(145, 'theme-resido-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(146, 'theme-resido-vi-homepage_id', '1', NULL, NULL),
(147, 'theme-resido-vi-blog_page_id', '28', NULL, NULL),
(148, 'theme-resido-vi-logo', 'general/logo.png', NULL, NULL),
(149, 'theme-resido-vi-logo_white', 'general/logo-light.png', NULL, NULL),
(150, 'theme-resido-vi-img_loading', 'general/img-loading.jpg', NULL, NULL),
(151, 'theme-resido-vi-properties_page_layout', 'full', NULL, NULL),
(152, 'theme-resido-vi-property_header_layout', 'layout-1', NULL, NULL),
(153, 'theme-resido-vi-site_title', 'Resido - Laravel Real Estate Multilingual Syste', NULL, NULL),
(154, 'theme-resido-vi-seo_description', 'Resido is a premium real estate related websites build on Laravel. With an advanced admin dashboard that will help you create a local or global real-estate directory site.', NULL, NULL),
(155, 'theme-resido-vi-seo_og_image', 'general/screenshot.png', NULL, NULL),
(156, 'theme-resido-vi-address', 'Collins Street West, Victoria 8007, Australia.', NULL, NULL),
(157, 'theme-resido-vi-hotline', '+1 246-345-0695', NULL, NULL),
(158, 'theme-resido-vi-email', 'info@example.com', NULL, NULL),
(159, 'theme-resido-vi-about-us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL),
(160, 'theme-resido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ti-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ti-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ti-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"ti-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"ti-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]', NULL, NULL),
(161, 'theme-vi-resido-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ti-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ti-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ti-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"ti-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"ti-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]', NULL, NULL),
(162, 'theme-resido-min_price', '[[{\"key\":\"label\",\"value\":500},{\"key\":\"value\",\"value\":500}],[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}]]', NULL, NULL),
(163, 'theme-vi-resido-min_price', '[[{\"key\":\"label\",\"value\":500},{\"key\":\"value\",\"value\":500}],[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}]]', NULL, NULL),
(164, 'theme-resido-max_price', '[[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}],[{\"key\":\"label\",\"value\":50000},{\"key\":\"value\",\"value\":50000}]]', NULL, NULL),
(165, 'theme-vi-resido-max_price', '[[{\"key\":\"label\",\"value\":1000},{\"key\":\"value\",\"value\":1000}],[{\"key\":\"label\",\"value\":2000},{\"key\":\"value\",\"value\":2000}],[{\"key\":\"label\",\"value\":5000},{\"key\":\"value\",\"value\":5000}],[{\"key\":\"label\",\"value\":10000},{\"key\":\"value\",\"value\":10000}],[{\"key\":\"label\",\"value\":50000},{\"key\":\"value\",\"value\":50000}]]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(65, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(66, 'home-layout-2', 2, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(67, 'home-layout-3', 3, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(68, 'home-layout-4', 4, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(69, 'home-layout-5', 5, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(70, 'home-layout-6', 6, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(71, 'home-layout-7', 7, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(72, 'home-layout-8', 8, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(73, 'home-layout-9', 9, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(74, 'map-home-layout', 10, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(75, 'properties', 11, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(76, 'news', 12, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(77, 'about-us', 13, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(78, 'contact', 14, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(79, 'terms-conditions', 15, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(80, 'cookie-policy', 16, 'Botble\\Page\\Models\\Page', '', '2022-09-29 08:01:13', '2022-09-29 08:01:13'),
(81, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(82, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(83, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(84, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(85, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(86, 'latest-news', 1, 'Botble\\Blog\\Models\\Category', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(87, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(88, 'house-design', 3, 'Botble\\Blog\\Models\\Category', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(89, 'building-materials', 4, 'Botble\\Blog\\Models\\Category', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(90, 'why-people-choose-listio-for-own-properties', 1, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(91, 'list-of-benifits-and-impressive-listeo-services', 2, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(92, 'what-people-says-about-listio-properties', 3, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(93, 'why-people-choose-listio-for-own-properties', 4, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(94, 'list-of-benifits-and-impressive-listeo-services', 5, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(95, 'what-people-says-about-listio-properties', 6, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(96, '5-of-the-most-searched-outdoor-decor-trends-of-summer-2021', 7, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(97, 'crave-a-canopy-bed-modern-spins-on-this-dramatic-style', 8, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(98, 'the-property-brothers-reveal-one-thing-never-ever-to-do-to-an-old-house', 9, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(99, 'how-to-build-a-raised-herb-garden-with-pallets', 10, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(100, 'entertain-in-style-14-products-made-for-an-outdoor-summer-soiree', 11, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(101, '6-summer-maintenance-tasks-that-could-save-you-cash-have-you-done-them-all', 12, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(102, 'average-us-rental-price-hits-a-two-year-high', 13, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(103, 'digital-land-rush-has-people-spending-big-money-on-virtual-real-estate-but-why', 14, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(104, 'the-best-state-to-live-in-right-now-is-a-huge-surprise-can-you-guess', 15, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(105, 'high-lumber-prices-and-other-barriers-choke-the-confidence-of-home-builders-and-home-buyers', 16, 'Botble\\Blog\\Models\\Post', 'news', '2022-09-29 08:01:26', '2022-09-29 08:01:26'),
(106, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(107, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(108, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(109, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(110, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(111, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2022-09-29 08:01:30', '2022-09-29 08:01:30'),
(112, '6007-applegate-lane', 1, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(113, '2721-lindsay-avenue', 2, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(114, '2203-7th-street-road', 3, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(115, '7431-candace-way', 4, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(116, '8502-madrone-avenue', 5, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(117, '1745-t-street-southeast', 6, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(118, '81-seaton-place-northwest', 7, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(119, '802-madison-street-northwest', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(120, '2811-battery-place-northwest', 9, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(121, '1508-massachusetts-avenue-southeast', 10, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(122, '1427-south-carolina-avenue-southeast', 11, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(123, '127-grand-heron-drive', 12, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(124, '1515-chandlee-avenue', 13, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(125, '4113-holiday-drive', 14, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:43', '2022-09-29 08:01:43'),
(126, '545-tracey-drive', 15, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(127, '2318-camryns-crossing', 16, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:44', '2022-09-29 08:01:44'),
(128, '1025-west-19th-street', 17, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-09-29 08:01:44', '2022-09-29 08:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `abbreviation` varchar(2) DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `abbreviation`, `country_id`, `order`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alabama', 'AL', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(2, 'Alaska', 'AK', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(3, 'American Samoa', 'AS', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(4, 'Arizona', 'AZ', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(5, 'Arkansas', 'AR', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(6, 'California', 'CA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(7, 'Colorado', 'CO', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(8, 'Connecticut', 'CT', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(9, 'Delaware', 'DE', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(10, 'District Of Columbia', 'DC', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(11, 'Federated States Of Micronesia', 'FM', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(12, 'Florida', 'FL', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(13, 'Georgia', 'GA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(14, 'Guam', 'GU', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(15, 'Hawaii', 'HI', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(16, 'Idaho', 'ID', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(17, 'Illinois', 'IL', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(18, 'Indiana', 'IN', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(19, 'Iowa', 'IA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(20, 'Kansas', 'KS', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(21, 'Kentucky', 'KY', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(22, 'Louisiana', 'LA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(23, 'Maine', 'ME', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(24, 'Marshall Islands', 'MH', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(25, 'Maryland', 'MD', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(26, 'Massachusetts', 'MA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(27, 'Michigan', 'MI', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(28, 'Minnesota', 'MN', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(29, 'Mississippi', 'MS', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(30, 'Missouri', 'MO', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(31, 'Montana', 'MT', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(32, 'Nebraska', 'NE', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(33, 'Nevada', 'NV', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(34, 'New Hampshire', 'NH', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(35, 'New Jersey', 'NJ', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(36, 'New Mexico', 'NM', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(37, 'New York', 'NY', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(38, 'North Carolina', 'NC', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(39, 'North Dakota', 'ND', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(40, 'Northern Mariana Islands', 'MP', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(41, 'Ohio', 'OH', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(42, 'Oklahoma', 'OK', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(43, 'Oregon', 'OR', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(44, 'Palau', 'PW', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(45, 'Pennsylvania', 'PA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(46, 'Puerto Rico', 'PR', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(47, 'Rhode Island', 'RI', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(48, 'South Carolina', 'SC', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(49, 'South Dakota', 'SD', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(50, 'Tennessee', 'TN', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(51, 'Texas', 'TX', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(52, 'Utah', 'UT', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(53, 'Vermont', 'VT', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(54, 'Virgin Islands', 'VI', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(55, 'Virginia', 'VA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(56, 'Washington', 'WA', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(57, 'West Virginia', 'WV', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(58, 'Wisconsin', 'WI', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(59, 'Wyoming', 'WY', 1, 0, 0, 'published', '2022-09-29 08:00:52', '2022-09-29 08:00:52'),
(60, 'Alberta', 'AB', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(61, 'British Columbia', 'BC', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(62, 'Manitoba', 'MB', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(63, 'New Brunswick', 'NB', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(64, 'Newfoundland', 'NF', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(65, 'Northwest Territories', 'NT', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(66, 'Nova Scotia', 'NS', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(67, 'Nunavut', 'NU', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(68, 'Ontario', 'ON', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(69, 'Prince Edward Island', 'PE', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(70, 'Quebec', 'PQ', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(71, 'Saskatchewan', 'SK', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59'),
(72, 'Yukon', 'YT', 2, 0, 0, 'published', '2022-09-29 08:00:59', '2022-09-29 08:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `states_backup`
--

CREATE TABLE `states_backup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `abbreviation` varchar(2) DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(191) NOT NULL,
  `states_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT '',
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-09-29 08:01:25', '2022-09-29 08:01:25'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-09-29 08:01:25', '2022-09-29 08:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`lang_code`, `tags_id`, `name`, `description`) VALUES
('vi', 1, 'Chung', NULL),
('vi', 2, 'Thiết kế', NULL),
('vi', 3, 'Thời trang', NULL),
('vi', 4, 'Thương hiệu', NULL),
('vi', 5, 'Hiện đại', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `content`, `image`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adam Williams', 'March Hare: she thought it would be like, but it.', 'testimonials/1.jpg', 'CEO Of Microwoft', 'published', '2022-09-29 08:01:48', '2022-09-29 08:01:48'),
(2, 'Retha Deowalim', 'Alice, rather doubtfully, as she leant against a.', 'testimonials/2.jpg', 'CEO Of Apple', 'published', '2022-09-29 08:01:48', '2022-09-29 08:01:48'),
(3, 'Sam J. Wasim', 'ONE respectable person!\' Soon her eye fell upon.', 'testimonials/3.jpg', 'Pio Founder', 'published', '2022-09-29 08:01:48', '2022-09-29 08:01:48'),
(4, 'Usan Gulwarm', 'Bill\'s got to grow up any more if you\'d like it.', 'testimonials/4.jpg', 'CEO Of Facewarm', 'published', '2022-09-29 08:01:48', '2022-09-29 08:01:48'),
(5, 'Shilpa Shethy', 'Alice to herself, \'Now, what am I to get dry.', 'testimonials/5.jpg', 'CEO Of Zapple', 'published', '2022-09-29 08:01:48', '2022-09-29 08:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_translations`
--

CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) NOT NULL,
  `testimonials_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials_translations`
--

INSERT INTO `testimonials_translations` (`lang_code`, `testimonials_id`, `name`, `content`, `company`) VALUES
('vi', 1, 'Adam Williams', 'Alice was so ordered about in all directions.', 'Giám đốc Microwoft'),
('vi', 2, 'Retha Deowalim', 'DOTH THE LITTLE BUSY BEE,\" but it said in a tone.', 'Giám đốc Apple'),
('vi', 3, 'Sam J. Wasim', 'And the Gryphon at the bottom of a candle is.', 'Nhà sáng lập Pio'),
('vi', 4, 'Usan Gulwarm', 'What happened to me! When I used to do:-- \'How.', 'Giám đốc Facewarm'),
('vi', 5, 'Shilpa Shethy', 'Gryphon went on. \'Would you tell me,\' said.', 'Giám đốc Zapple');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@thesky9.com', NULL, '$2y$10$vNe4ceCOMl8yMHpza5EMSuMSnJW4XMjaKnTRul7ZjVMcebF5OtKiq', NULL, '2022-09-29 08:01:02', '2022-09-29 08:01:02', 'System', 'Admin', 'admin', 102, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'ShortcodeWidget', 'footer_sidebar_1', 'resido', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"sign-up\\\"][\\/static-block]\"}', NULL, NULL),
(2, 'CustomMenuWidget', 'footer_sidebar_2', 'resido', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', NULL, NULL),
(3, 'CustomMenuWidget', 'footer_sidebar_2', 'resido', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"MORE INFORMATION\",\"menu_id\":\"more-information\"}', NULL, NULL),
(4, 'CustomMenuWidget', 'footer_sidebar_2', 'resido', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"NEWS\",\"menu_id\":\"news\"}', NULL, NULL),
(5, 'ShortcodeWidget', 'footer_sidebar_3', 'resido', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"download-app-footer\\\"][\\/static-block]\"}', NULL, NULL),
(6, 'CategoriesWidget', 'primary_sidebar', 'resido', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', NULL, NULL),
(7, 'RecentPostsWidget', 'primary_sidebar', 'resido', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', NULL, NULL),
(8, 'FeaturedPropertiesWidget', 'primary_sidebar', 'resido', 0, '{\"id\":\"FeaturedPropertiesWidget\",\"name\":\"Featured properties\",\"number_display\":\"5\"}', NULL, NULL),
(9, 'NewsletterWidget', 'footer_sidebar_3', 'resido', 1, '{\"id\":\"NewsletterWidget\",\"name\":\"Subscribe\"}', NULL, NULL),
(10, 'ShortcodeWidget', 'footer_sidebar_1', 'resido-vi', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"sign-up\\\"][\\/static-block]\"}', NULL, NULL),
(11, 'CustomMenuWidget', 'footer_sidebar_2', 'resido-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"ve-chung-toi\"}', NULL, NULL),
(12, 'CustomMenuWidget', 'footer_sidebar_2', 'resido-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"MORE INFORMATION\",\"menu_id\":\"thong-tin-them\"}', NULL, NULL),
(13, 'CustomMenuWidget', 'footer_sidebar_2', 'resido-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"NEWS\",\"menu_id\":\"tin-tuc\"}', NULL, NULL),
(14, 'ShortcodeWidget', 'footer_sidebar_3', 'resido-vi', 0, '{\"id\":\"ShortcodeWidget\",\"content\":\"[static-block alias=\\\"download-app-footer\\\"][\\/static-block]\"}', NULL, NULL),
(15, 'CategoriesWidget', 'primary_sidebar', 'resido-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Danh mục\"}', NULL, NULL),
(16, 'RecentPostsWidget', 'primary_sidebar', 'resido-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Bài viết gần đây\",\"number_display\":\"5\"}', NULL, NULL),
(17, 'FeaturedPropertiesWidget', 'primary_sidebar', 'resido-vi', 0, '{\"id\":\"FeaturedPropertiesWidget\",\"name\":\"Featured properties\",\"number_display\":\"5\"}', NULL, NULL),
(18, 'NewsletterWidget', 'footer_sidebar_3', 'resido-vi', 1, '{\"id\":\"NewsletterWidget\",\"name\":\"Subscribe\"}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks_translations`
--
ALTER TABLE `blocks_translations`
  ADD PRIMARY KEY (`lang_code`,`blocks_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `cities_backup`
--
ALTER TABLE `cities_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_backup`
--
ALTER TABLE `countries_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `language_meta_backup`
--
ALTER TABLE `language_meta_backup`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `author_type` (`author_type`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `re_accounts_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_accounts_packages`
--
ALTER TABLE `re_accounts_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_account_activity_logs_account_id_index` (`account_id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `re_account_password_resets_email_index` (`email`),
  ADD KEY `re_account_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_categories_translations`
--
ALTER TABLE `re_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`re_categories_id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_translations`
--
ALTER TABLE `re_facilities_translations`
  ADD PRIMARY KEY (`lang_code`,`re_facilities_id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features_translations`
--
ALTER TABLE `re_features_translations`
  ADD PRIMARY KEY (`lang_code`,`re_features_id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages_translations`
--
ALTER TABLE `re_packages_translations`
  ADD PRIMARY KEY (`lang_code`,`re_packages_id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_properties_type_id_index` (`type_id`);

--
-- Indexes for table `re_properties_translations`
--
ALTER TABLE `re_properties_translations`
  ADD PRIMARY KEY (`lang_code`,`re_properties_id`);

--
-- Indexes for table `re_property_types`
--
ALTER TABLE `re_property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_property_types_translations`
--
ALTER TABLE `re_property_types_translations`
  ADD PRIMARY KEY (`lang_code`,`re_property_types_id`);

--
-- Indexes for table `re_reviews`
--
ALTER TABLE `re_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_reviews_meta`
--
ALTER TABLE `re_reviews_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `re_reviews_meta_review_id_index` (`review_id`);

--
-- Indexes for table `re_transactions`
--
ALTER TABLE `re_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_backup`
--
ALTER TABLE `states_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_translations`
--
ALTER TABLE `testimonials_translations`
  ADD PRIMARY KEY (`lang_code`,`testimonials_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=904;

--
-- AUTO_INCREMENT for table `cities_backup`
--
ALTER TABLE `cities_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries_backup`
--
ALTER TABLE `countries_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `language_meta_backup`
--
ALTER TABLE `language_meta_backup`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `re_accounts_packages`
--
ALTER TABLE `re_accounts_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `re_property_types`
--
ALTER TABLE `re_property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_reviews`
--
ALTER TABLE `re_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `re_reviews_meta`
--
ALTER TABLE `re_reviews_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `re_transactions`
--
ALTER TABLE `re_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `states_backup`
--
ALTER TABLE `states_backup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
