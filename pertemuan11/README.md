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

CREATE TABLE 'pelanggan'(
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
