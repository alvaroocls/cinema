-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Jul 04, 2023 at 10:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user data', 7, 'add_userdata'),
(26, 'Can change user data', 7, 'change_userdata'),
(27, 'Can delete user data', 7, 'delete_userdata'),
(28, 'Can view user data', 7, 'view_userdata'),
(29, 'Can add movie data', 8, 'add_moviedata'),
(30, 'Can change movie data', 8, 'change_moviedata'),
(31, 'Can delete movie data', 8, 'delete_moviedata'),
(32, 'Can view movie data', 8, 'view_moviedata'),
(33, 'Can add tickets', 9, 'add_tickets'),
(34, 'Can change tickets', 9, 'change_tickets'),
(35, 'Can delete tickets', 9, 'delete_tickets'),
(36, 'Can view tickets', 9, 'view_tickets');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cinema_moviedata`
--

CREATE TABLE `cinema_moviedata` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `release_date` varchar(100) NOT NULL,
  `poster_url` varchar(255) NOT NULL,
  `age_rating` int(11) NOT NULL,
  `ticket_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cinema_moviedata`
--

INSERT INTO `cinema_moviedata` (`id`, `title`, `description`, `release_date`, `poster_url`, `age_rating`, `ticket_price`) VALUES
(10, 'Fast X', 'Dom Toretto dan keluarganya menjadi sasaran putra gembong narkoba Hernan Reyes yang pendendam.', '2023-05-17', 'https://image.tmdb.org/t/p/w500/fiVW06jE7z9YnO4trhaMEdclSiC.jpg', 15, 53000),
(11, 'John Wick: Chapter 4', 'John Wick mengungkap jalan untuk mengalahkan The High Table. Tapi sebelum dia bisa mendapatkan kebebasannya, Wick harus berhadapan dengan musuh baru dengan aliansi kuat di seluruh dunia dan kekuatan yang mengubah teman lama menjadi musuh.', '2023-03-22', 'https://image.tmdb.org/t/p/w500/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg', 10, 60000),
(12, 'The Super Mario Bros. Movie', 'Ketika sedang bekerja di bawah tanah untuk memperbaiki pipa air, Mario dan Luigi, yang merupakan tukang ledeng dari Brooklyn, tiba-tiba terhisap ke dalam pipa misterius dan masuk ke dunia yang sangat berbeda. Mereka berada di tempat yang ajaib dan aneh. Tapi sayangnya, mereka terpisah satu sama lain. Mario memulai petualangan besar untuk mencari dan menemukan Luigi.', '2023-04-05', 'https://image.tmdb.org/t/p/w500/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', 14, 49000),
(13, 'Avatar: The Way of Water', 'Jake Sully tinggal bersama keluarga barunya di planet Pandora. Setelah ancaman kembali datang, Jake harus bekerja dengan Neytiri dan pasukan ras Na\'vi untuk melindungi planet mereka.', '2022-12-14', 'https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', 12, 53000),
(14, 'Guardians of the Galaxy Vol. 3', 'Peter Quill masih trauma karena kehilangan Gamora. Ia perlu mengumpulkan timnya untuk melindungi alam semesta dan salah satu anggota mereka. Jika mereka gagal, Guardian akan berakhir.', '2023-05-03', 'https://image.tmdb.org/t/p/w500/nAbpLidFdbbi3efFQKMPQJkaZ1r.jpg', 12, 41000),
(15, 'Ant-Man and the Wasp: Quantumania', 'Scott Lang dan Hope van Dyne adalah pasangan pahlawan super. Mereka pergi bersama orang tua Hope, Janet van Dyne dan Hank Pym, serta anak perempuan Scott, Cassie Lang, untuk menjelajahi Alam Kuantum. Di sana, mereka bertemu dengan makhluk-makhluk aneh dan memulai petualangan yang tak terduga. Petualangan ini akan menguji batas-batas mereka.', '2023-02-15', 'https://image.tmdb.org/t/p/w500/g0OWGM7HoIt866Lu7yKohYO31NU.jpg', 12, 51000),
(16, 'The Pope\'s Exorcist', 'Pastor Gabriele Amorth, yang memimpin tim pengusir setan di Vatikan, menginvestigasi kasus kekerasan roh jahat yang menghantui seorang anak laki-laki. Dalam penyelidikannya, ia secara tak terduga menemukan rahasia tua yang disembunyikan oleh Vatikan selama berabad-abad.', '2023-04-05', 'https://image.tmdb.org/t/p/w500/gNPqcv1tAifbN7PRNgqpzY8sEJZ.jpg', 13, 51000),
(17, 'To Catch a Killer', 'Baltimore. Malam tahun baru. Seorang petugas polisi yang berbakat tetapi bermasalah (Shailene Woodley) direkrut oleh kepala penyelidik FBI (Ben Mendelsohn) untuk membantu membuat profil dan melacak individu yang terganggu yang meneror kota.', '2023-04-06', 'https://image.tmdb.org/t/p/w500/mFp3l4lZg1NSEsyxKrdi0rNK8r1.jpg', 15, 47000),
(18, 'Transformers: Age of Extinction', 'Lima tahun setelah Chicago dihancurkan, manusia berbalik melawan robot. Namun seorang ayah tunggal dan penemu membangkitkan robot yang dapat menyelamatkan dunia.', '2014-06-25', 'https://image.tmdb.org/t/p/w500/jyzrfx2WaeY60kYZpPYepSjGz4S.jpg', 11, 54000),
(19, 'Puss in Boots: The Last Wish', 'Puss in Boots menemukan fakta bahwa kecintaannya pada petualangan telah merenggut nyawanya: dia telah menghabiskan delapan dari sembilan nyawanya. Puss kini memulai petualangan epik untuk menemukan harapan terakhir untuk memulihkan sembilan nyawanya.', '2022-12-07', 'https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', 11, 51000),
(20, 'Scream VI', 'Setelah pembunuhan terbaru oleh Ghostface, keempat orang yang selamat pergi dari Woodsboro dan memulai hidup baru.', '2023-03-08', 'https://image.tmdb.org/t/p/w500/wDWwtvkRRlgTiUr6TyLSMX8FCuZ.jpg', 12, 36000),
(21, 'Black Adam', 'Hampir 5.000 tahun setelah dia dianugerahi kekuatan maha kuasa para dewa Mesirâ€”dan dipenjara dengan cepatâ€”Black Adam dibebaskan dari makam duniawinya, siap untuk melepaskan bentuk keadilannya yang unik di dunia modern.', '2022-10-19', 'https://image.tmdb.org/t/p/w500/A5imhXiFF3AL9RRA4FBzNDFmfgW.jpg', 10, 42000),
(22, 'Dungeons & Dragons: Honor Among Thieves', 'Seorang pencuri menawan dan sekelompok petualang yang unik melakukan pencurian besar-besaran untuk mencuri relik yang hilang. Namun, segalanya menjadi kacau ketika mereka berjumpa dengan orang yang salah.', '2023-03-23', 'https://image.tmdb.org/t/p/w500/A7AoNT06aRAc4SV89Dwxj3EYAgC.jpg', 12, 38000),
(23, 'Peter Pan & Wendy', 'Wendy Darling adalah seorang gadis kecil yang takut pergi dari rumah masa kecilnya. Suatu hari, dia bertemu dengan Peter Pan, seorang anak laki-laki yang tidak mau tumbuh dewasa. Mereka bersama saudara-saudaranya dan peri kecil bernama Tinker Bell pergi ke dunia ajaib yang disebut Neverland. Di sana, mereka menghadapi Kapten Hook, seorang bajak laut jahat, dan mengalami petualangan seru yang akan mengubah hidup Wendy selamanya.', '2023-04-20', 'https://image.tmdb.org/t/p/w500/9NXAlFEE7WDssbXSMgdacsUD58Y.jpg', 13, 35000),
(24, 'Spider-Man: No Way Home', 'Peter Parker menghadapi masalah besar. Hal ini terjadi setelah identitasnya sebagai Spiderman terungkap. Dengan kepergian Tony Stark, Peter Parker pun harus meminta bantuan Doctor Strange agar semua orang bisa melupakan identitasnya sebagai manusia laba-laba.', '2021-12-15', 'https://image.tmdb.org/t/p/w500/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg', 15, 56000),
(25, 'Black Panther: Wakanda Forever', 'Rakyat Wakanda kali ini akan berjuang untuk melindungi negerinya dari campur tangan kekuatan dunia setelah kematian sang Raja T\'Challa.', '2022-11-09', 'https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg', 13, 39000),
(26, 'Transformers: The Last Knight', 'Di tengah ketidakhadiran Optimus Prime, umat manusia berperang melawanTransformers untuk mempertahankan eksistensinya. Cade Yeager membentuk kerjasama dengan Bumblebee, seorang bangsawan Inggris dan seorang professor dari Oxford untuk mempelajari mengapa Transformers selalu kembali ke planet bumi.', '2017-06-16', 'https://image.tmdb.org/t/p/w500/s5HQf2Gb3lIO2cRcFwNL9sn1o1o.jpg', 12, 52000),
(27, 'Renfield', 'Setelah bertahun-tahun sebagai hamba Dracula yang merasa jenuh dan lelah, Renfield menemukan harapan baru dalam hidupnya. Dia jatuh cinta pada Rebecca Quincy, seorang polisi lalu lintas yang energik dan sering marah. Kesempatan ini bisa menjadi penebusan baginya.', '2023-04-07', 'https://image.tmdb.org/t/p/w500/2OaprROMZZeiWsydjGUIkXrv2Z3.jpg', 14, 51000),
(28, 'Cocaine Bear', 'Sekelompok polisi, penjahat, turis, dan remaja eksentrik berkumpul di hutan Georgia tempat beruang hitam besar mengamuk setelah menelan kokain secara tidak sengaja.', '2023-02-22', 'https://image.tmdb.org/t/p/w500/gOnmaxHo0412UVr1QM5Nekv1xPi.jpg', 12, 53000),
(29, 'Prey', 'Di Comanche Nation pada tahun 1717, seorang pejuang yang ganas dan sangat terampil bernama Naru mengetahui bahwa mangsa yang dia intai adalah alien yang sangat berkembang dengan persenjataan berteknologi maju.', '2022-08-02', 'https://image.tmdb.org/t/p/w500/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg', 10, 42000),
(30, 'Fall', 'Untuk sahabat Becky dan Hunter, hidup adalah tentang menaklukkan ketakutan dan mendorong batas. Tetapi setelah mereka mendaki 2.000 kaki ke puncak menara radio terpencil yang ditinggalkan, mereka menemukan diri mereka terdampar tanpa jalan turun. Sekarang keterampilan panjat ahli Becky dan Hunter akan diuji saat mereka mati-matian berjuang untuk bertahan hidup dari unsur-unsur, kurangnya persediaan, dan ketinggian yang menyebabkan vertigo.', '2022-08-11', 'https://image.tmdb.org/t/p/w500/v28T5F1IygM8vXWZIycfNEm3xcL.jpg', 11, 39000),
(31, 'Avatar', 'Pada abad ke-22, seorang Marinir lumpuh dikirim ke Pandora bulan pada misi yang unik, tetapi menjadi terpecah antara mengikuti perintah dan melindungi peradaban alien.', '2009-12-15', 'https://image.tmdb.org/t/p/w500/kyeqWdyUXW608qlYkRqosgbbJyK.jpg', 13, 37000),
(32, 'Split', 'Ketika ketiga gadis remaja sedang menunggu ayah mereka di dalam mobil, seorang pria misterius menculik dan membawa mereka ke dalam sebuah bunker. Sang penculik yang bernama Kevin (James McAvoy) adalah seorang pria dengan gangguan jiwa yang membuatnya memiliki 23 kepribadian yang berbeda, yang diantaranya adalah seorang wanita dan anak berumur 9 tahun yang bernama Hedwig.  Sebagai salah satu gadis yang diculik, Casey berusaha meloloskan diri dengan meyakinkan salah satu kepribadian Kevin untuk melepaskan mereka. Akan tetapi hal tersebut tidaklah mudah, terlebih setelah Hedwig memperingatkan mereka akan the Beast yang merupakan kepribadian Kevin yang paling berbahaya.', '2017-01-19', 'https://image.tmdb.org/t/p/w500/lli31lYTFpvxVBeFHWoe5PMfW5s.jpg', 10, 45000),
(33, 'Top Gun: Maverick', 'Setelah lebih dari tiga puluh tahun mengabdi sebagai salah satu penerbang top Angkatan Laut, dan menghindari kenaikan pangkat yang akan menjatuhkannya, Pete \"Maverick\" Mitchell mendapati dirinya melatih satu detasemen lulusan TOP GUN untuk misi khusus yang tidak ada kehidupan. pilot pernah melihat.', '2022-05-24', 'https://image.tmdb.org/t/p/w500/jeGvNOVMs5QIU1VaoGvnd3gSv0G.jpg', 14, 57000),
(34, 'Thor: Love and Thunder', '\"Thor: Love and Thunder\"menceritakan Thor (Chris Hemsworth) dalam sebuah perjalanan yang belum pernah ia jalani â€“ pencariankedamaian batin. Namun, masa pensiunnya terganggu oleh seorang pembunuh galaksi yang dikenal sebagai Gorr sang Dewa Jagal (Christian Bale), yang ingin memusnahkan para dewa. Untuk mengatasi ancaman, Thor meminta bantuan Raja Valkyrie (Tessa Thompson), Korg (Taika Waititi), dan mantan kekasihnya Jane Foster (Natalie Portman), yang secara mengejutkan dan misterius berhasil menggunakan palu ajaibnya, Mjolnir, sebagai Mighty Thor. Bersama, mereka memulai petualangan kosmik yang mendebarkan untuk mengungkap misteri pembalasan Dewa Jagal dan menghentikannya sebelum terlambat.', '2022-07-06', 'https://image.tmdb.org/t/p/w500/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg', 12, 35000),
(35, 'Sonic the Hedgehog 2', 'Alur cerita film Sonic the Hedgehog 2 bermula ketika Sonic menetap di Green Hills. Ia memutuskan menetap di sana agar bisa merasakan lebih banyak kebebasan. Ditambah lagi, Tom dan Maddie setuju untuk meninggalakannya di rumah ketika mereka pergi untuk berlibur. Namun sayangnya, tidak lama setelah mereka pergi Dr. Robotnik sang musuh bubuyutan si landak biru itu kembali ke bumi. Kali ini Dr. Robotnik datang dengan pasukan baru, Knuckles. Tujuan mereka datang kembali adalah untuk mencari Master Emerald yang memiliki kekuatan super. Kekuatan super itu bisa membangun dan menghancurkan peradaban di bumi. Atas hal ini, Sonic pun mencari strategi agar bisa menggagalkan rencara Dr. Robotnik. Strategi yang dilakukan oleh Sonic ialah bekerjasama dengan sahabatnya, Tails. Kemudian bersama dengan Tails, Sonic memulai perjalanan untuk menemukan Master Emerald. Semua itu dilakukan dengan cepat, sebelum Master Emerald jatuh ke tangan yang salah.', '2022-04-08', 'https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg', 12, 45000),
(36, 'Avengers: Infinity War', 'Karena Avengers dan sekutunya terus melindungi dunia dari ancaman yang terlalu besar untuk ditangani oleh seorang pahlawan, bahaya baru telah muncul dari bayangan kosmik: Thanos. Seorang lalim penghujatan intergalaksi, tujuannya adalah untuk mengumpulkan semua enam Batu Infinity, artefak kekuatan yang tak terbayangkan, dan menggunakannya untuk menimbulkan kehendak memutar pada semua realitas. Segala sesuatu yang telah diperjuangkan oleh Avengers telah berkembang hingga saat ini - nasib Bumi dan keberadaannya sendiri tidak pernah lebih pasti.', '2018-04-25', 'https://image.tmdb.org/t/p/w500/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', 10, 46000),
(37, 'The Whale', 'Seorang guru bahasa Inggris yang tertutup dan gemuk mencoba untuk berhubungan kembali dengan putri remajanya yang terasing.', '2022-12-09', 'https://image.tmdb.org/t/p/w500/jQ0gylJMxWSL490sy0RrPj1Lj7e.jpg', 15, 55000),
(38, 'The Batman', 'Ketika seorang pembunuh berantai sadis mulai membunuh tokoh-tokoh politik penting di Gotham, Batman terpaksa menyelidiki korupsi tersembunyi di kota itu dan mempertanyakan keterlibatan keluarganya.', '2022-03-01', 'https://image.tmdb.org/t/p/w500/seyWFgGInaLqW7nOZvu0ZC95rtx.jpg', 13, 53000),
(39, 'Smile', 'Setelah menyaksikan kejadian aneh dan traumatis yang melibatkan seorang pasien, Dr. Rose Cotter mulai mengalami kejadian menakutkan yang tidak dapat dia jelaskan. Saat teror luar biasa mulai mengambil alih hidupnya, Rose harus menghadapi masa lalunya yang bermasalah untuk bertahan hidup dan melarikan diri dari kenyataan barunya yang mengerikan.', '2022-09-23', 'https://image.tmdb.org/t/p/w500/67Myda9zANAnlS54rRjQF4dHNNG.jpg', 11, 38000),
(40, 'Encanto', 'menceritakan tentang keluarga Madrigals, sebuah keluarga yang tinggal di rumah ajaib dan masing-masing anggota keluarga memiliki keajaibannya tersendiri. Pada jaman dahulu kala, Abuela bersama suami dan anak-anaknya melarikan diri dari kerusuhan di desa.', '2021-10-13', 'https://image.tmdb.org/t/p/w500/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', 12, 44000);

-- --------------------------------------------------------

--
-- Table structure for table `cinema_tickets`
--

CREATE TABLE `cinema_tickets` (
  `id` bigint(20) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cinema_tickets`
