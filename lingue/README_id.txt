YAEC – Yet Another EME Calc 1.2.1
oleh Costantino IC8TEM
==========================================

Kalkulator untuk radio amatir yang bekerja di EME (Bumi–Bulan–Bumi) dari 50 hingga 432 MHz: posisi Bulan dan jendela pengarahan sesuai batas antena Anda sendiri, perencanaan hari dengan Dgrd terbaik, anggaran link EME, derau langit dan Matahari, basis data kabel koaksial, serta manual tentang EME. Untuk Windows, Linux, dan macOS, dalam 26 bahasa.
Kode sumber dan unduhan: https://github.com/ic8tem/YAEC/releases

INSTALASI – WINDOWS
1. Unduh YAEC-1.2.1-Setup.exe dari halaman Releases lalu jalankan. Program ini memasang YAEC di Dokumen\YAEC, tanpa hak administrator, dengan pintasan di menu Start dan di desktop, serta program pencopot instalasi.
2. Jika muncul peringatan SmartScreen: "Info selengkapnya" → "Tetap jalankan".
3. Tanpa instalasi: ekstrak YAEC-1.2.1-windows-portable.zip ke folder yang dapat Anda tulisi, lalu jalankan YAEC.exe.

INSTALASI – LINUX
YAEC berjalan dengan Mono, runtime .NET yang bebas.
- Debian, Ubuntu, Mint: unduh yaec_1.2.1_all.deb dan pasang dengan
      sudo apt install ./yaec_1.2.1_all.deb
  (Mono juga ikut terpasang). YAEC dijalankan dari menu aplikasi atau dengan perintah "yaec".
- Distribusi lain: pasang Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), ekstrak YAEC-1.2.1-linux.tar.gz lalu jalankan ./install.sh.

