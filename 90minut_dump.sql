-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `90minut`
--
CREATE DATABASE IF NOT EXISTS `90minut` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `90minut`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `league_id` int DEFAULT NULL,
  `published_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`article_id`),
  KEY `idx_articles_author` (`author_id`),
  KEY `idx_articles_category` (`category_id`),
  KEY `idx_articles_league` (`league_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `content`, `image_url`, `author_id`, `category_id`, `league_id`, `published_at`) VALUES
(3, 'Manchester City and Real Madrid Share Another High-Level European Battle', 'Manchester City secured an important victory over Real Madrid in a match that once again showcased why meetings between these two giants have become a modern European classic.\n\n\nThe game was played at a high tempo from the start, with both teams demonstrating tactical intelligence and technical quality. Manchester City enjoyed longer spells of possession and looked sharp in their build-up play, while Real Madrid remained dangerous on the counter-attack, using their experience and individual quality to threaten throughout the match.\n\n\nCity’s breakthrough came from well-worked team moves, reflecting their structured approach and patience in attack. However, Real Madrid showed their trademark resilience, staying competitive and pushing for momentum-changing moments whenever space appeared. Their ability to stay calm under pressure kept the contest alive until the final stages.\n\nDefensively, both sides had strong periods, and the match was ultimately decided by fine margins rather than clear dominance. For City, the win represents another step forward in their European campaign. For Real Madrid, the performance reinforced their reputation as a team that never stops competing and always remains a threat on the biggest stage.\n\nAs with many encounters between these two clubs, this was not just a football match, but another chapter in a growing rivalry that continues to define elite European football. AAAAAAAAA', '', 34, 1, 2, '2025-11-11 11:28:09'),
(33, 'Cristiano Ronaldo and His Unforgettable Years at Real Madrid', 'Cristiano Ronaldo’s time at Real Madrid is widely considered one of the greatest periods any player has ever had at a single club. After joining from Manchester United in 2009, Ronaldo quickly became the face of the team and a global icon.\n\nDuring nine seasons in Madrid, he scored an incredible 450 goals in 438 matches. More importantly, he helped Real Madrid dominate Europe, winning four Champions League titles. His rivalry with Lionel Messi pushed both players to new heights and made La Liga one of the most exciting leagues in the world.\n\nEven after leaving the club in 2018, Ronaldo’s legacy at Real Madrid remains untouchable. Fans still remember his goals, celebrations, and decisive performances on the biggest stage.\n\n2. Real Madrid: The Club Built for Champions League Nights\n\nReal Madrid is not just a football club; it is a symbol of success in European football. With a record number of Champions League trophies, the club has built a reputation for performing when it matters most.\n\nFrom legendary players like Alfredo Di Stéfano and Raúl to modern stars such as Luka Modrić and Karim Benzema, Real Madrid has always had leaders on the pitch. The club’s mentality, often described as “never giving up,” has led to some of the most dramatic comebacks in football history.\n\nNo matter the season or squad, Real Madrid always seems dangerous in Europe. That winning culture is what separates them from the rest.', 'https://images.unsplash.com/photo-1724064710352-3cbcee4bc3a8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9uYWxkb3xlbnwwfHwwfHx8MA%3D%3D', 34, 1, 1, '2025-12-15 02:27:29'),
(34, 'Lionel Messi vs Cristiano Ronaldo: A Rivalry That Defined an Era', 'For more than a decade, football fans witnessed an extraordinary rivalry between Lionel Messi and Cristiano Ronaldo. While Messi was the genius of Barcelona, Ronaldo was the powerful leader of Real Madrid.\n\nTheir battles in El Clásico matches attracted millions of viewers worldwide. Every goal, assist, and trophy added fuel to the debate about who was the better player. Together, they pushed football to a new level and inspired an entire generation.\n\nEven now, with both players in the later stages of their careers, their rivalry remains one of the most iconic stories in sports history.', 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vdGJhbGx8ZW58MHx8MHx8fDA%3D', 34, 1, 1, '2025-12-15 02:28:29'),
(35, 'Karim Benzema’s Rise from Supporting Role to Club Legend', 'For many years, Karim Benzema played in the shadow of Cristiano Ronaldo at Real Madrid. His role was often to assist, create space, and do the hard work that didn’t always show in statistics.\n\nAfter Ronaldo’s departure, Benzema stepped up as the team’s main leader in attack. He began scoring crucial goals and delivering outstanding performances, eventually winning the Ballon d’Or in 2022.\n\nBenzema’s journey shows that patience and consistency can lead to greatness. Today, he is remembered as one of Real Madrid’s most complete strikers.', 'https://images.unsplash.com/photo-1522778034537-20a2486be803?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVhbCUyMG1hZHJpZHxlbnwwfHwwfHx8MA%3D%3D', 34, 1, 1, '2025-12-15 02:29:01'),
(36, 'El Clásico: More Than Just a Football Match', 'El Clásico between Real Madrid and Barcelona is one of the biggest sporting events in the world. It is not just about football, but also about history, culture, and pride.\n\nOver the years, the match has featured some of the greatest players ever, including Messi, Ronaldo, Ronaldinho, and Zidane. The intensity, atmosphere, and global attention make El Clásico unique.\n\nRegardless of league position or form, El Clásico always delivers drama and unforgettable moments.', 'https://images.unsplash.com/photo-1635710444991-f0f913392129?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cmVhbCUyMG1hZHJpZHxlbnwwfHwwfHx8MA%3D%3D', 34, 1, 1, '2025-12-15 02:29:24'),
(37, 'The Evolution of Modern Football Superstars', 'Modern football superstars are more than just players on the pitch. Figures like Cristiano Ronaldo have become global brands, influencing fashion, fitness, and social media.\n\nRonaldo’s discipline, work ethic, and professionalism set new standards for athletes worldwide. Young players now understand that talent alone is not enough to succeed at the highest level.\n\nAs football continues to grow globally, superstars will play an even bigger role in shaping the game’s future.', ' https://images.unsplash.com/photo-1607960708254-60fb0ba03f4d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJlcm5hYmV1fGVufDB8fDB8fHww', 34, 1, 1, '2025-12-15 02:29:45'),
(38, 'Cristiano Ronaldo’s Mentality: What Makes Him Different', 'Cristiano Ronaldo is known not only for his goals, but also for his mindset. From a young age, he showed an extreme level of focus and determination that separated him from other talented players.\n\nHis daily routines, strict diet, and obsession with improvement are often mentioned by former teammates. Even after winning multiple trophies and Ballon d’Or awards, Ronaldo never seemed satisfied.\n\nThis mentality allowed him to succeed in different leagues and prove himself at every stage of his career.', 'https://plus.unsplash.com/premium_photo-1661881922562-e819632c451a?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c29jY2VyJTIwcGxheWVyfGVufDB8fDB8fHww', 34, 1, 1, '2025-12-15 02:37:33'),
(39, 'Real Madrid’s Galácticos Era and Its Global Impact', 'The Galácticos era changed football forever. By signing superstars like Zinedine Zidane, Ronaldo Nazário, and David Beckham, Real Madrid became more than a club — it became a global brand.\n\nAlthough the team did not always dominate on the pitch, its influence off the field was massive. Shirt sales, sponsorships, and worldwide popularity reached new levels.\n\nThis era showed how football and business could be connected like never before.', 'https://images.unsplash.com/photo-1522778590545-a5a925dcf6f5?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 34, 1, 1, '2025-12-15 02:38:12'),
(40, 'Champions League Nights: Where Legends Are Born', 'The UEFA Champions League is the stage where football legends are created. One great performance on a big night can define a player’s career.\n\nReal Madrid, in particular, has produced countless iconic moments in the competition. Late goals, dramatic comebacks, and unforgettable celebrations have become part of their identity.\n\nFor players, shining in the Champions League means earning respect on the highest level.', 'https://images.unsplash.com/photo-1676746424114-56d38af59256?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhbXBpb25zJTIwbGVhZ3VlfGVufDB8fDB8fHww', 34, 1, 1, '2025-12-15 02:38:46'),
(41, 'How Football Training Has Changed Over the Years', 'Football training today is very different from what it was 20 or 30 years ago. Modern players focus on fitness, recovery, and data analysis more than ever before.\n\nClubs now use GPS tracking, video analysis, and specialized coaches to improve performance. Nutrition and mental health have also become key parts of training routines.\n\nThese changes have helped players extend their careers and maintain high levels of performance.', 'https://plus.unsplash.com/premium_photo-1685231505282-4ba3e09eec47?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vdGJhbGwlMjB0cmFpbmluZ3xlbnwwfHwwfHx8MA%3D%3D', 34, 1, 1, '2025-12-15 02:39:13'),
(42, 'The Pressure of Playing for a Big Club', 'Playing for a club like Real Madrid comes with enormous pressure. Every mistake is analyzed, and expectations are always high.\n\nSome talented players struggle to adapt, while others grow stronger under the spotlight. Mental strength often becomes just as important as technical ability.\n\nThose who succeed earn legendary status, while those who fail are quickly forgotten.', 'https://images.unsplash.com/photo-1638642423879-21272e1f3c15?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vdGJhbGwlMjBmYW5zJTIwc3RhZGl1bXxlbnwwfHwwfHx8MA%3D%3D', 34, 1, 1, '2025-12-15 02:39:42'),
(43, 'Young Talents Dreaming of the Bernabéu', 'For many young footballers around the world, playing at the Santiago Bernabéu is a dream. The stadium represents history, success, and greatness.\n\nYouth academies now focus on developing not only skills, but also character and discipline. Making it to the first team requires patience and consistency.\n\nOnly a few reach the top, but the dream continues to inspire millions.', 'https://images.unsplash.com/photo-1679391029864-d46f366a456b?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vdGJhbGwlMjBzdGFkaXVtJTIwbmlnaHR8ZW58MHx8MHx8fDA%3D', 34, 1, 1, '2025-12-15 02:40:12'),
(44, 'Cristiano Ronaldo at 40: Still Hungry, Still Making Headlines', 'Cristiano Ronaldo’s career has entered a remarkable new phase — one that blends on-field excellence with global influence beyond football. Even at 40 years old, the Portuguese superstar isn’t showing signs of slowing down; in fact, he’s rewriting expectations for footballers in his late career.\n\nA New Chapter in Saudi Arabia\n\nAfter leaving Europe’s elite leagues, Ronaldo joined Saudi Pro League side Al-Nassr in 2023 — a move that marked a shift in global football dynamics. Rather than slowing down, he has thrived. In the 2024–25 season, Ronaldo was awarded the Saudi Pro League Golden Boot for scoring 25 goals in 30 league appearances — his second consecutive top-scorer title in the country’s top division. His consistency in front of goal proved that age is just a number for one of the sport’s greatest finishers. \nhttps://ummid.com/\n\nIn June 2025, Ronaldo penned a new two-year contract with Al-Nassr, committing his future to the Riyadh club until 2027. The announcement ended months of speculation about a transfer or even a potential retirement. Ronaldo himself captured the moment on social media, saying, “A new chapter begins. Same passion, same dream. Let’s make history together.” \nNDTV Sports\n\nOn the Pitch: Nearing a Historic Goal Milestone\n\nDespite his age, Ronaldo’s scoring form shows he hasn’t lost his competitive edge. As of late 2025, he reached around 950 career goals — just 50 shy of the rare 1,000-goal milestone that has become a personal target. After netting in a Saudi Pro League match, Ronaldo celebrated the achievement while telling fans he remains “hungry for more.” \nNDTV Sports\n\nWorld Cup Dreams and International Ambitions\n\nBeyond club football, Ronaldo is still focused on his international career with Portugal. He played a crucial role in helping his country qualify for the 2026 FIFA World Cup in the United States. In an interview clip that circulated online in late 2025, Ronaldo told CNN that the upcoming World Cup “will definitely be his last” — signalling his intent to retire on the grandest stage of all.', 'https://images.unsplash.com/photo-1724064710352-3cbcee4bc3a8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9uYWxkb3xlbnwwfHwwfHx8MA%3D%3D', 34, 1, 1, '2025-12-15 02:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(2, 'Match Reports'),
(4, 'New category'),
(1, 'Player Profiles'),
(5, 'Something new'),
(3, 'Transfer News');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  KEY `idx_comments_article` (`article_id`),
  KEY `idx_comments_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `article_id`, `user_id`, `content`, `created_at`) VALUES
(30, 44, NULL, 'provjera opet', '2025-12-15 02:20:12'),
(31, 44, NULL, 'moj komentar', '2025-12-15 02:29:14'),
(39, 44, NULL, 'good !!!!!!!!', '2026-02-20 03:15:27'),
(40, 37, 37, 'Great article!', '2026-02-20 23:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

DROP TABLE IF EXISTS `leagues`;
CREATE TABLE IF NOT EXISTS `leagues` (
  `league_id` int NOT NULL AUTO_INCREMENT,
  `league_name` varchar(100) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`league_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `leagues`
--

INSERT INTO `leagues` (`league_id`, `league_name`, `country`) VALUES
(1, 'Serie A', 'Italy'),
(2, 'Premier League', 'England'),
(3, 'La Liga', 'Spain'),
(4, 'La Liga 2 added for testing', 'Spain');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) NOT NULL,
  `league_id` int DEFAULT NULL,
  `founded_year` int DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `idx_teams_league` (`league_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `league_id`, `founded_year`) VALUES
(1, 'AC Milan', 1, 1899),
(2, 'Manchester United', 1, 1878),
(3, 'Real Madrid', 2, 1902),
(4, 'Real Madrid', 2, 1902),
(5, 'Manchester United', 1, 1878),
(6, 'Manchester United', 1, 1878);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('user','editor','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password_hash`, `role`, `created_at`) VALUES
(34, 'admin90', 'admin@90minut.com', '$2y$10$jm8La9L/lg/JxUc.MxZoZODg7g5lml7XjoGLOaFzJiGiofW/8anUC', 'admin', '2026-02-20 03:12:08'),
(37, 'regularUser', 'githubuser1@90minut.com', '$2y$10$tULSU49Vkmc/I1pHMDZH1.6SYl2Xugi0a4RfYVIyoZiGicYA2SRhC', 'user', '2026-02-20 23:28:35');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`league_id`) ON DELETE SET NULL;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`league_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
