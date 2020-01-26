-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2019 pada 08.20
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info_adm_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `hari` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `kehadiran` varchar(30) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`nis`, `nama_siswa`, `kelas`, `hari`, `tanggal`, `bulan`, `tahun`, `kehadiran`, `keterangan`) VALUES
('14245', 'Abdul Rahmat Maulana', '8.1', 'SELASA', '8', 'JUNI', '2019', 'SAKIT', 'DIARE'),
('11254', 'Muhammad Ikbal', '9.1', 'SENIN', '11', 'JUNI', '2019', 'ALFA', 'BOLOS'),
('11242', 'Lutfi Alfiansyah', '8.5', 'SELASA', '13', 'JULI', '2019', 'ALFA', 'BOLOS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'laisbon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `NIP` varchar(20) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `study` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`NIP`, `nama_guru`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `jabatan`, `pendidikan`, `study`) VALUES
('1982071821314', 'Hj. Nani Suryono, S.Pd', 'Jl. Hj Mali', 'Surabaya', '18 Juli 1982', 'Perempuan', 'Islam', 'Guru', 'S1', 'Bahasa Inggris'),
('1977051289832', 'Sunar S.Pd', 'Jl. Sawah Darat', 'Cirebon', '12 Mei 1977', 'Laki-Laki', 'Islam', 'Guru', 'S1', 'Penjaskes'),
('1980082012412', 'Sabila, S.Pd.', 'Jl. Semanan Raya', 'Cirebon', '20 Agustus 1980', 'Perempuan', 'Islam', 'Guru', 'S1', 'IPA'),
('1981101928321', 'Saefurohman, S.Pd, M.Pd', 'Jl. Imam Bonjol', 'Tegal', '19 Oktober 1981', 'Laki-Laki', 'Islam', 'Guru', 'S1', 'IPS'),
('1983012085723', 'Hendrik, M.Pd', 'Jl. Hj Rabbi', 'Sleman', '20 Januari 1983', 'Laki-Laki', 'Islam', 'Guru', 'S1', 'Matematika'),
('621737712', 'Ubaidillah', 'Condet', 'Jakarta', '18 April 1997', 'Laki-Laki', 'Islam', 'Guru', 'S1', 'Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` varchar(20) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `kd_pelajaran` varchar(50) NOT NULL,
  `kehadiran` int(11) NOT NULL,
  `nilai_uts` int(11) NOT NULL,
  `nilai_uas` int(11) NOT NULL,
  `nilai_tugas` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nis`, `nama_siswa`, `kelas`, `kd_pelajaran`, `kehadiran`, `nilai_uts`, `nilai_uas`, `nilai_tugas`) VALUES
('ID0002', '11242', 'Lutfi Alfiansyah', '8.5', 'Bahasa Indonesia', 70, 70, 80, 70),
('ID0001', '11242', 'Lutfi Alfiansyah', '8.5', 'Matematika', 80, 80, 70, 75),
('ID0003', '11242', 'Lutfi Alfiansyah', '8.5', 'Bahasa Inggris', 70, 70, 70, 70),
('ID0004', '11242', 'Lutfi Alfiansyah', '8.5', 'IPA', 70, 70, 80, 75),
('ID0005', '11242', 'Lutfi Alfiansyah', '8.5', 'IPS', 80, 70, 70, 75),
('ID0006', '11242', 'Lutfi Alfiansyah', '8.5', 'PJOK', 70, 75, 80, 80),
('ID0007', '11242', 'Lutfi Alfiansyah', '8.5', 'PKN', 70, 70, 75, 70),
('ID0008', '11242', 'Lutfi Alfiansyah', '8.5', 'Agama', 70, 75, 80, 80),
('ID0009', '11242', 'Lutfi Alfiansyah', '8.5', 'Seni Budaya', 75, 75, 75, 70),
('ID0010', '11242', 'Lutfi Alfiansyah', '8.5', 'Prakarya', 80, 75, 80, 75),
('ID0011', '11254', 'Muhammad Ikbal', '9.1', 'Bahasa Inggris', 80, 80, 75, 80),
('ID0012', '11254', 'Muhammad Ikbal', '9.1', 'IPA', 75, 80, 70, 80),
('ID0013', '11254', 'Muhammad Ikbal', '9.1', 'IPS', 90, 80, 80, 80),
('ID0014', '11254', 'Muhammad Ikbal', '9.1', 'PJOK', 90, 80, 80, 80),
('ID0015', '11254', 'Muhammad Ikbal', '9.1', 'PKN', 80, 75, 75, 80),
('ID0016', '11254', 'Muhammad Ikbal', '9.1', 'Agama', 80, 80, 80, 80),
('ID0017', '11254', 'Muhammad Ikbal', '9.1', 'Seni Budaya', 90, 76, 90, 78),
('ID0018', '11254', 'Muhammad Ikbal', '9.1', 'Prakarya', 76, 78, 80, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `kd_pelajaran` varchar(35) NOT NULL,
  `mata_pelajaran` varchar(50) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `hari` varchar(30) NOT NULL,
  `waktu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`kd_pelajaran`, `mata_pelajaran`, `nama_guru`, `kelas`, `hari`, `waktu`) VALUES
