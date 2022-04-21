# UTS RAFI ANDAMIRA(1207050098)

## 1. Jelaskan apa keuntungan melakukan perancangan basis data terlebih dahulu(menggunakan ERD ataupun Class Diagram)!

### jawab

Membantu menganalisis suatu database dengan cara yang lebih cepat dan juga lebih murah. Mampu menjalankan relasi antar setiap data yang mempunyai keterkaitan dengan berdasarkan objek yang dihubungkan dengan suatu relasi khusus.

## 2. Jelaskan bagaimana cara mentransformasikan proses bisnis sebuah organisasi menjadi struktur data di basis data !

### jawab

1. Identifikasi Entitas

Langkah pertama yang harus anda lakukan adalah mengidentifikasi semua jenis entitas yang akan anda gunakan. Anda dapat memulai dengan menggambar persegi panjang yang didalamnya terdapat deskripsi singkat terkait nama entitas tersebut.  

2. Deskripsikan Relasi Entitas

Selanjutnya, anda dapat mulai mengidentifikasi beberapa entitas yang memiliki relasi yang sama dihubungkan dengan menggunakan garis. Lakukan langkah tersebut sesuai dengan kebutuhan database proyek yang akan dikembangkan. Anda dapat menambahkan simbol berbentuk diamond untuk mendeskripsikan hubungan tersebut.

3. Menambahkan Atribut

Berikutnya, anda dapat menambahkan beberapa atribut yang sudah anda pelajari pada materi sebelumnya. Pastikan juga untuk membuat atribut key pada setiap entitas dengan menggambarkan dalam bentuk oval.

4. Melengkapi Diagram

Dan langkah yang terakhir adalah dengan melengkapi diagram ER tersebut sesuai dengan kebutuhan sistem yang akan anda buat. Teliti kembali untuk setiap komponen jika ada simbol yang salah, atau komponen atribut yang tertukar. Anda juga dapat menggunakan warna yang lebih terang untuk menandai setiap atribut yang dianggap penting.

## Rancang solusi digital dari satu permasalahan yang ada di sekitar Anda. 

## A. Deskripsikan solusi digital tersebut dalam satu paragraf
	
Permasalahan yang saya dapatkan adalah melihat betapa sempit dan berdempetannya orang orang yang membeli/ berbelanja di sebuah Grosir entah itu membeli kebutuhan sendiri atau untuk usaha. dengan melihat hal tersebut, saya akhirnya memutuskan untuk membuat sebuah aplikasi online yang benama Grosir online. Aplikasi ini bertujuan untuk untuk memudahkan para konsumen dalam berbelanja sehingga tidak lagi harus berdesakan dan berkerumun. Ditambah lagi, sekarang virus Covid-19 sedang berkembang dengan pesat dan berbahaya bagi lansia dan balita.

## B. Buat list fitur-fitur yang ada pada solusi digital tersebut

- Customer login
- Shoping cart
- Search Engine/mesin pencarian produk
- Fitur jemput atau antar barang(jika antar ada tambahan ongkos kirim)

## C. Buat ERD notasi Chen dari struktur data yang mewakili fitur2 di solusi digital tersebut

![MODEL](https://github.com/andamira16/IF214002/raw/main/pertemuan2/Screenshot%20(214).png?raw=true)

## D. Buat ERD notasi Crow Foot dari struktur data logical yang mewakili fitur2 di solusi digital tersebut, lengkap dengan keys, tipe data, dan normalisasi hingga bentuk ke 3
![MODEL](https://github.com/andamira16/IF214002/raw/main/pertemuan3/Screenshot(13).jpeg?raw=true)
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
- ID pelanggan
- ID barang
- Tanggal pembelian
- jumlah
- harga barang
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

## Normalisasi
### Pelanggan
|🔑ID Pelanggan|nama|Username|password|alamat|🔑no.HP|
|---|---|---|---|---|---|
|1|Rafi Andamira|andamira|anjay123|Ujungberung|085793851606|
|2|Nadia|nadiacantik|nadiamanis|Ujungberung|081313567357|

### Barang
|🔑ID Barang|nama barang|Foto barang|Harga Barang|
|---|---|---|---|
|1|MIE Ayam Bawang|URL|3000|
|2|Rokok Sampoerna 1 batang|URL|2000|

### Admin
|🔑ID Admin|nama|Username|password|
|---|---|---|---|
|1|Rifky|Admingalak|12345enam|
|2|Nughraha|Iyobrigez|xtcpengecut|

### Pembelian
|🔑ID Pembelian|ID Pelanggan|ID Barang|tanggal pembelian|Jumlah|harga|total pembelian|
|---|---|---|---|---|---|---|
|1|2|2|12-02-2022|2|Rp.2000|Rp.4000|
|2|1|1|12-02-2022|3|Rp.3000|Rp.9000|

### Penyerahan
|🔑ID penyerahan|ID pembelian|tanggal|Metode|Status Pembayaran|
|---|---|---|---|---|
|1|1|12-02-2022|Diantar|Pending|
|2|2|12-02-2022|Diambil|Lunas|