INSTALASI – macOS (eksperimental)
1. Pasang Mono untuk macOS (https://www.mono-project.com/download/stable/) dan XQuartz (https://www.xquartz.org).
2. Buka YAEC-1.2.1-macOS.dmg dan seret YAEC ke Aplikasi. Pertama kali: klik kanan YAEC → Buka (aplikasi ini tidak ditandatangani oleh Apple).

MEMERIKSA FILE YANG DIUNDUH (SHA-256)
Setiap release berisi SHA256SUMS.txt dengan hash SHA-256 setiap paket. Bandingkan dengan hash file yang Anda unduh:
- Windows (PowerShell): Get-FileHash .\YAEC-1.2.1-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Jika kedua nilai berbeda, jangan pasang file tersebut: unduh ulang.

BAHASA DAN DATA
Bahasa dipilih di bagian atas jendela utama. Semua data program disimpan di folder "data": di Windows di samping YAEC.exe, di Linux di ~/.local/share/YAEC/data, di macOS di ~/Library/Application Support/YAEC/data.

LISENSI
YAEC gratis; teks lisensinya ada di file LICENSE_id.txt dan di tab LISENSI pada program. Jika ada keraguan, versi bahasa Italia (LICENZA.txt) yang berlaku.

KONTAK
Kesalahan, data yang lebih baik, terjemahan: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

RIWAYAT VERSI
Versi sebelum 1.0 disebut beta.
- 1.2.1 - Halaman KONTAK PENULIS DAN UCAPAN TERIMA KASIH kembali terbuka dengan benar di Linux dan macOS; rujukan untuk transverter kini menunjuk § 1.7.1.
- 1.2 - Anggaran EME dengan indikator EIRP saya, EIRP DX, rugi lintasan dan S/N dua arah (dengan Matahari); rumus dokumen Word dalam satu ukuran, di dalam margin; tombol penuh dan daftar tarik-turun datar bertepi bulat di semua skema; delapan skema warna pastel; kotak nilai dengan panah berdampingan; tiga hari terbaik menurut urutan tanggal; latar langit yang diburamkan; DEBUG RUMUS diterjemahkan; manual TEORI DAN TIPS EME dengan saran Relu NJ9R (GRAVES, pengarahan, konektor, penguatan antena, JT65B dan MAP65, relay polarisasi), bagian baru tentang penerimaan pertama dan chat internet, serta tabel VE7BQH di kata pengantar; ucapan terima kasih kepada NJ9R, kenangan untuk IK1UWL dan para penulis artikel, perangkat keras dan perangkat lunak, dengan tooltip tentang karya mereka.
- 1.1 - Posisi langsung dan +- 24h (dulu Pelacakan) juga untuk masa lalu dan masa depan: hari dari kalender dan jam dengan menyeret garis merah, frekuensi di kotak Gema dan frekuensi; kotak callsign DX dengan CALL3.TXT yang diunduh dari W7GJ dan WSJT-X Improved lalu digabung, lokator yang disarankan dan salinan ke folder WSJT-X; Jarak dan Dgrd tanpa peringkat, dengan deklinasi ditumpangkan, baris berwarna seperti grafik dan jam berguna hijau opsional; kotak centang bergaya program; kabel diurutkan menurut diameter di daftar pilihan serta menurut nama, pabrikan dan tipe di tabel, dengan sumber yang diterjemahkan; Anggaran EME hanya dengan mode 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) dan skema instalasi yang menyesuaikan teks; MANUAL PENGGUNAAN yang meninjau semua layar; TEORI DAN TIPS EME dengan kata pengantar penulis, penomoran dari 1 dan rumus derau matahari; HTTPS di Linux dan macOS dengan sertifikat sistem.
- 1.0.1 - Halaman rilis di GitHub kini memuat berkas SHA256SUMS.txt berisi sidik SHA-256 semua paket: gunakan untuk memastikan berkas yang diunduh adalah yang asli (petunjuk di README).
- 1.0 - Versi stabil pertama, untuk Windows, Linux, dan macOS (Linux dan macOS dengan Mono; data di ~/.local/share/YAEC/data atau di ~/Library/Application Support/YAEC/data); penginstal untuk Windows serta paket untuk Linux dan macOS dibuat di GitHub; versi-versi sebelumnya disebut beta. Tab baru Bulan di atas dunia (elevasi Bulan di atas daratan seluruh dunia, stasiun DX dengan satu klik, status antena Anda); manual dibagi menjadi MANUAL PENGGUNAAN LENGKAP dan TEORI DAN TIPS EME; grup Bantuan dan alat serta Credits and thanks; tab Ekspor perhitungan ke Excel; tidak ada lagi margin mode: S/N dalam 2500 Hz dengan ambang tipikal sebagai acuan dan batas JT65 di manual; di manual juga tabel Q65 untuk TX1 – TX6, rotasi Faraday, dan ringkasan artikel SM5BSZ; tabel kabel dapat diurutkan menurut rugi, dengan kabel baru Messi & Paoloni, SSB (SeaTex untuk lingkungan laut, Aircom Premium), Belden, dan Tasker; kotak bersatuan tanpa sisa tulisan.
- beta 30 - Kurva deklinasi Bulan di bawah grafik Jarak dan Dgrd, dengan maksimum utara dan selatan serta area yang menguntungkan belahan bumi Anda; paragraf manual baru tentang deklinasi (siklus bulanan, elevasi maksimum dan jam di atas cakrawala, hubungan antarbelahan bumi, siklus 18,6 tahun, derau); data I2FAK tentang Sagitarius diperjelas untuk Italia utara dan di atas elevasi 5°.
- beta 29 - Manual diterjemahkan penuh ke 17 bahasa; rumus bagian 3.4, 3.5, 3.5.1, dan 3.6 bergaya Equation Editor; bagian baru 3.7.3 tentang sequencer TX/RX (IK1UWL); tombol "Salva in Word (.docx)" untuk manual dengan daftar isi, nomor halaman, dan rumus Word; pembatas antara indeks dan teks di 25 %; peringatan bila Dpol melebihi 60° dalam 24 jam (sumber: wawancara video Franco I2FAK).
- beta 28d - Perbaikan: beta 28c tertutup saat mulai (kotak dengan satuan); galat tak terduga ditampilkan dalam pesan dan ditulis ke data\errori.txt; kotak DGRD layar utama dengan nilai minimum, maksimum grafik dan nilai saat ini.
- beta 28c - Layar awal dengan bilah yang terisi dalam 6 detik; KONTAK PENULIS DAN UCAPAN TERIMA KASIH dengan Bulan, langit pelangi, dan ucapan terima kasih; tombol pil dan daftar membulat; Anggaran EME sesuai rancangan (kartu stasiun, indikator, tabel tergambar, skema yang menyesuaikan ukuran huruf, satuan di dalam kotak, daftar transverter); posisi Bulan dengan kartu, pil langsung, gembok, dan jendela Kolom baru; derau matahari dengan sumber Learmonth (BoM) dan sumbu 100 – 20 000 MHz; KABEL KOAKSIAL dengan filter pil, tabel tergambar, dan grafik 1 – 20 dB.
- beta 28b - Manual: bab «Tab» dihapus serta bab dan semua rujukan dinomori ulang; rumus MNR, T(f), Dgrd dan Anggaran EME bergaya penyunting persamaan; judul, tabel berdampingan, batang, baris yang disorot, warna dan lokator contoh seperti rancangan; preamplifier dengan uji IC-746PRO (ARRL) dan FT-897 (RadCom); transverter dengan grafik besar dan Kuhne TR 144 H +40 sebesar 25 dB; kredit dipindah dari tab ABOUT & CREDITS ke bab «Sumber, data dan kredit»; peta Survei rintanganku berpusat di JJ00AA jika belum ada lokator.
- beta 28a - Jendela penutup dengan tombol Ya dan Tidak yang selalu terlihat; garis kuning batas lebih tebal di Kubah langit; teks tidak lagi bertumpuk dengan huruf yang diperbesar; delapan kabel baru (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) dan balon keterangan kabel bergaya program; lisensi dengan spasi baris dan kata seperti rancangan; tab KONTAK PENULIS DAN UCAPAN TERIMA KASIH; klik di luar lingkaran Survei rintanganku untuk memilih lokator baru; bahasa, jenis huruf dan ukuran huruf berubah tanpa memulai ulang program.
- beta 27 - pita hanya hingga 432 MHz; layar pembuka dengan logo dan dukungan seksi ARI Valle del Liri; baris terima kasih di jendela penutupan; bahasa Bengali, Arab dan Turki (17 bahasa); layar utama dengan empat kartu berwarna, KE PERHITUNGAN dan KE KUBAH LANGIT, locator hingga 14 karakter, pilihan jenis huruf dan tooltip gelap; Pengintaian rintangan saya dengan opasitas dan nada abu-abu; hari yang disorot di Jarak dan Dgrd; tombol Kolom di Posisi Bulan; Anggaran EME dengan skema instalasi TX/RX; Derau matahari dengan sumber, indikator dan spektrum; DEBUG RUMUS bergaya Word dengan simpan .docx; tab baru KABEL KOAKSIAL, KONTAK PENULIS dan LISENSI; manual di dalam program (MANUAL PENGGUNAAN LENGKAP).
- beta 26 - Pemilihan tab baru dua tingkat (kelompok dan tab); skema warna Hitam dan skema Malam bernuansa biru; warna dan ketebalan kedua kurva Dgrd dapat diubah serta hari-hari dengan Matahari dekat Bulan; peringatan kemungkinan penyerapan kutub (PCA) dan aurora untuk kedua stasiun; kotak centang untuk pengaburan di Peta pengarahan; garis diagonal abu-abu di luar batas di Kubah langit dan tulisan yang tidak lagi bertumpuk; tab baru DEBUG RUMUS; ikon Bulan; manual PDF dalam ke-14 bahasa.
- beta 25 - Tab Jarak dan Dgrd diperbarui: tiga hari terbaik, kalender hari dengan fase Bulan, grafik Dgrd (nol di bawah) dengan jarak rata-rata ditumpangkan, bulan baru dan purnama, peringkat singkat; tab baru Peta pengarahan dengan foto udara atau peta topografi, Bulan, lintasan, terbit dan terbenam serta batas antena yang dapat digeser dengan tetikus.
- beta 24 - Tulisan Pandangan langit dua kali lebih besar; bahasa Rusia, Ukraina dan Afrikaans; compila.bat tidak lagi membuat manual PDF.
- beta 23 - Layar utama baru: waktu UTC, waktu lokal dan waktu lokal DX, pita status dengan hitung mundur, kompas azimut dan busur elevasi dengan batas antena, fase Bulan dengan terbit dan terbenam, bilah Dgrd dan S/N, bilah 24 jam ke depan; tema malam di semua tab; tiga skala warna di Pandangan langit dengan tulisan bertepi.
- beta 22 - Semua data di subfolder data di samping file program (dipindahkan dari AppData dan folder program), diperiksa dan diunduh ulang saat mulai; manual PDF dengan tangkapan layar dalam bahasa Italia, Inggris, Prancis, Jerman, Spanyol dan Portugis; kotak centang dan PILIHAN PITA di kanan atas jendela, S/N kembali di kanan bawah.
- beta 21 - Layar utama: kotak PERHITUNGAN MENDALAM, AZIMUT dan ELEVASI LOKAL, tanggal di samping judul, kotak S/N di bawah PILIHAN PITA; pilihan huruf untuk seluruh program. Pita baru 70 MHz dan 222 MHz.
- beta 20 - Ketinggian tanah diambil otomatis dari web (Open Topo Data, Open-Meteo) bila locator 10 karakter.
- beta 19 - Judul dengan tanda panggil pengguna; tanpa locator atau tanda panggil bawaan; pengaturan di folder program; urutan tab baru; PETUNJUK dengan semua parameter, MNR dan CFOM; tab eksperimental-EXCEL; unduh log dari LoTW; ABOUT & CREDITS; bahasa Hindi, Korea dan Indonesia.
- beta 18 - Anggaran EME: lebar pita sampai 3000 Hz, angka derau di samping penguatan, transverter tidak diperhitungkan bila penguatan 0, suhu antena Tant (tabel VE7BQH); pengaturan umum di tab Pelacakan; Bulan sabit buram di latar layar utama.
- beta 17 - Kotak "PERHITUNGAN MENDALAM" di Pelacakan (kolom mulai Dpol, baris antara Anggaran EME, tab Derau matahari); S/N perkiraan di layar utama; tombol "PILIHAN PITA" dengan pita dari 50 MHz sampai 122 GHz.
- beta 14 - Nama baru YAEC - Yet Another EME Calc; antarmuka dalam 8 bahasa (Inggris, Italia, Jerman, Prancis, Spanyol, Portugis, Tionghoa, Jepang) dengan bahasa Inggris sebagai bahasa awal; tanda panggil di judul jendela.
- beta 13 - Perbaikan galat kompilasi CS0051 (aksesibilitas fungsi Friis).
- beta 12 - Angka derau radio diperoleh dari MDS-nya dengan lebar pita pilihan pengguna (sama dengan perhitungan S/N).
- beta 11 - Layar utama Pelacakan dirombak (locator saya dan DX, frekuensi, tanggal dan jam, azimut dan elevasi saya dan DX, data berguna lainnya); locator dan frekuensi disalin otomatis ke semua tab; angka derau penerima dengan rumus Friis; Jarak dan Dgrd sampai 61 hari; tanda panggil di pengaturan umum; anjuran ALC di petunjuk.
- beta 10 - Tab Pelacakan; kHz 000 sampai 999; hari dalam seminggu; lebar pita dan S/N dengan Matahari di anggaran; BETA ground gain; rugi jumper transverter-radio; tema gelap dan huruf; Dgrd satu bulan dengan bulan baru; LoTW berwarna hijau; tab PETUNJUK; jendela pembuka dan konfirmasi keluar.
- beta 9 - Kubah langit dalam azimut/elevasi dengan cakrawala datar dan warna derau dari biru ke merah; tab Jarak dan Dgrd; tab ABOUT.
- beta 6 - Tab Peta WWL dan ADIF dengan kisi Maidenhead.
- beta 5 - Kolom status diganti warna; judul "oleh Costantino IC8TEM"; daftar kHz untuk frekuensi CFOM.
- beta 4 - Waktu lokal DX dari posisi; durasi dalam hari; keterangan kolom; frekuensi Doppler dan CFOM; tab Kubah langit.
- beta 3 - S/N perkiraan di anggaran; tab Derau matahari dengan data SFU dari web dan pilihan stasiun RSTN.
- beta 2 - Tab Anggaran EME: EIRP, rugi lintasan, sinyal terima dan margin di atas MDS.
- beta 1 - Stasiun kedua (DX), jendela bersama, Dpol, MNR, Tsky dan Dgrd seperti di WSJT-X.
