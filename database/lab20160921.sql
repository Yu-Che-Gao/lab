-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-09-21 11:58:44
-- 伺服器版本: 10.0.17-MariaDB
-- PHP 版本： 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `lab`
--
CREATE DATABASE IF NOT EXISTS `lab` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lab`;

-- --------------------------------------------------------

--
-- 資料表結構 `conference_paper`
--

CREATE TABLE `conference_paper` (
  `id` int(11) NOT NULL,
  `content` text CHARACTER SET utf32 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `conference_paper`
--

INSERT INTO `conference_paper` (`id`, `content`) VALUES
(1, '	曾明性、陳冠志、吳慧卿(2016)，「高齡人口與社區關懷據點之在地老化資源分布探討」，2016福祉科技與服務管理國際研討會，開南大學。	'),
(2, '	王采楓、黃靖純、吳慧卿、曾明性*(2016)，「高齡者十大癌症死因之空間分布探討」，2016福祉科技與服務管理國際研討會，開南大學。	'),
(3, '	吳慧卿、林靜儀、曾明性*(2016)，「基於唾液影像樣式辨識之女性排卵期預測行動照護系統研發」，105年度性別與科技研究計畫聯合成果討論會，高雄師範大學。	'),
(4, '	M. H. Tseng, K. Y. Lyu (2016), 「A Performance Comparison among Apache Spark, Apache Hadoop and MapReduce to Accelerate the Inquiry of Electronic Medical Records」, 2016 8th International Conference on Machine Learning and Computing, Hong Kong.	'),
(5, '	 高宇哲、王采楓、廖冠豪、何維涓、吳慧卿、曾明性*(2015)，「基於唾液影像之排卵期預測行動應用程式開發」，TANET 2015 臺灣學術網路研討會，暨南國際大學。[最佳論文獎]	'),
(6, '	曾明性(2015)，「銀髮族猝死症偵測與通報系統研發」，銀髮族專案成果產學媒合會暨產學論壇，科技部工程科技推展中心。	'),
(7, '	彭紹宇、廖冠豪、曾明性*(2015)，「基於Hadoop技術於六大慢性病之時空資料分析初探」，2015年台灣地理資訊學會年會暨學術研討會，逢甲大學。	'),
(8, '	張巧蓉、曾明性*、蔡明璋、汪奇志、林俊哲(2015)，「應用全民健保資料庫探討肝硬化共病關聯及發生率地圖」，2015年台灣地理資訊學會年會暨學術研討會，逢甲大學。	'),
(9, '	呂凱煜、施宜涵、魏志軒、葉晉江、曾明性*(2015)，「基於醫療物聯網概念建置醫院雲端資訊服務-以身高體重計與血壓計為例」，第十屆國際健康資訊管理研討會，嘉南藥理科技大學。[大專生專題競賽第一名]	'),
(10, '	章哲嘉、曾明性*(2014)，「整合型猝死偵測演算法之探勘研究」，第九屆國際健康資訊管理研討會，東海大學。[最佳論文獎]	'),
(11, '	呂凱煜、魏志軒、施宜涵、曾明性*(2014)，「動態門檻型鼾聲偵測演算法於睡眠呼吸中止症之預測」，第九屆國際健康資訊管理研討會，東海大學。[最佳論文獎]	'),
(12, '	廖芳彬、吳慧卿、林靜儀、曾明性* (2013)，「改良關聯規則演算法加速台灣新移民?性醫?健康需求之探勘」，第十九屆資訊管理暨實務研討會，台中科技大學。	'),
(13, '	沈瑜豐、呂凱煜、黃仁景、曾明性* (2013)，「實數型基因演算法於血氧訊號特徵偵測之參數優化探討」，第十九屆資訊管理暨實務研討會，台中科技大學。	'),
(14, '	李國華、張皓威、曾明性* (2013)，「洪水位即時影像之自動辨識研究」，2013數位生活科技研討會，雲林科技大學。	'),
(15, '	黃詩涵、林靜儀、曾明性* (2013)，「預測女性排卵期之唾液影像處理技術開發」，第八屆醫學影像暨放射科學研討會，元培科技大學。	'),
(16, '	蔡榮哲、趙一平、曾明性 (2013)，「以圖形運算單元加速機率型神經徑路追蹤演算法」，第八屆醫學影像暨放射科學研討會，元培科技大學。	'),
(17, '	張巧蓉、曾明性*、蔡明璋、林俊哲(2013)，「多階層式決策樹架構萃取大腸息肉診斷之分類規則」，第24屆國際資訊管理學術研討會，真理大學。	'),
(18, '	吳慧卿、林靜儀、廖芳彬、曾明性* (2013)，「台灣新移民?性醫?健康需求探討：運用關聯規則探勘」，2013性別與健康研討會，成功大學。	'),
(19, '	Hsu, H. C., Mai, A. T., Ting H., Tseng, M. H.* (2012). “An OSA prediction model based on decision tree algorithm”, The 2012 FTRA International Conference on Advanced IT, Engineering and Management (FTRA AIM Summer 2012), Jeju, Korea, 10-12 July, 2012.	'),
(20, '	沈瑜豐、魏千琛、曾明性* (2012)，「個人心律不整診斷監測及健康紀錄管理系統開發:以Android 平台整合血氧脈搏儀為例」，第十八屆資訊管理暨實務研討會，台北科技大學。	'),
(21, '	吳慧卿、曾明性、林宗弘 (2012)，「 新移民家庭父母社經地位對子女健康狀況影響因素變遷分析：跨五年資料庫比較研究初探」，社會變遷與健康發展學術研討會，台灣大學。	'),
(22, '	康嘉祐、宋星賢、曾明性* (2012)，「Android行動平台結合二維條碼應用於用藥安全輔助系統之開發」，2012數位生活科技研討會，雲林科技大學。	'),
(23, '	廖芳彬、沈瑜豐、謝欣翰、湯秉宏、曾明性*(2011)，「可攜式個人健康紀錄之感測系統研發」，第十七屆資訊管理暨實務研討會，嘉南藥理科技大學。	'),
(24, '	劉家豪、陳佳妤、湯秉宏、曾明性*(2011)，「結合醫療物聯網與Facebook之社區健檢及體重管理系統」，2011全國計算機會議，嘉義大學。	'),
(25, '	劉家豪、陳佳妤、湯秉宏、曾明性*(2011)，「擴增實境結合二維條碼應用於用藥安全輔助系統之開發」，2011數位生活科技研討會，雲林科技大學。	'),
(26, '	湯秉宏、曾明性*(2011)，基於醫療物聯網概念之多生理訊號量測與雲端健康照護系統，ICIM 2011第22屆國際資訊管理學術研討會，朝陽科技大學。	'),
(27, '	黃詩涵、曾明性*、劉嘉琪、陳韻?、彭詩婷(2010)，「老人養護中心評鑑管理系統之開發」，2010年台灣國際醫學資訊聯合研討會，台北護理健康大學。[優秀論文獎]	'),
(28, '	謝欣翰、曾明性*、湯秉宏、黃建寧(2010)，「居家式阻塞型睡眠呼吸中止症監測暨警示系統之研發」，2010年台灣國際醫學資訊聯合研討會，台北護理健康大學。	'),
(29, '	曾明性、林俊汶、謝欣翰、湯秉宏(2010)，「智慧電源節能系統之開發」，2010數位生活科技研討會，國立成功大學。	'),
(30, '	曾明性*、謝欣翰、林俊汶、湯秉宏、吳慧卿 (2010)，「U化健康照護及訊息通報系統之研發」，2010年第十三屆電子商務研討會，台北護理學院。	'),
(31, '	江長運、湯秉宏、曾明性* (2010)，「智慧型演化式分群演算法於疾病鑑別之探討」，第21屆國際資訊管理學術研討會，國立成功大學。	'),
(32, '	Tseng, M. H.* (2010). “Case-based reasoning supported by genetic algorithms for flood stage forecasting.” 9th International Conference on Hydroinformatics 2010, HIC 2010, Tianjin, China.	'),
(33, '	曾明性*、湯秉宏、謝欣翰、林俊汶、林坤學 (2009)，「智慧型疾病預測系統」 ， 2009全國RFID校園創意競賽入選決賽隊伍。	'),
(34, '	湯秉宏、曾明性* (2009)，「適應性突變及多精英保留於高維度參數最佳化之研究」，第十四屆人工智慧與應用研討會，朝陽科技大學。	'),
(35, '	古怡芳、周書妤、劉軒豪、吳荏維、吳慧卿、曾明性* (2009)，「演化式分群演算法於乳癌疾病診斷之研究」，第十四屆人工智慧與應用研討會，朝陽科技大學。	'),
(36, '	湯秉宏、曾明性* (2009)，「實驗設計結合適應性突變及多精英運算於實數編碼基因演算法之改良研究」，2009全國計算機會議，台北大學。	'),
(37, '	湯秉宏、古怡芳、吳慧卿、曾明性* (2009)，「演化式模糊分群演算法於疾病診斷之研究」，第十五屆資訊管理暨實務研討會，高雄應用科技大學。	'),
(38, '	曾明性*、王瀅茜、李宜亭 (2007)，「決策樹、貝氏網路與類神經網路於冠狀動脈疾病診斷之探討」，ICIM2007第十八屆國際資訊管?學術研討會，銘傳大學。	'),
(39, '	曾明性*、李宜亭、王瀅茜、林玉琪 (2007)，「模糊專家理論於智慧型模擬學習系統之應用－以肝炎診斷為例」，第十八屆國際資訊管?學術研討會，銘傳大學。	'),
(40, '	曾明性*、李宜亭 (2007)，「應用多速粒子與均勻設計於粒子群算法改良之探討」，NCS 2007全國計算機會議，亞洲大學。	'),
(41, '	張彙音、陳聖哲、曾明性*、黃國豪 (2006)，「基於SCORM規範之適性化課程推薦系統」， 第二屆台灣數位學習發展研討會，臺南大學。	'),
(42, '	王乃宣、簡宜庭、曾明性* (2006)，「圖書館虛擬館員FAQ輔助系統」，第二屆台灣數位學習發展研討會，臺南大學。	'),
(43, '	王乃宣、張彙音、簡宜庭、曾明性* (2006) ，「智慧型電腦網?維修自動問答系統」， ICIM2006第十七屆國際資訊管?學術研討會，義守大學。	'),
(44, '	王乃宣、陳聖哲、曾明性* (2006)，「加值分類器之開發與效能評估」，2006全球管理新環境國際學術研討會，暨南國際大學。	'),
(45, '	陳聖哲、曾明性* (2006)，「調適型基因演算法於知識規則探勘之研究」，第十一屆人工智慧與應用研討會，高雄應用科技大學。	'),
(46, '	王乃宣、曾明性* (2006)，「衛星影像分類器之開發與效能評估」，第十一屆人工智慧與應用研討會，高雄應用科技大學。	'),
(47, '	陳聖哲、曾明性* (2006)，「基於細胞分裂之智慧型雙重基因演算法在知識發掘之研究」，第十二屆資訊管理暨實務研討會，虎尾科技大學。	'),
(48, '	張彙音、黃怡嘉、曾明性* (2006)，「決策樹與羅吉斯迴歸技術於冠狀動脈疾病診斷之探討」，第十一屆人工智慧與應用研討會，高雄應用科技大學。	');

-- --------------------------------------------------------

--
-- 資料表結構 `honor_deeds`
--

CREATE TABLE `honor_deeds` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `honor_deeds`
--

INSERT INTO `honor_deeds` (`id`, `content`) VALUES
(1, '恭賀實驗室成員 廖冠豪、何維涓、彭紹宇、陳文慈 榮獲 2016年中山醫學大學醫學資訊學系專題發表 冠軍	'),
(2, '恭賀實驗室成員 王采楓 高宇哲 榮獲 2016  Big Data X Maker 黑客松 最佳設計家銅獎'),
(3, '恭賀實驗室成員 呂凱煜 王采楓 榮獲 2016  Hack TKU 淡江黑客松 第一名'),
(4, '恭賀實驗室成員 呂凱煜 王采楓 榮獲 2016 Microsoft Student Parners 微軟學生大使 第二階段保送'),
(5, '恭賀實驗室成員 呂凱煜 施宜涵 魏志軒 葉晉江 榮獲 2015年中山醫學大學健康管理學院專題競賽 第三名'),
(6, '恭喜實驗室成員 王采楓 高宇哲 TANET 2015台灣網際網路研討會 最佳論文獎'),
(7, '恭賀實驗室成員 呂凱煜 施宜涵 魏志軒 葉晉江 榮獲 2015年中山醫學大學醫學資訊學系專題發表 冠軍'),
(8, '恭賀實驗室成員 呂凱煜 施宜涵 魏志軒 葉晉江 榮獲 2015第十屆國際健康資訊管理研討會大專競賽-技術組  冠軍'),
(9, '恭賀實驗室成員 呂凱煜 榮獲 2015資拓宏宇黑客松 程式競賽-校園組 第二名'),
(10, '恭賀實驗室成員 呂凱煜 榮獲 2015台大黑客松HackNTU 企業獎'),
(11, '恭賀實驗室成員 呂凱煜 施宜涵 魏志軒 榮獲 2014 第九屆國際健康資訊管理研討會 最佳論文'),
(12, '恭賀實驗室成員 呂凱煜 獲得 2014德州儀器DSP平台軟體開發工程師認證證書');

-- --------------------------------------------------------

--
-- 資料表結構 `intellectual_property_rights`
--

CREATE TABLE `intellectual_property_rights` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `name` text NOT NULL,
  `country` text NOT NULL,
  `number` text NOT NULL,
  `member` text NOT NULL,
  `owner` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `intellectual_property_rights`
--

INSERT INTO `intellectual_property_rights` (`id`, `type`, `name`, `country`, `number`, `member`, `owner`, `date`) VALUES
(1, 'B', '可程式化生理訊號閘道器', '台灣', 'M412747	', '湯秉宏、曾明性', '湯秉宏、曾明性', '100/08/16'),
(2, 'B', '睡眠障礙矯正輔助裝置', '台灣', 'M425645	', '湯秉宏、曾明性', '湯秉宏、曾明性', '01/04/01');

-- --------------------------------------------------------

--
-- 資料表結構 `periodical_article`
--

CREATE TABLE `periodical_article` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `periodical_article`
--

INSERT INTO `periodical_article` (`id`, `content`) VALUES
(1, '	H. C. Wu, C. Y. Lin, S. H. Huang,<ins>Tseng, M. H.*</ins> (2015). “An intelligent saliva recognition system for women’s ovulation detection”, Lecture Notes in Artificial Intelligence LNCS/LNAI 9011, 614-623. (EI) (MOST 103)	'),
(2, '	H. Ting, H. C. Wu, Hsu, H. C., Mai, A. T.,<ins>Tseng, M. H.*</ins> (2014). “Decision Tree Based Diagnostic System for Moderate to Severe Obstructive Sleep Apnea”, Journal of Medical Systems, 38:94(1-10). (SCI, HEALTH CARE SCIENCES & SERVICES, 31/89, IF:2.213)	'),
(3, '	H. C. Wu, H. Ting,<ins>Tseng, M. H.*</ins>, Y. F. Shen, C. C. Chang (2014). “Mobile Healthcare Monitoring System for Sudden Cardiac Death”, WIT Transactions on Engineering Sciences, 93:517-525. (EI) (MOST 101&102)	'),
(4, '	H. C. Wu, H. Ting,<ins>Tseng, M. H.*</ins> (2014). “Design and implementation of an automatic monitoring and correction auxiliary system for patients with obstructive sleep apnea syndrome”, Gerontechnology, 13(2):307. (MOST 102)	'),
(5, '	H. C. Wu, M. C. Tsai, C. C. Lin, C. J. Chang, C. C. Chang,<ins>Tseng, M. H.*</ins> (2014). “Developing screening services for colorectal cancer on Android smartphones”, Telemedicine and e-Health, 20(8): 687-695. (SCI, , HEALTH CARE SCIENCES & SERVICES, 46/89, IF:1.668) (MOST 102)	'),
(6, '	<ins>Tseng, M. H.</ins>, H. C. Wu (2014). “A cloud medication safety support system using QR Code and Web Services for elderly outpatients”, Technology and Health Care, 22 99-113. (SCI, HEALTH CARE SCIENCES & SERVICES, 79/89, IF:0.697 )	'),
(7, '	<ins>Tseng, M. H.</ins>, H. C. Wu (2014). “A cloud medication safety support system using QR Code and Web Services for elderly outpatients”, Technology and Health Care, 22 99-113. (SCI, HEALTH CARE SCIENCES & SERVICES, 79/89, IF:0.697 )	'),
(8, '   Tang, P. H. and <ins>Tseng, M. H.*</ins>(2013). “Adaptive directed mutation operator for real coded genetic algorithms”, Applied Soft Computing, 13, 600-614. (SCI, COMPUTER SCIENCE, ARTIFICIAL INTELLIGENCE, 17/123, IF: 2.810)	'),
(9, '	<ins>Tseng, M. H.*</ins>, Hsu H. C., Chang, C. C., Ting H., Wu, H. C., Tang P. H. (2012). “Development of an intelligent App for obstructive sleep apnea prediction on Android Smartphone using data mining approach”, Ubiquitous Intelligence and Computing, pp. 774-779, IEEE. (EI)	'),
(10, '	<ins>Tseng, M. H.*</ins>, Hsu H. C., Chang, C. C., Ting H., Wu, H. C., Tang P. H. (2012). “Development of an intelligent App for obstructive sleep apnea prediction on Android Smartphone using data mining approach”, Ubiquitous Intelligence and Computing, pp. 774-779, IEEE. (EI)	'),
(11, '	<ins>Tseng, M. H.*</ins>, Hsu H. C., Chang, C. C., Ting H., Wu, H. C., Tang P. H. (2012). “Development of an intelligent App for obstructive sleep apnea prediction on Android Smartphone using data mining approach”, Ubiquitous Intelligence and Computing, pp. 774-779, IEEE. (EI)	'),
(12, '	楊宜瑱、湯秉宏、黃建寧、謝欣翰、<ins>曾明性*</ins> (2011)，「應用血氧量測進行阻塞型睡眠呼吸中止症之監測警示系統研發」，醫療資訊雜誌，第二十卷第四期，25-37 頁。	'),
(13, '	<ins>Tseng, M. H.</ins>, & Wu, H. C. (2011). A two-dimensional fuzzy repertory grid approach for building medical expert systems. Machine Learning and Cybernetics (ICMLC), Vol. 1, pp. 183-188, IEEE. (EI)	'),
(14, '	<ins>Tseng, M. H.*</ins> (2010). “Kinematic wave computation using an efficient implicit method”, Journal of Hydroinformatics, 12(3), 329-338. (SCI) (ENGINEERING, CIVIL, 34/118, IF: 1.048)	'),
(15, '	Lai, C. H. and <ins>Tseng, M. H.*</ins> (2010). “Comparison of regression models, grey models, and supervised learning models for forecasting flood stage caused by typhoon events”, Journal of the Chinese Institute of Engineers, 33(4), 629-634. (SCI) (ENGINEERING, MULTIDISCIPLINARY, 73/90, IF: 0.295)	'),
(16, '	<ins>Tseng, M. H.*</ins>, Chiang, C.Y., Tang, P. H., Wu, H. C. (2010). “A study on cluster validity using intelligent evolutionary k-means approach.” Machine Learning and Cybernetics (ICMLC), Vol. 5, pp. 2010-2015, IEEE. (EI)	'),
(17, '	Tang, P. H. and <ins>Tseng, M. H.*</ins> (2009). “Medical data mining using BGA and RGA for weighting of features in fuzzy k-NN classification.” Proceedings of The IEEE Eighth International Conference on Machine Learning and Cybernetics, 5, 3070-3075, Baoding, 12-15 July, 2009. (EI)	'),
(18, '	Wang, Y. H.,<ins>Tseng, M. H.</ins>, Liao, H. C. (2009). “Data mining for adaptive learning sequence in English language instruction”, Expert Systems with Applications, 36(4), 7681-7686. (SCI)	'),
(19, '	<ins>Tseng, M. H.</ins> and Liao, H. C. (2009). “The genetic algorithm for breast tumor diagnosis- the case of DNA viruses”, Applied Soft Computing, 9, 703-710. (SCI)	'),
(20, '	<ins>Tseng, M. H.*</ins>, Chen, S. J., Hwang, G. H., Shen M. Y. (2008). “A genetic algorithm application in land-cover classification”, ISPRS Journal of Photogrammetry and Remote Sensing, 63, 202–212. (SCI)	');

-- --------------------------------------------------------

--
-- 資料表結構 `thesis`
--

CREATE TABLE `thesis` (
  `id` int(11) NOT NULL,
  `date` text,
  `department` text,
  `number` text,
  `student` text,
  `name_chi` text,
  `name_eng` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `thesis`
--

INSERT INTO `thesis` (`id`, `date`, `department`, `number`, `student`, `name_chi`, `name_eng`) VALUES
(1, '2015/9/11', '醫資碩四', '0159001', '沈瑜豐 Shen Yu-Feng', '以實數型基因演算法改良樸素貝氏分類器之研究', 'An Improved Naive Bayes classifier Vsing Real Coded Genetic Algorithms '),
(2, '2014/9/19', '醫資碩四', '0059002', '章哲嘉 CHANG CHE-CHIA', '猝死偵測與通報系統', 'Sudden Death Detection and Notification'),
(3, '2014/9/19', '醫資碩三', '0159006', '廖芳彬 Liao Fang-Bin', '改良型關聯規則探勘演算法之效能分析', 'Association Rules Analysis and Improved Performance Research of Apriori Algorithms'),
(4, '2013/8/28', '醫資碩三', '0059005', '蔡榮哲 Rong-Je Tsai', '以圖形運算單元加速機率型神經徑路追蹤演算法', 'The Development of a GPU-based Probabilistic Tractography Algorithm'),
(5, '2013/8/12', '醫資碩三', '0059006', '張巧蓉 Chiao-Jung Chang', '大腸腺瘤息肉之分類規則研究', 'A Mining on Classification Rules for Adenomatous Polyps'),
(6, '2013/8/12', '醫資碩三', '9959002', '黃詩涵 ShihHan Huang', '結合熵理論與HSV色彩空間預測女性排卵期之唾液影像辨識系統開發', 'Development of a Saliva Image Recognition System for Woman s Ovulation Prediction using Entropy and HSV'),
(7, '2013/7/8', '醫資碩三', '9959008', '徐雪珍 Hsueh-Chen Hsu', '運用決策樹演算法於阻塞型睡眠呼吸中止症疾病之預測探討', 'Prediction of Obstructive Sleep Apnea Using Decision Tree Algorithms'),
(8, '2010/7/7', '醫資碩二', '9759001', '湯秉宏 Ping-Hung Tang', '智慧型基因演算法於疾病分類規則之研究', 'A Study of Disease Classification Rules Using Intelligent Genetic Algorithms');

-- --------------------------------------------------------

--
-- 資料表結構 `university_study`
--

CREATE TABLE `university_study` (
  `id` int(11) NOT NULL,
  `year` text NOT NULL,
  `name` text NOT NULL,
  `member` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `university_study`
--

INSERT INTO `university_study` (`id`, `year`, `name`, `member`) VALUES
(1, '	104	', '	探討十大死因時空群聚及共位之變遷分析', '廖冠豪、何維涓、彭紹宇、陳文慈'),
(2, '	103	', '	基於醫療物聯網概念建置醫院雲端資訊服務-以身高體重計與血壓計為例	', '呂凱煜、魏志軒、施宜涵、葉晉江'),
(3, '	102	', '	監控影像之液面高度判釋研究', '張皓威、李國華、蔡伊婷	'),
(4, '	102	', ' Android鼾聲檢測系統開發	', '周柏汶、許峻榮、陳日陞 、劉倢妤'),
(5, '	101	', '	結合二維條碼與行動平台之用藥安全輔助系統', '康嘉佑、宋星賢'),
(6, '	101	', '	改良血氧濃度特徵指摽進行阻塞型睡眠呼吸暫止症預測', '陳諭葶、魏千琛'),
(7, '	100	', '	結合QR Code與擴增實境於用藥安全輔助系統之開發', '陳佳妤、劉家豪	'),
(8, '	100	', '	ECG個人健康紀錄管理系統雛型開發:以Android平台為例', '蔡宗諭、沈瑜豐、廖芳彬'),
(9, '	99	', '	U化情境運算之應用-以健康照護及電力監測為例	', '謝欣翰、林俊汶'),
(10, '	98	', ' 老人照護管理系統之開發', '陳韻?、劉嘉琪、黃詩涵、彭詩婷'),
(11, '	97	', '	演化式計算於分群演算法之改良探討(以乳癌診斷為應用例)', '周書妤、古怡芳、劉軒豪、吳荏維'),
(12, '	96	', '	Hire Management System (HMS)租借管理系統－以Video租借為例', '蔡峻榮、吳君孝'),
(13, '	96	', '	智慧型疾病診斷輔助系統之研發以肝炎及心血管疾病為例	', '李宜亭、王瀅茜'),
(14, '	95	', '	智慧型圖書館虛擬管理員系統	', '簡宜庭、張彙音、王乃宣');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `conference_paper`
--
ALTER TABLE `conference_paper`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `honor_deeds`
--
ALTER TABLE `honor_deeds`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `intellectual_property_rights`
--
ALTER TABLE `intellectual_property_rights`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `periodical_article`
--
ALTER TABLE `periodical_article`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `thesis`
--
ALTER TABLE `thesis`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `university_study`
--
ALTER TABLE `university_study`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `conference_paper`
--
ALTER TABLE `conference_paper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- 使用資料表 AUTO_INCREMENT `honor_deeds`
--
ALTER TABLE `honor_deeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用資料表 AUTO_INCREMENT `intellectual_property_rights`
--
ALTER TABLE `intellectual_property_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用資料表 AUTO_INCREMENT `periodical_article`
--
ALTER TABLE `periodical_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用資料表 AUTO_INCREMENT `thesis`
--
ALTER TABLE `thesis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `university_study`
--
ALTER TABLE `university_study`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
