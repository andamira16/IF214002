## 1. Berikan contoh pemanfaatan Data historis
- tingkat pengannggguran di Kota Bandung dari tahun ke tahun
- penjualan cd terbaru blackpink
- jumlah penduduk yang meninggal dunia pada suatu daerah
- nilai mata uang





## 2.Rancang ERD untuk penyimpanan data karyawan dari sebuah perusahaan, lengkap dengan data historis gaji, data historis tempat tinggal, dan data historis jabatan. Selanjutnya, implementasikan ERD tersebut pada basis data relasional (MySQL / PostgreSQL / SQL Server / dll) menggunakan perintah

![Model](https://github.com/andamira16/IF214002/blob/main/pertemuan7/Screenshot(17).jpeg?raw=true)

Tabelkaryawan_ tbl(
   product_id INT NOT NULL AUTO_INCREMENT,
   product_name VARCHAR(100) NOT NULL,
   product_manufacturer VARCHAR(40) NOT NULL,
   submission_date DATE,
   PRIMARY KEY ( product_id )
);
