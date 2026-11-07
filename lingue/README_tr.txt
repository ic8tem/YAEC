YAEC – Yet Another EME Calc 1.3
hazırlayan: Costantino IC8TEM
==========================================

50–432 MHz arasında EME (Dünya–Ay–Dünya) çalışan radyo amatörleri için hesaplayıcı: kendi antenizin sınırlarına göre Ay'ın konumu ve yönlendirme pencereleri, en iyi Dgrd'li günlerin planlanması, EME bağlantı bütçesi, gökyüzü ve Güneş gürültüsü, koaksiyel kablo veritabanı ve EME kılavuzları. Windows, Linux ve macOS için, 26 dilde.
Kaynak kod ve indirme: https://github.com/ic8tem/YAEC/releases

KURULUM – WINDOWS
1. YAEC-1.3-Setup.exe dosyasını Releases sayfasından indirip çalıştırın. YAEC'i yönetici hakları olmadan Belgeler\YAEC klasörüne kurar; Başlat menüsünde ve masaüstünde kısayollar ile bir kaldırma programı oluşturur.
2. SmartScreen uyarısı çıkarsa: "Ek bilgi" → "Yine de çalıştır".
3. Kurulum olmadan: YAEC-1.3-windows-portable.zip dosyasını yazma izniniz olan bir klasöre çıkarın ve YAEC.exe'yi başlatın.

KURULUM – LINUX
YAEC, özgür .NET çalışma ortamı olan Mono ile çalışır.
- Debian, Ubuntu, Mint: yaec_1.3_all.deb dosyasını indirin ve şu komutla kurun
      sudo apt install ./yaec_1.3_all.deb
  (Mono da kurulur). YAEC uygulamalar menüsünden veya "yaec" komutuyla başlatılır.
- Diğer dağıtımlar: Mono'yu kurun (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), YAEC-1.3-linux.tar.gz dosyasını çıkarın ve ./install.sh'yi çalıştırın.

