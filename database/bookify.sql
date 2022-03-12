# ================================================================================================
# DATABASE
# ================================================================================================

# create database
DROP DATABASE IF EXISTS `bookify`;
CREATE DATABASE `bookify` CHARACTER SET utf8 COLLATE utf8_general_ci;

# ================================================

USE `bookify`;

# create user
DROP USER IF EXISTS `bookify`;
CREATE USER `bookify` IDENTIFIED BY 'Unq3u9DdYg2P7efG';

# add privileges to created user
GRANT ALL PRIVILEGES ON bookify.* TO 'bookify'@'%';



# ================================================================================================
# TABLES
# ================================================================================================

USE `bookify`;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `attributes`;
# create table
CREATE TABLE `attributes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `categories`;
# create table
CREATE TABLE `categories` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 `slug` varchar(256) NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `authors`;
# create table
CREATE TABLE `authors` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `full_name` varchar(256) NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `products`;
# create table
CREATE TABLE `products` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_category` int(10) unsigned NOT NULL,
 `slug` varchar(512) NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 KEY `id_category` (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `product_attributes`;
# create table
CREATE TABLE `product_attributes` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_product` bigint(20) unsigned NOT NULL,
 `id_attribute` int(10) unsigned NOT NULL,
 `value` TEXT NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 KEY `id_product` (`id_product`),
 KEY `id_attribute` (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `product_images`;
# create table
CREATE TABLE `product_images` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_product` bigint(20) unsigned NOT NULL,
 `src` TEXT NOT NULL,
 `priority` int(10) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `product_authors`;
# create table
CREATE TABLE `product_authors` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_product` bigint(20) unsigned NOT NULL,
 `id_author` bigint(20) unsigned NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 KEY `id_product` (`id_product`),
 KEY `id_author` (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `roles`;
# create table
CREATE TABLE `roles` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `user_statuses`;
# create table
CREATE TABLE `user_statuses` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================

# clean previous table if exists
DROP TABLE IF EXISTS `users`;
# create table
CREATE TABLE `users` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_user_status` int(10) unsigned NOT NULL,
 `id_role` int(10) unsigned NOT NULL,
 `full_name` varchar(256) NOT NULL,
 `email` varchar(256) NOT NULL,
 `password` varchar(512) NOT NULL,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 KEY `id_user_status` (`id_user_status`),
 KEY `id_role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# ================================================================================================
# BASE DATA
# ================================================================================================

USE `bookify`;

# ================================================

INSERT INTO `attributes` (`id`, `description`) VALUES
    (1, 'title'),
    (2, 'description'),
    (3, 'published_at'),
    (4, 'pages'),
    (5, 'language'),
    (6, 'format'),
    (7, 'presentation');

# ================================================

INSERT INTO `categories` (`id`, `description`, `slug`, `created_at`, `updated_at`) VALUES
    (1, 'Literatura', 'literatura', NOW(), NULL),
    (2, 'Conocimiento y ciencia', 'conocimiento-y-ciencia', NOW(), NULL),
    (3, 'Cómic y fantasía', 'comic-y-fantasia', NOW(), NULL),
    (4, 'Cocina y gastronomía', 'cocina-y-gastronomia', NOW(), NULL),
    (5, 'Infantil y juvenil', 'infantil-y-juvenil', NOW(), NULL),
    (6, 'Actualidad y empresa', 'actualidad-y-empresa', NOW(), NULL),
    (7, 'Bienestar y salud', 'bienestar-y-salud', NOW(), NULL),
    (8, 'Viajes y negocio', 'viajes-y-negocio', NOW(), NULL),
    (9, 'Agendas y calendarios', 'agendas-y-calendarios', NOW(), NULL);

# ================================================

INSERT INTO `roles` (`id`, `description`) VALUES
    (1, 'admin'),
    (2, 'client');

# ================================================

INSERT INTO `user_statuses` (`id`, `description`) VALUES
    (1, 'pending'),
    (2, 'active'),
    (3, 'blocked'),
    (4, 'inactive');

# ================================================

INSERT INTO `users` (`id`, `id_user_status`, `id_role`, `full_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
    (1, 2, 1, 'John Admin Doe', 'admin@bookify.com', 'bookify', NOW(), NULL),
    (2, 2, 2, 'John Client Doe', 'client@bookify.com', 'bookify', NOW(), NULL),
    (3, 2, 2, 'Martin Palermo', 'martin@bookify.com', 'bookify', NOW(), NULL);



# ================================================================================================
# CONSTRAINTS
# ================================================================================================

USE `bookify`;

# ================================================

ALTER TABLE `products` ADD FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);

# ================================================

ALTER TABLE `product_attributes` ADD FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
ALTER TABLE `product_attributes` ADD FOREIGN KEY (`id_attribute`) REFERENCES `attributes` (`id`);

# ================================================

ALTER TABLE `product_images` ADD FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

# ================================================

ALTER TABLE `product_authors` ADD FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
ALTER TABLE `product_authors` ADD FOREIGN KEY (`id_author`) REFERENCES `authors` (`id`);

# ================================================

ALTER TABLE `users` ADD FOREIGN KEY (`id_user_status`) REFERENCES `user_statuses` (`id`);
ALTER TABLE `users` ADD FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);