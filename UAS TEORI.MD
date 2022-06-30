# Ide Solusi: Sistem Grosir Online

![Diagrams](https://github.com/andamira16/IF214002/blob/main/pertemuan2/Screenshot%20(214).png?raw=true)

## Deskripsi
Aplikasi ini dibuat untuk memudahkan para konsumen dalam berbelanja sehingga tidak lagi harus berdesakan dan berkerumun. Aplikasi ini memberikan fitur pada konsumen berupa:
- Customer login
- Admin Login
- Shoping cart
- Search Engine/mesin pencarian produk
- Fitur jemput atau COD
- Nota
## Entitas dan Atribut
### Pelanggan
- ID pelanggan
- Nama pelanggan
- email pelanggan
- Password pelanggan
- Alamat Pelanggan 
- No.HP
### Produk
- ID produk
- Nama produk 
- Harga produk
- Foto produk
- Deskripsi Produk
### Admin (untuk mengelola data)
- ID Admin
- Nama admin
- Username admin
- Password admin
### Pembelian
- ID pembelian
- ID pelanggan
- ID metode
- Tanggal pembelian
- Total pembelian
- Status pembelian
### Pembelian produk
- ID pembelian produk
- ID pembelian
- ID Produk
- Jumlah pembelian
### Metode Penyerahan produk
- ID metode
- Jenis metode

## DDL
```
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL);

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'rafiandamira', 'andamira46rafi', 'Rafi Andamira'),
(2, 'rafiandamira', 'andamira46', 'Rafi Andamira');

CREATE TABLE `metode` (
  `id_metode` int(11) NOT NULL,
  `nama_metode` varchar(10) NOT NULL);

INSERT INTO `metode` (`id_metode`, `nama_metode`) VALUES
(1, 'COD'),
(2, 'TAKE AWAY');

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_rumah` varchar(300) NOT NULL);

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `id_metode` int(11) NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending');

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_pembelian` int(11) NOT NULL);
  
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL);

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

ALTER TABLE `metode`
  ADD PRIMARY KEY (`id_metode`);

ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);
  
 ## DML
INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'rafiandamira', 'andamira46rafi', 'Rafi Andamira'),
(2, 'rafiandamira', 'andamira46', 'Rafi Andamira');

INSERT INTO `metode` (`id_metode`, `nama_metode`) VALUES
(1, 'COD'),
(2, 'TAKE AWAY');

## DQL
