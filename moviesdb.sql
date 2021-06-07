-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 02:17 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--
CREATE DATABASE moviesdb;

CREATE TABLE `genre` (
  `GenreID` int(11) NOT NULL,
  `MovieID` int(11) NOT NULL,
  `MovieGenre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`GenreID`, `MovieID`, `MovieGenre`) VALUES
(1, 1, 'Action'),
(2, 2, 'Action'),
(3, 3, 'Action'),
(4, 3, 'Comedy'),
(5, 5, 'Horror'),
(6, 6, 'Action'),
(7, 7, 'Action'),
(8, 8, 'Horror'),
(9, 9, 'Horror'),
(10, 10, 'Action'),
(11, 10, 'Drama'),
(12, 11, 'Drama'),
(13, 12, 'Comedy'),
(14, 12, 'Drama'),
(15, 13, 'Comedy'),
(16, 14, 'Comedy'),
(17, 14, 'Drama'),
(18, 15, 'Comedy'),
(19, 16, 'Drama'),
(20, 17, 'Drama'),
(21, 18, 'Drama'),
(22, 19, 'Horror'),
(23, 20, 'Horror'),
(24, 21, 'Drama'),
(25, 21, 'Horror'),
(26, 22, 'Drama'),
(27, 22, 'Horror'),
(28, 23, 'Comedy'),
(29, 24, 'Comedy'),
(30, 25, 'Comedy'),
(31, 26, 'Action'),
(32, 26, 'Drama'),
(33, 27, 'Drama'),
(34, 28, 'Drama'),
(35, 29, 'Action'),
(36, 29, 'Drama'),
(37, 30, 'Action'),
(38, 30, 'Drama'),
(39, 31, 'Action'),
(40, 32, 'Action'),
(41, 33, 'Action'),
(42, 34, 'Action'),
(43, 34, 'Drama'),
(44, 35, 'Action'),
(45, 35, 'Drama'),
(46, 36, 'Comedy'),
(47, 37, 'Comedy'),
(48, 38, 'Comedy'),
(49, 40, 'Comedy'),
(50, 41, 'Drama'),
(51, 41, 'Horror'),
(52, 42, 'Drama'),
(53, 42, 'Horror'),
(54, 43, 'Horror'),
(55, 44, 'Horror'),
(56, 45, 'Horror'),
(57, 46, 'Drama'),
(58, 47, 'Drama'),
(59, 48, 'Drama'),
(60, 49, 'Action'),
(61, 50, 'Action'),
(62, 51, 'Comedy'),
(63, 52, 'Action'),
(64, 53, 'Action'),
(65, 54, 'Drama'),
(66, 55, 'Drama'),
(67, 56, 'Action'),
(68, 57, 'Drama'),
(69, 58, 'Drama'),
(70, 59, 'Action'),
(71, 60, 'Comedy'),
(72, 61, 'Comedy'),
(73, 62, 'Horror'),
(74, 63, 'Horror'),
(75, 64, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `MovieID` int(11) NOT NULL,
  `MovieName` varchar(100) NOT NULL,
  `ReleaseYear` year(4) NOT NULL,
  `Length` int(11) NOT NULL,
  `Trailer` varchar(150) NOT NULL,
  `Poster` varchar(250) NOT NULL,
  `Banner` varchar(250) NOT NULL,
  `IMDb_Rating` decimal(3,1) NOT NULL,
  `Description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MovieID`, `MovieName`, `ReleaseYear`, `Length`, `Trailer`, `Poster`, `Banner`, `IMDb_Rating`, `Description`) VALUES
(1, 'Venom', 2018, 140, 'https://www.youtube.com/watch?v=u9Mv98Gr5pY', 'https://www.joblo.com/assets/images/oldsite/posters/images/full/Venom-poster-6.jpg', 'https://pbs.twimg.com/media/DboAAszWkAAB4Li.jpg', '6.7', 'Journalist Eddie Brock is trying to take down Carlton Drake, the notorious and brilliant founder of the Life Foundation. While investigating one of Drake\'s experiments, Eddie\'s body merges with the alien Venom -- leaving him with superhuman strength and power. Twisted, dark and fueled by rage, Venom tries to control the new and dangerous abilities that Eddie finds so intoxicating.'),
(2, 'Red', 2010, 111, 'https://www.youtube.com/watch?v=-JZ_moituIo', 'https://flxt.tmsimg.com/assets/p8099350_p_v10_bb.jpg', 'https://borgdotcom.files.wordpress.com/2013/06/red-movie-poster.jpg', '7.0', 'After surviving an assault from a squad of hit men, retired CIA agent Frank Moses (Bruce Willis) reassembles his old team for an all-out war. Frank reunites with old Joe (Morgan Freeman), crazy Marvin (John Malkovich) and wily Victoria (Helen Mirren) to uncover a massive conspiracy that threatens their lives. Only their expert training will allow them to survive a near-impossible mission -- breaking into CIA headquarters.'),
(3, 'Central Intelligence', 2016, 116, 'https://www.youtube.com/watch?v=MxEw3elSJ8M', 'https://images-na.ssl-images-amazon.com/images/I/81ioA49NNgL._AC_SL1500_.jpg', 'https://hcmoviereviews.files.wordpress.com/2016/07/central-intelligence-banner.jpg?w=768', '6.3', 'Bullied as a teen for being overweight, Bob Stone (Dwayne Johnson) shows up to his high school reunion looking fit and muscular. While there, he finds Calvin Joyner (Kevin Hart), a fast-talking accountant who misses his glory days as a popular athlete. Stone is now a lethal CIA agent who needs Calvin\'s number skills to help him save the compromised U.S. spy satellite system. Together, the former classmates encounter shootouts, espionage and double-crosses while trying to prevent worldwide chaos.'),
(5, 'Us', 2019, 121, 'https://www.youtube.com/watch?v=hNCmb-4oXJA', 'https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_.jpg', 'https://okaycoolca.files.wordpress.com/2019/03/jordan-peele-us-banner-poster-3.jpg', '6.8', 'Accompanied by her husband, son and daughter, Adelaide Wilson returns to the beachfront home where she grew up as a child. Haunted by a traumatic experience from the past, Adelaide grows increasingly concerned that something bad is going to happen. Her worst fears soon become a reality when four masked strangers descend upon the house, forcing the Wilsons into a fight for survival. When the masks come off, the family is horrified to learn that each attacker takes the appearance of one of them.'),
(6, 'John Wick', 2014, 102, 'https://www.youtube.com/watch?v=C0BMx-qxsP4', 'https://m.media-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_.jpg', 'http://thescenescribe.com/wordpress/wp-content/uploads/2017/02/WickMain.jpg', '7.4', 'Retired super-assassin John Wick\'s plans to resume a quiet civilian life are cut short when Italian gangster Santino D\'Antonio shows up on his doorstep with a gold marker, compelling him to repay past favours. Ordered by Winston, the kingpin of secret assassin society The Continental, to respect the organisation\'s ancient code, Wick reluctantly accepts the assignment to travel to Rome to take out D\'Antonio\'s sister, the ruthless capo atop the Italian Camorra crime syndicate.'),
(7, 'Mission: Impossible - Fallout', 1996, 110, 'https://www.youtube.com/watch?v=Ohws8y572KE', 'https://m.media-amazon.com/images/M/MV5BMTc3NjI2MjU0Nl5BMl5BanBnXkFtZTgwNDk3ODYxMTE@._V1_.jpg', 'https://thehollywoodtribune.com/wp-content/uploads/2020/07/Mission-Impossible-7-3.jpg', '7.7', 'Ethan Hunt and the IMF team join forces with CIA assassin August Walker to prevent a disaster of epic proportions. Arms dealer John Lark and a group of terrorists known as the Apostles plan to use three plutonium cores for a simultaneous nuclear attack on the Vatican, Jerusalem and Mecca, Saudi Arabia. When the weapons go missing, Ethan and his crew find themselves in a desperate race against time to prevent them from falling into the wrong hands.'),
(8, 'Run', 2020, 99, 'https://www.youtube.com/watch?v=0Dhh7q9Us5c', 'https://www.joblo.com/assets/images/joblo/posters/2020/02/Run-poster-1.jpg', 'https://whatsondisneyplus.com/wp-content/uploads/2020/08/run-1024x576.jpg', '6.7', 'Chloe was raised by her mother Diane in total isolation. Her mother has totally controlled her since she was born, but now as a teenager Chloe is starting to explore her mother\'s secrets.'),
(9, 'Psycho', 1960, 109, 'https://www.youtube.com/watch?v=NG3-GlvKPcg', 'https://i.pinimg.com/originals/91/7f/d6/917fd68127637ca86dcf9748e4e87630.jpg', 'https://cropper.watch.aetnd.com/cdn.watch.aetnd.com/sites/2/2018/06/Psycho-517331430.jpg', '8.5', 'Phoenix secretary Marion Crane (Janet Leigh), on the lam after stealing $40,000 from her employer in order to run away with her boyfriend, Sam Loomis (John Gavin), is overcome by exhaustion during a heavy rainstorm. Traveling on the back roads to avoid the police, she stops for the night at the ramshackle Bates Motel and meets the polite but highly strung proprietor Norman Bates (Anthony Perkins), a young man with an interest in taxidermy and a difficult relationship with his mother.'),
(10, 'The Dark Knight', 2008, 152, 'https://www.youtube.com/watch?v=EXeTwQWrcwY', 'https://i.pinimg.com/originals/cc/47/a5/cc47a507854dfe4ea145ebb4c9ae51c4.jpg', 'https://c4.wallpaperflare.com/wallpaper/928/868/865/the-dark-knight-a-symbol-of-hope-wallpaper-preview.jpg', '9.0', 'With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.'),
(11, 'The Godfather', 1972, 175, 'https://www.youtube.com/watch?v=sY1S34973zA', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 'http://sportschump.net/wp-content/uploads/2017/03/the-godfather-banner.jpg', '9.2', 'It is the first installment in The Godfather trilogy. The story, spanning from 1945 to 1955, chronicles the Corleone family under patriarch Vito Corleone (Brando), focusing on the transformation of his youngest son, Michael Corleone (Pacino), from reluctant family outsider to ruthless mafia boss.'),
(12, 'Parasite', 2019, 132, 'https://www.youtube.com/watch?v=isOGD_7hNIY', 'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 'https://assetsmysky.blob.core.windows.net/assetsmysky/production/media-upload/1584429186_parasite.jpg', '8.6', 'The Kim family—father Ki-taek, mother Chung-sook, daughter Ki-jung, and son Ki-woo—live in a small semi-basement apartment (banjiha),[10] have low-paying temporary jobs as pizza box folders, and struggle to make ends meet.[11] University student Min-hyuk, a friend of Ki-woo\'s, gives the family a scholar\'s rock meant to promise wealth. Leaving to study abroad, he suggests that Ki-woo pose as a university student to take over his job as an English tutor for the daughter of the wealthy Park family, Da-hye. Ki-woo poses as a Yonsei University student and is hired by the Parks.'),
(13, 'Life Is Beautiful', 1997, 121, 'https://www.youtube.com/watch?v=8CTjcVr9Iao', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR7vuZPSEy7H4txM8YNUKJ71BtvjYungGXSFJ7f0mm4HDN4IJaR', 'https://i.ytimg.com/vi/8CTjcVr9Iao/maxresdefault.jpg', '8.6', 'A gentle Jewish-Italian waiter, Guido Orefice (Roberto Benigni), meets Dora (Nicoletta Braschi), a pretty schoolteacher, and wins her over with his charm and humor. Eventually they marry and have a son, Giosue (Giorgio Cantarini). Their happiness is abruptly halted, however, when Guido and Giosue are separated from Dora and taken to a concentration camp. Determined to shelter his son from the horrors of his surroundings, Guido convinces Giosue that their time in the camp is merely a game.'),
(14, 'The Intouchables', 2011, 113, 'https://www.youtube.com/watch?v=34WIbmXkewU', 'http://www.movienewsletters.net/photos/112140R1.jpg', 'https://bibliochino.github.io/moviepage/intouchables.jpg', '8.5', 'A Parisian aristocrat, quadriplegic since a paragliding accident, hires a young man to be his live-in caretaker. Although very different the two men bond and develop a close friendship.'),
(15, 'Back to the Future', 1985, 116, 'https://www.youtube.com/watch?v=qvsgGtivCgs', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT9d_lBBx0xxB7_d4RP82MlRcK82lzT2W1ZavxhV39SSTZOofDX', 'https://enterthecinema.files.wordpress.com/2015/08/back-to-the-future-banner.jpeg', '8.5', 'In this 1980s sci-fi classic, small-town California teen Marty McFly (Michael J. Fox) is thrown back into the \'50s when an experiment by his eccentric scientist friend Doc Brown (Christopher Lloyd) goes awry. Traveling through time in a modified DeLorean car, Marty encounters young versions of his parents (Crispin Glover, Lea Thompson), and must make sure that they fall in love or he\'ll cease to exist. Even more dauntingly, Marty has to return to his own time and save the life of Doc Brown.'),
(16, 'The Godfather: Part II', 1974, 202, 'https://www.youtube.com/watch?v=9O1Iy9od7-A', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRZ6ToTQtumClvfIsMO46QiwvAm47_ghVBSZsjrJxjjPt38gyeg', 'https://gonewiththetwins.com/new/wp-content/franchiseimages/godfather1_banner.jpg', '9.0', 'In 1901, the family of nine-year-old Vito Andolini is killed in Corleone, Sicily, after his father insults local Mafia chieftain Don Ciccio. Vito escapes on a ship to New York City, and is registered as \"Vito Corleone\" on Ellis Island. In 1917, having settled in New York, he marries and has a son, whom he names Santino (\"Sonny\"), with his wife. He loses his job due to the interference of a local don, Fanucci; Clemenza invites Vito to take part in a burglary unwittingly.'),
(17, '12 Angry Men', 1957, 96, 'https://www.youtube.com/watch?v=_13J_9B5jEk', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQuhFZT3lQfr0vDy4XWMHQ8X93FWuamEuw_5iB4dmOTxc_w79rA', 'https://picfiles.alphacoders.com/990/99096.jpg', '9.0', 'Following the closing arguments in a murder trial, the 12 members of the jury must deliberate, with a guilty verdict meaning death for the accused, an inner-city teen. As the dozen men try to reach a unanimous decision while sequestered in a room, one juror (Henry Fonda) casts considerable doubt on elements of the case. Personal issues soon rise to the surface, and conflict threatens to derail the delicate process that will decide one boy\'s fate.'),
(18, 'Schindler\'s List', 1993, 197, 'https://www.youtube.com/watch?v=mxphAlJID9U', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBoUo0lPtAJiO0RyEb_C44usrfMq4VhNN_L8zk_wtd8QQuZzSh', 'https://www.facinghistory.org/sites/default/files/units/Schindlers_list_banner.jpg', '8.9', 'Businessman Oskar Schindler (Liam Neeson) arrives in Krakow in 1939, ready to make his fortune from World War II, which has just started. After joining the Nazi party primarily for political expediency, he staffs his factory with Jewish workers for similarly pragmatic reasons. When the SS begins exterminating Jews in the Krakow ghetto, Schindler arranges to have his workers protected to keep his factory in operation, but soon realizes that in so doing, he is also saving innocent lives.'),
(19, 'The Shining', 1980, 146, 'https://www.youtube.com/watch?v=5Cb3ik6zP2I', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1uTHLLpBhlXQEVDzar5kTUuDxo99jueJWXgVeTaQN1N6N58Tq', 'https://mediocrityisthenewgenius.files.wordpress.com/2013/10/shining_banner.jpg', '8.4', 'Jack Torrance (Jack Nicholson) becomes winter caretaker at the isolated Overlook Hotel in Colorado, hoping to cure his writer\'s block. He settles in along with his wife, Wendy (Shelley Duvall), and his son, Danny (Danny Lloyd), who is plagued by psychic premonitions. As Jack\'s writing goes nowhere and Danny\'s visions become more disturbing, Jack discovers the hotel\'s dark secrets and begins to unravel into a homicidal maniac hell-bent on terrorizing his family.'),
(20, 'Alien', 1979, 117, 'https://www.youtube.com/watch?v=jQ5lPt9edzQ', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSKWeplicF676cMRKV8kqkCErnbNxp6Sm2XQyrrjGNpoLp_lrjI', 'https://i.pinimg.com/originals/c3/59/bb/c359bbb56a48556812bb3c45eebcec4c.jpg', '8.4', 'In deep space, the crew of the commercial starship Nostromo is awakened from their cryo-sleep capsules halfway through their journey home to investigate a distress call from an alien vessel. The terror begins when the crew encounters a nest of eggs inside the alien ship. An organism from inside an egg leaps out and attaches itself to one of the crew, causing him to fall into a coma.'),
(21, 'Tumbbad', 2018, 104, 'https://www.youtube.com/watch?v=sN75MPxgvX8', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTk7cH-3XEfQCfzUFHQLL4OhYPL-SYcNUUoWsW1cqUAK_y8Tp8K', 'https://images.newindianexpress.com/uploads/user/imagelibrary/2018/10/13/w900X450/Arthouse_horror.jpg', '8.3', 'The plot revolves around the consequences when humans build a temple for her first-born. Set in Tumbbad in the 1920s, the story revolves around the three generations of a family facing the consequences when they build a temple for the first-born of a goddess, named Hastar--he who must not be worshiped.'),
(22, 'The Blue Elephant', 2014, 170, 'https://www.youtube.com/watch?v=sRGd5FASrpk', 'https://upload.wikimedia.org/wikipedia/en/e/e2/The_Blue_Elephant.jpg', 'https://assets.whatsnewonnetflix.com/external_assets/sggkh+%5B%5Blxx*9*7226*7225_8_muochl_mvg%5Bwmn%5Bzkr%5Be3%5B9WD3XwV5tBgBc1rb6zq1th0DgCV%5BZZZZYI1pbM6vAV6hYUtuBMiTeDd0oTTPkek2r3Zjjv454Kr5x7yWKeh%5DxOubcoyxQN3yfPLbPmVsVIIFWFRDmXRznslYfPYB8KLU.jpg?', '8.2', 'After 5 years of drop-out, Psychiatrist Dr. Yehia (Karim Abdel Aziz) returns to his job in El-Abbaseya Hospital, Just to find his College friend Sherif (Khaled El Sawy) just arrived for mental and psychological evaluation for being accused of murder. Trying to help him, Yehia unravels mysteries he never thought existed.'),
(23, 'Modern Times', 1936, 89, 'https://www.youtube.com/watch?v=GLeDdzGUTq0', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS9l-ZJlstUwtdEr4qf-riZBx3i2kfczrD0VGIc1ZcL2F8EHF7R', 'https://res.cloudinary.com/the-take/image/fetch/f_auto/w_720,h_405,c_fill/https://the-take.com/images/uploads/screenprism/_constrain-720w/modern-times-fianl-shot.jpg', '8.5', 'This comedic masterpiece finds the iconic Little Tramp (Charlie Chaplin) employed at a state-of-the-art factory where the inescapable machinery completely overwhelms him, and where various mishaps keep getting him sent to prison. In between his various jail stints, he meets and befriends an orphan girl (Paulette Goddard). Both together and apart, they try to contend with the difficulties of modern life, with the Tramp working as a waiter and eventually a performer.'),
(24, 'City Lights', 1931, 87, 'https://www.youtube.com/watch?v=7vl7F8S4cpQ', 'http://www.movienewsletters.net/photos/010793R1.jpg', 'https://static.rogerebert.com/uploads/review/primary_image/reviews/great-movie-city-lights-1931/homepage_city-lights-image-7.jpg', '8.5', 'A hapless but resilient tramp (Charlie Chaplin) falls in love with a blind flower girl (Virginia Cherrill) on the tough city streets. Upon learning that she and her grandmother are to be evicted from their home, the tramp undertakes a series of attempts to provide them with the money they need, all of which end in humiliating failure. But after a drunken millionaire (Harry Myers) lavishly rewards him for saving his life, the tramp can change the flower girl\'s life forever.'),
(25, '3 Idiots', 2009, 171, 'https://www.youtube.com/watch?v=K0eDlFX9GMc', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQJKJ6lGwFMrQR0gDdFAp0KU4kJ5WYhEpB8GcrQtlhrcAQ75QV-', 'https://fanart.tv/api/download.php?type=download&image=141788&section=3', '8.4', 'In college, Farhan and Raju form a great bond with Rancho due to his positive and refreshing outlook to life. Years later, a bet gives them a chance to look for their long-lost friend whose existence seems rather elusive.'),
(26, 'The Lord of the Rings: The Return of the King', 2003, 201, 'https://www.youtube.com/watch?v=r5X-hFf6Bwo', 'http://www.limitedruns.com/media/cache/7e/6b/7e6b6743a7e45d096838abd67b2464e2.jpg', 'https://a.ltrbxd.com/resized/sm/upload/a7/4r/al/mc/lotr-return-of-the-king-1200-1200-675-675-crop-000000.jpg?k=bb233856dd', '8.9', 'The culmination of nearly 10 years\' work and conclusion to Peter Jackson\'s epic trilogy based on the timeless J.R.R. Tolkien classic, \"The Lord of the Rings: The Return of the King\" presents the final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Hobbits Frodo and Sam reach Mordor in their quest to destroy the `one ring\', while Aragorn leads the forces of good against Sauron\'s evil army at the stone city of Minas Tirith.'),
(27, 'Pulp Fiction', 1994, 178, 'https://www.youtube.com/watch?v=tGpTpVyI_OQ', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRz_2nKTNlxhVtzbh29kgL3m2ebLv3TlYyzrbyqBtEUxt6mBuZ-', 'https://www.cinemasterpieces.com/pulpfictionbannerebay.jpg', '8.9', 'Vincent Vega (John Travolta) and Jules Winnfield (Samuel L. Jackson) are hitmen with a penchant for philosophical discussions. In this ultra-hip, multi-strand crime movie, their storyline is interwoven with those of their boss, gangster Marsellus Wallace (Ving Rhames) ; his actress wife, Mia (Uma Thurman) ; struggling boxer Butch Coolidge (Bruce Willis) ; master fixer Winston Wolfe (Harvey Keitel) and a nervous pair of armed robbers, \"Pumpkin\" (Tim Roth) and \"Honey Bunny\" (Amanda Plummer).'),
(28, 'Fight Club', 1999, 149, 'https://www.youtube.com/watch?v=BdJKm16Co6M', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQNgTszE1phYg2G7H4RrgeSEssOw-Kpnh0Si-sF5pVQQrBXJ_6e', 'https://www.mensjournal.com/wp-content/uploads/2019/10/fight-club-mainer-main.jpg?quality=86&strip=all', '8.8', 'A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club with strict rules and fight other men who are fed up with their mundane lives. Their perfect partnership frays when Marla (Helena Bonham Carter), a fellow support group crasher, attracts Tyler\'s attention.'),
(29, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'https://www.youtube.com/watch?v=V75dMMIW2B4', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT9J7XACn3tlD6v4UXRMvT2wJN8FGCCPeh8U3RkZ6__tR4wGhSo', 'https://s29288.pcdn.co/wp-content/uploads/2020/03/fellowship-of-the-ring-poster.jpg', '8.8', 'The future of civilization rests in the fate of the One Ring, which has been lost for centuries. Powerful forces are unrelenting in their search for it. But fate has placed it in the hands of a young Hobbit named Frodo Baggins (Elijah Wood), who inherits the Ring and steps into legend. A daunting task lies ahead for Frodo when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount Doom where it was forged.'),
(30, 'The Lord of the Rings: The Two Towers', 2002, 179, 'https://www.youtube.com/watch?v=LbfMDwc4azU', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRQ8FDyks__YDKFPRm3Oj4Dd-yMl7pcGtgIM5IX-nd_6oJQrPiN', 'https://www.brc.com.au/Images/UserUploadedImages/622/Webpage%20Banner_LOTR2.jpg', '8.7', 'The sequel to the Golden Globe-nominated and AFI Award-winning \"The Lord of the Rings: The Fellowship of the Ring,\" \"The Two Towers\" follows the continuing quest of Frodo (Elijah Wood) and the Fellowship to destroy the One Ring. Frodo and Sam (Sean Astin) discover they are being followed by the mysterious Gollum. Aragorn (Viggo Mortensen), the Elf archer Legolas and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman\'s deadly spell.'),
(31, 'The Matrix', 1999, 136, 'https://www.youtube.com/watch?v=vKQi3bBA1y8', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS4jfQQt_0vCA4XSwGiWkffC32Tv2oajdWhaYHHVYylYGJ3v17Q', 'https://headstuffuploads.s3.amazonaws.com/2018/04/21175431/matrix-reloaded-banner.jpg', '8.7', 'In the near future, a computer hacker named Neo discovers that all life on Earth may be nothing more than an elaborate facade created by a malevolent cyber-intelligence, for the purpose of placating us while our life essence is \"farmed\" to fuel the Matrix\'s campaign of domination in the \"real\" world. He joins like-minded Rebel warriors Morpheus and Trinity in their struggle to overthrow the Matrix.'),
(32, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 124, 'https://www.youtube.com/watch?v=JNwNXF9Y6kY', 'https://images-na.ssl-images-amazon.com/images/I/91eOgodm4nL.jpg', 'https://www.margaretriver.com/wp-content/uploads/2020/09/6jycQtEorKgmcsi9AeYBrRxlpqu.jpg', '8.7', 'The adventure continues in this \"Star Wars\" sequel. Luke Skywalker (Mark Hamill), Han Solo (Harrison Ford), Princess Leia (Carrie Fisher) and Chewbacca (Peter Mayhew) face attack by the Imperial forces and its AT-AT walkers on the ice planet Hoth. While Han and Leia escape in the Millennium Falcon, Luke travels to Dagobah in search of Yoda. Only with the Jedi master\'s help will Luke survive when the dark side of the Force beckons him into the ultimate duel with Darth Vader (David Prowse).'),
(33, 'Star Wars: Episode IV - A New Hope', 1977, 121, 'https://www.youtube.com/watch?v=vZ734NWnAHA', 'https://images-na.ssl-images-amazon.com/images/I/81aA7hEEykL.jpg', 'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/2508D58FB09F38EA98087EAD620093564F1D283D44A1C7FD29452D6F8F7D909E/scale?width=1200&aspectRatio=1.78&format=jpeg', '8.6', 'The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 (Kenny Baker) and C-3PO (Anthony Daniels) to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and justice to the Galaxy.'),
(34, 'Hara-Kiri', 1962, 133, 'https://www.youtube.com/watch?v=gfABwM-Ppng', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTo28cWf5Mte0gDxbTsPzd95WL5N9i1WZGdTYA1-dhChtKfyWVK', 'https://lh3.googleusercontent.com/proxy/cs16XJc99HRMf2jkXm1W2YSR5MOJMfQW608izz4q0G0V70Ow3jlevOFpozCaiykhacb5JvaxLb_9SUYMqQkNPuk9m-L3v2Amqz1EdMQCl2JP0dXU8ci2_1n6', '8.6', 'Aging samurai Hanshiro Tsugumo (Tatsuya Nakadai) arrives at the home of Kageyu Saito (Rentarô Mikuni) and asks to commit a ritual suicide on the property, which Saito thinks is a ploy to gain pity and a job. Saito tells Tsugumo of another samurai, Motome Chijiiwa (Yoshio Inaba), who threatened suicide as a stratagem, only to be forced to follow through on the task. When Tsugumo reveals that Chijiiwa was his son-in-law, the disclosure sets off a fierce conflict.'),
(35, 'Seven Samurai', 1954, 207, 'https://www.youtube.com/watch?v=7mw6LyyoeGE', 'https://images-na.ssl-images-amazon.com/images/I/61CTlEQZrRL._AC_.jpg', 'https://i1.wp.com/www.heyuguys.com/images/2020/05/p06pvdgg.jpg?fit=1600%2C900&ssl=1', '8.6', 'A samurai answers a village\'s request for protection after he falls on hard times. The town needs protection from bandits, so the samurai gathers six others to help him teach the people how to defend themselves, and the villagers provide the soldiers with food. A giant battle occurs when 40 bandits attack the village.'),
(36, 'The Good, the Bad and the Ugly', 1966, 238, 'https://www.youtube.com/watch?v=IFNUGzCOQoI', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRWDmo53KUF3JwDl9GIcWvHOM6z86sMpmmjP6lYksB64KPfagxu', 'https://huddle.eurostarsoftwaretesting.com/wp-content/uploads/2017/01/the-good-the-bad-and-the-ugly-t-anderson-banner.jpg', '8.8', 'In the Southwest during the Civil War, a mysterious stranger, Joe (Clint Eastwood), and a Mexican outlaw, Tuco (Eli Wallach), form an uneasy partnership -- Joe turns in the bandit for the reward money, then rescues him just as he is being hanged. When Joe\'s shot at the noose goes awry during one escapade, a furious Tuco tries to have him murdered. The men re-team abruptly, however, to beat out a sadistic criminal and the Union army and find $20,000 that a soldier has buried in the desert.'),
(37, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 1964, 102, 'https://www.youtube.com/watch?v=jPU1AYTxwg4', 'https://i.ytimg.com/vi/d-X_D2JUAAY/movieposter_en.jpg', 'https://static.seekingalpha.com/uploads/2016/5/6165571_14630612227717_rId5.jpg', '8.4', 'A film about what could happen if the wrong person pushed the wrong button -- and it played the situation for laughs. U.S. Air Force General Jack Ripper goes completely insane, and sends his bomber wing to destroy the U.S.S.R. He thinks that the communists are conspiring to pollute the \"precious bodily fluids\" of the American people.'),
(38, 'The Great Dictator', 1940, 126, 'https://www.youtube.com/watch?v=4sfJxdytYn4', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/The_Great_Dictator_%281940%29_poster.jpg/1200px-The_Great_Dictator_%281940%29_poster.jpg', 'https://media.vanityfair.com/photos/5da9ff969e08eb000888a6a0/7:3/w_1995,h_855,c_limit/The-Great-Dictator.jpg', '8.4', 'After dedicated service in the Great War, a Jewish barber (Charles Chaplin) spends years in an army hospital recovering from his wounds, unaware of the simultaneous rise of fascist dictator Adenoid Hynkel (also Chaplin) and his anti-Semitic policies. When the barber, who bears a remarkable resemblance to Hynkel, returns to his quiet neighborhood, he is stunned by the brutal changes and recklessly joins a beautiful girl (Paulette Goddard) and her neighbors in rebelling.'),
(40, 'Toy Story', 1995, 81, 'https://www.youtube.com/watch?v=v-PjgYDrg70', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKk8fPFSi83NmjO4hlth9VpXsqigxNXrG10hXum8ljJ_fZ07c1', 'https://gonewiththetwins.com/new/wp-content/franchiseimages/toystory1_banner.jpg', '8.3', 'Woody, a traditional pull-string talking cowboy, has long enjoyed a place of honor as the favorite among six-year-old Andy\'s menagerie of toys. Quick to calm their anxieties about being replaced by newer arrivals, Woody finds his own confidence shaken, and his status as top toy in jeopardy, upon the arrival of Buzz Lightyear, simply the coolest space action figure ever made. Woody plots to get rid of Buzz, but things backfire and he finds himself lost in the outside world with Buzz as his only companion. Joining forces to find their way home, the two rivals set out on an adventure that lands them in the clutches of Sid, a sadistic neighborhood kid who is notorious for dismembering and reassembling \"mutant\" toys in his bedroom. As \"guests\" of Sid and his dog, Scud, the two fugitive toys forge a genuine friendship and learn that only through mutual trust and respect do they have any chance of survival.'),
(41, 'What Ever Happened to Baby Jane?', 1962, 134, 'https://www.youtube.com/watch?v=3qFYjkFCxiE', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQY1wLjF-B0jCZTBaIzqk1OHow134cynPMTrjlwyuH58bvkl-e', 'https://fanart.tv/api/download.php?type=download&image=20599&section=3', '8.1', 'Jane Hudson (Bette Davis) is an aging child star left to care for her wheelchair-bound sister Blanche (Joan Crawford), also a former child actress. Stuck living together in a mansion in old Hollywood, Blanche plots to get even with Jane for the car crash that left her crippled years earlier. But Jane is desperate to keep Blanche imprisoned as she plans a new rise to fame, and tries to hide Blanche\'s existence from doctors, visitors and neighbors while she devises a way to get rid of her sister.'),
(42, 'Diabolique', 1995, 117, 'https://www.youtube.com/watch?v=BzbGtjtfZwA', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRIA7MXAQP9zSPhXeqFpZ45pSJTywmcKfCPw2DCCkoFzcb_GSkO', 'https://littlemoviereviews.files.wordpress.com/2020/10/diaboliquebanner.jpg', '8.1', 'In this classic of French suspense, the cruel and abusive headmaster of a boarding school, Michel Delassalle (Paul Meurisse), becomes the target of a murder plot hatched by an unlikely duo -- his meek wife (Vera Clouzot) and the mistress he brazenly flaunts (Simone Signoret). The women, brought together by their mutual hatred for the man, pull off the crime but become increasingly unhinged by a series of odd occurrences after Delassalle\'s corpse mysteriously disappears.'),
(43, 'The Cabinet of Dr. Caligari', 1920, 67, 'https://www.youtube.com/watch?v=IAtpxqajFak', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQrOGZacCS6tW3VWlTYa-rw6V2LBC5CqcABBkWQG7hdDHNrsSsI', 'https://static01.nyt.com/images/2006/10/25/arts/25cali.600.jpg', '8.1', 'At a carnival in Germany, Francis (Friedrich Feher) and his friend Alan (Rudolf Lettinger) encounter the crazed Dr. Caligari (Werner Krauss). The men see Caligari showing off his somnambulist, Cesare (Conrad Veidt), a hypnotized man who the doctor claims can see into the future. Shockingly, Cesare then predicts Alan\'s death, and by morning his chilling prophecy has come true -- making Cesare the prime suspect. However, is Cesare guilty, or is the doctor controlling him?'),
(44, 'The Exorcist', 1973, 122, 'https://www.youtube.com/watch?v=jyW5YXDcIGs', 'https://cdn.shopify.com/s/files/1/1416/8662/products/exorcist_1974_original_film_art_1200x.jpg?v=1592938248', 'https://www.factinate.com/wp-content/uploads/2017/10/Internal-Edited-17-1024x535.jpg', '8.0', 'One of the most profitable horror movies ever made, this tale of an exorcism is based loosely on actual events. When young Regan (Linda Blair) starts acting odd -- levitating, speaking in tongues -- her worried mother (Ellen Burstyn) seeks medical help, only to hit a dead end. A local priest (Jason Miller), however, thinks the girl may be seized by the devil. The priest makes a request to perform an exorcism, and the church sends in an expert (Max von Sydow) to help with the difficult job.'),
(45, 'Paranormal Activity 4', 2012, 99, 'https://www.youtube.com/watch?v=634Bomn3cn4', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQpxCrljW88Efndgkt-0yOA3tIhWtIe9BH9zlNr7ICmVXZHOlcs', 'https://www.syfy.com/sites/syfy/files/wire/legacy/paranormal-activity-4-1600.jpg', '4.6', 'It has been five years since Katie (Katie Featherston) murdered her sister and disappeared with her infant nephew, Hunter, in tow. Now, a new family is about to fall prey to nighttime terrors. A mysterious accident next door leads to teenage Alex (Kathryn Newton) and her family becoming the temporary guardians of Robbie (Brady Allen), a very creepy neighbor boy. Cameras installed throughout Alex\'s home capture the sinister events that unfold after Robbie\'s arrival.'),
(46, 'Requiem for a Dream', 2000, 110, 'https://www.youtube.com/watch?v=jzk-lmU4KZ4', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRVHibJ1AiKYd7XF-Z4Mtc-pxlhi9j0-kt587qDMdZOkh4WPj5e', 'https://image.airtel.tv/LIONSGATEPLAY/LIONSGATEPLAY_MOVIE_REQUIEMFORADREAMY2000M/LANDSCAPE_169/REQUIEMFORADREAMY2000M_Jio_banner_1920X1080.jpg', '8.3', 'Imaginatively evoking the inner landscape of human beings longing to connect, to love and feel loved, the film is a parable of happiness gloriously found and tragically lost. \"Requiem for a Dream\" tells parallel stories that are linked by the relationship between the lonely, widowed Sara Goldfarb and her sweet but aimless son, Harry. The plump Sara, galvanized by the prospect of appearing on a TV game show, has started on a dangerous diet regimen to beautify herself for a national audience.'),
(47, 'Interstellar', 2014, 169, 'https://www.youtube.com/watch?v=zSWdZVtXT7E', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRf61mker2o4KH3CbVE7Zw5B1-VogMH8LfZHEaq3UdCMLxARZAB', 'https://gizmostory.com/wp-content/uploads/2020/12/Interstellar.jpg', '8.6', 'In Earth\'s future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth\'s population to a new home via a wormhole. But first, Brand must send former NASA pilot Cooper (Matthew McConaughey) and a team of researchers through the wormhole and across the galaxy to find out which of three planets could be mankind\'s new home.'),
(48, 'Grave of the Fireflies', 1988, 93, 'https://www.youtube.com/watch?v=4vPeTSRd580', 'http://www.movienewsletters.net/photos/072500R1.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMF9Ge7cZL52rfpH6x9wvWT1J8JJ1j3AvtM6Im05Jx7TtFk_Vo2Sfi1r43W7x3A-aOR3A&usqp=CAU', '8.5', 'A devastating meditation on the human cost of war, this animated tale follows Seita (Tsutomu Tatsumi), a teenager charged with the care of his younger sister, Setsuko (Ayano Shiraishi), after an American firebombing during World War II separates the two children from their parents. Their tale of survival is as heartbreaking as it is true to life. The siblings rely completely on each other and struggle against all odds to stay together and stay alive.'),
(49, 'Fast and Furious 7', 2015, 140, 'https://www.youtube.com/watch?v=Skpu5HaVkOc', 'https://images-na.ssl-images-amazon.com/images/I/910VekmDZ5L._AC_SY741_.jpg', 'http://www.desdehollywood.com/http://desdehollywood.com/wp-content/uploads/2014/10/furious7posterbanner.jpg', '7.1', 'After defeating international terrorist Owen Shaw, Dominic Toretto (Vin Diesel), Brian O\'Conner (Paul Walker) and the rest of the crew have separated to return to more normal lives. However, Deckard Shaw (Jason Statham), Owen\'s older brother, is thirsty for revenge. A slick government agent offers to help Dom and company take care of Shaw in exchange for their help in rescuing a kidnapped computer hacker who has developed a powerful surveillance program.'),
(50, 'War for the Planet of the Apes', 2017, 142, 'https://www.youtube.com/watch?v=vlJeT8pRKpk', 'http://www.movienewsletters.net/photos/255526R1.jpg', 'https://lumiere-a.akamaihd.net/v1/images/warpota_1600x686_4a470d15.jpeg?region=0,0,1600,686&width=960', '7.4', 'Caesar (Andy Serkis) and his apes are forced into a deadly conflict with an army of humans led by a ruthless colonel (Woody Harrelson). After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind. As the journey finally brings them face to face, Caesar and the colonel are pitted against each other in an epic battle that will determine the fate of both of their species and the future of the planet.'),
(51, 'Jumanji', 2017, 120, 'https://www.youtube.com/watch?v=2QKg5SZ_35I', 'https://contentserver.com.au/assets/637737_jumanji_v8_aa.jpg', 'https://teaser-trailer.com/wp-content/uploads/Jumanji-new-banner.jpg', '6.9', 'Four high school kids discover an old video game console and are drawn into the game\'s jungle setting, literally becoming the adult avatars they chose. What they discover is that you don\'t just play Jumanji - you must survive it. To beat the game and return to the real world, they\'ll have to go on the most dangerous adventure of their lives, discover what Alan Parrish left 20 years ago, and change the way they think about themselves - or they\'ll be stuck in the game forever.'),
(52, '300', 2006, 117, 'https://www.youtube.com/watch?v=UrIbxk7idYA', 'https://flxt.tmsimg.com/assets/p163191_p_v10_an.jpg', 'http://cdn1-www.superherohype.com/assets/uploads/2013/12/file_180859_0_300trailernew.jpg', '7.6', 'In 480 B.C. a state of war exists between Persia, led by King Xerxes (Rodrigo Santoro), and Greece. At the Battle of Thermopylae, Leonidas (Gerard Butler), king of the Greek city state of Sparta, leads his badly outnumbered warriors against the massive Persian army. Though certain death awaits the Spartans, their sacrifice inspires all of Greece to unite against their common enemy.'),
(53, 'Mission: Impossible - Fallout', 2018, 148, 'https://www.youtube.com/watch?v=wb49-oV0F78', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDuzrnxIkh11AqI-6PrU9Qrycml22OhFHM9UwGmlkxCsPctLTr', 'https://maactioncinema.com/wp-content/uploads/2018/07/Mission-Impossible-Fallout-banner.jpg', '7.7', 'Ethan Hunt and the IMF team join forces with CIA assassin August Walker to prevent a disaster of epic proportions. Arms dealer John Lark and a group of terrorists known as the Apostles plan to use three plutonium cores for a simultaneous nuclear attack on the Vatican, Jerusalem and Mecca, Saudi Arabia. When the weapons go missing, Ethan and his crew find themselves in a desperate race against time to prevent them from falling into the wrong hands.'),
(54, 'The Truman Show', 1998, 103, 'https://www.youtube.com/watch?v=dlnmQbPGuls', 'https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg', 'https://m.media-amazon.com/images/S/aplus-media/vc/7d897b2f-413c-4e70-bac9-6f461c4cd010.__CR0,0,970,300_PT0_SX970_V1___.jpg', '8.1', 'He doesn\'t know it, but everything in Truman Burbank\'s (Jim Carrey) life is part of a massive TV set. Executive producer Christof (Ed Harris) orchestrates \"The Truman Show,\" a live broadcast of Truman\'s every move captured by hidden cameras. Cristof tries to control Truman\'s mind, even removing his true love, Sylvia (Natascha McElhone), from the show and replacing her with Meryl (Laura Linney). As Truman gradually discovers the truth, however, he must decide whether to act on it.'),
(55, 'The Karate Kid', 2010, 133, 'https://www.youtube.com/watch?v=XY8amUImEu0', 'https://contentserver.com.au/assets/652298_p7931736_v_v8_ae.jpg', 'https://kiaikick.files.wordpress.com/2010/06/karatekidreview.jpg', '6.2', 'When his mother\'s career results in a move to China, 12-year-old Dre Parker (Jaden Smith) finds that he is a stranger in a strange land. Though he knows a little karate, his fighting skills are no match for Cheng, the school bully. Dre finds a friend in Mr. Han (Jackie Chan), a maintenance man who is also a martial-arts master. Mr. Han teaches Dre all about kung fu in the hope that Dre will be able to face down Cheng and perhaps win the heart of a pretty classmate named Mei Ying.'),
(56, 'Avengers: Infinity War', 2018, 160, 'https://www.youtube.com/watch?v=6ZfuNTqbHE8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmE2vwxy5KaCu7cRuYYdgNdQKddux5OYgGwsPo0kqP_xzLnsDV', 'https://cdn.vox-cdn.com/thumbor/m4qv7WoKhlIDXDamYGS81Qlzg6Y=/95x0:1185x545/fit-in/1200x600/cdn.vox-cdn.com/uploads/chorus_asset/file/10749855/infinity_war.jpg', '8.4', 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.'),
(57, 'Coach Carter', 2005, 136, 'https://www.youtube.com/watch?v=d_GleoanbPE', 'https://m.media-amazon.com/images/M/MV5BNWYxZWFiNTItN2FkNS00ZDJmLWE1MWItYjMyMTgyOTI4MmQ4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 'https://fanart.tv/api/download.php?type=download&image=42976&section=3', '7.3', 'In 1999, Ken Carter (Samuel L. Jackson) returns to his old high school in Richmond, California, to get the basketball team into shape. With tough rules and academic discipline, he succeeds in setting the players on a winning streak. But when their grades start to suffer, Carter locks them out of the gym and shuts down their championship season. When he is criticized by the players and their parents, he sticks to his guns, determined that they excel in class as well as on the court.'),
(58, 'Se7en', 1995, 128, 'https://www.youtube.com/watch?v=znmZoVkCjpI', 'https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 'https://www.thefilmagazine.com/wp-content/uploads/2020/09/Se7en-Movie-Review-Banner.jpg', '8.6', 'When retiring police Detective William Somerset (Morgan Freeman) tackles a final case with the aid of newly transferred David Mills (Brad Pitt), they discover a number of elaborate and grizzly murders. They soon realize they are dealing with a serial killer (Kevin Spacey) who is targeting people he thinks represent one of the seven deadly sins. Somerset also befriends Mills\' wife, Tracy (Gwyneth Paltrow), who is pregnant and afraid to raise her child in the crime-riddled city.'),
(59, 'Inception', 2010, 162, 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRdY_wj6JMbD4UbFuoqbFhWQhD5jXm8gYg0TFjDh1k7ZfpZQYYG', 'https://collider.com/wp-content/uploads/inception_movie_poster_banner_01.jpg', '8.8', 'Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people\'s dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone\'s mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb\'s every move.'),
(60, 'Thunder Force', 2021, 107, 'https://www.youtube.com/watch?v=qnx6-YLXFwg', 'https://m.media-amazon.com/images/M/MV5BMWZkM2I2NjEtNWM0Mi00MTgwLWJlYTAtYmNkZWYzNmQ1ZTBiXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 'https://ntvb.tmsimg.com/assets/p19612861_v_h8_aa.jpg?w=1280&h=720', '4.4', 'Two childhood best friends reunite as an unlikely crime-fighting superhero duo when one invents a formula that gives ordinary people superpowers.'),
(61, 'Why Him?', 2016, 111, 'https://www.youtube.com/watch?v=ACxIAPfbjvI', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQDRbyQ-4EWQE2q6omLaqnJUXcl1myxICJAtMwT8SfcjvTXTp7H', 'https://spotlightreport.net/wp-content/uploads/2016/12/Why-Him-Banner-Full.jpg', '6.2', 'During the holidays, loving but overprotective Ned (Bryan Cranston) travels to California to visit his daughter Stephanie (Zoey Deutch) at Stanford University. While there, he meets his biggest nightmare: her well-meaning but socially awkward boyfriend, Laird (James Franco). Even though Laird is a multimillionaire, Ned disapproves of his freewheeling attitude and unfiltered language. His panic level escalates even further when he learns that Laird plans to ask for Stephanie\'s hand in marriage.'),
(62, 'A Quiet Place', 2018, 216, 'https://www.youtube.com/watch?v=BpdDN9d9Jio', 'https://contentserver.com.au/assets/642339_a_quiet_place_v8.jpg', 'https://indiaglitz-media.s3.amazonaws.com/tamil/home/quiet070418_1.jpg', '7.5', 'If they hear you, they hunt you. A family must live in silence to avoid mysterious creatures that hunt by sound. Knowing that even the slightest whisper or footstep can bring death, Evelyn and Lee are determined to find a way to protect their children while desperately searching for a way to fight back.'),
(63, 'It', 2017, 135, 'https://www.youtube.com/watch?v=FnCdOQsX5kc', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQeQ26eky-Cp_SXUJXxlgQTQEEc9esN9ctc7kXlaF8yzdvl2E3z', 'https://static2.srcdn.com/wordpress/wp-content/uploads/2017/03/IT-2017-Movie-Poster.jpg', '7.3', 'Seven young outcasts in Derry, Maine, are about to face their worst nightmare -- an ancient, shape-shifting evil that emerges from the sewer every 27 years to prey on the town\'s children. Banding together over the course of one horrifying summer, the friends must overcome their own personal fears to battle the murderous, bloodthirsty clown known as Pennywise.'),
(64, 'The Ritual', 2017, 94, 'https://www.youtube.com/watch?v=Vfugwq2uoa0', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQcPrzfxMfgHr_eB1Nn6aWjmGpauBKHb9z58DDRUgOZU88k-0U0', 'https://www.screamhorrormag.com/wp-content/uploads/2017/07/Ritual-Poster-600x240.jpg', '6.3', 'Reuniting after the tragic death of their friend, four college pals set out to hike through the Scandinavian wilderness. A wrong turn leads them into the mysterious forests of Norse legend, where an ancient evil exists and stalks them at every turn.');

-- --------------------------------------------------------

--
-- Table structure for table `ourtoppicks`
--

CREATE TABLE `ourtoppicks` (
  `TopPickID` int(11) NOT NULL,
  `MovieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ourtoppicks`
--

INSERT INTO `ourtoppicks` (`TopPickID`, `MovieID`) VALUES
(2, 10),
(1, 46),
(3, 47),
(4, 48),
(5, 49),
(6, 50),
(7, 51),
(8, 52),
(9, 53),
(10, 54),
(11, 55),
(12, 56),
(13, 57),
(14, 58),
(15, 59);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Email`, `Admin`) VALUES
(1, 'Admin', 'admin', 'admin_test@mail.com', 1),
(11, 'test', 'test', 'test', 0),
(13, 'Emile', 'pass', 'mail.co,', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`GenreID`,`MovieID`,`MovieGenre`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `ourtoppicks`
--
ALTER TABLE `ourtoppicks`
  ADD PRIMARY KEY (`TopPickID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `MovieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `ourtoppicks`
--
ALTER TABLE `ourtoppicks`
  MODIFY `TopPickID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ourtoppicks`
--
ALTER TABLE `ourtoppicks`
  ADD CONSTRAINT `ourtoppicks_ibfk_1` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
