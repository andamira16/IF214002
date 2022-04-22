CREATE TABLE `penyerahan` (
  `id_penyerahan` int(11) NOT NULL,
  `id_pembelian` INT(11) NOT NULL,
  `tanggal` int(8) NOT NULL,
  `metode` Varchar(7)NOT NULL,
  `statuspembayaran`varchar(7) NOT NULL,
  PRIMARY KEY (`id_penyerahan`)
)