--

INSERT INTO `cinema_tickets` (`id`, `seat_id`, `purchase_date`, `movie_id`, `user_id`) VALUES
(11, 1, '2023-07-02', 11, 'c'),
(12, 2, '2023-07-02', 11, 'c'),
(13, 3, '2023-07-02', 11, 'c'),
(14, 9, '2023-07-02', 11, 'c'),
(15, 10, '2023-07-02', 11, 'c'),
(16, 11, '2023-07-02', 11, 'c'),
(17, 12, '2023-07-02', 11, 'c'),
(18, 13, '2023-07-02', 11, 'c'),
(19, 17, '2023-07-02', 11, 'c'),
(20, 18, '2023-07-02', 11, 'c'),
(21, 19, '2023-07-02', 11, 'c'),
(22, 20, '2023-07-02', 11, 'c'),
(23, 21, '2023-07-02', 11, 'c'),
(24, 25, '2023-07-02', 11, 'c'),
(25, 26, '2023-07-02', 11, 'c'),
(26, 27, '2023-07-02', 11, 'c'),
(27, 28, '2023-07-02', 11, 'c'),
(28, 29, '2023-07-02', 11, 'c'),
(29, 33, '2023-07-02', 11, 'c'),
(30, 34, '2023-07-02', 11, 'c'),
(31, 35, '2023-07-02', 11, 'c'),
(32, 36, '2023-07-02', 11, 'c'),
(33, 37, '2023-07-02', 11, 'c'),
(34, 41, '2023-07-02', 11, 'c'),
(35, 57, '2023-07-02', 11, 'c'),
(36, 60, '2023-07-02', 11, 'c'),
(37, 57, '2023-07-02', 22, 'c'),
(40, 51, '2023-07-03', 11, 'alvaro'),
(41, 52, '2023-07-03', 11, 'alvaro'),
(42, 56, '2023-07-03', 11, 'alvaro'),
(43, 8, '2023-07-03', 13, 'alvaro'),
(44, 16, '2023-07-03', 13, 'alvaro');

