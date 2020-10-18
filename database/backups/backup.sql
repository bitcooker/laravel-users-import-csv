-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5980
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table taptica.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taptica.failed_jobs: 1 rows
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
	(1, 'database', 'default', '{"uuid":"321450dd-4b47-4519-ade6-4035096b9dfc","displayName":"App\\\\Jobs\\\\SaveUsers","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"delay":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"App\\\\Jobs\\\\SaveUsers","command":"O:18:\\"App\\\\Jobs\\\\SaveUsers\\":12:{s:33:\\"\\u0000App\\\\Jobs\\\\SaveUsers\\u0000fileUploadJob\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:13:\\"App\\\\ImportJob\\";s:2:\\"id\\";i:2;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:24:\\"\\u0000App\\\\Jobs\\\\SaveUsers\\u0000path\\";s:106:\\"C:\\\\Users\\\\Michael\\\\PhpstormProjects\\\\taptica\\\\storage\\\\app\\/uploads\\\\TjiKAwnJ0lyolUcmKFY40nlzhANJ9m3a2fUkgHqf.txt\\";s:25:\\"\\u0000App\\\\Jobs\\\\SaveUsers\\u0000email\\";s:28:\\"michael.o.stepanov@gmail.com\\";s:28:\\"\\u0000App\\\\Jobs\\\\SaveUsers\\u0000fileName\\";s:8:\\"test.csv\\";s:3:\\"job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";O:25:\\"Illuminate\\\\Support\\\\Carbon\\":3:{s:4:\\"date\\";s:26:\\"2020-10-18 00:20:11.882342\\";s:13:\\"timezone_type\\";i:3;s:8:\\"timezone\\";s:3:\\"UTC\\";}s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 'Exception: test in C:\\Users\\Michael\\PhpstormProjects\\taptica\\app\\Jobs\\SaveUsers.php:49\nStack trace:\n#0 [internal function]: App\\Jobs\\SaveUsers->handle()\n#1 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#2 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#7 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SaveUsers))\n#8 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SaveUsers))\n#9 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SaveUsers), false)\n#11 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SaveUsers))\n#12 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SaveUsers))\n#13 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SaveUsers))\n#15 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(265): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#23 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#28 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\Users\\Michael\\PhpstormProjects\\taptica\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\Users\\Michael\\PhpstormProjects\\taptica\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2020-10-18 00:20:14');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table taptica.genders
CREATE TABLE IF NOT EXISTS `genders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taptica.genders: 2 rows
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Male', '2020-10-18 00:19:10', '2020-10-18 00:19:10');
INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(2, 'Female', '2020-10-18 00:19:10', '2020-10-18 00:19:10');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;

-- Dumping structure for table taptica.import_jobs
CREATE TABLE IF NOT EXISTS `import_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taptica.import_jobs: 3 rows
/*!40000 ALTER TABLE `import_jobs` DISABLE KEYS */;
INSERT INTO `import_jobs` (`id`, `file_name`, `status_id`, `created_at`, `updated_at`) VALUES
	(1, 'test.csv', 2, '2020-10-18 00:19:26', '2020-10-18 00:19:29');
INSERT INTO `import_jobs` (`id`, `file_name`, `status_id`, `created_at`, `updated_at`) VALUES
	(2, 'test.csv', 3, '2020-10-18 00:20:11', '2020-10-18 00:20:13');
INSERT INTO `import_jobs` (`id`, `file_name`, `status_id`, `created_at`, `updated_at`) VALUES
	(3, 'test.csv', 2, '2020-10-18 00:20:32', '2020-10-18 00:20:35');
/*!40000 ALTER TABLE `import_jobs` ENABLE KEYS */;

-- Dumping structure for table taptica.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taptica.jobs: 0 rows
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table taptica.job_statuses
CREATE TABLE IF NOT EXISTS `job_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taptica.job_statuses: 3 rows
/*!40000 ALTER TABLE `job_statuses` DISABLE KEYS */;
INSERT INTO `job_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Processing', '2020-10-18 00:19:10', '2020-10-18 00:19:10');
INSERT INTO `job_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(2, 'Done', '2020-10-18 00:19:10', '2020-10-18 00:19:10');
INSERT INTO `job_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(3, 'Failed', '2020-10-18 00:19:10', '2020-10-18 00:19:10');
/*!40000 ALTER TABLE `job_statuses` ENABLE KEYS */;

-- Dumping structure for table taptica.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taptica.migrations: 6 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(31, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(32, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(33, '2020_10_16_201146_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(34, '2020_10_17_110356_create_genders_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(35, '2020_10_17_111322_create_import_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(36, '2020_10_17_111603_create_job_statuses_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table taptica.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table taptica.users: 10 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(1, 'Leanne Graham', 'Kulas Light', '17707368031', 1, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(2, 'Romaguera-Crona', 'Victor Plains Test', '0106926593', 2, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(3, 'Ervin Howell', 'Douglas Extension', '1463123447', 2, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(4, 'Deckow-Crist', 'Hoeger Mall', '4931709623', 1, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(5, 'Clementine Bauch', 'Skiles Walks', '2549541289', 1, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(6, 'Romaguera-Jacobson', 'Norberto Crossing', '14779358478', 2, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(7, 'Patricia Lebsack', 'Rex Trail', '2100676132', 1, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(8, 'Robel-Corkery', 'Ellsworth Summit', '5864936943', 2, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(9, 'Chelsey Dietrich', 'Dayna Park', '7759766794', 2, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender_id`, `created_at`, `updated_at`) VALUES
	(10, 'Keebler LLC', 'Kattie Turnpike', '0246483804', 1, '2020-10-18 00:19:29', '2020-10-18 00:19:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
