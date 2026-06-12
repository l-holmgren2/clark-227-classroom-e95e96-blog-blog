-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2021 at 04:13 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

-- Modified June 12, 2026 by Lauren Holmgren

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`) VALUES
(1, 'Lena', 'Hart'),
(2, 'Marcus', 'Reed');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(1, 'Wildlife'),
(2, 'Pets'),
(3, 'Birdwatching'),
(4, 'Conservation'),
(5, 'Photography'),
(6, 'Travel'),
(7, 'Outdoors');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(4096) NOT NULL,
  `author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `date`, `content`, `author`) VALUES
(1, 'Watching Otters Along the River', '2025-06-01',
'Few animals seem as playful as river otters. During a morning walk I watched a family swim, chase one another, and investigate every floating branch they encountered. Their energy made the entire shoreline feel alive and reminded me why wildlife observation is such a rewarding hobby. I stayed beside the river far longer than I originally planned because every few minutes the otters would do something unexpected. One would dive beneath the surface while another remained on a partially submerged log, scanning the water and occasionally rolling onto its back. The group appeared completely comfortable in the area and followed a predictable route up and down the riverbank. The experience also highlighted how important healthy waterways are for local wildlife. Otters depend on clean water and a stable food supply, making them an indicator of the overall health of an ecosystem. Seeing several individuals together suggested that conditions in this stretch of river remain favorable. Along the shore I noticed fish activity, waterfowl, and evidence of beavers as well. The abundance of wildlife created a sense that the entire area was interconnected. Whenever I watch animals in the wild, I try to spend time simply observing rather than taking photographs. Cameras are wonderful tools, but they can sometimes become a distraction. By focusing entirely on behavior, I noticed details that I might otherwise have missed, including how the otters communicated through vocalizations and body language. The encounter served as a reminder that wildlife observation often rewards patience more than equipment or expertise.',
1),

(2, 'The Backyard Bird Count', '2025-06-05',
'This weekend I spent an hour counting birds visiting my feeder. Sparrows were the most common visitors, but several finches and a bright blue jay also stopped by. Keeping track of local bird activity has helped me notice seasonal changes and migration patterns. Even a small backyard can support surprising biodiversity when food, water, and shelter are available.',
2),

(3, 'A Visit to a Wildlife Rehabilitation Center', '2025-06-10',
'I recently toured a wildlife rehabilitation center dedicated to caring for injured and orphaned native animals. The visit began with an introduction to the organization''s mission and the challenges involved in helping wildlife recover. Staff members explained that every year they receive hundreds of calls from concerned citizens who encounter injured birds, displaced young mammals, or animals affected by human activity. One of the most interesting parts of the tour involved learning how animals are evaluated upon arrival. Not every animal can be saved, but trained professionals work carefully to determine the best course of action. Veterinary examinations, observation periods, and specialized diets all play a role in the recovery process. The center houses a wide variety of species depending on the season, including songbirds, raptors, squirrels, rabbits, turtles, and occasionally larger mammals. The educational component of the facility was equally valuable. Staff emphasized that many well-intentioned attempts to help wildlife can unintentionally cause harm. For example, young birds found on the ground are often assumed to be abandoned when they may actually be under the care of nearby parents. Understanding normal animal behavior can prevent unnecessary intervention. Another topic discussed during the tour was habitat loss. Rehabilitation helps individual animals, but long-term conservation depends on protecting ecosystems. Preserving wetlands, forests, grasslands, and waterways benefits countless species at once. The center partners with local groups to promote habitat restoration and public awareness projects. Toward the end of the visit, I observed several animals that were nearing release. Seeing them regain strength and natural behaviors was encouraging. It reinforced the idea that conservation is not limited to scientists and professionals. Everyday people can contribute by reducing litter, supporting habitat protection efforts, and learning more about the wildlife in their own communities. I left with a greater appreciation for the dedication required to care for animals and a stronger understanding of the broader environmental issues that affect them.',
1),

(4, 'Why Every Nature Walk Feels Different', '2025-06-14',
'Even familiar trails provide new animal encounters. On my latest walk I spotted rabbits near a meadow, squirrels gathering food, and several hawks circling overhead. Paying attention to small details makes every trip outdoors unique. Changes in weather, season, and time of day influence which animals are active and where they can be found. That unpredictability is one of the reasons I continue exploring the same locations year after year.',
2),

(5, 'Listening to Frogs After Sunset', '2025-06-18',
'As darkness settled over a nearby pond, dozens of frogs began calling at once. Each species contributed its own sound, creating a natural chorus that echoed across the water. It was one of the most memorable wildlife experiences I have had this year. I arrived shortly before sunset and spent some time walking around the edge of the wetland. Dragonflies skimmed the surface while swallows darted overhead collecting insects. As the sky gradually darkened, the environment seemed to shift. Daytime activity slowed and the sounds of nocturnal animals became more noticeable. The first frog calls were isolated and easy to identify, but within half an hour the entire pond was alive with sound. What fascinated me most was the variety. Some calls were low and repetitive, while others sounded almost like short musical notes. The overlapping patterns created a surprisingly complex soundscape. Although I could hear dozens of individuals, spotting them proved much more difficult. Most remained hidden among vegetation or partially submerged in shallow water. Wetlands play an important role in supporting amphibian populations. Frogs depend on healthy aquatic habitats for breeding and development, making them particularly sensitive to environmental changes. Because of this, scientists often consider amphibians useful indicators of ecosystem health. A thriving frog population can suggest that water quality and habitat conditions remain favorable. As I sat quietly beside the pond, I reflected on how easy it is to overlook these experiences. Many people pass wetlands without realizing how much activity occurs after dark. Spending time outdoors at different hours can reveal an entirely different side of nature. The evening ended with the chorus continuing at full volume as stars appeared overhead. It felt less like listening to individual animals and more like experiencing a performance created by the ecosystem itself.',
1),

