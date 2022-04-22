
cREATE TABLE `pelanggan` (
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