('01', 'Penjaskes', 'Sunar S.Pd', '7.1', 'Senin', '08.00 s.d 09.00'),
('02', 'Bahasa Inggris', 'Hj. Nani Suryono, S.Pd', '9.1', 'Rabu', '10.00 s.d 11.30'),
('03', 'IPA', 'Sabila, S.Pd.', '8.5', 'Kamis', '08.00 s.d 09.30'),
('04', 'IPS', 'Saefurohman, S.Pd, M.Pd', '7.4', 'Senin', '08.00 s.d 09.30'),
('05', 'Matematika', 'Hendrik, M.Pd', '8.6', 'Selasa', '09.30 s.d 11.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `id_nilai` varchar(20) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `kehadiran` int(50) NOT NULL,
  `nilai_uts` int(50) NOT NULL,
  `nilai_uas` int(50) NOT NULL,
  `nilai_tugas` int(50) NOT NULL,
  `peringkat` varchar(50) NOT NULL,
  `rata_rata` int(50) NOT NULL,
  `grade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_nilai`, `nis`, `nama_siswa`, `kelas`, `kehadiran`, `nilai_uts`, `nilai_uas`, `nilai_tugas`, `peringkat`, `rata_rata`, `grade`) VALUES
('ID0001', '11242', 'Lutfi Alfiansyah', '8.5', 80, 80, 70, 75, 'Peringkat 3', 75, 'B+'),
('ID0013', '11254', 'Muhammad Ikbal', '9.1', 90, 80, 80, 80, 'Peringkat 2', 82, 'A-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `orang_tua` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `kelas`, `jenis_kelamin`, `tempat`, `tgl_lahir`, `agama`, `alamat`, `orang_tua`, `no_telp`, `saldo`) VALUES
('11254', 'Muhammad Ikbal', '9.1', 'Laki-Laki', 'Jakarta', '16 Mei 2000', 'Islam', 'Tanah Koja', 'Tarda', '081385031424', 200000),
('14245', 'Abdul Rahmat Maulana', '8.1', 'Laki-Laki', 'Depok', '27 Juni 2002', 'Islam', 'Kosambi', 'Rohmat', '085723123455', 0),
('11242', 'Lutfi Alfiansyah', '8.5', 'Laki-Laki', 'Jakarta', '21 April 2002', 'Islam', 'Semanan', 'Jaka', '089457232123', 95000),
('15623', 'Vicky Wahyuningtyas', '8.6', 'Perempuan', 'Depok', '17 September 2001', 'Islam', 'Kp Pulo', 'Tari', '087681235212', 200000),
('13423', 'Bagas Wijaya', '7.4', 'Laki-Laki', 'Jakarta', '23 Oktober 2000', 'Islam', 'Batu Ceper', 'Wijaya Kusuma', '085712848212', 70000),
('146623', 'Igo', '7.1', 'Laki-Laki', 'Jakarta', '17 Maret 1998', 'Islam', 'Ketapang', 'soleha', '089237271123', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `nis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kls` varchar(25) NOT NULL,
  `saldo` int(11) NOT NULL,
  `nomi_trans` int(11) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `jns_trans` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`nis`, `nama`, `kls`, `saldo`, `nomi_trans`, `tanggal`, `jns_trans`) VALUES
('13423', 'Bagas Wijaya', '7.4', 50000, 50000, '2019-06-14', 'Penarikan'),
('11254', 'Muhammad Ikbal', '9.1', 650000, 50000, '2019-06-14', 'Setor'),
('11254', 'Muhammad Ikbal', '9.1', 600000, 50000, '2019-06-14', 'Penarikan'),
('13423', 'Bagas Wijaya', '7.4', 100000, 100000, '2019-06-14', 'Setor'),
('11254', 'Muhammad Ikbal', '9.1', 200000, 400000, '2019-06-14', 'Penarikan'),
('13423', 'Bagas Wijaya', '7.4', 70000, 20000, '2019-06-20', 'Setor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `type`) VALUES
(3, 'admin', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`kd_pelajaran`);

--
-- Indeks untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