(6, 'Finding Deer on Early Morning Trails', '2025-06-22',
'Early mornings are often the best time to observe deer. Moving quietly along a forest trail allowed me to watch several animals feeding without disturbing them. Respectful observation leads to better experiences for both people and wildlife. The calm atmosphere of dawn provides an opportunity to witness behaviors that are often hidden during busier hours of the day.',
2),

(7, 'Photographing Birds Without Disturbing Them', '2025-06-26',
'Wildlife photography requires patience. Rather than approaching birds directly, I used a longer lens and remained still. The result was a collection of natural photographs showing behaviors that would have been missed if the animals felt threatened. One challenge faced by wildlife photographers is balancing the desire for a better image with the responsibility to avoid disrupting animal behavior. Ethical photography places the welfare of wildlife above the photograph itself. If an animal changes its behavior because of a photographer''s presence, it is usually a sign that more distance is needed. During a recent outing I focused on a group of shorebirds feeding along a quiet stretch of water. Instead of moving closer, I selected a location where the birds were already comfortable and waited. Over time they resumed normal activities, including feeding, preening, and interacting with one another. These moments created photographs that felt more authentic than any image captured through pursuit. Patience often reveals details that are otherwise overlooked. Birds display a wide range of behaviors related to communication, territory, and social interaction. Remaining in one place for an extended period allows these patterns to emerge naturally. In many cases, the most rewarding moments occur after long periods of observation. I also find that photography encourages me to learn more about the species I encounter. Understanding migration timing, feeding habits, and preferred habitats improves the likelihood of successful observations. The process becomes less about obtaining a single image and more about developing a deeper appreciation for wildlife and the environments that support it.',
1),

(8, 'Camping Beside a Lake Full of Wildlife', '2025-06-30',
'During a recent camping trip I observed herons fishing along the shoreline and heard owls after dark. Spending the night outdoors offers a chance to experience animal activity that is rarely seen during busy daytime hours. The combination of quiet surroundings and extended time in nature made the trip especially memorable.',
2),

(9, 'Keeping a Wildlife Observation Journal', '2025-07-04',
'Recording animal sightings has become one of my favorite habits. A simple journal helps me remember locations, weather conditions, and behaviors. Over time it has become a valuable record of the wildlife I encounter throughout the year. My journal began as a small notebook carried during hikes. Initially I only recorded species names and dates, but eventually I started including habitat descriptions, weather information, sketches, and notes about behavior. Looking back through old entries provides an interesting perspective on how animal activity changes over time. The practice has improved my observation skills. Knowing that I will later write about an encounter encourages me to pay closer attention. Small details become more noticeable, from feeding patterns to interactions between different species. The process also encourages patience because meaningful observations often require time. Another benefit is the ability to identify trends. Repeated visits to the same locations create a record that can reveal seasonal changes, migration timing, and shifts in habitat use. Although my journal is informal, it demonstrates how personal observations can contribute to a greater understanding of local wildlife. I frequently recommend wildlife journaling to new enthusiasts because it requires very little equipment. A notebook and a willingness to observe carefully are enough to get started. Over time the journal becomes more than a collection of notes. It becomes a record of experiences, discoveries, and growing appreciation for the natural world. Some of my favorite entries involve common animals rather than rare sightings. A familiar species observed closely can teach just as much as an unusual encounter. By documenting ordinary moments, I have developed a deeper appreciation for the complexity of everyday wildlife. The habit has transformed casual walks into opportunities for learning and discovery, and it continues to enrich every outdoor experience.',
1);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `post_category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`post_category_id`, `post_id`, `category_id`) VALUES
(1, 1, 1),
(2, 1, 7),
(3, 2, 3),
(4, 3, 4),
(5, 4, 7),
(6, 5, 1),
(7, 6, 1),
(8, 7, 5),
(9, 7, 3),
(10, 8, 6),
(11, 8, 7),
(12, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_tag_id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 2),
(4, 2, 3),
(5, 2, 2),
(6, 2, 9),
(7, 3, 7),
(8, 3, 4),
(9, 3, 1),
(10, 4, 2),
(11, 4, 9),
(12, 4, 1),
(13, 5, 1),
(14, 5, 9),
(15, 5, 2),
(16, 5, 4),
(17, 6, 4),
(18, 6, 2),
(19, 6, 9),
(20, 7, 5),
(21, 7, 3),
(22, 7, 4),
(23, 7, 2),
(24, 8, 6),
(25, 8, 9),
(26, 8, 4),
(27, 9, 1),
(28, 9, 4),
(29, 9, 2),
(30, 9, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`) VALUES
(1, 'animals'),
(2, 'nature'),
(3, 'birds'),
(4, 'wildlife'),
(5, 'photography'),
(6, 'travel'),
(7, 'conservation'),
(8, 'pets'),
(9, 'outdoors');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
