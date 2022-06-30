# Ide Solusi: Sistem Grosir Online

![Diagrams](https://github.com/andamira16/IF214002/blob/main/pertemuan2/Screenshot%20(214).png?raw=true)

## Deskripsi
Aplikasi ini dibuat untuk memudahkan para konsumen dalam berbelanja sehingga tidak lagi harus berdesakan dan berkerumun. Aplikasi ini memberikan fitur pada konsumen berupa:
- Customer login
- Shoping cart
- Search Engine/mesin pencarian produk
- Fitur jemput atau antar barang(jika antar ada tambahan ongkos kirim)
## Entitas dan Atribut
### Pelanggan
- ID pelanggan
- Nama pelanggan
- Username
- Password pelanggan
- Alamat Pelanggan 
- No.HP
### Barang
- ID barang
- Nama barang 
- Harga barang
- Foto Barang
### Admin (untuk mengelola data)
- ID Admin
- Nama admin
- Username admin
- Password admin
### Pembelian
- ID pembelian
- Tanggal pembelian
- Total pembelian
### Metode Penyerahan barang
- COD
- Jemput
- Status penyerahan

## DDL

```sql
CREATE TABLE 'pelanggan'(
  `id_pelanggan` INT(11) NOT NULL,
  `nama_pelanggan` VARCHAR(40) NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  `password_pelanggan` VARCHAR(16) NOT NULL,
  `alamat_pelanggan` VARCHAR(30) NOT NULL,
  `no_HP` INT(50) NOT NULL
);

CREATE TABLE 'barang'(
  `id_barang` INT(11) NOT NULL,
  `nama_barang` VARCHAR(40) NOT NULL,
  `harga_barang` VARCHAR(20) NOT NULL,
  `foto_barang` VARCHAR(16) NOT NULL
);

CREATE TABLE 'admin'(
  `id_admin` INT(11) NOT NULL,
  `nama_admin` VARCHAR(40) NOT NULL,
  `username_admin` VARCHAR(20) NOT NULL,
  `password_admin` VARCHAR(16) NOT NULL
);

CREATE TABLE 'pembelian'(
  `id_pembelian` INT(11) NOT NULL,
  `id_pelanggan` INT(11) NOT NULL,
  `id_barang` INT(11) NOT NULL,
  `tanggal_pembelian` 
  `jumlah` INT(11) NOT NULL,
  `harga_barang` INT(11) NOT NULL,
  `total_pembelian` INT(11) NOT NULL
);

CREATE TABLE `metode_penyerahan`(
  `id_penyerahan` INT(11) NOT NULL,
  `metode` 
  `status`
);


ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),


ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),


ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),


ALTER TABLE `metode_penyerahan`
  ADD PRIMARY KEY (`id_penyerahan`),


 ```
 
## DML

``` sql


INSERT INTO `pelanggan` (`id_pelanggan`,`nama_pelanggan`,`username`,`password_pelanggan`,`alamat_pelanggan`,`no_HP`) VALUES
(1, 'Rafi Andamira','rafiandamira'.'alahsiahboy','ujungberung','085793851606');


INSERT INTO `barang` (`id_barang`,`nama_barang`,`harga_barang`,`foto_barang`) VALUES
(1,'rokok','20.000','URL');

INSERT INTO `admin` (`id_admin`,`nama_admin`,`username_admin`,`password_admin`) VALUES
(1, 'Rafi Andamira','andamira','adminnihboss');

INSERT INTO `pembelian` (`id_pembelian`,`id_pelanggan`,`id_barang`,`tanggal_pembelian` `jumlah`,`harga_barang`,`total_pembelian`) VALUES
(1,1,1,'30-06-2022',3,20000,60000);

INSERT INTO `metode_penyerahan` (`id_penyerahan`,`metode`,`status`) VALUES
(1,'COD','Pending');

```

## DQL

``` sql

/* menampilkan data pada tabel pembelian*/

SELECT * FROM `pembelian`;

/* menampilkan total pembelanjaan yang ada pada seluruh sistem database */

SELECT COUNT(*) AS total_pembelian FROM `pembelian`;

```