KURULUM – macOS (deneysel)
1. macOS için Mono (https://www.mono-project.com/download/stable/) ve XQuartz (https://www.xquartz.org) kurun.
2. YAEC-1.3-macOS.dmg dosyasını açın ve YAEC'i Uygulamalar klasörüne sürükleyin. İlk seferde: YAEC'e sağ tıklayın → Aç (uygulama Apple tarafından imzalanmamıştır).

İNDİRİLEN DOSYALARIN DOĞRULANMASI (SHA-256)
Her release, her paketin SHA-256 özetini içeren SHA256SUMS.txt dosyasını barındırır. Bunu indirdiğiniz dosyanın özetiyle karşılaştırın:
- Windows (PowerShell): Get-FileHash .\YAEC-1.3-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
İki değer farklıysa dosyayı kurmayın: yeniden indirin.

DİL VE VERİLER
Dil, ana pencerenin üst kısmından seçilir. Programın tüm verileri "data" klasöründedir: Windows'ta YAEC.exe'nin yanında, Linux'ta ~/.local/share/YAEC/data içinde, macOS'ta ~/Library/Application Support/YAEC/data içinde.

LİSANS
YAEC ücretsizdir; lisans metni LICENSE_tr.txt dosyasında ve programın LİSANS sekmesinde bulunur. Şüphe durumunda İtalyanca sürüm (LICENZA.txt) geçerlidir.

İLETİŞİM
Hatalar, daha iyi veriler, çeviriler: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

SÜRÜM GEÇMİŞİ
1.0'dan önceki sürümlere beta denir.
- 1.3 - Dokuz yeni dil: Felemenkçe, Estonca, Letonca, Litvanca, İsveççe, Norveççe, İzlandaca, İbranice ve Urduca (toplam 26), kılavuzlarıyla birlikte; lisans ve README tüm dillerde, lisans yükleyicinin dilinde; GRAVES düğmesi; EME bütçesinde TX konektörleri ve RX konektörleri (NJ9R'nin önerisi); sol sütun ile EME bütçesi şeması arasında sürüklenebilir ayırıcı; Engellerimin keşfi penceresinde Gri örtü onay kutusu; FORMÜL HATA AYIKLAMA artık Hesapların kontrolü, ABOUT & CREDITS artık HAKKINDA VE KAYNAKLAR; kullanım kılavuzunun teknik bölümleri Bengalce, Arapça ve Türkçe; pastel şemalar düzeltildi; CALL3.TXT penceresi güncellemeden sonra kendiliğinden kapanıyor; iletişim kutusu düğmeleri arasındaki boşluk artırıldı.
- 1.2.1 - YAZARLA İLETİŞİM VE TEŞEKKÜRLER sayfası Linux ve macOS'ta yeniden doğru açılıyor; transverterler için yapılan atıf artık § 1.7.1'i gösteriyor.
- 1.2 - EME bütçesinde Benim EIRP, DX'in EIRP'si, yol kaybı ve iki yönde S/N (Güneş dahil) göstergeleri; Word belgesindeki formüller tek boyutta, kenar boşlukları içinde; tüm şemalarda dolu düğmeler ve yuvarlak kenarlı düz açılır listeler; sekiz pastel renk şeması; yan yana oklu değer kutuları; en iyi üç gün tarih sırasına göre; bulanık gökyüzü arka planı; FORMÜL HATA AYIKLAMA çevrildi; EME ÜZERİNE TEORİ VE ÖNERİLER kılavuzuna Relu NJ9R'nin önerileri (GRAVES, yönlendirme, konektörler, anten kazancı, JT65B ve MAP65, polarizasyon rölesi), ilk alım ve internet sohbetleri üzerine yeni bölümler ve önsözde VE7BQH tabloları; NJ9R'ye teşekkür, IK1UWL'nin anısı ve makale, donanım ve yazılım yazarlarına teşekkür, eserleri hakkında ipucu balonuyla.
- 1.1 - Canlı konum ve +- 24h (eski Takip) geçmişte ve gelecekte de: gün takvimden, saat kırmızı çizgiyi sürükleyerek, frekans Yankı ve frekanslar kutusunda; W7GJ ve WSJT-X Improved'dan indirilip birleştirilen CALL3.TXT ile DX çağrı işareti kutusu, önerilen lokatör ve WSJT-X klasörüne kopyalama; Mesafe ve Dgrd sıralama sütunu olmadan, üst üste çizilen dik açıklık, grafikle aynı renkte satırlar ve isteğe bağlı yeşil kullanılabilir saatlerle; programın stilinde onay kutuları; açılır listelerde çapa göre, tabloda ada, üreticiye ve türe göre sıralanan kablolar, çevrilmiş kaynaklarla; yalnızca 60 s modlarıyla (JT65, Q65-60A, Q65-60B, Q65-60C) EME bütçesi ve metinlere uyum sağlayan tesis şeması; tüm ekranları gözden geçiren KULLANIM KILAVUZU; yazarın önsözü, 1'den başlayan numaralandırma ve güneş gürültüsü formülleriyle EME ÜZERİNE TEORİ VE ÖNERİLER; Linux ve macOS'ta sistem sertifikalarıyla HTTPS.
- 1.0.1 - GitHub sürüm sayfasında artık tüm paketlerin SHA-256 parmak izlerini içeren SHA256SUMS.txt dosyası var: indirilen dosyaların orijinal olduğunu doğrulamak için kullanılır (talimatlar README'de).
- 1.0 - İlk kararlı sürüm, Windows, Linux ve macOS için (Linux ve macOS'ta Mono ile; veriler ~/.local/share/YAEC/data veya ~/Library/Application Support/YAEC/data içinde); Windows için kurulum programı ile Linux ve macOS paketleri GitHub'da oluşturuldu; önceki sürümlerin adı beta. Yeni Dünya üzerinde Ay sekmesi (tüm dünyadaki karaların üzerinde Ay'ın yükselişi, tek tıklamayla DX istasyonu, antenninizin durumu); kılavuz AYRINTILI KULLANIM KILAVUZU ve EME ÜZERİNE TEORİ VE ÖNERİLER olarak ikiye ayrıldı; Yardım ve araçlar ile Credits and thanks grupları; Hesaplamaları Excel'e aktar sekmesi; artık mod payı yok: 2500 Hz'de S/N, referans olarak tipik eşikle birlikte, JT65'in sınırları ise kılavuzda; kılavuzda ayrıca TX1 – TX6 için Q65 tablosu, Faraday dönmesi ve SM5BSZ'nin makalesinin özeti; kayba göre sıralanabilen kablo tablosu, Messi & Paoloni, SSB (deniz ortamları için SeaTex, Aircom Premium), Belden ve Tasker'ın yeni kablolarıyla; birimli kutularda artık kalıntı yazı yok.
- beta 30 - Mesafe ve Dgrd grafiğinin altında Ay'ın dik açıklık eğrisi; kuzey ve güney en yüksek değerleri ve yarımkürenize elverişli bölge gösterilir; kılavuza dik açıklık üzerine yeni paragraf (aylık döngü, en yüksek yükseliş ve ufuk üstündeki saatler, yarımküreler arası bağlantılar, 18,6 yıllık döngü, gürültü); I2FAK'ın Yay takımyıldızı verileri Kuzey İtalya ve 5° üzeri yükseliş için netleştirildi.
- beta 29 - Kılavuz 17 dilin tamamına eksiksiz çevrildi; 3.4, 3.5, 3.5.1 ve 3.6 bölümlerinin formülleri Denklem Düzenleyicisi biçiminde; TX/RX sıralayıcı üzerine yeni 3.7.3 bölümü (IK1UWL); içindekiler, sayfa numaraları ve Word formülleriyle kılavuz için "Salva in Word (.docx)" düğmesi; içindekiler ile metin arasındaki ayırıcı %25'te; Dpol 24 saat içinde 60°'yi aşınca uyarı (kaynak: Franco I2FAK ile video röportajlar).
- beta 28d - beta 28c'nin açılışta kapanması düzeltildi (birimli kutular); beklenmeyen hatalar bir iletide gösterilir ve data\errori.txt dosyasına yazılır; ana ekranın DGRD kutusunda grafiğin en küçük ve en büyük değeri ile şimdiki değer.
- beta 28c - 6 saniyede dolan çubuklu açılış ekranı; Ay, gökkuşağı gökyüzü ve teşekkürlerle YAZARIN İLETİŞİM BİLGİLERİ VE TEŞEKKÜRLER; hap biçimli düğmeler ve yuvarlatılmış açılır listeler; taslaktaki gibi EME bütçesi (istasyon kartları, göstergeler, çizilmiş tablo, yazı boyutuna uyan istasyon şeması, kutuların içinde birimler, transverter listesi); kartlar, canlı etiketler, kilitler ve yeni Sütunlar penceresiyle Ay konumu; Learmonth (BoM) kaynağı ve 100 – 20 000 MHz eksenleriyle güneş gürültüsü; hap filtreleri, çizilmiş tablo ve 1 – 20 dB grafikle KOAKSİYEL KABLOLAR.
- beta 28b - Kılavuz: «Sekmeler» bölümü kaldırıldı, bölümler ve tüm atıflar yeniden numaralandı; MNR, T(f), Dgrd ve EME Bütçesi formülleri denklem düzenleyici stilinde; başlıklar, yan yana tablolar, çubuklar, vurgulu satırlar, renkler ve örnek lokatör taslaklardaki gibi; ön yükselteçte IC-746PRO (ARRL) ve FT-897 (RadCom) testleri; transverterde büyük grafik ve 25 dB'de Kuhne TR 144 H +40; teşekkürler ABOUT & CREDITS sekmesinden «Kaynaklar, veriler ve teşekkürler» bölümüne taşındı; lokatör yokken Engellerimin keşfi haritası JJ00AA'ya ortalanır.
- beta 28a - Kapatma penceresinde Evet ve Hayır düğmeleri her zaman görünür; Gök kubbede sınır sarı çizgisi daha kalın; büyütülmüş yazıda metinler artık üst üste binmez; sekiz yeni kablo (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) ve programın stilinde kablo ipuçları; taslaktaki gibi satır ve sözcük aralıklı lisans; YAZARLA İLETİŞİM VE TEŞEKKÜRLER sekmesi; Engellerimin keşfinde çemberin dışına tıklayarak yeni lokatör seçme; dil, yazı tipi ve yazı boyutu programı yeniden başlatmadan değişir.
- beta 27 - bantlar yalnızca 432 MHz'e kadar; ARI Valle del Liri şubesinin logosu ve himayesiyle açılış ekranı; kapanış penceresinde teşekkür satırı; Bengalce, Arapça ve Türkçe diller (17 dil); dört renkli kartlı ana ekran, HESAPLARA GİT ve GÖK KUBBESİNE GİT, 14 karaktere kadar lokatör, yazı tipi seçimi ve koyu ipuçları; Engellerimin keşfi'nde gri opaklığı ve tonu; Mesafe ve Dgrd'de vurgulanan gün; Ay konumunda Sütunlar düğmesi; TX/RX düzeneği şemalı EME Bütçesi; kaynaklar, göstergeler ve spektrumlu Güneş gürültüsü; Word tarzında FORMÜL HATA AYIKLAMA ve .docx olarak kaydetme; yeni sekmeler KOAKSİYEL KABLOLAR, YAZARLA İLETİŞİM ve LİSANS; program içinde kılavuz (AYRINTILI KULLANIM KILAVUZU).
- beta 26 - Yeni iki düzeyli sekme seçimi (gruplar ve sekmeler); Siyah renk düzeni ve mavi tonlarda Gece düzeni; iki Dgrd eğrisi için düzenlenebilir renk ve kalınlık ve Güneş'in Ay'a yakın olduğu günler; iki istasyon için olası kutup başlığı (PCA) ve kutup ışığı soğurması uyarıları; Yönlendirme haritasında bulanıklık kutusu; Gök kubbesinde sınırlar dışında gri çapraz çizgiler ve artık çakışmayan etiketler; yeni FORMÜL HATA AYIKLAMA sekmesi; Ay simgesi; 14 dilin tümünde PDF kılavuzlar.
- beta 25 - Mesafe ve Dgrd sekmesi yenilendi: en iyi üç gün, Ay evreli günler takvimi, Dgrd'li (sıfır altta) ve ortalama uzaklık bindirilmiş grafik, yeni Ay ve dolunay, kısa sıralama; hava fotoğrafı ya da topografik harita, Ay, yol, doğuş ve batış ve fareyle taşınabilir anten sınırlarıyla yeni Yönlendirme haritası sekmesi.
- beta 24 - Gök kubbesi etiketleri iki kat büyük; Rusça, Ukraynaca ve Afrikaanca diller; compila.bat artık PDF kılavuzları oluşturmuyor.
- beta 23 - Yeni ana ekran: UTC saati, yerel saat ve DX yerel saati, geri sayımlı durum bandı, anten sınırlı azimut pusulası ve yükseklik yayı, doğuş ve batışlı Ay evresi, Dgrd ve S/N çubukları, sonraki 24 saat çubuğu; tüm sekmelerde gece teması; Gök kubbesinde dış çizgili etiketlerle üç renk ölçeği.
- beta 22 - Tüm veriler yürütülebilir dosyanın yanındaki data alt klasöründe (AppData'dan ve program klasöründen taşındı), açılışta denetlenir ve yeniden indirilir; İtalyanca, İngilizce, Fransızca, Almanca, İspanyolca ve Portekizce ekran görüntülü PDF kılavuzlar; kutular ve BANT SEÇİMİ pencerenin sağ üstünde, S/N yeniden sağ altta.
- beta 21 - Ana ekran: AYRINTILI HESAPLAR kutusu, YEREL AZİMUT ve YÜKSEKLİK, başlığın yanında tarih, BANT SEÇİMİ altında S/N kutusu; tüm program için yazı tipi seçimi. Yeni 70 MHz ve 222 MHz bantları.
- beta 20 - Lokatör 10 karakterliyse yer yüksekliği web'den otomatik alınır (Open Topo Data, Open-Meteo).
- beta 19 - Kullanıcının çağrı işaretli başlık; varsayılan lokatör ya da çağrı işareti yok; ayarlar program klasöründe; yeni sekme sırası; tüm parametreler, MNR ve CFOM ile TALİMATLAR; deneysel-EXCEL sekmesi; LoTW'den günlük indirme; ABOUT & CREDITS; Hintçe, Korece ve Endonezce diller.
- beta 18 - EME bütçesi: 3000 Hz'e kadar bant genişliği, kazançların yanında gürültü faktörleri, kazancı 0 olan transverter hesap dışı, anten sıcaklığı Tant (VE7BQH tabloları); Takip sekmesinde genel ayarlar; ana ekranın arka planında bulanık büyüyen Ay.
- beta 17 - Takip'te "AYRINTILI HESAPLAR" kutusu (Dpol'den itibaren sütunlar, EME bütçesinin ara satırları, Güneş gürültüsü sekmesi); ana ekranda tahmini S/N; 50 MHz'den 122 GHz'e bantlarla "BANT SEÇİMİ" düğmesi.
- beta 14 - Yeni ad YAEC - Yet Another EME Calc; 8 dilde kullanıcı arayüzü (İngilizce, İtalyanca, Almanca, Fransızca, İspanyolca, Portekizce, Çince, Japonca), açılış dili İngilizce; pencere başlığında çağrı işareti.
- beta 13 - CS0051 derleme hatasının düzeltilmesi (Friis işlevinin erişilebilirliği).
- beta 12 - Telsizin gürültü faktörü, kullanıcının seçtiği bant genişliğiyle (S/N hesabındakiyle aynı) MDS'sinden çıkarılır.
- beta 11 - Ana Takip ekranı yeniden tasarlandı (benim ve DX lokatörü, frekans, tarih ve saatler, benim ve DX azimut ve yüksekliği, diğer yararlı veriler); lokatör ve frekans tüm sekmelere otomatik kopyalanır; Friis formülüyle alıcı gürültü faktörü; 61 güne kadar Mesafe ve Dgrd; genel ayarlarda çağrı işareti; talimatlarda ALC önerileri.
- beta 10 - Takip sekmesi; 000'dan 999'a kHz; haftanın günü; bütçede bant genişliği ve Güneşli S/N; BETA yer kazancı; transverter-telsiz ara kablo kaybı; koyu tema ve yazı tipleri; yeni Ay'lı bir aylık Dgrd; LoTW yeşil; TALİMATLAR sekmesi; açılış penceresi ve çıkış onayı.
- beta 9 - Düz ufuklu ve maviden kırmızıya gürültü renkli azimut/yükseklik Gök kubbesi; Mesafe ve Dgrd sekmesi; ABOUT sekmesi.
- beta 6 - Maidenhead ızgaralı WWL haritası ve ADIF sekmesi.
- beta 5 - Durum sütunları renkle değiştirildi; "hazırlayan: Costantino IC8TEM" başlığı; CFOM frekansı için kHz açılır listesi.
- beta 4 - Konumdan çıkarılan DX yerel saati; gün cinsinden süre; sütun ipuçları; Doppler ve CFOM frekansları; Gök kubbesi sekmesi.
- beta 3 - Bütçede tahmini S/N; web'den SFU verileri ve RSTN istasyonu seçimiyle Güneş gürültüsü sekmesi.
- beta 2 - EME bütçesi sekmesi: EIRP, yol kaybı, alınan sinyal ve MDS üzerindeki pay.
- beta 1 - İkinci istasyon (DX), ortak pencereler, WSJT-X'teki gibi Dpol, MNR, Tsky ve Dgrd.
