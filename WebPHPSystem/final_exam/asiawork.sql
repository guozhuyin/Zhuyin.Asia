-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-06-23 09:02:08
-- 伺服器版本： 10.4.17-MariaDB
-- PHP 版本： 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `asiawork`
--

-- --------------------------------------------------------

--
-- 資料表結構 `academy`
--

CREATE TABLE `academy` (
  `no` int(11) NOT NULL,
  `pno` int(11) NOT NULL DEFAULT 0,
  `title` varchar(20) NOT NULL,
  `href` varchar(300) NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `academy`
--

INSERT INTO `academy` (`no`, `pno`, `title`, `href`, `updatetime`) VALUES
(1, 0, '醫學暨健康學院', '', '2021-06-17 20:23:24'),
(2, 0, '資訊電機學院', '', '2021-06-17 19:53:10'),
(3, 0, '管理&人文社會學院', '', '2021-06-17 19:53:15'),
(4, 0, '創意設計學院', '', '2021-06-17 19:53:19'),
(5, 1, '健康產業管理學系', 'https://ha.asia.edu.tw/', '2021-06-19 14:08:09'),
(6, 1, '食品營養與保健生技學系', 'https://als.asia.edu.tw/', '2021-06-19 14:08:37'),
(7, 1, '心理學系', 'https://psy.asia.edu.tw/', '2021-06-19 14:08:58'),
(8, 1, '醫學檢驗暨生物技術學系', 'https://mlsb.asia.edu.tw/', '2021-06-19 14:09:25'),
(9, 1, '視光學系', 'https://opt.asia.edu.tw/', '2021-06-19 14:09:47'),
(10, 1, '聽力暨語言治療學系', 'https://audslp.asia.edu.tw/', '2021-06-19 14:10:06'),
(11, 1, '職能治療學系', 'https://ot.asia.edu.tw/', '2021-06-19 14:10:25'),
(12, 1, '物理治療學系', 'https://pt.asia.edu.tw/', '2021-06-19 14:10:50'),
(13, 1, '學士後獸醫學系', 'https://dvm.asia.edu.tw/', '2021-06-19 14:11:29'),
(14, 2, '生物資訊與醫學工程學系', 'https://bime.asia.edu.tw/', '2021-06-19 14:12:09'),
(15, 2, '資訊工程學系', 'https://csie.asia.edu.tw/', '2021-06-19 14:12:34'),
(16, 2, '行動商務與多媒體應用學系', 'https://mcma.asia.edu.tw/', '2021-06-19 13:27:13'),
(17, 2, '資訊傳播學系', 'https://infocom.asia.edu.tw/', '2021-06-19 14:13:09'),
(18, 2, '人工智慧博士學位學程', 'http://aip.asia.edu.tw/zh/', '2021-06-19 14:14:50'),
(19, 2, '光電與通訊學系', 'https://pce.asia.edu.tw/', '2021-06-19 14:15:06'),
(20, 3, '經營管理學系', 'https://dba.asia.edu.tw/', '2021-06-19 14:15:53'),
(21, 3, '會計與資訊學系', 'https://ai.asia.edu.tw/', '2021-06-19 14:16:13'),
(22, 3, '休閒與遊憩管理學系', 'https://leisure.asia.edu.tw/', '2021-06-19 14:16:30'),
(23, 3, '財務金融學系', 'https://fn.asia.edu.tw/', '2021-06-19 14:16:49'),
(24, 3, '財經法律學系', 'https://fel.asia.edu.tw/', '2021-06-19 14:17:08'),
(25, 3, '管理學院雙聯學制', 'https://dual.asia.edu.tw/', '2021-06-19 14:17:36'),
(26, 3, '外國語文學系', 'https://flts.asia.edu.tw/', '2021-06-19 14:17:57'),
(27, 3, '社會工作學系', 'https://sw.asia.edu.tw/', '2021-06-19 14:18:13'),
(28, 3, '幼兒教育學系', 'https://ece.asia.edu.tw/', '2021-06-19 14:18:29'),
(29, 4, '數位媒體設計學系', 'https://dmd.asia.edu.tw/', '2021-06-19 14:19:04'),
(30, 4, '視覺傳達設計學系', 'https://vcd.asia.edu.tw/', '2021-06-19 14:19:11'),
(31, 4, '創意商品設計學系', 'https://cpd.asia.edu.tw/', '2021-06-19 14:19:28'),
(32, 4, '時尚設計學系', 'https://dfd.asia.edu.tw/', '2021-06-19 14:19:45'),
(33, 4, '室內設計學系', 'https://id.asia.edu.tw/', '2021-06-19 14:20:03'),
(34, 4, '創意設計暨發明中心', 'https://cdic.asia.edu.tw/bin/home.php', '2021-06-19 14:20:20');

-- --------------------------------------------------------

--
-- 資料表結構 `courses`
--

CREATE TABLE `courses` (
  `no` int(11) NOT NULL,
  `academy` varchar(10) NOT NULL,
  `department` varchar(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `teacher` varchar(10) NOT NULL,
  `content` text NOT NULL,
  `time` int(10) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `courses`
--

INSERT INTO `courses` (`no`, `academy`, `department`, `grade`, `name`, `teacher`, `content`, `time`, `photo`, `updatetime`) VALUES
(1, '2', '16', '2', '電腦動畫', '詹啟祥', '以電腦圖學3D動畫設計製作與軟體操作兩方面著手，力求使學習者能應用3ds max design製作出真正實用的3D動畫作品。', 54, '202106190812281566.png', '2021-06-19 14:12:28'),
(4, '3', '23', '3', '金融機構管理', '簡智崇', '主要探究金融市場的組成與運作、金融相關法規以及各種金融工具的性質與應用，並介紹協助學生熟悉金融機構與風險管理。', 54, '202106190811418867.jpg', '2021-06-21 21:11:52'),
(5, '3', '26', '1', '英文作文', '麥喬伊', '使學生能獲得運用與實做本課程理論與概念之技巧，能夠快速閱讀短文，輸出統整後的訊息，綜合段落重點寫出英文短文。', 36, '202106181635514070.jpg', '2021-06-21 21:01:15'),
(6, '3', '20', '2', '創業管理', '陳坤成', '本課程主要以教授創業經營的過程以及新事業的發展歷程。本課程主要是介紹如何運用創業精神、創意和策略思維來發展新事業。', 54, '202106190752018360.jpg', '2021-06-19 13:52:01'),
(7, '4', '29', '1', '電腦繪圖', '趙文鴻', '且加強學生對電腦繪圖創作之本質、方法與目前發展現況上的了解，並增加學生跨領域思考及學習發展,作為資訊傳播之應用基礎。', 54, '202106181638268297.jpg', '2021-06-21 21:04:24'),
(8, '4', '33', '2', '室內設計', '詹鎔瑄', '培養學生室內設計專業知識與設計能力，以引導創新為目標，訓練學生室內設計繪圖、表達與溝通之能力。', 36, '202106190811525781.jpeg', '2021-06-21 21:10:56'),
(9, '4', '32', '2', '服飾材料學', '黃于恬', '學生可以了解用於服飾設計之材料特性，及了解材料特性對服飾設計之影響，且可以應用服飾設計在服飾材料\r\n', 36, '202106211430123053.jpg', '2021-06-21 21:14:07'),
(10, '1', '7', ' 2', '社會心理學', '藍先元', '學習人們的心理狀態，進而了解他們的心理狀態，進而了解根源並幫助並使其可進行自療，以幫助有心理疾病的人們。', 54, '202106190812066814.jpg', '2021-06-22 13:14:35'),
(11, '1', '11', '2', '肌動學', '邱南英', '學習醫學上的知識，與人體力學架構，使同學可以了解病人狀態，並幫助它使，使他們可以活的職能上的治療。', 36, '202106190812166041.jpg', '2021-06-22 13:15:00'),
(12, '2', '17', '3', '傳播理論', '蔡文祥', '學習網頁上的資訊傳播，媒體傳播，資訊理論，與媒體界的相關知識，並協助同學進入業界是其成為資深媒體人。', 18, '202106181637113754.jpg', '2021-06-22 13:15:37'),
(13, '1', '12', '2', '骨科物理治療學', '林靜君', '使其認識人體構造上的系統，並了解骨骼架構與肌肉連動關西，以便幫助並任進行外科手術或物理自療上的醫治。', 36, '202106220729239764.jpg', '2021-06-22 13:29:23'),
(14, '1', '9', '2', '配鏡學', '詹益智', '讓人學習眼鏡的架構並使同學可以幫助顧客配置正確的眼鏡，並了解眼睛架構使其能做到正確的判斷並給予正確的幫助。', 36, '202106220729543719.jpg', '2021-06-22 13:29:54'),
(15, '2', '15', '4', '數位系統設計', '張文鐘', '學習數位設計與應用系統上的相關知識，幫助同學撰寫網頁，並了解程式語言的書寫，使其能妥善應用身邊資訊系統。', 54, '202106220736042541.jpg', '2021-06-22 13:36:04'),
(16, '2', '19', '2', '電子學實驗', '張剛鳴', '了解大型機械與小型機械的操作，並了解半導體產業的相關訊息與知識，使其能成為光電產業界的相關人員。', 36, '202106221031264825.jpg', '2021-06-22 16:31:26'),
(17, '3', '30', '2', '立體構成設計', '鐘夐洋', '建立學生立體構成設計能力，熟悉不同設計材質的屬性與機能，藉由造型實驗性創作，靈活運用材質特性，培養立體造型設計能力。', 36, '202106221044565753.jpg', '2021-06-22 16:44:56'),
(18, '3', '28', '2', '幼兒學習環境設計', '陳麗媜', '認知幼兒學習環境設計與幼兒行為的關係，了解幼兒學習環境設計的理念與理論基礎，並熟悉室內外學習環境的設計配置方法', 36, '202106221014433487.jpg', '2021-06-22 16:14:43'),
(19, '3', '22', '3', '市場調查與研究方法', '賴政豪', '這一門課程將引領著各位瞭解理論與研究的關連性；並進而發展個人之研究，裨益未來觀光、遊憩、與休閒相關理論之延伸與強化。', 54, '202106221020586762.jpg', '2021-06-22 16:20:58'),
(20, '4', '31', '2', '模型製作', ' 蕭美村', '讓學生了解材料對成品的關系，因為材料的因素.加工的工具有所不同.因材料不同表面塗裝用料也有所區分。', 36, '202106221024321683.jpg', '2021-06-22 16:24:32'),
(21, '1', '5', '2', '長期照顧概論', '戴桂英', '認識專業的護理照顧知識，並學習如何面對長者並滿足他們的需求，且學習健康產業界的管理與服務還有其相關知識。', 36, '202106221027508630.jpg', '2021-06-22 16:27:50'),
(22, '2', '14', '2', '醫學工程實驗', '沈育芳', '學習醫療界與資訊的結合，了解相關知識，是熟悉醫療精密儀器的使用與操作，使同學成為一流的醫護人員以幫助人們。', 36, '202106221030172502.jpg', '2021-06-22 16:30:17'),
(23, '1', '13', '1', '獸醫解剖學實習', '賴湶敬', '本課程含實習，讓學生動手實作，了解各種動物身體各器官的名稱、位置，構造及與相鄰近器官的關係。', 54, '202106221036544457.jpg', '2021-06-22 16:36:54'),
(24, '1', '10', '2', '臨床聽力學實務', '柳佩辰', '經由經典教科書研讀與實例討論，了解臨床聽力學原理、實際作法、不同檢查的差異與比較、可能發生問題與解決方法。並要求學生實際上機互作不同的聽力檢查，與書本內容完成印證。', 54, '202106230901242923.jpg', '2021-06-23 15:01:24');

-- --------------------------------------------------------

--
-- 資料表結構 `mailus`
--

CREATE TABLE `mailus` (
  `no` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `job` varchar(30) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `mailus`
--

INSERT INTO `mailus` (`no`, `name`, `email`, `job`, `message`, `updatetime`) VALUES
(11, '', 'about@about', '', '', '2021-06-19 15:06:06'),
(12, '', 'about@about1', '', '', '2021-06-19 15:06:18'),
(13, '', 'about@about2', '', '', '2021-06-19 15:06:23'),
(14, '', 'about@about3', '', '', '2021-06-19 15:06:26'),
(15, '', 'about@about55', '', '', '2021-06-19 15:07:15'),
(20, NULL, 'admin@mail.com', NULL, NULL, '2021-06-21 15:37:35');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `academy`
--
ALTER TABLE `academy`
  ADD PRIMARY KEY (`no`);

--
-- 資料表索引 `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`no`);

--
-- 資料表索引 `mailus`
--
ALTER TABLE `mailus`
  ADD PRIMARY KEY (`no`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `academy`
--
ALTER TABLE `academy`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `courses`
--
ALTER TABLE `courses`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mailus`
--
ALTER TABLE `mailus`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
