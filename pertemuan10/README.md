# TUGAS
1. Buat query untuk mencari penduduk berusia diatas 25 tahun yang berada di kabupaten 3204 dari data ini
```sql
SELECT id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, 
TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) AS usia_penduduk 
FROM penduduk 
WHERE TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) >= 25 AND kode_kabupaten = '3204';
```
![MODEL](https://github.com/andamira16/IF214002/blob/main/pertemuan10/Screenshot(11).jpeg?raw=true)

2. Nilai tambah, untuk yang menambahkan perintah-perintah MySQL lainnya
```sql
SELECT
  p.nama_lengkap,
  deskripsi
FROM penduduk p
INNER JOIN kode_kabupaten
ON p.kode_kabupaten
```
![MODEL](https://github.com/andamira16/IF214002/blob/main/pertemuan10/Screenshot(15).jpeg?raw=true)
