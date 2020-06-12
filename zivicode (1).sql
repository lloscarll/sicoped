-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jun 2020 pada 10.03
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zivicode`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(25) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `name`, `pass`, `email`, `level`) VALUES
(1, 'zivicode', 'Monikka', 'f37f6766837c95e224b6e196cf3fce24', '', 0),
(2, 'monikka', 'monikka', '202cb962ac59075b964b07152d234b70', 'monikka@gmail.com1', 0),
(3, 'monikka', 'monikka', '202cb962ac59075b964b07152d234b70', 'mo@gmail.com', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `edukasi`
--

CREATE TABLE IF NOT EXISTS `edukasi` (
`edukasi_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `edukasi_judul` varchar(255) NOT NULL,
  `edukasi_slug` varchar(150) NOT NULL,
  `edukasi_deskripsi` text NOT NULL,
  `edukasi_posting_tgl` datetime NOT NULL,
  `edukasi_posting_by` int(11) NOT NULL,
  `edukasi_status` enum('Publish','Hidden') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `edukasi`
--

INSERT INTO `edukasi` (`edukasi_id`, `post_category_id`, `edukasi_judul`, `edukasi_slug`, `edukasi_deskripsi`, `edukasi_posting_tgl`, `edukasi_posting_by`, `edukasi_status`) VALUES
(2, 5, 'Cara Pembuatan Hand Saitizer', 'cara-pembuatan-hand-saitizer.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/Edukasi/edukasi1.jpg" /></p>\r\n\r\n<p>Menurut Dosen Fakultas Universitas Surabaya (Ubaya) Endang Wahyu Fitriani, lidah buaya bisa digunakan sebagai bahan hand sanitizer karena memiliki kandungan disinfektan atau antiseptik pembunuh bibit penyakit.</p>\r\n\r\n<p>&quot;Cara sederhana yang digunakan gel lidah buaya dikupas dulu san dicuci dengan air mengalir untuk menghilangkan lendir. Lalu potong kecil-kecil blender dengan dicampur air. Setelah itu disaring dan diambil airnya&quot; Kata Endang Jum&#39;at (13/3/2020)/</p>\r\n\r\n<p>Gel lidah buaya tersebut juga bisa membuat lembut kulit. Nantinya hand sanitizer berbahan dasar lidah buaya akan diuji secara mikrobiologis untuk mengetahui efektivitasnya secara pasti.</p>\r\n\r\n<p>Dilansir dari Wolipop berikut ini cara membuat hand sanitizer berbahan lidah buaya ala Welnessmama:</p>\r\n\r\n<p><strong>Bahan yang dibutuhkan:</strong></p>\r\n\r\n<ol>\r\n	<li>1/4 cup aloe vera gel lidah buaya</li>\r\n	<li>160 ml alkohol 70 persen&nbsp;</li>\r\n	<li>10 tetes tea tree essential oil</li>\r\n	<li>10 tetes minyak essential lavender</li>\r\n	<li>1/2 sendok teh minyak vitamin E (opsional)</li>\r\n	<li>1 botol spray kaca atau plastik berukuran kecil</li>\r\n</ol>\r\n\r\n<p><strong>Cara membuat hand sanitizer:</strong></p>\r\n\r\n<ol>\r\n	<li>Campurkan gel lidah buaya, minyak vitamin E dan alkohol 70 persen di mangkuk kecil.</li>\r\n	<li>Tambahkan essential oil.</li>\r\n	<li>Gunakan pipet untuk memasukkan campuran bahan-bahan tersebut dalam botol.</li>\r\n	<li>Kocok isi botol.</li>\r\n	<li>Hand sanitizer siap digunakan.</li>\r\n</ol>\r\n', '2020-05-29 08:40:30', 1, 'Publish'),
(3, 5, 'Disinfektan Alternatif Covid-19', 'disinfektan-alternatif-covid-19.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/Edukasi/edukasi2.jpg" /></p>\r\n\r\n<p>Apa itu disinfektan?</p>\r\n\r\n<p>Disinfektan adalah cairan pembersih yang umumnya dibuat dari hdrogen peroksida creosote atau alkohol yang bertuuan untuk membunuh bakteri, virus, kuman dan microorganisme berbahaya lainnya yang terdapat pada ruangan atau permukaan benda mati.</p>\r\n\r\n<p>Disinfektan biasanya digunakan untuk membersihkan permukaan benda-benda yang paling sering disentuh orang banyak. Contohnya ganggang pintu, meja, kursi, keran wastafel, lemari dan lain-lain.</p>\r\n\r\n<p>Disinfektan juga mengandung konsentrasi biosida yang tinggi. Maka dari itu, disinfektan lebih efektif dalam membunuh bakteri dan microorganisme pada permukaan benda mati apa pun, yang menjadi perantara paparan infeksi virs atau bakteri berbahaya bila dihirup atau disentuh manusia.</p>\r\n\r\n<p>Berikut ini tips membuat disinfektan sendiri meskipun dirumah aja:</p>\r\n\r\n<p><strong>Bahan</strong></p>\r\n\r\n<ol>\r\n	<li>Setengah gelas air, setengah cangkir, Cuka putih(Suling)</li>\r\n	<li>12-24 tetes mimntak essensial (kemangi, kayu manis, cengkeh, kayu putih, jeruk nipis)</li>\r\n</ol>\r\n\r\n<p><strong>Cara Pembutaan:</strong></p>\r\n\r\n<ol>\r\n	<li>Pilih satu atau kombinasi minyak essensial, masukkan ke botol sprayer</li>\r\n	<li>Tambahkan cuka dan air</li>\r\n	<li>Kocok botol</li>\r\n	<li>Ber label pada botol</li>\r\n	<li>Simpan di tempat aman.</li>\r\n</ol>\r\n\r\n<p><strong>Cara Menggunakan</strong></p>\r\n\r\n<ol>\r\n	<li>Semprot media yang akan didesinfeksi</li>\r\n	<li>Dibersihkan dan dibilas dengan lap microfiber</li>\r\n</ol>\r\n\r\n<p><strong>Cara Kerja Cuka</strong></p>\r\n\r\n<ol>\r\n	<li>Rendahnya Ph dan kadar asam asetat cuka mengahmbat pertumbuhan virus</li>\r\n	<li>Cuka merupakan antiseptik ringan</li>\r\n	<li>Minyak essensial menambahkan kualitas anti bakteri, anti virus, dan anti kuman</li>\r\n</ol>\r\n\r\n<p><strong>Sumber: Himpunan ahli kesehatan lingkungan Indonesia.</strong></p>\r\n', '2020-05-29 08:42:52', 1, 'Publish'),
(4, 5, 'Standar Alat Pelindung Diri Untuk Penanganan Covid-19 di Indonesia', 'standar-alat-pelindung-diri-untuk-penanganan-covid-19-di-indonesia.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/Edukasi/WhatsApp Image 2020-05-29 at 11_52_03.jpeg" xss=removed></p>\r\n\r\n<p>Standar alat pelindung diri untuk pencegahan Covid-19 dibagi menjadi beberapa kategori berdasarkan pemakaiannya, diantaranya </p>\r\n\r\n<p>1. Standar Alat Pelindung Diri untuk Masyarakat</p>\r\n\r\n<p>Terdiri dari 2 jenis masker yakni masker kain berlapis, digunakan pada saat berkegiatan sehari-hari seperti ditempat kerja, berbelanja, mengendarai motor, dll</p>\r\n\r\n<p>Dan yang kedua masker bedah 3 ply, digunakan bagi masyarakat yang menunjukkan gejala batuk, nyeri tenggorokan, hidung berairdan bersin-bersin.</p>\r\n\r\n<p>2. Standar Alat Pelindung Diri untuk Petugas Medis Tingkat I</p>\r\n\r\n<p>APD tingkat perlindungan pertama digunakan pada lokasi atau kondisi kurang beresiko. Jenis APD termasuk kategori jenis masker, sarung tangan kerja berbahan karet sekali pakai, serta gaun.</p>\r\n\r\n<p>Dengan jenis APD terdiri dari Masker bedah 3 ply, sarung tangan bedah karet steril sekali pakai, baju kerja, dan penutup kepala.</p>\r\n\r\n<p>Lokasi dan cakupan:</p>\r\n\r\n<ul>\r\n <li>Tempat praktik umum dan kegiatan yang tidak menimbulkan aerosol</li>\r\n <li>Triase atau tingkat klasifikasi pasien pra pemeriksaan dan bagian rawat jalan umum</li>\r\n</ul>\r\n\r\n<p>3. Standar Alat Pelindung Diri untuk Petugas Medis Tingkat II</p>\r\n\r\n<p>APD tingkat perlindungan kedu digunakan dokter, perawat, laboran, radiografer, farmasi dan petugas kebersihan ruang pasien Covid-19. Saat diruang piliklinik pemeriksaan pasien dengan gejala infeksi pernafasan.</p>\r\n\r\n<p>Jenis APD terdiri dari:</p>\r\n\r\n<p>Pelindung mata, sarung tangan karet steril sekali pakai, penutup kepala, penutup sepatu, masker bedah, dan gaun sekali pakai</p>\r\n\r\n<p>Lokasi dan cakupan:</p>\r\n\r\n<ul>\r\n <li>Ruang perawatan pasien</li>\r\n <li>Pengambilan sampel nonpernapasan</li>\r\n <li>Analisis (untuk laboran)</li>\r\n</ul>\r\n\r\n<p>4. Standar Alat Pelindung Diri untuk Petugas Medis Tingkat III</p>\r\n\r\n<p>Standar APD tingkat perlindungan ketiga diperuntukkan diruang prosedur dan tindakan operasi pasien dengan kecurigaan atau sudah terkonfirmasi Covid-19.</p>\r\n\r\n<p>Jenis APD yang dipakai terdiri dari: pelindung mata dan pelindung wajah, sarung tangan bedah karet steril sekali pakai, penutup kepala, sepatu boots, masker N95 atau yang setaranya, dan gaun All Cover sekali pakai.</p>\r\n\r\n<p>Lokasi dan cakupan:</p>\r\n\r\n<ul>\r\n <li>Ruang prosedur dan tindakan operasi pada pasien terduga/terkonfirmasi positif Covid-19</li>\r\n <li>Kegiatan yang menimbulkan aerosol pada pasien terduga/terkonfirmasi positif Covid-19</li>\r\n <li>Ruang prosedur dan tindakan autopsi pada pasien terduga/terkonfirmasi positif Covid-19</li>\r\n <li>Pembangmbilan sampel pernafasan</li>\r\n</ul>\r\n\r\n<p>Sumber: covid19.go.id</p>', '2020-05-29 11:58:11', 1, 'Publish'),
(5, 5, 'Tutorial Pembuatan Masker dengan Kain Perca', 'tutorial-pembuatan-masker-dengan-kain-perca.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/Edukasi/WhatsApp Image 2020-05-29 at 12_00_01.jpeg" /></p>\r\n\r\n<p>Masker merupakan salah satu bentuk alat pelindung diri (APD) yang biasanya digunakan untuk keperluan perlindungan dari penularan penyakit infeksi saluran pernapasan. Corona virus memiliki ukuran diameter sekitar 0.05 - 0.3 micron.&nbsp;</p>\r\n\r\n<p>Secara teknis memang&nbsp;<a href="https://www.sehatq.com/artikel/cara-pakai-masker-N95-untuk-cegah-polusi" target="_blank">masker N95</a>&nbsp;dan masker bedah yang paling efektif menyaring virus hingga 95% lebih efektif dibandingkan masker lainnya.&nbsp;Akan tetapi, virus corona bukanlah virus yang ditularkan melalui udara melainkan dari droplet atau percikan cairan tubuh. Karenanya, masker kain masih bisa berfungsi jika digunakan dengan benar, setidaknya untuk mencegah droplet tersebut mengenai orang lain.&nbsp;</p>\r\n\r\n<p>Peneliti dari University of Cambridge telah mengamati efektivitas masker rumahan dari berbagai bahan. Kain yang memiliki daya saring paling baik adalah:</p>\r\n\r\n<ul>\r\n	<li>Bahan serbet yang biasanya digunakan untuk lap piring</li>\r\n	<li>Sarung bantal berbahan katun</li>\r\n	<li>Kaos katun</li>\r\n</ul>\r\n\r\n<p>Jangan gunakan kain berbahan sutra karena memiliki daya saring yang paling buruk.&nbsp;Dari jurnal tersebut juga dinyatakan bahwa bahan kain masker yang paling nyaman digunakan sembari bernafas adalah kain kaos katun 100%, sarung bantal berbahan katun, dan bahan katun pada umumnya. Masker kain ini nantinya dapat dilapis dengan filter kopi atau tisu agar daya saringnya meningkat.&nbsp;</p>\r\n\r\n<p>Cara Membuat Masker Sendiri</p>\r\n\r\n<p>Ada banyak cara membuat masker kain, namun dua cara berikut adalah yang paling mudah dan ringkas, diantaranya adalah:</p>\r\n\r\n<p><strong><strong>1. Masker kain tanpa dijahit</strong></strong></p>\r\n\r\n<p>Dilansir dari situs CDC, masker kain dapat dibuat tanpa dijahit dan memiliki model&nbsp;<em>earloop&nbsp;</em>atau yang dapat disematkan di telinga.</p>\r\n\r\n<p>Bahan:</p>\r\n\r\n<ul>\r\n	<li>kain katun, kaos katun yang sudah tidak terpakai, atau sarung bantal katun</li>\r\n	<li>karet elastis, bisa menggunakan ikat rambut karet yang dilapisi kain agar lebih nyaman</li>\r\n</ul>\r\n\r\n<p>Cara membuat:</p>\r\n\r\n<ul>\r\n	<li>Cuci dan keringkan terlebih dahulu kain agar steril saat digunakan</li>\r\n	<li>Ukur panjang kain sesuai ukuran wajah, masker harus menutup hidung, mulut hingga ke bawah dagu</li>\r\n	<li>Bentangkan kain, kemudian tambahkan filter kopi atau tissue di dalamnya&nbsp;</li>\r\n	<li>Lipat menjadi tiga lipatan, lalu sisipkan karet atau ikat rambut pada kedua sisi kain</li>\r\n	<li>Lipat bagian ujung kain tepat di mana karet disematkan, satukan bagian ujung satu dengan ujung satunya agar kain rapat</li>\r\n	<li>Tarik kedua ujung bagian atas dan bawah dari masker&nbsp;</li>\r\n	<li>Masker kain siap digunakan</li>\r\n</ul>\r\n\r\n<p><strong><strong>2. Masker kain jahit</strong></strong></p>\r\n\r\n<p>Masker kain berikut adalah masker dengan model tali, cocok dikenakan untuk wanita berhijab.</p>\r\n\r\n<p>Bahan:</p>\r\n\r\n<ul>\r\n	<li>Jarum dan benang atau mesin jahit jika ada&nbsp;</li>\r\n	<li>Gunting&nbsp;</li>\r\n	<li>Peniti atau penjepit untuk menahan kain pada tempatnya, jika tidak ada dapat diganti penjepit kertas</li>\r\n	<li>Kain katun, kaos katun yang sudah tidak terpakai, atau sarung bantal katun</li>\r\n	<li>Empat strip kain katun untuk pengikat dengan panjang sekitar 45 cm, dapat diganti dengan 4 tali sepatu yang sama panjang</li>\r\n</ul>\r\n\r\n<p>Cara membuat:</p>\r\n\r\n<ul>\r\n	<li>Cuci dan keringkan terlebih dahulu kain agar steril saat digunakan</li>\r\n	<li>Ukur panjang kain dan gunting menjadi dua bagian persegi panjang dengan ukuran masing-masing sekitar 30x15 cm&nbsp;</li>\r\n	<li>Bedakan pola bagian depan dan belakang masker agar tidak mudah tertukar</li>\r\n	<li>Tumpuk dua kain persegi panjang, jahit bagian belakang kain menghadap ke depan lalu jahit setiap sisi lapisan hingga kain menyatu</li>\r\n	<li>Sisakan sedikit ruang di kedua ujung kain untuk menyelipkan strip kain atau tali sepatu</li>\r\n	<li>Selipikan tali pada tiap ujung sisi kain, tahan dengan peniti atau penjepit kertas agar tali tidak bergeser</li>\r\n	<li>Jahit seluruh lapisan kain secara&nbsp;<em>backstitch</em>&nbsp;atau jahit berulang agar jahitan lebih kokoh di semua bagian&nbsp;</li>\r\n	<li>Masker kain tali siap digunakan&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sumber: sehatq.com</p>\r\n', '2020-05-29 12:02:53', 1, 'Publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencegahan`
--

CREATE TABLE IF NOT EXISTS `pencegahan` (
`pencegahan_id` int(11) NOT NULL,
  `pencegahan_judul` varchar(255) NOT NULL,
  `pencegahan_slug` varchar(150) NOT NULL,
  `pencegahan_deskripsi` text NOT NULL,
  `pencegahan_posting_tgl` datetime NOT NULL,
  `pencegahan_posting_by` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `pencegahan_status` enum('Publish','Hidden') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencegahan`
--

INSERT INTO `pencegahan` (`pencegahan_id`, `pencegahan_judul`, `pencegahan_slug`, `pencegahan_deskripsi`, `pencegahan_posting_tgl`, `pencegahan_posting_by`, `post_category_id`, `pencegahan_status`) VALUES
(2, 'Pencegahan Penyebaran Covid-19', 'pencegahan-penyebaran-covid-19.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/WhatsApp Image 2020-05-28 at 12_57_05.jpeg" xss=removed></p>\r\n\r\n<p><strong>Pencegahan penyebaran Covid-19</strong></p>\r\n\r\n<ol>\r\n <li>Memakai Masker Virus corona tidak menyebar melalui udara. Namun, penggunaan masker dapat meminimalisir penularan virus corona. Sebab, virus corona dapat menyebar melalui droplets dan dapat masuk ke dalam tubuh melalui selaput lender seperti mata, mulut, dan hidung</li>\r\n <li>Cuci tangan dengan sabun dan air mengalir selama minimal 20 detik. Pastikan Anda mencuci tangan setelah dari toilet, setelah batuk dan bersin, serta sebelum dan sesudah makan. Anda bisa mencuci tangan menggunakan air mengalir dan sabun.</li>\r\n <li>Terapkan etika bersin dan batuk dengan benar menggunakan siku tangan bagian dalam atau tisu bersih. Sebab, cairan yang diproduksi pada saat batuk dan bersin tersebut dapat menjadi media penularan virus corona.</li>\r\n <li>Konsumsi Gizi Seimbang. Manfaat buah dan sayur dapat menyediakan kebutuhan vitamin, mineral, dan serat bagi tubuh. Usahakan untuk memilih buah dan sayuran segar ketimbang buah dan sayuran beku atau kalengan. Nutrisi dalam buah dan sayuran segar lebih tinggi ketimbang produk olahan (kaleng atau beku). Di luar jam makan utama, konsumsi buah dan sayur sebagai camilan atau snack sehat.</li>\r\n <li>Periksa kesehatan. Jika Anda mulai mengalami demam, batuk, dan kesulitan bernapas, periksakan diri ke dokter guna mengetahui diagnosis dan penanganan yang tepat. Pasalnya, bisa jadi Anda mengalami gangguan infeksi pernapasan atau kondisi medis serius lainnya</li>\r\n <li>Istirahat yang cukup. Untuk cukup tidur, manusia dewasa setidaknya tidur selama 7-9 jam sehari, dengan catatan 7 jam adalah minimumnya. Kualitas tidur juga penting, oleh karena itu menyiapkan diri sebelum tidur perlu dilakukan. Misalnya dengan melakukan hal-hal yang menyenangkan tapi menenangkan seperti meditasi, yoga, mendengarkan musik relaxing favorit, membaca buku, dan lain-lain. Lakukan aktivitas ini setidaknya tiga puluh menit sebelum menuju tempat tidur.</li>\r\n</ol>', '2020-05-28 13:06:37', 1, 5, 'Publish'),
(3, 'Mengikuti Protokol Kedatangan Sampai di Rumah Setelah Bepergian', 'mengikuti-protokol-kedatangan-sampai-di-rumah-setelah-bepergian.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/Edukasi/Pencegahan/protokol.jpg" xss=removed></p>\r\n\r\n<p>Jangan menyentuh barang apa pun saat tiba di rumah setelah bepergian Jika ada anggota keluarga yang masih bepergian ke luar rumah di tengah wabah corona, pastikan untuk mengikuti protokol kedatangan sampai di rumah setelah bepergian di bawah ini agar terhindar dari penularan virus corona:</p>\r\n\r\n<ul>\r\n <li>Lepas sepatu di pintu, sebelum masuk ke rumah.</li>\r\n <li>Semprotkan cairan disinfektan hanya pada barang yang dibawa bepergian. Misalnya, sepatu, ponsel, laptop, dan lainnya.</li>\r\n <li>Membuang tanda terima atau kertas yang tidak diperlukan.</li>\r\n <li>Jangan menyentuh barang apa pun dan jangan langsung beristirahat.</li>\r\n <li>Segera cuci tangan dengan sabun dan air mengalir. </li>\r\n <li>Buka pakaian.</li>\r\n <li>Mandi hingga bersih.</li>\r\n</ul>', '2020-05-29 12:08:54', 1, 5, 'Publish'),
(4, 'Jarak Aman dalam Social Distancing untuk Cegah Covid-19', 'jarak-aman-dalam-social-distancing-untuk-cegah-covid-19.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/Edukasi/Pencegahan/SD.jpg" xss=removed></p>\r\n\r\n<p>Social distancing--yang kemudian diganti dengan istilah physical distancing adalah salah satu upaya untuk mengurangi penyebaran virus Corona COVID-19 dengan menjaga jarak antara satu orang dengan yang lain. Spesialis penyakit menular Steven Gordon, MD dari Cleveland Clinic menjelaskan, social distancing adalah upaya menghindari hadir di pertemuan besar atau kerumunan orang. Jika Anda harus berada di sekitar orang, jaga jarak dengan orang lain sekitar 6 kaki (2 meter).</p>\r\n\r\n<p>Menurut WHO, ada baiknya untuk mempertahankan jarak setidaknya 1-3 meter ketika berada di tempat umum terlebih jika ada seseorang yang batuk atau bersin. Dengan melakukan hal tersebut, diyakini dapat mencegah diri dari terjangkit virus yang menyerang saluran pernapasan tersebut. Pasalnya, virus tersebut telah terbukti mudah menular saat gejala masih ringan yakni di masa inkubasi</p>\r\n\r\n<p>Cara Menghindari Kerumunan saat Social Distancing:<br>\r\nUntuk menghindari kerumunan yang lebih besar atau ruang ramai adalah, sebagai berikut, seperti direkomendasikan Johns Hopkins Medicine:</p>\r\n\r\n<ol>\r\n <li>Bekerja dari rumah alih-alih di kantor</li>\r\n <li>Menutup sekolah atau beralih ke kelas online</li>\r\n <li>Bertemu orang lain dengan telepon atau video call alih-alih secara langsung</li>\r\n <li>Membatalkan atau menunda konferensi dan rapat besar</li>\r\n</ol>\r\n\r\n<p>Sumber: tirto.id<br>\r\n </p>', '2020-05-29 12:11:03', 1, 5, 'Publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
`id_pengguna` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `activation` varchar(32) DEFAULT NULL,
  `pp` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birthday` date NOT NULL,
  `notel` int(13) NOT NULL,
  `language` varchar(30) NOT NULL,
  `education` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `fname`, `lname`, `email`, `pass`, `tgl_daftar`, `activation`, `pp`, `gender`, `birthday`, `notel`, `language`, `education`, `job`, `address`) VALUES
(1, 'user1', 'user', 'satu', 'patris@ius.ken', 'jokam354', '0000-00-00 00:00:00', '', '', '', '0000-00-00', 0, '', '', '', ''),
(12, 'dsada31', 'dssda', 'dsadas', 'user1@localhost', '$2y$04$OeHCCScRU2rtVcyb7pS9mOlIStH.RKFNEJrb57pk08SiOV.SWSk4O', '2018-08-01 16:48:24', NULL, '', 'male', '0000-00-00', 0, '', '', '', ''),
(13, 'sdada', 'dsasda', 'dsadsa', 'user2@localhost', '$2y$04$qeNwmgcVXL6Ai5eAu1zEhurpB25iuKU3Zh9iyf5mvnMR2rr8wjXVO', '2018-08-01 17:48:54', NULL, '', 'female', '0000-00-00', 0, '', '', '', ''),
(14, 'adsasd', 'dssad', 'dsasda', 'asdad@ds.adsas', '$2y$04$Z3n69LmeWby209w3qFvKm.ofnx/3ylO19aYTQ3KQh5R5Qs9yV8r5G', '2018-08-02 18:15:21', '3621f1454cacf995530ea53652ddf8fb', '', 'female', '0000-00-00', 0, '', '', '', ''),
(15, 'dsasdad', 'asddsa', 'dsasad', 'dasadsd@asdsda.adsasd', '$2y$04$H6EaxxOSaUeMBCNGSThx5u8eYjP9IqohC8Q/YX16TsO6RtJBFoZuu', '2018-08-02 18:16:12', '4b04a686b0ad13dce35fa99fa4161c65', '', 'female', '0000-00-00', 0, '', '', '', ''),
(16, 'dsadsa', 'dasasd', 'dsdsa', 'dsads@dsa.dasasd', '$2y$04$4z7NpWMOuTcxLFziEZQZJ.p/zFp/zHaWqDsUIxrzYhsvHh399z8Qq', '2018-08-02 18:21:59', '07c5807d0d927dcd0980f86024e5208b', '', 'female', '0000-00-00', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(150) NOT NULL,
  `post_description` text NOT NULL,
  `post_posting_date` datetime NOT NULL,
  `post_posting_by` int(11) NOT NULL,
  `post_status` enum('Publish','Hidden') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`post_id`, `post_category_id`, `post_title`, `post_slug`, `post_description`, `post_posting_date`, `post_posting_by`, `post_status`) VALUES
(16, 5, 'SIKM Syarat Masuk Wilayah DKI Jakarta', 'sikm-syarat-masuk-wilayah-dki-jakarta.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/berita1.jpg" /></p>\r\n\r\n<p>JAKARTA &ndash; Gubernur DKI Jakarta Anies Baswedan telah menegaskan Surat Ijin Keluar-Masuk (SIKM) sebagai syarat mutlak yang harus dimiliki oleh warga untuk keluar atau masuk ke wilayah Jakarta. Penetapan SIKM melalui Peraturan Gubernur DKI Jakarta Nomor 47 Tahun 2020.</p>\r\n\r\n<p>SIKM bertujuan untuk memberikan perlindungan dan kepastian hukum bagi masyarakat dan Gugus Tugas Percepatan Penanganan COVID-19 di DKI Jakarta terhadap keterpaparan virus SARS-CoV-2. Berlakunya peraturan ini mendukung pelaksanaan pembatasan sosial berskala besar (PSBB) yang ditetapkan melalui Peraturan Gubernur Nomor 33 Tahun 2020 tentang Pelaksanaan PSBB dalam Penanganan COVID-19 di DKI Jakarta.&nbsp;</p>\r\n\r\n<p>Untuk mendapatkan SIKM, setiap individu terlebih dahulu mempelajari terkait persyaratan, mekanisme pelayanan, dasar hukum, definisi dan tata cara atau prosedur perijinan SIKM. Pemerintah DKI Jakarta menyediakan informasi pada laman corona.jakarta.go.id.</p>\r\n\r\n<p>Kepala Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu (DPMPTSP) DKI Jakarta Benni Aguscandra mengatakan bahwa SIKM ini merupakan administrasi pelayanan bagi yang bekerja mereka terkait 11 sektor.&nbsp;</p>\r\n\r\n<p>&ldquo;Kesebelas sektor itu adalah kesehatan, bahan pangan energi, komunikasi dan IT, keuangan logistik perhotelan konstruksi industri strategis pelayanan dasar, utilitas publik dan industri yang ditetapkan sebagai obyek vital nasional, dan pemenuhan kebutuhan sehari-hari,&rdquo; ucap Benni pada dialog penanganan COVID-19 di Media Center Gugus Tugas Nasional, Graha BNPB, Jakarta pada Kamis (28/5).&nbsp;</p>\r\n\r\n<p>Benni mengatakan, &ldquo;SIKM diproses secara online, namun beberapa sektor seperti konstruksi bisa dilakukan dengan sistem tanggungan. Misal seorang mandor dapat menanggung 20 tukang. Mandor yang membuat SIKM, atau mereka yang mempekerjakan tukang, dari pemilik rumah atau perusahaan.&rdquo;</p>\r\n\r\n<p>Berikut ini beberapa langkah yang harus dilalui saat mengajukan permohonan perizinan SIKM. Pertama, pemohon mengunjungi website corona.jakarta.go.id. Lalu Pilih Urus Izin kemudian pemohon akan diarahkan ke laman JakEVO. Persiapkan berkas persyaratan terlebih dahulu sebelum memulai permohonan perizinan, kemudian isi formulir permohonan dan unggah seluruh berkas persyaratan sesuai dengan format yang diminta.</p>\r\n\r\n<p>Kedua, JakEVO akan mengirimkan email kepada penjamin atau&nbsp;penanggung jawab untuk melakukan validasi atas permohonan yang diajukan oleh pemohon. Jika penjamin bersedia menjamin pemohon dan terikat dengan peraturan perundangan maka permohonan akan dilanjutkan permrosesannya.</p>\r\n\r\n<p>Ketiga, Petugas DPMPTSP Pemerintah DKI Jakarta melakukan penelitian administrasi dan penelitian teknis permohonan perizinan.</p>\r\n\r\n<p>Keempat, Jika permohonan perizinan SIKM disetujui dan ditandatangani oleh pejabat yang berwenang. JakEVO akan mengirimkan surat elektronik ke email pemohon yang berisikan pemberitahuan SIKM telah diterbitkan disertai tautan untuk mengunduh SK Izin Keluar-Masuk Jakarta. Pemohon dapat mencetak izin secara mandiri.</p>\r\n\r\n<p>Pemohon dapat melakukan pengecekan untuk melihat proses pengajuan ijin secara seketika atau real time dengan melihat pada menu Lacak Permohonan Anda dan pemohon dapat melihat pada tahapan proses pengajuan ijin yang sedag dilakukan.&nbsp;</p>\r\n\r\n<p>Benni menyampaikan bahwa SIKM memiliki dua jenis, yaitu SIKM bersifat perjalanan berulang dan SIKM bersifat perjalanan sekali.&nbsp;</p>\r\n\r\n<p>&ldquo;SIKM perjalanan berulang untuk mereka yang berdomisili di DKI Jakarta namun tempat kerja atau tempat usaha berada di luar Jabodetabek atau mereka yang berdomisili di luar Jabodetabek, namun bekerja atau tempat usahanya di DKI Jakata,&rdquo; tambah Benni.&nbsp;</p>\r\n\r\n<p>Benni mengingatkan masyarakat apabila melakukan pemalsuan surat dapat dikenakan hukuman paling lama 12 tahun sesuai Undang Undang ITE Nomor 11 Tahun 2008. Tidak hanya itu, pemalsuan atau pemanipulasian informasi elektronik dan dokumen elektronik dapat dikenakan pasal 263 KUHP.&nbsp;</p>\r\n\r\n<p>Terkait dengan otentifikasi, SIKM telah dilengkapi dengan QR Code sehingga ini memudahkan petugas di lapangan dalam pengecekan surat.&nbsp;</p>\r\n\r\n<p>Berdasarkan data Pemerintah DKI Jakarta per 27 Mei 2020, total pengguna berjumlah 259.813 berhasil mengakses perijinan SIKM dari laman corona.jakarta.go.id dan tercatat 6.622 permohonan SIKM yang diterima. Dari total permohonan yang diterima tersebut, 64 permohonan yang masih dalam proses.<br />\r\n<strong>Sumber : Tim Komunikasi Publik Gugus Tugas Nasional</strong></p>\r\n', '2020-05-29 07:50:01', 1, 'Publish'),
(17, 5, 'Terapkan 4 Sehat 5 Sempurna Kekinian Hadapi COVID-19', 'terapkan-4-sehat-5-sempurna-kekinian-hadapi-covid-19.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/berita2.jpg" /></p>\r\n\r\n<p>JAKARTA &ndash; Kita yang menginjak usia 40 tahunan tentu masih ingat dengan slogan 4 Sehat 5 Sempurna. Ketua Gugus Tugas Percepatan Penanganan COVID-19 atau GTPPC19 Doni Monardo mengadopsi slogan itu untuk menghadapi virus SARS-CoV-2 yang sedang melanda tanah air.&nbsp;</p>\r\n\r\n<p>Dulu, slogan 4 Sehat 5 Sempurna digunakan sebagai pengingat yang mudah untuk masyarakat. Masyarakat membutuhkan asupan nutrisi untuk membangun kualitas manusia Indonesia yang andal. Slogan yang diciptakan tahun 1950-an oleh Prof. Poorwo Soedarmo berisikan lima kelompok makanan, yakni makanan pokok, lauk-pauk, sayur-sayuran, buah-buahan dan susu.</p>\r\n\r\n<p>Namun, slogan tersebut digunakan untuk menghadapi konteks saat ini, benteng terakhir menghalau virus Korona. Doni menggunakan slogan serupa untuk membangun manusia Indonesia dalam menghadapi serangan COVID-19. &nbsp;</p>\r\n\r\n<p>Ia mendefinisikan 4 Sehat 5 Sempurna sebagai upaya mencegah COVID-19. Empat sehat dari Doni yang juga Kepala BNPB ini, yaitu gunakan masker, jaga jarak, baik&nbsp;<em>physical</em>&nbsp;dan&nbsp;<em>social distancing</em>, rajin cuci tangan dengan sabun, dan olahraga, tidur teratur dan cukup serta tidak panik. Satu pesan yang membuat sempurna yaitu makanan yang bernutrisi.</p>\r\n\r\n<p>&ldquo;Kalau dulu, 4 Sehat 5 Sempurna, karbohidrat, daging, ikan, sayuran, buah-buahan dan susu. Nah ini semuanya masuk pada poin ke-5 (versi Doni),&rdquo; ujar Doni saat bertemu Guru Besar Departemen Ilmu Kesehatan Anak Fakultas Kedokteran UI Prof. Rini Sekarini di Graha BNPB, Jakarta, pada Rabu (27/5).&nbsp;</p>\r\n\r\n<p>Slogan 4 Sehat 5 Sempurna sangat dibutuhkan di era COVID-19. Doni menyampaikan kita tidak menang melawan COVID-19.</p>\r\n\r\n<p>&ldquo;Tidak ada manusia, negara yang bisa mengalahkan Covid, yang ada adalah beradaptasi,&rdquo; ujarnya.</p>\r\n\r\n<p>Di samping itu, Doni berharap slogan 4 Sehat 5 Sempurna dalam konteks menghadapi COVID-19 dapat mudah diingat oleh masyarakat. &nbsp;</p>\r\n\r\n<p>Sementara itu, Ketua Tim Pakar GTPPC19 Prof. Wiku Adisasmito menyampaikan penting untuk mengenalkan suatu narasi, yaitu 4 Sehat 5 Sempurna, yang membantu setiap warga masyarakat untuk &lsquo;berubah,&rsquo; khususnya dalam menghadapi COVID-19.&nbsp;</p>\r\n\r\n<p>Doni menambahkan bahwa slogan &lsquo;4 Sehat&rsquo; yang mampu diimplementasikan oleh setiap individu ini bertujuan untuk meningkatkan imunitas.&nbsp;</p>\r\n\r\n<p>&ldquo;Baru kemudian didukung dengan gizi,&rdquo; jelas Doni kepada Rini Sekarini yang juga Ketua IDAI DKI Jakarta. Prof. Rini merupakan cucu dari Prof. Poorwo Soedarmo, pencetus slogan 4 Sehat 5 Sempurna era dulu.</p>\r\n\r\n<p>Prof. Rini juga mendukung slogan ini dapat menjadi upaya gerakan masyarakat untuk hidup perilaku adaptif secara preventif untuk menghadapi pandemi COVID-19.<br />\r\n&nbsp;<br />\r\nDoni juga menambahkan bahwa Majelis Ulama Indonesia merespon slogan tersebut dan membahas lebih lanjut dan detail sehingga dapat disebarluaskan kepada seluruh masyarakat Indonesia.&nbsp;</p>\r\n\r\n<p><strong>Sumber : Tim Komunikasi Publik Gugus Tugas Nasional</strong></p>\r\n', '2020-05-29 07:53:53', 1, 'Publish'),
(18, 5, 'Pemerintah Tengah Siapkan Skenario Kembali Produktif di Tengah Pandemi Covid-19', 'pemerintah-tengah-siapkan-skenario-kembali-produktif-di-tengah-pandemi-covid-19.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/Edukasi/Pencegahan/productive.jpg" xss=removed></p>\r\n\r\n<p>JAKARTA - Juru Bicara Pemerintah untuk COVID-19 Achmad Yurianto menjelaskan bahwa saat ini Pemerintah Indonesia tengah mempersiapkan skenario agar masyarakat dapat melaksanakan kegiatan produktif di tengah pandemi COVID-19. Tentunya, hal itu sedang dipersiapkan secara matang agar dalam implementasinya tidak mengalami kendala dan pandemi COVID-19 dapat dikendalikan.</p>\r\n\r\n<p>Dalam keterangan resminya di Media Center Gugus Tugas Percapatan Penanganan COVID-19, Yuri mengatakan bahwa skenario itu tidak hanya menyasar pada sektor ekonomi saja. Akan tetapi juga menyinggung soal aspek lainnya seperti sektor pendidikan.</p>\r\n\r\n<p>"Bukan hanya di bidang ekonomi, tetapi juga kita kembali lagi mulai memikirkan bagaimana proses pendidikan pembelajaran di sekolah, di kampus, sudah mulai harus kita hidupkan kembali, kita jalankan kembali,” jelas Yuri di Jakarta, Kamis (28/5).</p>\r\n\r\n<p>Kemudian Yuri juga mengatakan pemerintah dalam hal ini juga sangat serius mempersiapkan agar bagaimana kegiatan keagamaan di rumah ibadah dapat berjalan seperti sedia kala, tentunya dengan memperhatikan beberapa hal yang sekaligus bertujuan untuk mengendalikan penyebaran virus corona jenis baru penyebab COVID-19.</p>\r\n\r\n<p>"Bagaimana kemudian kegiatan beribadah di rumah-rumah ibadah, juga kita kembalikan seperti semula,” kata Yuri.</p>\r\n\r\n<p>Dalam hal ini, Yuri memastikan bahwa semua itu tergantung pada kondisi epidemologi di tiap-tiap wilayah. Sebab, kondisi masing-masing daerah tidak sama.</p>\r\n\r\n<p>Oleh sebab itu, perlu dilakukan kajian-kajian komprehensif untuk mengendalikan epidemologi COVID-19 pada tiap daerah tersebut sebelum kemudian dapat diputuskan untuk menjalankan skenario agar masyarakat dapat kembali produktif di masa pandemi.</p>\r\n\r\n<p>"Tentunya, ini akan sangat tergantung pada kondisi epidemologi daerah itu saat ini,” jelas Yuri.</p>\r\n\r\n<p>"Oleh karena itu, tentunya kajian harus komprehensif di masing-masing daerah, karena tujuannya adalah pengendalian epidemologi COVID-19 di daerah itu,” imbuhnya.</p>\r\n\r\n<p>Sebagaimana informasi sebelumnya bahwa, menurut data Gugus Tugas Percepatan Penanganan COVID-19 per hari ini, Kamis (28/5), terdapat dinamika kasus COVID-19 yang berbeda pada tiap wilayah.</p>\r\n\r\n<p>Sebagai contoh bahwa penambahan jumlah kasus positif paling banyak adalah di Jawa Timur sebanyak 171, kemudian Kalimantan Selatan ada 116, DKI Jakarta bertambah 105, Sulawesi Selatan ada 46 dan Sumatera Utara bertambah 30 kasus.</p>\r\n\r\n<p>Adapun dalam hal ini, angka penambahan kasus di DKI Jakarta yang paling banyak adalah dari para Warga Negara Indonesia (WNI) repatriasi atau yang pulang dari luar negeri. Menurut Yuri, para WNI yang terkonfirmasi positif COVID-19 itu telah dirawat secara intensif di Rumah Sakit Darurat Wisma Atlet Kemayoran.</p>\r\n\r\n<p>Kemudian wilayah yang nihil penambahan kasus meliputi Bangka Belitung, DI Yogyakarta, Jambi, Kalimantan Utara, Lampung, Riau, Sulawesi Barat, dan Nusa Tenggara Timur. Kemudian untuk wilayah yang ada satu penambahan kasus adalah Aceh, Kalimantan Barat dan Kalimantan Timur.</p>\r\n\r\n<p>Adanya kasus nihil tersebut sekaligus menjadi tantangan terbesar bagi masing-masing wilayah untuk mempertahankannya.</p>\r\n\r\n<p>Selanjutnya, apabila melihat hitungan hari ke hari, Provinsi Kalimantan Selatan terdapat penambahan cukup banyak kasus positif COVID, namun Provinsi Jawa Timur menjadi wilayah yang paling banyak, meski telah mengalami penurunan hingga 28 orang jika dibanding data hari sebelumnya, Rabu (27/5).</p>\r\n\r\n<p>Sementara itu berdasarkan rincian data secara akumulatf nasional, penambahan kasus terkonfirmasi positif COVID-19 ada sebanyak 687 orang sehingga totalnya menjadi 24.538. Sedangkan pasien sembuh menjadi 6.240 setelah ada penambahan 183 orang dan kasus meninggal menjadi 1.496 dengan penambahan 23 orang.</p>\r\n\r\n<p><br>\r\nSumber: Tim Komunikasi Publik Gugus Tugas Nasional</p>', '2020-05-29 12:16:12', 1, 'Publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_category`
--

CREATE TABLE IF NOT EXISTS `post_category` (
`post_category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post_category`
--

INSERT INTO `post_category` (`post_category_id`, `category_name`, `category_description`) VALUES
(1, 'works', 'Some of recent works'),
(2, 'page', '<p>ini di edit lagi</p>\r\n'),
(3, 'kategori baru', 'deskripsi'),
(4, 'kategori 2', 'deskripsi 2'),
(5, 'Berita', 'Berita Covid-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE IF NOT EXISTS `project` (
`project_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_slug` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `project_posting_date` datetime NOT NULL,
  `project_posting_by` int(11) NOT NULL,
  `project_status` enum('Publish','Hidden','Process','Finish') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`project_id`, `project_title`, `project_slug`, `project_description`, `project_posting_date`, `project_posting_by`, `project_status`) VALUES
(1, 'lorem ipsum dolor sit amet ', 'lorem-ipsum-dolor-sit-amet.html', 'lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet lorem ipsum dolor sit amet ', '2018-07-11 00:00:00', 1, 'Publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
`id_tag` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id_tag`, `tag`, `project_id`) VALUES
(1, 'web', 1),
(2, 'mobile', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE IF NOT EXISTS `tentang` (
`tentang_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `tentang_judul` varchar(255) NOT NULL,
  `tentang_slug` varchar(255) NOT NULL,
  `tentang_deskripsi` text NOT NULL,
  `tentang_posting_tgl` datetime NOT NULL,
  `tentang_posting_by` int(11) NOT NULL,
  `tentang_status` enum('Publish','Hidden') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`tentang_id`, `post_category_id`, `tentang_judul`, `tentang_slug`, `tentang_deskripsi`, `tentang_posting_tgl`, `tentang_posting_by`, `tentang_status`) VALUES
(9, 5, 'Apa itu Virus Corona (COVID-19) ?', 'h.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/tentang1.jpg" /></p>\r\n\r\n<p><strong>Virus Corona atau&nbsp;</strong><em>severe acute respiratory syndrome</em><strong>&nbsp;</strong><em>coronavirus 2</em><strong>&nbsp;(SARS-CoV-2)&nbsp;adalah virus yang menyerang sistem pernapasan.&nbsp;Penyakit karena infeksi virus ini disebut COVID-19.&nbsp;Virus&nbsp;Corona&nbsp;bisa menyebabkan&nbsp;gangguan ringan pada&nbsp;sistem pernapasan, infeksi paru-paru yang berat,&nbsp;hingga kematian.</strong></p>\r\n\r\n<p><em>Severe acute respiratory syndrome coronavirus 2</em>&nbsp;(SARS-CoV-2) yang lebih dikenal dengan nama virus Corona adalah jenis baru dari coronavirus yang menular ke manusia.</p>\r\n\r\n<p>Coronavirus adalah kumpulan virus yang bisa menginfeksi sistem pernapasan. Pada banyak kasus, virus ini hanya menyebabkan infeksi pernapasan ringan. Namun, virus ini juga bisa menyebabkan infeksi pernapasan berat, seperti infeksi paru-paru (pneumonia).</p>\r\n\r\n<p>Selain virus SARS-CoV-2 atau virus Corona,<strong>&nbsp;</strong>virus yang juga termasuk dalam kelompok ini adalah&nbsp;virus penyebab&nbsp;<em>Severe Acute Respiratory Syndrome</em>&nbsp;dan virus penyebab&nbsp;<em>Middle-East Respiratory Syndrome</em>&nbsp;.&nbsp;</p>\r\n\r\n<p><strong>Sumber: alodokter.com</strong></p>\r\n', '2020-05-29 08:23:10', 1, 'Publish'),
(13, 5, 'Gejala Virus Corona (Covid-19)', 'hhhhhhhhhhhhhhhhhhhhhhh.html', '<p><img alt="" src="http://localhost/zivicode/assets/upload/images/Berita/Tentang/tentang2.jpg" /></p>\r\n\r\n<p>Gejala awal infeksi virus Corona atau COVID-19 bisa menyerupai gejalyaitu demam, pilek, batuk kering, sakit tenggorokan, dan sakit kepala. Setelah itu, gejala dapat hilang dan sembuh atau malah memberat. Penderita dengan gejala yang berat bisa mengalami demam tinggi, batuk berdahak bahkan berdarah, sesak napas dan nyeri dada. Gejala-gejala tersebut muncul ketika tubuh berekasi melawan virus Corona.</p>\r\n\r\n<p>Secara umum ada beberapa gejala yang bisa menendakan seseorang terinfeksi virus Corona, yaitu:</p>\r\n\r\n<p>a. Demam</p>\r\n\r\n<p>b. Sakit Kepala</p>\r\n\r\n<p>c. Batuk</p>\r\n\r\n<p>d. Pilek</p>\r\n\r\n<p>e. Sakit Tenggorokan</p>\r\n\r\n<p>f. Gangguan Pernafasan</p>\r\n\r\n<p>g. Menggigil</p>\r\n', '2020-05-29 12:35:26', 1, 'Publish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `edukasi`
--
ALTER TABLE `edukasi`
 ADD PRIMARY KEY (`edukasi_id`);

--
-- Indexes for table `pencegahan`
--
ALTER TABLE `pencegahan`
 ADD PRIMARY KEY (`pencegahan_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
 ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`), ADD KEY `news_posting_by` (`post_posting_by`), ADD KEY `news_category_id` (`post_category_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
 ADD PRIMARY KEY (`post_category_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
 ADD PRIMARY KEY (`project_id`), ADD KEY `project_posting_by` (`project_posting_by`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
 ADD PRIMARY KEY (`id_tag`), ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
 ADD PRIMARY KEY (`tentang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `edukasi`
--
ALTER TABLE `edukasi`
MODIFY `edukasi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pencegahan`
--
ALTER TABLE `pencegahan`
MODIFY `pencegahan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
MODIFY `post_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
MODIFY `tentang_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_posting_by`) REFERENCES `admin` (`id_user`),
ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`post_category_id`);

--
-- Ketidakleluasaan untuk tabel `project`
--
ALTER TABLE `project`
ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`project_posting_by`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `tags`
--
ALTER TABLE `tags`
ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
