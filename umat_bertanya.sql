-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Jul 2019 pada 14.05
-- Versi server: 10.1.40-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ldpfileh_umat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `deskripsi`) VALUES
(1, 'Takbiratul Ihram', 'Shalat tidak akan sempurna tanpa takbiratul ihram. Nama takbiratul ihram ini berdasarkan sabda Rasulullah saw :“Kunci shalat adalah bersuci, dan yang mengharamkannya (dari perbuatan sesuatu selain perbuatan-perbuatan shalat) adalah takbir, dan penghalalnya adalah salam.'),
(2, 'Berdiri', 'semua ulama mazhab sepakat bahwa berdiri dalam shalat fardhu itu wajib sejak mulai dari takbiratul ihram sampai ruku’, harus tegap, bila tidak mampu ia boleh shalat dengan duduk. Bila tidak mampu duduk, ia boleh shalat dengan miring pada bagian kanan, seperti letak orang yang meninggal di liang lahat, menghadapi kiblat di hadapan badannya, menurut kesepakatan semua ulama mazhab selain Hanafi'),
(3, 'Ruku', 'Semua ulama mazhab sepakat bahwa ruku’ adalah wajib di dalam shalat. Namun mereka berbeda pendapat tentang wajib atau tidaknya ber-thuma’ninah di dalam ruku’, yakni ketika ruku’ semua anggota badan harus diam, tidak bergerak'),
(4, 'Sujud', 'Semua ulama mazhab sepakat bahwa sujud itu wajib dilkitakan dua kali pada setipa rakaat. Mereka berbeda pendapat tentang batasnya'),
(5, 'Niat', 'Semua ulama mazhab sepakat bahwa mengungkapkan niat dengan kata-kata tidaklah diminta. Ibnu Qayyim berpendapat dalam bukunya Zadul Ma\'ad, sebagaimana yang dijelaskan dalam jilid pertama dari buku Al-Mughni, karya Ibnu Qudamah, sebagai berikut : Nabi Muhammad SAW bila menegakkan sholat, beliau langsung mengucapkan Allahu akbar dan beliau tidak mengucapkan apa-apa sebelumnya, dan tidak melafalkan niat sama sekali.'),
(6, 'Bacaan', 'Mengenai bacaan ulama mazhab berbeda pendapat.'),
(8, 'I`TIDAL', 'I’tidal adalah gerakan mengangkat badan setelah dari rukuk hingga berdiri kembali dengan punggung dalam keadaan lurus.'),
(9, 'Tahiyyat Awal', 'tahiyyat yang terjadi setelah dua rakaat pertama dari shalat maghrib, isya’, dzuhur, dan ashar dan tidak diakhiri dengan salam'),
(10, 'Tahiyyat Akhir', 'tahiyyat yang diakhiri dengan salam, baik pada shalat yang dua rakaat, tiga, atau empat rakaat.'),
(11, 'Mengucapkan Salam', '<p>Menurut&nbsp;<strong>empat mazhab</strong>, kalimatnya sama yaitu :<br />\r\n<strong><em>Assalaamu&rsquo;alaikum warahmatullaah</em></strong><br />\r\n&rdquo;<em>Semoga kesejahteraan dan rahmat Allah tercurah kepada kalian</em>&rdquo;</p>\r\n'),
(12, 'Tertib', '<p>Diwajibkan tertib antara bagian-bagian shalat. Maka&nbsp;<em>takbiratul Ihram&nbsp;</em>wajib didahulukan dari&nbsp;bacaan Al-Quran (salam atau Al-Fatihah), sedangkan membaca Al-Fatihah wajib didahulukan dari&nbsp;ruku&rsquo;, dan ruku&rsquo; didahulukan daru sujud, begitu seterusnya.</p>\r\n'),
(13, 'Berturut-turut', 'diwajibkan mengerjakan bagian-bagian shalat secara berurutan dan langsung, juga antara satu bagian dengan bagian yang lain. Artinya membaca Al-Fatihah langsung setelah bertakbir tanpa ada selingan. Dan mulai ruku’ setelah membaca Al-Fatihah atau ayat Al-Quran, tanpa selingan, begitu seterusnya. Juga tidak boleh ada selingan lain, antara ayat-ayat, kalimat-kalimat, dan huruf-huruf.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `imam`
--

CREATE TABLE `imam` (
  `id_imam` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `imam`
--

INSERT INTO `imam` (`id_imam`, `nama`, `keterangan`) VALUES
(1, 'Imam Maliki', '<p>\r\nImam Maliki (Malik ibn Anas Al Ashbaqi 93-179 H) lahir di Madinah pada tahun 93 H / 712 M, (versi Qodi’Iyad: 93 H – 189 H [2]) konon ia dikandung 12 bulan, bahkan riwayat lain selama 3 tahun. Dan sekitar 57 tahun lebih tua dari Imam Syafi’i. Beliau adalah seorang ulama atau Imam yang tekun mengumpulkan hadits dan menghafalnya. Ia hidup pada masa Tabi’in dan Tabi’tabi’in (orang yang berjumpa dengan sahabat Nabi dan orang yang berjumpa dengan orang yang telah berjumpa dengan sahabat Nabi).\r\n</p>\r\n<p>\r\nPada saat itu Ia hidup di kota kerajaan Islam di Kota Kuffah. Adapun Madinah, di kala itu termasuk kota yang sepi, hanya dihuni oleh pemangku-pemangku hadits, ahli tafsir, ulama ahli tashawuf, meraka terdiri dari Sahabat Nabi, Tabi’in dan Tabi’tabiin. Sedang kota Kuffah didiami oleh jago-jago politik, yang tidak kalah pula fungsinya dengan ulama-ulama. Oleh sebab itu dasar Mazhab Maliki diantaranya ialah amalan orang Madinah (Ulama Madinah).\r\n</p>\r\n<p>\r\nImam Malik adalah seorang “Huffazh” (penghafal hadits) nomor satu pada zamannya. Tidak ada seorangpun yang bisa menandingi beliau dalam hal penghafalan hadits. Pada usia 40 tahun 100.000 hadits yang sudah dihafal diluar kepala itu, lalu diteliti pe-rawi-nya dan beliau cocokkan dengan ayat-ayat suci Al Qur’an tentang arti dan tujuannya. Pada akhirnya hanya 5000 hadits yang oleh beliau dianggap shahih. Dan kemudian beliau kumpulkan menjadi satu dalam kitab yang diberi nama “Almuwaththa” (yang disepakati). Sesuai dengan namanya “Almuwaththa” yang disepakati, karena kitab tersebut telah dimufakati oleh 70 ulama fiqih di Madinah. Imam Safi’i berkomentar: “Kitab yang paling shahih sesudah Al Qur’an, ialah “Almuwaththa”\r\n</p>'),
(2, 'Imam Hambali', '<p>\r\nAliran fikih Islam yang dinisbahkan kepada Imam Ahmad Ibnu Hambal bin Hilai, lahir di Baghdad tahun 164 H tumbuh dewasa di kota ini dan wafat pada usia 77 tahun di hari jum’at Rabi’ul Awwal tahun 241 H / 855 M. Setelah menderita sakit selama beberapa minggu. Dan di makamkan di Bab Harb di Kota Baghdad. Nama Hambali ia sandang dari nama datuknya, sejak kecil dikenal dengan nama Ahmad bin Hambal. Ia belajar ilmu fiqh kepada al-Syafi’I, dan mencurahkan dirinya terhadap sunnah yang menjadikan sebagai tokoh besar di zamannya. \r\n</p>\r\n<p>\r\nMazhab Hambali berdasarkan atas nash, yaitu Al-Qur’an dan Hadist yang shahih, fatwa sahabat, pendapat sahabat paling dekat dengan Al Qur’an dan hadits, hadits dha’if yang tidak terlalu lemah dan hadits mursal, dan yang terakhir, jika terpaksa, juga qiyas. Karena itu mazhab ini digolongkan sebagai aliran ahlu ‘l-hadits yang mendahulukan hadits walaupun dhaif daripada ra’ya. Ulama-ulama yang berjasa mengembangkan mazhab Hambali antara lain Abu ‘l-Qasim al-Karkhi (wafat tahun 881 M), Abdu ‘l-Aziz Ja’far (wafat tahun 910 M), Ibnu Qudamah (wafat tahun 1164 M), Ibnu Taymiah (wafat 20 Syawal tahun 749 H [15] / 1273 M) dan Ibnu Qayyim (wafat tahun 1296 M). Penganut mazhab ini terutama terdapat di Arab Saudi.\r\n</p>\r\n<p>\r\nMazhab Hanbali adalah satu daripada empat mazhab fiqih terkenal dalam aliran ahli sunnah wal jamaah Mazhab ini juga mendapat pengikut dari aliran Wahabi dan Salafi tetapi posisi ini tidak diakui oleh sarjana Islam. Aliran Salafi merujuk mazhab Hanbali sebagai mazhab Athari. Mazhab Hambali ini kebanyakan diamalkan oleh masyarakat Islam di Semenanjung Arab.\r\n</p>'),
(3, 'Imam Hanafi', '<p>\r\nAliran fikih Islam yang dinisbahkan kepada Ahmad Ibn Hambal: Abu Abdillah. Imam Abu Hanifah Nu’man ibn Thabit al-Taymi (80-150 H). Ia keturunan Parsi, dilahirkan di Basra tahun 699 M dan berusia 70 tahun dan wafat pada bulan Rajab tahun 150 H, di Kuffah (Bagdad).[19] Menurut versi Qodi’Iyad Ia wafat 350 H[20]. Makamnya ada di Al Khoizaron, Baghdad. Nama sebenarnya Nu’man putra dari Tsabit bin Zautho bin Mah, keturunan bangsa Ajam. Kata ‘hanif’ dalam bahasa Arab berarti cenderung kepada agama yang benar. \r\n</p>\r\n<p>\r\nRiwayat yang lain mengatakan beliau erat dengan tinta guna mencatat ilmu pengetahuan yang diperolehnya. Ayahnya keturunan Persia yang berasal dari Afganistan. Abu Hanifah pernah berguru kepada Atha bin Abi Rabah, Imam Muhammad bin Abu Sulayman, Imam Nafi’ Mawla Ibnu Umar dan Imam Muhammad al-Baqir. Hanifah termasuk tabi’in sebab ia masih sempat berjumpa dengan beberapa sahabat Nabi Muhammad misalnya Abi Awfa, Watsilah bin al-Aqsa, Ma’qil bin Yasar, Abullah bin Anis dan Abu Tufayl. Selain sebagai ulama dan Imam Mazhab, Hanifah juga wiraswastawan yang berhasil namun hidupnya sangat wara’ dan zuhud serta pemurah. Hubungannya dengan penguasa tidak begitu baik, karena selalu menolak tawaran khalifah untuk menjadi Hakim Agung, bahkan Ia sempat dipenjara dan dihukum dera setiap hari selama 15 hari.\r\n</p>\r\n<p>\r\nKarena tidak berhasil membujuk Hanifah memangku jabatan Hakim Agung, Khalifah al-Mansyur murka dan memanggilnya menghadap, di Istana Abu Hanifah disugihi racun lalu dikembalikan ke penjara dan meninggal di penjara.[21] Beberapa karya tulisnya yang memuat pendapatnya yang disusun para muridnya antara lain: al-Madsuth, al- jami’u ‘l-kabir, Al-Sayru ‘l-Shaghir, al-‘l-Kabir, dan al-Ziyadah. Abu Hanifah dijuluki sebagai Bapak Ilmu Fiqih.[22] Mazhab Hanafi dikembangkan berdasarkan Al Qur’an, Sunnah Rasul, fatwa para sahabat, qiyas, istihsan, adat dan ‘uruf masyarakat. Sikap Abu Hanifah terhadap hadits sangat hati-hati dan selektif. Ia lebih banyak menggunakan qiyas dan juga istihsan. \r\n</p>\r\n<p>\r\n Hal ini ada hubungannya dengan daerah pertumbuhan mazhab ini yang jauh dari Madinah dan Mekah, tempat tinggal kebanyakan sahabat Nabi. Karena itu mazhab Hanafi seringkali disebut sebagai aliran ahlu ‘l-rayu yang lebih mengutamakan rasio. Perkembangan mazhab Hanafi cukup luas karena peranan murid-murid Abu Hanifah, seperti Abu Yusuf (wafat tahun 731 M) yang pernah menjadi Hakim agung di Baghdad, Muhammad bin Hasan  (wafat tahun 738 M) dan Zufar (wafat tahun 707 M). Ada ulama penganud mazhab ini yang membagi fiqih Abu Hanifah menjadi 3 tingkatan: 1) tingkatan pertama (masa-ilul ushul) kitabnya berjudul Dhohiru Riwayah, berisi kupasan dan ketetapan masalah agama oleh Imam Hanafi bercampur buah pikiran para sahabat Imam Hanafi yaitu Abu Yusuf, Muhammad bin Hasan dan lainnya; 2) tingkatan kedua (masa-ilun Nawadir) tentang masalah-masalah agama, diriwayatkan oleh Imam Hanafi dan para sahabatnya, kitabnya Haruniyyar, Jurjaniyyat dan Kaisaniyyat (Muhammad bin Hasan), serta Al Mujarrod (Hasan bin Iyad); 3) tingkatan ketiga (Al Fatawa wal Waqi’at) berisikan masalah-masalah agama dari para ulama mujtahid mazhab Hanafi yang datang kemudian, karena keterangannya tidak mereka dapat pada pendahulunya, seperti kitab Al Fatawa wal Waqi’at pertama yaitu An Nawasil (Abdul Laits As Samarqondy, wafat 375 H).\r\n</p>'),
(4, 'Imam Syafi\'i', '<p>\r\nImam Syafi’i (Abu Abdullah Muhammad ibn Idris as-Syafi’i 150 – 204 H) dilahirkan di Gazza, sebuah kampung diAsqolan, bagian selatan Palestina, pada tahun 150 H, keturunan suku Quraisj. Walaupun beliau dilahirkan di Ghazza (Palestina), tetapi tumbuh dewasa kampung halamannya di Mekkah.  \r\n</p>\r\n<p>\r\nAyah-Ibunya datang kesana untuk suatu keperluan dan tidak lama beliau lahir disitu. Beliau menjadi anak yatim, sebab sejak kecil sebelum mereka kembali ke Mekkah ayahnya telah wafat di Ghazza.  Nama asli dari Imam Syafi’i adalah Muhammad bin Idris dengan bergelar Abu Abdillah. Dalam urutan nasab, beliau mempunyai hubungan erat dengan nenek moyang Nabi Muhammad SAW. Nenek moyang beliau jika dijabarkan maka sebagai berikut: Muhammad bin Idris, bin Abbas, bin Utsman, bin Syafi’i bin Saib, bin Abi Yazid, bin Hasyim, bin Abdul Muthalib bin Abdul Manaf, bin Qushal. Dari pihak ibu: Muhammad bin Fatimah, binti Abdullah, bin Hasan, bin Husen, bin Ali, bin Abi Thalib r.a.\r\n</p>\r\n<p>\r\nGelar sebagai Imam Syafi’i diambil dari nama kakek beliau yang ke empat, yaitu Syafi’i bin Saib. Catatan penting lainnya adalah pada umur 2 tahun kembali ke Mekkah Almukarramah bersama ibunya. Ketika masih kecil belajar membaca Al Qur’an kepada Ismail bin Qusthanthin. Pada usia 9 tahun beliau hafal Al Qur’an 30 juz diluar kepala. Ia pandai tatabahasa, syair dan ilmu bahasa. Ia menghafalkan kitab al-Muwaththa’ dalam satu malam. Dalam usia 15 tahun diberi tugas oleh gurunya Muslim bin Khalid Azzanjiy mengajar di Masjidil Haram, memberikan fatwa, sehingga mengagumkan orang-orang yang naik Hajji pada masa itu. Pada tahun 170 H, beliau pergi ke Madinah untuk belajar kepada Imam Maliki  dengan membawa sepucuk surat dari gurunya Muslim bin Khalid yang ditujukan kepada Imam Malik bin Anas. Dalam perjalanan yang memakan waktu 8 hari 8 malam itu, Imam Syafi’i membaca Al Qur’an 16 kali khatam. \r\n</p>\r\n<p>\r\nPengetahuannya tentang Al Qur’an tak terkalahkan di zamannya,  secara istimewa dicurahkan tenaganya untuk mempelajari sunnah Nabi. Sebagai ulama besar dimana hasil ijtihadnya Imam Syafi’i dikenal dengan sebutan “Mazan Imam Syafi’i”. Beliau juga selama setahun tidak pernah pisah dengan Imam Malik. Beliau disamping menjadi murid juga diangkat sebagai pembantu Imam Malik[5] dan mengenal dengan baik ajaran Imam Hanafi dan Imam Malik. Ia mengembara ke Yaman, Baghdad dan menetap di Mesir, dan wafat pada hari kamis malam jum’at tanggal 29 Rajab 204 H / 820 M, dan dimakamkan di Zahro. Kitab-kitab Imam Syafi’i antara lain: a) Ar Rizalah (kitab ushul fiqih pertama), b) Al Umm merupakan kitab besar ilmu fiqih, c) Ikhtifatul Hadits, berisikan tentang perselisihan hadits-hadist Nabi SAW, dan d) Al Musnad, berisikan sandaran (sanad) Imam Syafi’i dalam meriwayatkan hadits-hadits. Ajaran Syafi’i terutama berdasarkan Sunnah seperti ajaran Imam Malik, tetapi data-data yang digunakan jauh lebih banyak dan berasal dari berbagai tempat. Dasar-dasar mazhab Syafi’i dapat dilihat dalam kitab Usul al-Fiqh Ar-Risalah dan kitab fiqh al-Umm. Di dalam buku-buku tersebut Imam Syafi’i menjelaskan kerangka dan prinsip mazhabnya serta beberapa contoh dalam merumuskan hukum far’iyyah (yang bersifat cabang).\r\n</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mazhab`
--

CREATE TABLE `mazhab` (
  `id_mazhab` int(11) NOT NULL,
  `id_imam` int(11) DEFAULT NULL,
  `id_artikel` int(11) DEFAULT NULL,
  `isi_mazhab` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mazhab`
--

INSERT INTO `mazhab` (`id_mazhab`, `id_imam`, `id_artikel`, `isi_mazhab`) VALUES
(1, 1, 1, 'kalimat takbiratul ihram adalah “Allah Akbar” (Allah Maha Besar) tidak boleh menggunakan katakata lainnya.'),
(2, 2, 1, 'kalimat takbiratul ihram adalah “Allah Akbar” (Allah Maha Besar) tidak boleh menggunakan katakata lainnya.'),
(3, 3, 1, 'boleh dengan kata-kata lain yang sesuai atau sama artinya dengan kata-kata tersebut, seperti “Allah Al-A’dzam” dan “Allahu Al-Ajall” (Allah Yang Maha Agung dan Allah Yang Maha Mulia)'),
(4, 4, 1, 'boleh mengganti “Allahu Akbar” dengan ”Allahu Al-Akbar”, ditambah dengan alif dan lam pada kata “Akbar”.'),
(5, 3, 6, '<p>\r\nMembaca Al-Fatihah dalam sholat fardhu tidak diharuskan, dan membaca bacaan apa saja dari Al-Quran itu boleh, pendapat itu berdasarkan Al-Qurat surat Muzammil ayat 20 : \"Bacalah apa yang mudah bagimu dari Al-Quran,\" (Bidayatul Mujtahid, Jilid I, halaman 122, dan Mizanul Sya\'rani, dalam bab shifatus shalah).\r\n</p>\r\n<p>\r\nBoleh meninggalkan basmalah, karena ia tidak termasuk bagian dari surat. Dan tidak disunnahkan membacanya dengan keras atau pelan. Orang yang sholat sendiri ia boleh memilih apakah mau didengar sendiri (membaca dengan perlahan) atau mau didengar oleh orang lain (membaca dengan keras), dan bila suka membaca dengan sembunyi-sembunyi, bacalah dengannya.\r\n</p>\r\n<p>\r\nDalam sholat itu tidak ada qunut kecuali pada shalat witir.\r\n</p>\r\n<p>\r\nMenyilangkan dua tangan adalah sunnah bukan wajib. Bagi lelaki adalah lebih utama bila meletakkan telapak tangannya yang kanan di atas belakang telapak tangan yang kiri di bawah pusarnya, sedangkan bagi wanita yang lebih utama adalah meletakkan dua tangannya di atas dadanya.\r\n</p>'),
(6, 4, 6, '<p>Membaca Al-Fatihah adalah wajib pada setiap rakaat tidak ada bedanya, baik pada dua rakaat pertama maupun pada dua rakaat terakhir, baik pada sholat fardhu maupun sholat sunnah.\r\n</p>\r\n<p>Basmalah itu merupakan bagian dari surat, yang tidak boleh ditinggalkan dalam keadaan apa pun. Dan harus dibaca dengan suara keras pada shalat subuh, dan dua rakaat pertama pada sholat maghrib dan isya\', selain rakaat tersebut harus dibaca dengan pelan.\r\n</p>\r\n<p>Pada sholat subuh disunnahkan membaca qunut setelah mengangkat kepalanya dari ruku\' pada rakaat kedua sebagaimana juga disunnahkan membaca surat Al-Quran setelah membaca Al-Fatihah pada dua rakaat yang pertama saja.\r\n</p>\r\n<p>Menyilangkan dua tangan bukanlah wajib, hanya disunnahkan bagi lelaki dan wanita. Dan yang paling utama adalah meletakkan telapak tangannya yang kanan di belakang telapak tangannya yang kiri di bawah dadanya tapi di atas pusar dan agak miring ke kiri.\r\n</p>'),
(7, 1, 6, '<p>\r\nMembaca Al-Fatihah itu harus pada setiap rakaat, tak ada bedanya, baik pada rakaat-rakaat pertama maupun pada rakaat-rakaat terakhir, baik pada sholat fardhu maupun sholat sunnah, sebagaimana pendapat Syafi\'i, dan disunnahkan membaca surat Al-Quran setelah Al-Fatihah pada dua rakaat yang pertama.\r\n</p>\r\n<p>\r\nBasmalah bukan termasuk bagian dari surat, bahkan disunnahkan untuk ditinggalkan. Disunnahkan menyaringkan bacaan pada sholat subuh dan dua rakaat pertama pada sholat maghrib dan isya\'\r\n</p>\r\n<p>\r\nqunut pada sholat subuh saja.\r\n</p>\r\n<p>\r\nmenyilangkan kedua tangan adalah boleh, tetapi disunnahkan untuk mengulurkan dua tangan pada sholat fardhu.\r\n</p>'),
(8, 4, 2, 'shalat itu tidaklah  gugur dalam keadaan apapun, jika tidakmampu shalat dengan mirirng pada bagian kiri ia boleh sholat terlentang dan kepalanya menghadap ke kiblat. Bila ia tidak mampu juga, ia harus mengisyaratkan dengan kepalanya atau dengan kelopak matanya (kedipan mata) . jika tidak mampu, maka ia harus sholat dengan hatinya dan menggerakkan lisannya dengan dzikir dan membacanya. Bila juga tidak mampu untuk menggerakkan lisannya, maka ia harus menggambarkan tentang melakukan sholat di dalam hatinya selama akalnya masih berfungsi.  '),
(9, 2, 2, 'shalat itu tidaklah  gugur dalam keadaan apapun, jika tidakmampu shalat dengan mirirng pada bagian kiri ia boleh sholat terlentang dan kepalanya menghadap ke kiblat. Bila ia tidak mampu juga, ia harus mengisyaratkan dengan kepalanya atau dengan kelopak matanya (kedipan mata) . jika tidak mampu, maka ia harus sholat dengan hatinya dan menggerakkan lisannya dengan dzikir dan membacanya. Bila juga tidak mampu untuk menggerakkan lisannya, maka ia harus menggambarkan tentang melakukan sholat di dalam hatinya selama akalnya masih berfungsi.  '),
(10, 3, 2, 'Bila sampai pada tingkat ini tetapi tidak mampu, maka gugurlah perintah sholat baginya, hanya ia harus melaksanakannya (mengqadha\'nya) bila telah sembuh dan hilang sesuatu yang menghalanginya.'),
(11, 1, 2, 'Bila sampai seperti ini, maka gugur perintah sholat terhadapnya dan tidak diwajibkan mengqadhanya.'),
(12, 3, 3, 'Yang diwajibkan hanya semata-mata membungkukkan badan dengan lurus, dan tidak wajib thuma\'ninah.'),
(13, 2, 3, 'Wajib membungkuk sampai dua telapak tangan orang yang shalat itu berada pada dua lututnya dan juga diwajibkan berthuma\'ninah dan diam (tidak bergerak) ketika ruku\'.'),
(14, 1, 3, 'Wajib membungkuk sampai dua telapak tangan orang yang shalat itu berada pada dua lututnya dan juga diwajibkan berthuma\'ninah dan diam (tidak bergerak) ketika ruku\'.'),
(15, 4, 3, 'Wajib membungkuk sampai dua telapak tangan orang yang shalat itu berada pada dua lututnya dan juga diwajibkan berthuma\'ninah dan diam (tidak bergerak) ketika ruku\'.'),
(16, 1, 4, 'yang wajib (menempel) hanya dahi, sedangkan yang lain-lainnya adalah sunnah.'),
(17, 4, 4, 'yang wajib (menempel) hanya dahi, sedangkan yang lain-lainnya adalah sunnah.'),
(18, 3, 4, 'yang wajib (menempel) hanya dahi, sedangkan yang lain-lainnya adalah sunnah.'),
(19, 2, 4, 'yang diwajibkan itu semua anggota yang tujuh (dahi, dua telapak tangan, dua lutut, dan ibu jari dua kaki) secara sempurna. Bahkan Hambali menambahi hidung, sehingga menjadi delapan.'),
(20, 3, 8, 'tidak wajib mengangkat kepala dari ruku’ yakni i’tidal (dalam keadaan berdiri).\r\nDibolehkan untuk langsung sujud, namun hal itu makruh.'),
(21, 1, 8, 'wajib mengangkat kepalanya dan ber-i’tidal, serta disunnahkan membaca tasmi’, yaitu mengucapkan : Sami’allahuliman hamidah (”Allah mendengar orang yang memuji-Nya”)'),
(22, 2, 8, 'wajib mengangkat kepalanya dan ber-i’tidal, serta disunnahkan membaca tasmi’, yaitu mengucapkan : Sami’allahuliman hamidah (”Allah mendengar orang yang memuji-Nya”)'),
(23, 4, 8, 'wajib mengangkat kepalanya dan ber-i’tidal, serta disunnahkan membaca tasmi’, yaitu mengucapkan : Sami’allahuliman hamidah (”Allah mendengar orang yang memuji-Nya”)'),
(24, 2, 9, 'tahiyyat pertama itu wajib'),
(25, 1, 9, 'hanya sunnah'),
(26, 3, 9, 'hanya sunnah'),
(27, 4, 9, 'hanya sunnah'),
(28, 3, 10, 'hanya sunnah, bukan wajib. Kalimat (lafadz) tahiyyat :<br>\r\n<b>Attahiyatu lillahi washolawaatu waththoyyibaatu wassalaamu </b><br>\r\n”Kehormatan itu kepunyaan Allah, shalawat dan kebaikan serta salam sejahtera” <br>\r\n<b>’alaika ayyuhannabiyyu warahmatullahi wabarakaatuh</b> <br>\r\n”Kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya” <br>\r\n<b>Assalaamu’alainaa wa ’alaa ’ibaadillahishshoolihiin </b><br>\r\n”Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh” <br>\r\n<b>Asyhadu anlaa ilaaha illallah</b> <br>\r\n”Kita bersaksi bahwa tidak ada Tuhan selain Allah” <br>\r\n<b>Waasyhadu anna muhammadan ’abduhu warosuuluh</b> <br>\r\n”Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya” <br>'),
(29, 1, 10, '<p>Hukumnya hanya sunnah, bukan wajib. Kalimat (lafadz) tahiyyat :<br />\r\n<strong>Attahiyyatu lillaahi azzaakiyaatu lillaahi aththoyyibaatu ashsholawaatu lillah</strong><br />\r\n&rdquo;Kehormatan itu kepunyaan Allah, kesucian bagi Allah, kebaikan dan shalawat juga bagi Allah&rdquo;<br />\r\n<strong>Assalaamu&rsquo;alaika ayyuhannabiyyu warahmatullahi wabarakaatuh</strong><br />\r\n&rdquo;Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya&rdquo;<br />\r\n<strong>Assalaamu&rsquo;alainaa wa &rsquo;alaa &rsquo;ibaadillahishshoolihiin</strong><br />\r\n&rdquo;Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh&rdquo;<br />\r\n<strong>Asyhadu anlaa ilaaha illallah wahdahu laa syariikalah</strong><br />\r\n&rdquo;Kita bersaksi bahwa tidak ada Tuhan selain Allah Yang Esa tidak ada sekutu bagi-Nya&rdquo;<br />\r\n<strong>Waasyhadu anna muhammadan &rsquo;abduhu warosuuluh</strong><br />\r\n&rdquo;Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya&rdquo;</p>\r\n'),
(30, 4, 10, '<p>Hukumnya wajib. Kalimat (lafadz)&nbsp;<em>tahiyyat&nbsp;</em>:<br />\r\n<strong><em>Attahiyyatul mubaarokaatush sholawaatuth thoyyibaatu lillaah</em></strong><br />\r\n&rdquo;<em>Kehormatan, barakah-barakah, shalawat, dan kebaikan adalah kepunyaan Allah</em>&rdquo;<br />\r\n<strong><em>Assalaamu&rsquo;alaika ayyuhannabiyyu warahmatullahi wabarakaatuh</em></strong><br />\r\n&rdquo;<em>Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya</em>&rdquo;<br />\r\n<strong><em>Assalaamu&rsquo;alainaa wa &rsquo;alaa &rsquo;ibaadillahishshoolihiin</em></strong><br />\r\n&rdquo;<em>Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh</em>&rdquo;<br />\r\n<strong><em>Asyhadu anlaa ilaaha illallah</em></strong><br />\r\n&rdquo;<em>Kita bersaksi bahwa tidak ada Tuhan selain Allah</em>&rdquo;<br />\r\n<strong><em>Waasyhadu anna muhammadan &rsquo;abduhu warosuuluh</em></strong><br />\r\n&rdquo;<em>Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya</em>&rdquo;</p>\r\n'),
(31, 2, 10, '<p>Hukumnya wajib. Kalimat (lafadz)&nbsp;<em>tahiyyat&nbsp;</em>:<br />\r\n<strong><em>Attahiyyatu lillahi washsholawaatu waththoyyibaatu</em></strong><br />\r\n&rdquo;<em>Kehormatan itu kepunyaan Allah, juga shalawat dan kebaikan</em>&rdquo;<br />\r\n<strong><em>Assalaamu&rsquo;alaika ayyuhannabiyyu warahmatullahi wabarakaatuh</em></strong><br />\r\n&rdquo;<em>Salam sejahtera kepadamu, wahai Nabi, dan rahmat Allah serta barakah-Nya</em>&rdquo;<br />\r\n<strong><em>Assalaamu&rsquo;alainaa wa &rsquo;alaa &rsquo;ibaadillahishshoolihiin</em></strong><br />\r\n&rdquo;<em>Semoga kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh</em>&rdquo;<br />\r\n<strong><em>Asyhadu anlaa ilaaha illallah wahdahu laa syariikalah</em></strong><br />\r\n&rdquo;<em>Kita bersaksi bahwa tidak ada Tuhan selain Allah Yang Esa tidak ada sekutu bagi-Nya</em>&rdquo;<br />\r\n<strong><em>Waasyhadu anna muhammadan &rsquo;abduhu warosuuluh</em></strong><br />\r\n&rdquo;<em>Dan kita bersaksi bahwa muhammad adalah hamba-Nya dan rasul-Nya</em>&rdquo;<br />\r\n<strong><em>Allahumma sholli &rsquo;alaa muhammad</em></strong><br />\r\n&rdquo;<em>Ya Allah, berikanlah shalawat kepada muhammad</em>&rdquo;</p>\r\n'),
(32, 4, 11, 'mengucapkan salam adalah wajib.'),
(33, 2, 11, 'mengucapkan salam adalah wajib.'),
(34, 1, 11, 'mengucapkan salam adalah wajib.'),
(35, 3, 11, 'ajib mengucapkan salam dua kali, sedangkan yang lain hanya mencukupkan satu kali saja yang wajib.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(11) NOT NULL,
  `nama_tag` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`) VALUES
(1, 'Ruku'),
(2, 'Sujud'),
(3, 'Takbir'),
(5, 'Ruku'),
(6, 'Bacaan'),
(7, 'I`TIDAL'),
(8, 'Tahiyyatul'),
(9, 'Salam'),
(10, 'Tertib'),
(11, 'Berturut-turut');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `imam`
--
ALTER TABLE `imam`
  ADD PRIMARY KEY (`id_imam`);

--
-- Indeks untuk tabel `mazhab`
--
ALTER TABLE `mazhab`
  ADD PRIMARY KEY (`id_mazhab`),
  ADD KEY `id_artikel` (`id_artikel`),
  ADD KEY `id_imam` (`id_imam`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `imam`
--
ALTER TABLE `imam`
  MODIFY `id_imam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mazhab`
--
ALTER TABLE `mazhab`
  MODIFY `id_mazhab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mazhab`
--
ALTER TABLE `mazhab`
  ADD CONSTRAINT `mazhab_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `mazhab_ibfk_2` FOREIGN KEY (`id_imam`) REFERENCES `imam` (`id_imam`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
