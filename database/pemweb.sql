-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jan 2021 pada 05.44
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `waktu_buat` datetime NOT NULL,
  `judul_artikel` varchar(666) NOT NULL,
  `header_artikel` char(32) NOT NULL,
  `isi_artikel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `user_id`, `waktu_buat`, `judul_artikel`, `header_artikel`, `isi_artikel`) VALUES
(33, 8, '2020-12-09 18:21:49', 'White Sox Acquire Lance Lynn from Texas in Exchange for Pitchers Dane Dunning and Avery Weems', 'e67c8e531f3974813e58285333e89691', '<p>CHICAGO &mdash; The Chicago White Sox have acquired veteran right-handed pitcher&nbsp;<strong>Lance Lynn</strong>&nbsp;from the Texas Rangers in exchange for right-hander&nbsp;<strong>Dane Dunning</strong>&nbsp;and lefty&nbsp;<strong>Avery Weems</strong>.</p>\r\n\r\n<p>Lynn, 33, finished sixth in the American League Cy Young Award voting last season with 22 points after going 6&ndash;3 with a 3.32 ERA (31 ER/84.0 IP) and 89 strikeouts over 13 starts with the Rangers. Future teammates Dallas Keuchel (46 points) and Lucas Giolito (18 points) were fifth and seventh, respectively, in 2020 AL Cy Young balloting.</p>\r\n\r\n<p>Lynn, 6-foot-5 and 250 pounds, led the AL in IP and starts and ranked among the leaders in complete games (T1st, 1), quality starts (T1st, 10), pitching WAR (3rd, 2.3), wins (T4th), strikeouts (5th), opponents average (5th, .206), WHIP (7th, 1.06) and ERA (10th).</p>\r\n\r\n<p>&ldquo;Lance is one of the most proven and dependable starting pitchers in baseball,&rdquo; said Rick Hahn, White Sox senior vice president/general manager. &ldquo;He provides us with another power arm and gives us three proven starters at the top of our rotation, while at the same time deepening our rotation and allowing some of our younger pitchers additional time to develop.&rdquo;</p>\r\n\r\n<p>Lynn opened last season with a streak of 18.0 consecutive scoreless IP and went 4&ndash;1 with a 1.93 ERA (11 ER/51.1 IP) over his first eight starts. He ranked third in the AL with a 2.53 ERA entering his final start on September 24 vs. Houston (9 ER/5.2 IP).</p>\r\n\r\n<p>Lynn has gone 104&ndash;71 with a 3.57 ERA (566 ER/1,426.1 IP) and 1,415 strikeouts in 260 career games (236 starts) over 10 major-league seasons with St. Louis (2011&ndash;17), Minnesota (2018), the Yankees (2018) and Texas (2019&ndash;20).</p>\r\n\r\n<p>In his two seasons with the Rangers, Lynn went 22&ndash;14 with a 3.57 ERA (116 ER/292.1 IP) and 307 strikeouts over 46 starts. During that span, he leads all major-league pitchers in IP and starts and ranks among the leaders in starts (T1st), bWAR (2nd, 9.8), quality starts (T4th, 30), wins (T5th) and strikeouts (T5th).</p>\r\n\r\n<p>Lynn has thrown 100-plus pitches an MLB-best 44 times since 2019 (Trevor Bauer is second with 37) and ranks second in starts of 6.0-plus IP (36) and 7.0-plus IP (21). He finished fifth in the 2019 AL Cy Young Award voting after winning 16 games and striking out a career-best 246 batters.</p>\r\n\r\n<p>Lynn has made 26 career postseason appearances (seven starts), going 5&ndash;4 with a 4.80 ERA (29 ER/54.1 IP) and 52 strikeouts. He pitched for White Sox manager Tony La Russa as a rookie in 2011 when the Cardinals won the World Series and was named to the NL All-Star Team in 2012.</p>\r\n\r\n<p>Lynn, who resides in Brentwood, Tenn., originally was selected by St. Louis in the first round (39th overall) of the 2008 First-Year Player Draft out of the University of Mississippi.</p>\r\n\r\n<p>Dunning, 25, went 2&ndash;0 with a 3.97 ERA (15 ER/34.0 IP) and 35 strikeouts over seven starts with the White Sox in 2020. He also started Game 3 of the AL Wild Card Series at Oakland. Dunning was acquired by the Sox with right-handers Lucas Giolito and Reynaldo L&oacute;pez from Washington on December 7, 2016 in exchange for outfielder Adam Eaton.</p>\r\n\r\n<p>Weems, 23, has gone 5&ndash;4 with a 2.09 ERA (14 ER/60.1 IP) and 74 strikeouts over 14 starts in the White Sox minor-league system after being selected in the sixth round of the 2019 First-Year Player Draft out of the University of Arizona.</p>\r\n'),
(34, 9, '2020-12-09 18:27:36', 'How I Got 4 Data Science Offers and Doubled my Income 2 Months after being Laid Off', '233bda8dba7f14e0ff008e77c1bca4c0', '<h1>Introduction</h1>\r\n\r\n<p>During this unprecedented time with the pandemic, many are finding their careers affected. This includes some of the most talented data scientists with which I have ever worked. Having shared my personal experience with some close friends to help them find a new job after being laid off, I thought it worth sharing publicly. After all, this touches more than me and my friends. Any data scientist who was laid off due to the pandemic or who is actively looking for a data science position can find something here to which they can relate, and which I hope will ultimately offer hope in your job search.</p>\r\n\r\n<p>So if you&rsquo;ve ever been stuck - in getting interviews, in interview preparation, in negotiation, anything - I&rsquo;ve been there, and I want to help. You can reach out to me&nbsp;<a href=\"https://data-interview-questions.web.app/\">here</a>&nbsp;if you think I might be able to make your journey easier in any way! Here&rsquo;s my story. I hope you find some useful tips and encouragement within it.</p>\r\n\r\n<h1>Getting Laid off</h1>\r\n\r\n<p>In December of 2018, I was informed by my manager that I was to be laid off in January 2019. Three months before, the VP of Engineering of my then startup company had written a letter to our head of People Success. This letter explained why I was one of the top performers in the company and advocated for an increase in my salary. This helped me get a 33% increase in my salary. I was naturally feeling motivated and eager to crack the next milestone on an important project. The company&rsquo;s future and my own looked bright. It was during this moment of success that I was told that I was impacted by the company-wise cost-cutting initiative. I was let go on January 15th.</p>\r\n\r\n<p>To be forced to start looking for a new job was daunting, to say the least. After browsing the data science job openings on the market, I soon realized my knowledge gap. What I was doing at the B2B startup (a mix of entry-level data engineering and machine learning) was simply irrelevant to many of the job requirements out there, such as product sense, SQL, stats, and more. I knew the basics but was unsure how to fill the gap towards more advanced skills. However, even that issue seemed secondary to more pressing questions, such as how do I even get an interview? I had a mere 1.5 years of work experience with a startup, and I lacked any statistics or computer science-related degree. More questions soon followed. What if I cannot find a job before I lose my visa status? What if the economy takes a downturn before I can find a new job? Despite my fears, there was little choice. I had to find a new job.</p>\r\n\r\n<h1>Preparing for the Search</h1>\r\n\r\n<p>In the face of what felt like an overwhelming task, I needed some information to decide my next steps. After doing some research, I realized that more than half of the data science positions on the market were product-driven positions (&lsquo;product analytics&rsquo;), and the rest were either modeling or data engineering oriented positions. I also noted that positions other than product analytics tended to have higher requirements. For example, most modeling positions required a PhD degree, and engineering positions required a computer science background. Clearly, the requirements for different tracks varied widely, so it followed that preparation for each would differ as well.</p>\r\n\r\n<p>With this knowledge in hand, I made an important decision: preparing for all tracks would be both overwhelming and most likely less effective. I would need to focus on one. I choose product analytics because, based on my background and experience, there was a higher chance that I could get interviews on this track. Of course, not everyone in data science has my exact background and experience, so below I have summarized the general requirements for three categories of data science positions at big companies. Understanding this basic breakdown saved me a lot of time, and I trust it will prove useful for others looking for a job in data science. I will add, however, that for small startups it&rsquo;s possible that the interview will be less structured and require more of a mixture of all three.</p>\r\n\r\n<p><strong>Product Analytics (~70% on the market)</strong></p>\r\n\r\n<ul>\r\n	<li>Requirements: practical experience launching products; strong business acumen; advanced SQL skills</li>\r\n	<li>Examples: Data Scientist, Analytics at Airbnb; Data Scientist at Lyft; Data Scientist at Facebook; Product Analyst at Google</li>\r\n</ul>\r\n\r\n<p><strong>Modeling (~20% on the market)</strong></p>\r\n\r\n<ul>\r\n	<li>Requirements: knowledge of machine learning (not only how to use it but also the underlying math and theory); strong coding ability</li>\r\n	<li>Examples: Data Scientist, Algorithms at Lyft; Data Scientist, Algorithms at Airbnb; Applied Scientist at Amazon; Research Scientist at Facebook</li>\r\n</ul>\r\n\r\n<p><strong>Data Engineering (~10% on the market)</strong></p>\r\n\r\n<ul>\r\n	<li>Requirements: end to end data scientists with data engineering skills; knowledge of distributed systems; MapReduce and Spark; practical experience working with Spark; strong coding ability</li>\r\n	<li>Examples: Data Scientist, Foundation at Airbnb; Data Scientist at some startups</li>\r\n</ul>\r\n\r\n<p>In light of my own experience, the rest of this post is strongly tailored towards those preparing for positions in product analytics. Come back later to check out my post on preparation for a data engineering position.</p>\r\n\r\n<h1>The Job Search Begins</h1>\r\n\r\n<p>The very first thing I did once I knew I was going to be laid off was to apply widely and aggressively to other jobs. I used all the job boards I knew including&nbsp;<a href=\"https://www.glassdoor.com/index.htm\">GlassDoor</a>,&nbsp;<a href=\"https://www.indeed.com/\">Indeed</a>&nbsp;and&nbsp;<a href=\"https://www.linkedin.com/\">LinkedIn</a>. I also asked everyone I knew for referrals. However, since it was almost at the end of the year, I did not receive any responses until January 2019.</p>\r\n\r\n<p>Asking for referrals proved to be much more effective than applying by myself. Out of about 50 raw applications, I only got 3 interviews, but out of 18 referrals, I got 7 interviews. Overall, it was becoming obvious that I was not considered a strong candidate in this market.</p>\r\n\r\n<h1>The Interview: Overview</h1>\r\n\r\n<p>While the structure of interviews was different for each company, there was a general outline that most companies followed:</p>\r\n\r\n<ul>\r\n	<li>A recruiter initial phone call</li>\r\n	<li>1 or 2 rounds of technical phone screen (TPS) or a take-home assignment</li>\r\n	<li>A 4 ~ 5-hour onsite interview, typically includes 3 ~ 4 rounds of technical interviews and a behavioral interview with hiring managers</li>\r\n</ul>\r\n\r\n<p>Around half of the companies (4/10) that I&rsquo;ve interviewed with had a take-home assignment before or instead of a TPS. Take-home assignments consumed a lot of energy. Typically, an 8-hour take-home assignment caused me to need at least half a day to rest after submission. Because of this, I did my best to schedule the interview accordingly. There were no interviews the morning after my take-home assignment. Simply being aware of the basic structure can go a long way in making you feel more at ease and able to cope with the process of finding a new job.</p>\r\n\r\n<h1>Before the Interview</h1>\r\n\r\n<p>Going into my interviews, every opportunity was critical to me. Although I was aware that some people learn by interviewing, becoming better after many interviews, and typically obtaining offers for the last few companies with which they interview, I did not feel I could take this approach. When I graduated in 2017, I only received 4 interviews out of 500 raw applications. I was not expecting to get many more in 2019. Thus, my plan was to be fully prepared for each interview I got. I would let no opportunity go to waste.</p>\r\n\r\n<p>One benefit of being laid off was that I could study full time for the interview. Each day I structured what I studied, focusing on two or three things per day. No more. From previous interviews, I had learned that a deep understanding allows you to give more thorough answers during interviews. It especially helps to have a depth of knowledge in an interview situation when you tend to be more nervous and anxious than usual. That is not the time when you want to try faking things.</p>\r\n\r\n<p>As I describe my own experience, I can&rsquo;t help thinking of a common misconception I often hear: it&rsquo;s not possible to gain the knowledge on product/experimentation without real experience. I firmly disagree. I did not have any prior experience in product or A/B testing, but I believed that those skills could be gained by reading, listening, thinking, and summarizing. After all, this is the same way we were taught things in school. Actually, as I get to know more senior data scientists I continue to learn that this method is common, even for people with years of experience. What you will be interviewed on may not be related to what you were doing at all, but you can gain the knowledge you need in ways other than job experience.</p>\r\n\r\n<p>Here are the basics of what you can expect. Typically, product and SQL questions were asked during a TPS. Onsite interviews included a few rounds of questions, including product sense, SQL, stats, modeling, behavior, and maybe a presentation. The next few subsections summarize the most useful resources (all freely available) I used when preparing for interviews. In general,&nbsp;<a href=\"https://www.glassdoor.com/index.htm\">GlassDoor&nbsp;</a>was a good source to get a sense of company-specific problems. Once I saw those problems, I understood both what the company needed and where my gaps were in fulfilling those needs. I was then able to develop a plan to fill those gaps.</p>\r\n\r\n<h1>Preparation for Specific Subjects</h1>\r\n\r\n<p><img alt=\"Image for post\" src=\"https://miro.medium.com/max/60/0*dVEutzJJXegCaTz4?q=20\" style=\"height:4000px; width:6000px\" /></p>\r\n\r\n<p><img alt=\"Image for post\" src=\"https://miro.medium.com/max/6000/0*dVEutzJJXegCaTz4\" style=\"height:4000px; width:6000px\" /></p>\r\n\r\n<p>Photo by&nbsp;<a href=\"https://unsplash.com/@andrewtneel?utm_source=medium&amp;utm_medium=referral\">Andrew Neel</a>&nbsp;on&nbsp;<a href=\"https://unsplash.com/?utm_source=medium&amp;utm_medium=referral\">Unsplash</a></p>\r\n\r\n<p>The following six subsections are how I prepared for the specific content that comes up in interviews for the product analytics track. In explaining my own preparation, I hope to make the path smoother for those who come after me.</p>\r\n\r\n<h1>Product Sense</h1>\r\n\r\n<p>Working as a data scientist at a startup, I was mainly responsible for developing and deploying machine learning models and writing spark jobs. Thus, I barely gained any product knowledge. When I saw some real interview questions on&nbsp;<a href=\"https://www.glassdoor.com/index.htm\">GlassDoor</a>, such as &ldquo;how to measure success?&rdquo; or &ldquo;how to validate the new feature by current users&rsquo; behaviors?&rdquo;, I had utterly no idea how to approach such questions. At the time, they seemed far too abstract and open-ended.</p>\r\n\r\n<p>To learn product sense I resorted to the basic read and summarize strategy, using the resources listed below. All this reading helped me build up my product knowledge. As a result, I came up with a structured way (my own &lsquo;framework&rsquo;) to answer any type of product questions. I then put my knowledge and framework to the test with that all essential to learning any skill: practice. I wrote out answers to questions involving product sense. I said my answers out loud (even recording myself with my phone), and used the recordings to finetune my answers. Soon I could not only fake it for an interview, I actually knew my stuff.</p>\r\n\r\n<p>Resources:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://stellarpeers.com/blog/\"><em>Stellar Peers</em></a></li>\r\n	<li><a href=\"https://www.amazon.com/Cracking-PM-Interview-Product-Technology/dp/0984782818/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1530848116&amp;sr=1-1&amp;keywords=cracking+the+pm+interview\"><em>Cracking the PM Interview</em></a>&nbsp;by Gayle Laakmann McDowell and Jackie Bavaro</li>\r\n	<li><a href=\"https://www.amazon.com/Decode-Conquer-Answers-Management-Interviews/dp/0615930417/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1530848101&amp;sr=1-1&amp;keywords=decode+and+conquer\"><em>Decode and Conquer</em></a><em>&nbsp;</em>by Lewis C. Lin</li>\r\n	<li><a href=\"https://www.amazon.com/Case-Interview-Secrets-Interviewer-Consulting/dp/0984183523\"><em>Case Interview Secrets</em></a><em>&nbsp;</em>by Victor Cheng</li>\r\n</ul>\r\n\r\n<h1>SQL</h1>\r\n\r\n<p>The first time I took a SQL TPS I failed, and it was with a company in which I was very interested. Clearly, something needed to change. I needed to, once again, practice, and so I spent time grinding SQL questions. Eventually, I was able to complete in a day, questions that had previously taken me an entire week. Practice makes perfect!</p>\r\n\r\n<p>Resources:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://leetcode.com/problemset/database/\">Leetcode database problems</a></li>\r\n	<li><a href=\"https://www.hackerrank.com/domains/sql?filters%5Bstatus%5D%5B%5D=unsolved&amp;badge_type=sql\">HackRank SQL problems</a></li>\r\n</ul>\r\n\r\n<h1>Statistics and Probability</h1>\r\n\r\n<p>To prepare for these kinds of questions, I brushed up on elementary statistics and probability and did some coding exercises. While this may seem overwhelming (there is a lot of content for both topics), the interview questions for a product data scientist were never hard. The resources below are a great way to review.</p>\r\n\r\n<p>Resources:</p>\r\n\r\n<ul>\r\n	<li>Khan Academy has an introductory&nbsp;<a href=\"https://www.khanacademy.org/math/statistics-probability\">Statistics and Probability</a>&nbsp;course which covers the very basics of both.</li>\r\n	<li>This&nbsp;<a href=\"http://onlinestatbook.com/2/index.html\">Online Stat Book</a>&nbsp;covers all the basic statistical inference.</li>\r\n	<li>Harvard has a&nbsp;<a href=\"https://www.youtube.com/playlist?list=PL2SOU6wwxB0uwwH80KTQ6ht66KWxbzTIo\">Statistics 110: Probability</a>&nbsp;course which is an introductory course on probability with practical problems. If you prefer reading than listening, PennState has an&nbsp;<a href=\"https://online.stat.psu.edu/stat414/lesson/introduction-stat-414\">Introduction to Probability Theory</a>&nbsp;course with many examples.</li>\r\n	<li>I also coded through&nbsp;<a href=\"https://www.hackerrank.com/domains/tutorials/10-days-of-statistics\">10 days of statistics</a>&nbsp;on HackRank to solidify my understanding.</li>\r\n	<li>Sometimes, A/B testing questions were asked during a stats interview. Udacity has a great&nbsp;<a href=\"https://www.udacity.com/course/ab-testing--ud257\">course</a>&nbsp;to cover the basics of A/B testing and Exp Platform has a more concise&nbsp;<a href=\"https://exp-platform.com/2017abtestingtutorial/\">tutorial</a>&nbsp;on the topic.</li>\r\n</ul>\r\n\r\n<h1>Machine Learning</h1>\r\n\r\n<p>Without a CS degree, I went into the job search with limited machine knowledge. I had taken some courses during my previous job, and I reviewed my notes from these to prep for interviews. However, even though modeling questions are getting more and more frequent nowadays, the interview questions for a product data scientist mainly geared toward how to apply those models rather than the underlying math and theories. Still here are some helpful resources to bump up your machine learning skills before the interview time.</p>\r\n\r\n<p>Resources:</p>\r\n\r\n<ul>\r\n	<li>To start I recommend this free&nbsp;<a href=\"https://www.youtube.com/watch?v=d79mzijMAw0&amp;list=PL_pVmAaAnxIRnSw6wiCpSvshFyCREZmlM&amp;index=1https://www.youtube.com/watch?v=d79mzijMAw0&amp;list=PL_pVmAaAnxIRnSw6wiCpSvshFyCREZmlM&amp;index=1\">Applied Machine Learning course</a>&nbsp;by Andreas Mueller</li>\r\n	<li>Coursera -&nbsp;<a href=\"https://www.coursera.org/learn/machine-learning?utm_source=gg&amp;utm_medium=sem&amp;utm_content=07-StanfordML-US&amp;campaignid=685340575&amp;adgroupid=32639001781&amp;device=c&amp;keyword=machine%20learning%20programming%20tutorial&amp;matchtype=b&amp;network=g&amp;devicemodel=&amp;adpostion=&amp;creativeid=243289762754&amp;hide_mobile_promo&amp;gclid=EAIaIQobChMIhY7m1Pfa6wIVtR6tBh0UCQAJEAAYASAAEgJcV_D_BwEhttps://www.coursera.org/learn/machine-learning?utm_source=gg&amp;utm_medium=sem&amp;utm_content=07-StanfordML-US&amp;campaignid=685340575&amp;adgroupid=32639001781&amp;device=c&amp;keyword=machine%20learning%20programming%20tutorial&amp;matchtype=b&amp;network=g&amp;devicemodel=&amp;adpostion=&amp;creativeid=243289762754&amp;hide_mobile_promo&amp;gclid=EAIaIQobChMIhY7m1Pfa6wIVtR6tBh0UCQAJEAAYASAAEgJcV_D_BwE\">Machine Learning</a>&nbsp;by Andrew Ng</li>\r\n	<li>Udacity -&nbsp;<a href=\"https://www.udacity.com/course/machine-learning-engineer-nanodegree--nd009t\">Machine Learning Engineering Nanodegree</a></li>\r\n</ul>\r\n\r\n<h1>Presentation</h1>\r\n\r\n<p>Some companies required candidates to either present the take-home assignment or a project of which they are most proud. Still, other companies asked about the most impactful project during behavioral interviews. However, no matter what the form the key is to make your presentation interesting and challenging.</p>\r\n\r\n<p>That sounds great, but how do you do that? My main recommendation is to think through all the details, such as high-level goals and success metrics to ETL to modeling implementation details, to deployment, monitoring, and improvement. The little things add up to make a great presentation rather than one big idea. Here are a few questions worth rethinking to help reach your ideal presentation:</p>\r\n\r\n<ul>\r\n	<li>What were the goal and the success metric of the project?</li>\r\n	<li>How do you decide to launch the project?</li>\r\n	<li>How do you know whether customers are benefiting from this project? By how much?</li>\r\n	<li>How do you test it out? How to design your A/B test?</li>\r\n	<li>What was the biggest challenge?</li>\r\n</ul>\r\n\r\n<p>When presenting a project, you want to engage the audience. To make my presentations interesting, I often share interesting findings and the biggest challenges of the project. But the best way to make sure you are engaging is practice. Practice and practice out loud. I practiced presenting to my family to ensure my grasp of the material and ease of communication. If you can engage the people you know, an interviewer, who is required to listen, doesn&rsquo;t stand a chance.</p>\r\n\r\n<h1>Behavioral Question</h1>\r\n\r\n<p>While it is easy to get caught up in preparing for the technical interview questions, don&rsquo;t forget that the behavioral questions are equally important. All companies I&rsquo;ve interviewed with had at least 1 round of behavior interviews during the onsite portions. These questions typically fall into these three categories:</p>\r\n\r\n<ul>\r\n	<li>Why us? / what do you value most in a job?</li>\r\n	<li>Introduce yourself / Why are you leaving your current job?</li>\r\n	<li>The biggest success/failure/challenge in your career. Other versions: Tell me about a time you resolved a conflict or you&rsquo;ve had to convince your manager or a PM on something.</li>\r\n</ul>\r\n\r\n<p>Behavioral questions are very important for data scientists. So be prepared! Understanding a company&rsquo;s mission and core values helps answer questions in the first group. Questions like 2 and 3 can be answered by telling a story &mdash; 3 stories were enough to answer all behavioral questions. Make sure you&rsquo;ve got a few good stories on hand when you walk in for an interview. Similar to product questions, I practiced a lot by saying it out loud, recording, and listening to then fine-tune my answers. Hearing a story is the best way to make sure it works.</p>\r\n\r\n<h1>The Secret to Getting 100% Onsite-to-Offer Rate</h1>\r\n\r\n<p><img alt=\"Image for post\" src=\"https://miro.medium.com/max/60/0*98e280G_NnvFKKBP?q=20\" style=\"height:4000px; width:6000px\" /></p>\r\n\r\n<p><img alt=\"Image for post\" src=\"https://miro.medium.com/max/6000/0*98e280G_NnvFKKBP\" style=\"height:4000px; width:6000px\" /></p>\r\n\r\n<p>Photo by&nbsp;<a href=\"https://unsplash.com/@campaign_creators?utm_source=medium&amp;utm_medium=referral\">Campaign Creators</a>&nbsp;on&nbsp;<a href=\"https://unsplash.com/?utm_source=medium&amp;utm_medium=referral\">Unsplash</a></p>\r\n\r\n<p>The night before an onsite interview was typically a stressful, hectic night. I always tried to cram in more technical knowledge while simultaneously reviewing my statistics notes and thinking of my framework to answer a product question. Of course, as we all learned in school, none of that was incredibly useful. The results were largely determined due to the amount of preparation before not a single night of cramming. So preparation is important, but there are some rules you can follow the day of to make sure your interview is a success.</p>\r\n\r\n<ol>\r\n	<li><strong>Always clarify questions before answering.</strong>&nbsp;Ensure that you understand what you are being asked by repeating back the question in your own words.&nbsp;It&rsquo;s a red flag if you answer the questions without clarifying it.</li>\r\n	<li><strong>Organize the answer for all questions.</strong>&nbsp;Write down your thought process with bullet points. This shows the interviewers that you have a systematic way to approach a problem and helps interviewers to write a review for you later.</li>\r\n	<li><strong>Don&rsquo;t panic when you don&rsquo;t know the answer</strong>. It&rsquo;s okay if you are not familiar with the domain. In such cases, you could start by making a few assumptions, but make sure to communicate that you are making assumptions and ask whether they are reasonable. Sometimes it&rsquo;s totally fine to ask for more time. What if you cannot think of any answer and your brain went blank? Talk about an experience you have that is related to the question.</li>\r\n	<li><strong>Attitude matters.</strong>&nbsp;Companies are looking for someone who is willing to listen and who can embrace different opinions. You want to show that you are someone with whom it is easy to work. Be humble and respectful. Listen and clarify. Bring your positive energy to the room, and do your best to have a good conversation.</li>\r\n	<li><strong>Research the company.</strong>&nbsp;Get familiar with its products. Ask yourself how to improve the products and what metrics can be used to measure the success of those products. It&rsquo;s also helpful to understand what data scientists do at each company by reading their blogs. Doing this kind of research leads to deeper and ultimately better conversations in interviews.</li>\r\n</ol>\r\n\r\n<p>Using these rules, this was the feedback I got from onsite interviews:</p>\r\n\r\n<ul>\r\n	<li>Very structured way to answer product questions</li>\r\n	<li>Presentation is very organized, well thought out</li>\r\n	<li>Showed deep interest in our products and offered valuable ideas on improvements</li>\r\n</ul>\r\n\r\n<h1>Negotiation</h1>\r\n\r\n<p>After receiving verbal offers, the next step was to work with recruiters to finalize the numbers. There&rsquo;s only one rule here that I stick with - ALWAYS negotiate. But how?</p>\r\n\r\n<p>Haseeb Qureshi has a very helpful guide on&nbsp;<a href=\"https://haseebq.com/my-ten-rules-for-negotiating-a-job-offer/\">negotiating a job offer</a>&nbsp;(with scripts!) which I followed religiously during my offer negotiation phase. Every single rule was so true. I negotiated with all companies that gave me an offer. The average increase for offers was 15%, and the highest offer was, in total value, increased by 25%. Negotiating works, so don&rsquo;t be afraid to try it!</p>\r\n\r\n<h1>Takeaways</h1>\r\n\r\n<ol>\r\n	<li>LOTS of practice is the key.</li>\r\n	<li>Failure is part of life and a part of job searching. Don&rsquo;t take it too seriously.</li>\r\n	<li>Find a way to destress that works for you.</li>\r\n</ol>\r\n\r\n<h1>Overview</h1>\r\n\r\n<p>After losing 11 pounds and lots of cries and screaming (job hunting is stressful and it is okay to admit that), I finally got 4 offers within 2 months of being laid off. 3 of those offers were from companies that I have never dreamed of joining: Twitter, Lyft, and Airbnb (where I ultimately joined) and another offer from a healthcare startup. By the end of two frenzied months, I had received a total of 10 interviews, 4 onsite interviews, and 4 job offers, giving me a 40% TPS-to-onsite rate and 100% onsite-to-offer rate.</p>\r\n\r\n<p><img alt=\"Image for post\" src=\"https://miro.medium.com/max/60/1*ghD915nIviIK0lSJdszc7w.png?q=20\" style=\"height:416px; width:2726px\" /></p>\r\n\r\n<p><img alt=\"Image for post\" src=\"https://miro.medium.com/max/2726/1*ghD915nIviIK0lSJdszc7w.png\" style=\"height:416px; width:2726px\" /></p>\r\n\r\n<p>Image by&nbsp;<a href=\"https://medium.com/@emmading\">Emma Ding</a>&nbsp;| Timeline from being laid off to joining my dream company</p>\r\n\r\n<p>I was so lucky that I got lots of support and help from family and friends after being laid off, which was critical to landing a job at my dream company. It was difficult. Ironically looking for a job is also a lot of work, but everything was worth it.</p>\r\n\r\n<p>I wrote this blog because I know how overwhelmed I was. There is so much to prepare for interviews. I hope this post has made things clearer for other data specialists out there in need of work, and if you want more advice feel free to contact me&nbsp;<a href=\"https://data-interview-questions.web.app/\">here</a>. I am grateful to now be working in a great job, and I would be happy to help you get there too!</p>\r\n\r\n<h1><strong>Update (10/1/2020)</strong></h1>\r\n\r\n<p>Since I published this post three weeks ago, I got hundreds of questions on data science interviews. So I decided to make a series of videos to help you land your dream data science job. Check&nbsp;<a href=\"https://www.youtube.com/channel/UCAWsBMQY4KSuOuGODki-l7A\">my YouTube channel</a>&nbsp;if you are interested!</p>\r\n'),
(45, 7, '2020-12-09 18:50:45', 'Linear raises $13M in Series A funding from Sequoia Capital', '5fd0ba15c0151', '<p>At&nbsp;<a href=\"https://linear.app/\">Linear</a>&nbsp;our focus has been on empowering builders to focus on their work of creating software. In the past year, we have come a long way and we are excited to share the latest milestones in our journey.</p>\r\n\r\n<p>Today, we&rsquo;re announcing that we&rsquo;ve raised $13M in Series A funding led by Sequoia Capital and a slew of new product updates aimed at re-envisioning the principles and practices of building and continue developing the best in class tool for teams to create software.</p>\r\n\r\n<h2>Next Generation of Startups Are Being Built With Linear</h2>\r\n\r\n<p>Hundreds of startups today&ndash;from early teams to growth stage companies&ndash;use Linear to develop software and build magical products and customer experiences. Linear&rsquo;s tool and product development methodology is becoming the standard for high-performing teams and the 1,000 people strong Linear Slack community is a hub of builders. Startups especially mention how Linear helps keep up momentum and find product-market fit faster.</p>\r\n\r\n<blockquote>\r\n<p>&ldquo;I think that one of the things that really high performing teams do is go from product feedback and into an execution plan of how we are going to get this delivered to that customer today, this week or this month. You err towards speed of execution because that&rsquo;s how you find product market fit and that&rsquo;s ultimately what &ldquo;make something people want&rdquo; means.&nbsp;<strong>Linear, in my opinion, is optimized for this and where it&rsquo;s best in class</strong>.&rdquo;</p>\r\n\r\n<p>&mdash; Troy Goode, Founder &amp; CEO @ Courier</p>\r\n</blockquote>\r\n\r\n<p>Tools like Linear have become even more critical as companies operate remotely. The tools are the new office and the way of making decisions and communicating ideas:</p>\r\n\r\n<blockquote>\r\n<p>&ldquo;<strong>Linear has been super helpful in transitioning to remote</strong>. Beforehand a lot of our conversations in person would ensure that nobody was doing the same work twice but now we need to have everything in Linear. Just to keep track of what&rsquo;s going on. I can&rsquo;t just roll my chair over and ask my coworker, &ldquo;Hey, did you take a look at this.&rdquo;</p>\r\n\r\n<p>&mdash; Danielle Schugars, Software Engineer @ Render</p>\r\n</blockquote>\r\n\r\n<p>The Linear team itself is fully remote and distributed across North America and Europe (<a href=\"https://linear.app/readme\">we&rsquo;re hiring!</a>), and we think making a product that excels in a remote environment, means it will excel anywhere.</p>\r\n\r\n<p>It&rsquo;s our mission to help the next generation of startups build their companies and we&rsquo;ve been especially honored to see the vast majority of our users become paying customers as we launched pricing plans this summer. This is fantastic validation of the product we have built and of course means a healthy and sustainable business for Linear.</p>\r\n\r\n<h2><strong>Partnering with Sequoia Capital</strong></h2>\r\n\r\n<p>Following this progress, to accelerate and to continue taking Linear to the next level we&rsquo;ve partnered again with&nbsp;<strong>Sequoia Capital</strong>&nbsp;for our Series A.&nbsp;<strong>Stephanie Zhan</strong>&nbsp;who led our seed round last year will join our board. We admire and resonate with Sequoia&rsquo;s and Stephanie&rsquo;s long-term approach to company building and respect their exceptional track record of backing category-defining companies.</p>\r\n\r\n<p>In addition, several industry leaders are participating in this round and bringing on their insights and networks:&nbsp;<strong>Dick Costolo</strong>&nbsp;(ex-CEO Twitter),&nbsp;<strong>Adam Bain</strong>&nbsp;(ex-COO Twitter),&nbsp;<strong>Patrick Collison</strong>&nbsp;(CEO, Stripe),&nbsp;<strong>Lenny Rachitsky</strong>&nbsp;(Lenny&rsquo;s Newsletter, Airbnb),&nbsp;<strong>Harry Stebbings</strong>&nbsp;(20min VC) and&nbsp;<strong>Aston Motes</strong>&nbsp;(dev/color, Dropbox #1 engineer).</p>\r\n\r\n<p>They will join our existing investors including&nbsp;<strong>Dylan Field</strong>&nbsp;(CEO, Figma),&nbsp;<strong>Emilie Choi</strong>&nbsp;(COO, Coinbase),&nbsp;<strong>Gustaf Alstr&ouml;mer&nbsp;</strong>(Partner, YC),&nbsp;<strong>Bobby Goodlatte&nbsp;</strong>(Form),&nbsp;<strong>Jude Gomila</strong>&nbsp;(CEO, Golden),&nbsp;<strong>Julia DeWahl</strong>&nbsp;(SpaceX).</p>\r\n\r\n<p>The additional $13M in Series A funding brings our total funding to $17.2M. The funding and the support from our new and existing investors, give us the resources really acclerate and go after definening new standard for software development.</p>\r\n\r\n<h2><strong>Building a holistic tool for product building</strong></h2>\r\n\r\n<p>Issue tracking lies at the heart of any software team&rsquo;s workflow which is why we focused on solving this core pain point first. However, we know that building magical products and successful companies requires a lot more than fast and easy issue tracking. To build well, teams need a meaningful direction, clear communication and seamless coordination. Solving the human side of product management which includes implementing effective processes and then scaling them as their company grows in size as well as through different stages in the product development lifecycle.</p>\r\n\r\n<p>As move to towards building product building, today we launch a few of our biggest features yet:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>1. Roadmaps</h2>\r\n\r\n<p>One of the most important aspects when building any product or company is to set the direction. An effective roadmap shares a unified vision and aligns teams to build toward that. Without a clear direction, it&rsquo;s hard for any company to make meaningful progress, especially startups who have finite product cycles available to test product-market fit before runway runs out.</p>\r\n\r\n<p>Despite how critical roadmaps are to success, in many companies they&rsquo;re not visible for everyone, up to date or connected to the execution of product and company deliverables. The Linear Roadmap solves this by generating a project-based roadmap&ndash;always up-to-date, accessible to all teammates and with clearly defined milestones&ndash;to encourage best practices in roadmap planning and execution.</p>\r\n\r\n<p><strong>Enable roadmaps for your workspace in&nbsp;</strong><a href=\"https://linear.app/settings/roadmap\"><strong>settings</strong></a><strong>&nbsp;and read more about our roadmaps in the&nbsp;</strong><a href=\"https://linear.app/method/roadmap\"><strong>Linear Method</strong></a><strong>.</strong></p>\r\n\r\n<h2><strong>2. Extensions and integrations with OAuth</strong></h2>\r\n\r\n<p>When Linear opened for everyone six months ago, we quickly started seeing companies and developers building integrations and add-ons for Linear. We see Linear as a critical tool for company building and we don&rsquo;t want to lock it down. Linear should be a platform that connects with more of your external and internal tools. With this launch, we&rsquo;ve added OAuth in addition to our GraphQL API, to make it easier and more secure for developers to build and use integrations with Linear.</p>\r\n\r\n<h2><strong>Linear Release &mdash; Dec 2020</strong></h2>\r\n\r\n<p>At Linear we like to build in public. We publish a&nbsp;<a href=\"https://linear.app/changelog\">weekly changelog</a>&nbsp;to celebrate our progress and share it with our customers.</p>\r\n\r\n<p>To help give a holistic picture of what is new in Linear, we created a new&nbsp;<a href=\"https://linear.app/release-2020-12\"><strong>Linear Release</strong></a>&nbsp;page which highlights new features as well as major improvements developed in the last six months. The theme for the second half of 2020 was to improve the core experience of Linear:</p>\r\n\r\n<ul>\r\n	<li>Made the interface more tactile by allowing&nbsp;<strong>easy list selection</strong>,&nbsp;<strong>drag&amp;drop</strong>, supporting&nbsp;<strong>global undo with cmd+z</strong>, and having&nbsp;<strong>right click context menus</strong>.</li>\r\n	<li><strong>View option</strong>s that let you quickly change sorting, hide and show attributes, and switch between list and board views</li>\r\n	<li>Reworked our&nbsp;<strong>notification system</strong>&nbsp;to include granular controls</li>\r\n	<li><strong>Views</strong>&nbsp;which let you create and save custom filtered views for yourself or shared with the team or the whole company</li>\r\n	<li>Made&nbsp;<strong>creating su</strong>b-issues more flexible</li>\r\n	<li>Added&nbsp;<strong>SAML SSO</strong>&nbsp;option for more secure and controlled authentication</li>\r\n	<li>Enabled&nbsp;<strong>themes</strong>&nbsp;to allow everyone to customize how Linear looks</li>\r\n</ul>\r\n\r\n<p>See all the new features by heading to the&nbsp;<a href=\"https://linear.app/release-2020-12\"><strong>Linear Release</strong></a>&nbsp;page.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Looking ahead</strong></h2>\r\n\r\n<p>We started Linear 20 months ago with a simple insight: building software is becoming increasingly complicated. The current approach is to layer more processes and cumbersome tools. We want to see a world where we unwind all of this by providing the practices and tools fit to the builder workflow and letting the team focus on the act of building.</p>\r\n\r\n<p>Here&rsquo;s to the next 20 months. We are grateful for all the support we have received from our customers, partners and investors. Let&rsquo;s make software as a craft feel magical again.</p>\r\n'),
(46, 20, '2021-01-05 18:58:13', 'Judul', '5ff454557214a', '<p>Testing</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel_comment`
--

