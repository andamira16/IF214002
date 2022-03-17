# Ide Solusi: Sistem Grosir Online


## Deskripsi
Aplikasi ini dibuat untuk memudahkan para konsumen dalam berbelanja sehingga tidak lagi harus berdesakan dan berkerumun. Aplikasi ini memberikan fitur pada konsumen berupa:
- Customer login
- Shoping cart
- Search Engine/mesin pencarian produk
- Fitur jemput atau antar barang(jika antar ada tambahan ongkos kirim)
## Entitas dan Atribut
### Pelanggan
- \* ID pelanggan
- Nama pelanggan
- Username
- Password pelanggan
- Alamat Pelanggan 
- No.HP
### Barang
- \* ID barang
- Nama barang 
- Harga barang
- Foto Barang
### Admin (untuk mengelola data)
- \* ID Admin
- Nama admin
- Username admin
- Password admin
### Pembelian
- \* ID pembelian
- Tanggal pembelian
- Total pembelian
### Metode Penyerahan barang
- \* ID penyerahan
- metode penyerahan
- Status penyerahan

## Relationship
- Tiap Pelanggan wajib menginput data 1 dan hanya 1 pada Admin
- Tiap Admin boleh mensuplai 0 - banyak Barang
- Tiap Pelanggan boleh melihat 0 - banyak Barang
- Tiap Pelanggan boleh membeli 0 - banyak Barang
- Tiap Barang wajib diverifikasi data 1 - banyak ketika terjadi Pembelian
- Tiap Pembelian wajib diverifikasi data 1 - banyak ketika akan terjadi Penyerahan
- Tiap Pelanggan wajib membayar barang 1 - banyak pada saat Penyerahan
- Tiap Penyerahan wajib mengkonfirmasi 1 - banyak data yang terjual pada Admin