-- --------------------------------------------------------

--
-- Table structure for table `cinema_userdata`
--

CREATE TABLE `cinema_userdata` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cinema_userdata`
--

INSERT INTO `cinema_userdata` (`username`, `password`, `name`, `age`, `balance`) VALUES
('a', 'a', 'a', 20, NULL),
('alvaro', '12345', 'Alvaro Cleosanda', 19, 44140),
('c', '1', 'c', 12, 7000),
('joko', '1', 'jokowi', 49, 100000),
('muda', 'a', 'a', 15, NULL),
('oke', '123', 'asd', 19, NULL),
('tes', '123', 'tes', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'cinema', 'moviedata'),
(9, 'cinema', 'tickets'),
(7, 'cinema', 'userdata'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-25 07:47:01.137060'),
(2, 'auth', '0001_initial', '2023-06-25 07:47:01.420515'),
(3, 'admin', '0001_initial', '2023-06-25 07:47:01.487170'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-25 07:47:01.493811'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-25 07:47:01.500818'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-25 07:47:01.543126'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-25 07:47:01.575374'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-25 07:47:01.591050'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-25 07:47:01.598323'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-25 07:47:01.640053'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-25 07:47:01.642056'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-25 07:47:01.648755'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-25 07:47:01.664978'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-25 07:47:01.680932'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-25 07:47:01.698083'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-25 07:47:01.705385'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-25 07:47:01.722106'),
(18, 'sessions', '0001_initial', '2023-06-25 07:47:01.742736'),
(19, 'cinema', '0001_initial', '2023-06-25 08:49:03.974317'),
(20, 'cinema', '0002_alter_userdata_age_alter_userdata_name', '2023-06-25 08:51:18.750292'),
(21, 'cinema', '0003_userdata_balance', '2023-06-25 09:03:50.452555'),
(22, 'cinema', '0004_moviedata', '2023-06-25 13:36:05.380671'),
(23, 'cinema', '0005_tickets', '2023-06-29 16:32:27.891034'),
(24, 'cinema', '0006_rename_movie_id_tickets_movie_and_more', '2023-06-29 16:40:05.303695');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cinema_moviedata`
--
ALTER TABLE `cinema_moviedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinema_tickets`
--
ALTER TABLE `cinema_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cinema_tickets_movie_id_8bf2244f_fk_cinema_moviedata_id` (`movie_id`),
  ADD KEY `cinema_tickets_user_id_5249d944_fk_cinema_userdata_username` (`user_id`);

--
-- Indexes for table `cinema_userdata`
--
ALTER TABLE `cinema_userdata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cinema_moviedata`
--
ALTER TABLE `cinema_moviedata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `cinema_tickets`
--
ALTER TABLE `cinema_tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cinema_tickets`
--
ALTER TABLE `cinema_tickets`
  ADD CONSTRAINT `cinema_tickets_movie_id_8bf2244f_fk_cinema_moviedata_id` FOREIGN KEY (`movie_id`) REFERENCES `cinema_moviedata` (`id`),
  ADD CONSTRAINT `cinema_tickets_user_id_5249d944_fk_cinema_userdata_username` FOREIGN KEY (`user_id`) REFERENCES `cinema_userdata` (`username`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