CREATE TABLE `artikel_comment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `artikel_id` bigint(20) NOT NULL,
  `isi_comment` text NOT NULL,
  `waktu_comment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel_comment`
--

INSERT INTO `artikel_comment` (`id`, `user_id`, `artikel_id`, `isi_comment`, `waktu_comment`) VALUES
(51, 7, 45, 'Halo bro', '2020-12-21 12:44:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel_like`
--

CREATE TABLE `artikel_like` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `artikel_id` bigint(20) NOT NULL,
  `waktu_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama_lengkap` varchar(666) NOT NULL,
  `email` varchar(666) NOT NULL,
  `foto_profil` char(32) NOT NULL,
  `password` char(255) NOT NULL,
  `tempat_tinggal` varchar(666) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pekerjaan` varchar(666) NOT NULL,
  `pendidikan` varchar(666) NOT NULL,
  `tentang` text NOT NULL,
  `waktu_pendaftaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `nama_lengkap`, `email`, `foto_profil`, `password`, `tempat_tinggal`, `tanggal_lahir`, `pekerjaan`, `pendidikan`, `tentang`, `waktu_pendaftaran`) VALUES
(7, 'hafidh561', 'Hafidh Soekma Ardiansyah', 'hapoed123@gmail.com', '7c5c156942670da2b420076f9874c5cd', '$2y$10$7FsF1eK8CVuvTH.6JemdV.mCFKZWtDzPrhrMTIYFU18W1BnlJ3t/q', 'Pasuruan, Indonesia', '2001-03-06', 'Mahasiswa', 'D4 Manajemen Informatika UNESA', 'Manusia biasa bro lah aku disini aas asfaaaaaaaaaa', '2020-12-07 09:11:22'),
(8, 'rahmi_laksita', 'Rahmi Laksita', 'rahmilaksita@gmail.com', '7fedcc5a094ab1f5b8e6407f242f37f6', '$2y$10$ieB.8gJYqPcAgUmFwrFtku3fb8zLQld6/2mvQR3B8dAGG/Xf1CTf2', 'Surabaya, Indonesia', '1998-09-12', 'Tukang Coding di Google', 'S1 Teknik Informatika ITS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio, minima. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla quam necessitatibus labore reiciendis magni possimus pariatur vitae quo praesentium ex!', '2020-12-07 11:03:33'),
(9, 'jelita_purnawati', 'Jelita Purnawati', 'jelitapurnawati@gmail.com', 'a24fa232d20fd9845bd90de11b6447a6', '$2y$10$8hY760e75u5M/iNjQEie/eeYaLjJopWZbSk22RFjRAmRPI5Er6s3C', 'Kediri, Indonesia', '1997-12-06', 'Pengangguran', 'SMA Sukorejo', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio, minima. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla quam necessitatibus labore reiciendis magni possimus pariatur vitae quo praesentium ex!', '2020-12-07 11:06:07'),
(10, 'lintang_permata', 'Lintang Permata', 'lintangpermata@gmail.com', '5907e99137c6e29e18299648015b1b39', '$2y$10$TrmWhwvnQr1RPdDoqNyRO.h/MRw1cXsT66izpoMi6NZTmTIwDVYeS', 'Bandung, Indonesia', '1987-12-04', 'Koki', 'SMK Chef', 'Nothing', '2020-12-07 01:12:30'),
(11, 'martana_putra', 'Martana Putra', 'martanaputra@gmail.com', 'c3752ed5b25f102ecc76cbf2e9b5516c', '$2y$10$.u3/WViEMHS/rHEYHf0eoOg2ZnOFWOqjB95uJlalPQ4nthdMmPhuC', 'Jombang, Indonesia', '2000-01-01', 'Mahasiswa', 'TI PENS', 'nganggur lur', '2020-12-07 01:13:54'),
(12, 'maria_jola', 'Maria Jola', 'mariajola@gmail.com', 'ab3977ffb43bb35ad9d426374d9f4b0d', '$2y$10$WqP87MXxLQeao2IV5e2IP.w/v85lcpZbEZeMMJP9GRMSsIkW18May', 'Banyuwangi, Indonesia', '1999-12-12', 'Nganggur', 'Nganggur', 'Mboh', '2020-12-08 10:45:14'),
(20, 'hafidh123', 'Hafidh Baru', 'hafidhbaru@gmail.com', '5ff453e038366', '$2y$10$NanCskfVg9ZCGhx9sTrG0.x7apLkLO0oJqXQVzY2uGl9QowZJbXxa', 'Kediri', '2021-01-06', 'Mahasiswa', 'SMA', 'Manusia Biasa', '2021-01-05 18:56:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_followers`
--

CREATE TABLE `user_followers` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_id_followers` bigint(20) NOT NULL,
  `waktu_follow` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_followers`
--

INSERT INTO `user_followers` (`id`, `user_id`, `user_id_followers`, `waktu_follow`) VALUES
(43, 9, 7, '2020-12-21 12:45:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_following`
--

CREATE TABLE `user_following` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_id_following` bigint(20) NOT NULL,
  `waktu_follow` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_following`
--

INSERT INTO `user_following` (`id`, `user_id`, `user_id_following`, `waktu_follow`) VALUES
(43, 7, 9, '2020-12-21 12:45:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_notifikasi`
--

CREATE TABLE `user_notifikasi` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `isi_notifikasi` text NOT NULL,
  `waktu_notifikasi` datetime NOT NULL,
  `sudah_dilihat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_notifikasi`
--

INSERT INTO `user_notifikasi` (`id`, `user_id`, `isi_notifikasi`, `waktu_notifikasi`, `sudah_dilihat`) VALUES
(37, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=45\" target=\"_blank\">Linear raises $13M in Series A funding from Sequoia Capital</a>\r\n</span>', '2020-12-18 22:51:06', 1),
(38, 9, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Mulai mengikuti anda.\r\n</span>', '2020-12-18 22:51:31', 0),
(39, 9, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Mulai mengikuti anda.\r\n</span>', '2020-12-18 22:51:46', 0),
(40, 9, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Mulai mengikuti anda.\r\n</span>', '2020-12-18 22:53:24', 0),
(41, 7, '\r\n    <span class=\"pt-2\">\r\n        <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Memberi komentar pada postingan di <a class=\"font-weight-bold\" href=\"./article.php?id=45\" target=\"_blank\">Linear raises $13M in Series A funding from Sequoia Capital</a>\r\n    </span>', '2020-12-18 22:53:44', 1),
(42, 9, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Mulai mengikuti anda.\r\n</span>', '2020-12-18 22:53:50', 0),
(43, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=45\" target=\"_blank\">Linear raises $13M in Series A funding from Sequoia Capital</a>\r\n</span>', '2020-12-21 12:43:59', 1),
(44, 7, '\r\n    <span class=\"pt-2\">\r\n        <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Memberi komentar pada postingan di <a class=\"font-weight-bold\" href=\"./article.php?id=45\" target=\"_blank\">Linear raises $13M in Series A funding from Sequoia Capital</a>\r\n    </span>', '2020-12-21 12:44:08', 1),
(45, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=9\" target=\"_blank\">jelita_purnawati</a> Mulai mengikuti anda.\r\n</span>', '2020-12-21 12:45:23', 1),
(46, 9, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Mulai mengikuti anda.\r\n</span>', '2021-01-05 18:33:42', 0),
(47, 8, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Mulai mengikuti anda.\r\n</span>', '2021-01-05 18:33:57', 0),
(48, 8, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Mulai mengikuti anda.\r\n</span>', '2021-01-05 18:34:04', 0),
(49, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=45\" target=\"_blank\">Linear raises $13M in Series A funding from Sequoia Capital</a>\r\n</span>', '2021-01-05 18:42:15', 1),
(50, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=45\" target=\"_blank\">Linear raises $13M in Series A funding from Sequoia Capital</a>\r\n</span>', '2021-01-05 18:42:24', 1),
(51, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-05 18:58:23', 1),
(52, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-05 18:58:51', 0),
(53, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Mulai mengikuti anda.\r\n</span>', '2021-01-05 18:59:17', 1),
(54, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Mulai mengikuti anda.\r\n</span>', '2021-01-05 18:59:20', 1),
(55, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Mulai mengikuti anda.\r\n</span>', '2021-01-05 18:59:27', 1),
(56, 7, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Mulai mengikuti anda.\r\n</span>', '2021-01-05 18:59:37', 1),
(57, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-05 19:01:05', 0),
(58, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-05 19:01:13', 0),
(59, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-05 19:01:16', 0),
(60, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-05 19:01:26', 0),
(61, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=20\" target=\"_blank\">hafidh123</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-05 19:01:28', 0),
(62, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-18 19:35:34', 0),
(63, 20, '\r\n<span class=\"pt-2\">\r\n    <a class=\"font-weight-bold\" href=\"./profile.php?id=7\" target=\"_blank\">hafidh561</a> Menyukai postingan anda di <a class=\"font-weight-bold\" href=\"./article.php?id=46\" target=\"_blank\">Judul</a>\r\n</span>', '2021-01-18 19:35:36', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_saved_artikel`
--

CREATE TABLE `user_saved_artikel` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `artikel_id` bigint(20) NOT NULL,
  `waktu_saved_artikel` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_saved_artikel`
--

INSERT INTO `user_saved_artikel` (`id`, `user_id`, `artikel_id`, `waktu_saved_artikel`) VALUES
(10, 7, 45, '2020-12-21 12:44:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `artikel_comment`
--
ALTER TABLE `artikel_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artikel_id` (`artikel_id`);

--
-- Indeks untuk tabel `artikel_like`
--
ALTER TABLE `artikel_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artikel_id` (`artikel_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_followers` (`user_id_followers`);

--
-- Indeks untuk tabel `user_following`
--
ALTER TABLE `user_following`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_following` (`user_id_following`);

--
-- Indeks untuk tabel `user_notifikasi`
--
ALTER TABLE `user_notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `user_saved_artikel`
--
ALTER TABLE `user_saved_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artikel_id` (`artikel_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `artikel_comment`
--
ALTER TABLE `artikel_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `artikel_like`
--
ALTER TABLE `artikel_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user_followers`
--
ALTER TABLE `user_followers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `user_following`
--
ALTER TABLE `user_following`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `user_notifikasi`
--
ALTER TABLE `user_notifikasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `user_saved_artikel`
--
ALTER TABLE `user_saved_artikel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `artikel_comment`
--
ALTER TABLE `artikel_comment`
  ADD CONSTRAINT `artikel_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `artikel_comment_ibfk_2` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`);

--
-- Ketidakleluasaan untuk tabel `artikel_like`
--
ALTER TABLE `artikel_like`
  ADD CONSTRAINT `artikel_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `artikel_like_ibfk_2` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_followers`
--
ALTER TABLE `user_followers`
  ADD CONSTRAINT `user_followers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_followers_ibfk_2` FOREIGN KEY (`user_id_followers`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_following`
--
ALTER TABLE `user_following`
  ADD CONSTRAINT `user_following_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_following_ibfk_2` FOREIGN KEY (`user_id_following`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_notifikasi`
--
ALTER TABLE `user_notifikasi`
  ADD CONSTRAINT `user_notifikasi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_saved_artikel`
--
ALTER TABLE `user_saved_artikel`
  ADD CONSTRAINT `user_saved_artikel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_saved_artikel_ibfk_2` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
