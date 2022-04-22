# UTS PRAKTIKUM BASIS DATA

## 1. Jelaskan contoh-contoh perintah SQL beserta kegunannya !

JAWABAN:
- CREATE DATABASE digunakan untuk membuat database baru.

  Syntax:
  ```sql
  CREATE DATABASE nama_database
  ```

- CREATE TABLE dipakai untuk membuat tabel baru dalam database.

  Syntax:
  ```sql
  CREATE TABLE nama_tabel (
    nama_kolom1 tipe_data(panjang data),
    nama
  )

- SELECT adalah satu statement utama dari SQL yang digunakan untuk memilih data dari database.

  Syntax:
  ```sql
  SELECT nama_kolom1, nama_kolom2
  FROM nama_tabel;
  ```
- UPDATE digunakan dengan WHERE untuk mengupdate data di tabel.

  Syntax:
  ```sql
  UPDATE nama_tabel
  SET nama_kolom1 = 'nilai_pengganti', nama_kolom2= 'nilai_pengganti'
  WHERE kondisi;
  ```
- DELETE digunakan untuk menghapus baris tertentu dari tabel.

  Syntax:
  ```sql
  DELETE FROM nama_tabel
  WHERE kondisi='value_kondisi';
  DELETE * FROM nama_tabel;
  ```
- INSERT INTO digunakan untuk memasukan baris data baru ke tabel.

  Syntax:
  ```sql
  INSERT INTO nama_tabel (nama_kolom1, nama_kolom2, nama_kolom3)
  VALUES ('value1_kolom1', 'value2_kolom2', 'value3_kolom3');
  ```

- ALTER TABLE digunakan untuk menambah atau menghapus kolom dari tabel.

  Syntax:
  ```sql
  ALTER TABLE nama_tabel ADD nama_kolom tipe_data;
  ALTER TABLE nama_tabel DROP COLUMN nama_kolom;
  ```
- DROP TABLE digunakan untuk menghapus seluruh tabel data, lengkap dengan tipe data dan parameter yang telah ditentukan sebelumnya.

  Syntax:
  ```sql
  DROP TABLE tbl_name;
  ```
- CREATE INDEX digunakan untuk membuat index baru pada tabel.

  Syntax:
  ```sql
  CREATE INDEX nama_indeks
  ON nama_tabel (nama_kolom)
  ```
- DROP INDEX dipakai untuk menghapus seluruh index data yang telah Anda pilih.

  Syntax:
  ```sql
  DROP INDEX nama_indeks ON nama_tabel
  ```
  
  
  ## 2. Rancang solusi digital dari satu permasalahan yang ada di sekitar Anda.
```sql
CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `useraname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no.hp` int(15) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `foto barang` varchar(255) NOT NULL,
  `harga` int(15) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal pembelian` int(8) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(30) NOT NULL,
  `totalpembelian` int(30) NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4

CREATE TABLE `penyerahan` (
  `id_penyerahan` int(11) NOT NULL,
  `id_pembelian` INT(11) NOT NULL,
  `tanggal` int(8) NOT NULL,
  `metode` Varchar(7)NOT NULL,
  `statuspembayaran`varchar(7) NOT NULL,
  PRIMARY KEY (`id_penyerahan`)
)
