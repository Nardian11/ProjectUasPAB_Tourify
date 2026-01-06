import 'package:tourify/models/wisata.dart';

//1
 var wisataList = [
  Wisata(
    name: 'Danau Toba',
    location: 'Sumatra Utara',
    description: 'Danau vulkanik terbesar di dunia dengan panorama pegunungan dan Pulau Samosir di tengahnya.',
    latitude: 2.6845,
    longitude: 98.8756,
    category: 'danau',
    rating: 4.8,
    imageAsset: [
      'assets/images/DanauToba.jpeg',
    ],
  ),

  //2
  Wisata(
    name: 'Air Terjun Sipiso-piso',
    location: 'Sumatra Utara',
    description: 'Air terjun megah setinggi ±120 meter yang jatuh ke dasar kaldera Toba',
    latitude: 2.91639,
    longitude: 98.51972,
    category: 'airTerjun',
    rating: 4.7,
    imageAsset: [
      'assets/images/AirTerjunSipiso-piso.jpeg',
    ],
  ),

  //3
  Wisata(
    name: 'Bukit Lawang',
    location: 'Sumatra Utara',
    description: 'Pintu masuk ke hutan TN Gunung Leuser, terkenal dengan orangutan liar',
    latitude: 3.5552618,
    longitude: 98.1447804,
    category: 'hutan',
    rating: 4.6,
    imageAsset: [
      'assets/images/BukitLawang.jpeg',
    ],
  ),

  //4
  Wisata(
    name: 'Tangkahan',
    location: 'Sumatra Utara',
    description: 'Hutan tropis dengan sungai jernih dan konservasi gajah',
    latitude: 3.99,
    longitude: 98.13,
    category: 'hutan',
    rating: 4.5,
    imageAsset: [
      'assets/images/Tangkahan.jpeg',
    ],
  ),

  //5
  Wisata(
    name: 'Pulau Weh',
    location: 'Aceh',
    description: 'Surga diving dengan terumbu karang Alami dan pantai jernih',
    latitude: 5.8897,
    longitude: 95.3164,
    category: 'pulau',
    rating: 4.7,
    imageAsset: [
      'assets/images/PulauWeh.jpeg',
    ],
  ),

//6
  Wisata(
    name: 'Pantai Iboih',
    location: 'Aceh',
    description: 'Pantai tenang berair biru kehijauan, cocok untuk snorkeling',
    latitude: 5.8194,
    longitude: 95.2818,
    category: 'pantai',
    rating: 4.6,
    imageAsset: [
      'assets/images/PantaiIboih.jpeg',
    ],
  ),

  //7
  Wisata(
    name: 'Sabang',
    location: 'Aceh',
    description: 'Kota kepulauan dengan pantai karang dan spot sunset indah',
    latitude: 5.8897,
    longitude: 95.3164,
    category: 'pulau',
    rating: 4.7,
    imageAsset: [
      'assets/images/Sabang.jpeg',
    ],
  ),

  //8
  Wisata(
    name: 'Lembah Harau',
    location: 'Sumatra Barat',
    description: 'Tebing batu raksasa mengapit hamparan sawah dan air terjunh',
    latitude: -0.129068,
    longitude: 100.688051,
    category: 'bukit',
    rating: 4.8,
    imageAsset: [
      'assets/images/LembahHarau.jpeg',
    ],
  ),

  //9
  Wisata(
    name: 'Danau Maninjau',
    location: 'Sumatra Barat',
    description: 'Danau kaldera dengan rute kelok 44 yang ikonik',
    latitude: -0.3167,
    longitude: 100.1000,
    category: 'danau',
    rating: 4.6,
    imageAsset: [
      'assets/images/DanauManinjau.jpeg',
    ],
  ),

  //10
  Wisata(
    name: 'Ngarai Sianok',
    location: 'Sumatra Barat',
    description: 'Jurang hijau dengan tebing curam dan lembah berkelok',
    latitude: -0.493333,
    longitude: 100.338889,
    category: 'bukit',
    rating: 4.7,
    imageAsset: [
      'assets/images/NgaraiSianok.jpeg',
    ],
  ),

  //11
  Wisata(
    name: 'Kepulauan Mentawai',
    location: 'Sumatra Barat',
    description: 'Surga surfing dengan ombak kelas dunia',
    latitude: -2.1333, 
    longitude: 99.4833, 
    category: 'pulau',
    rating: 4.8,
    imageAsset: [
      'assets/images/KepulauanMentawai.jpeg',
    ],
  ),

  //12
  Wisata(
    name: 'Danau Singkarak',
    location: 'Sumatra Barat',
    description: 'Danau luas dengan pemandangan perbukitan',
    latitude: -0.6186,
    longitude: 100.5350,
    category: 'danau',
    rating: 4.5,
    imageAsset: [
      'assets/images/DanauSingkarak.jpeg',
    ],
  ),

  //13
  Wisata(
    name: 'Gunung Kerinci',
    location: 'Jambi',
    description: 'Gunung tertinggi di Sumatera dan terkenal untuk pendakian.',
    latitude: -1.69667,
    longitude: 101.26556,
    category: 'gunung',
    rating: 4.8,
    imageAsset: [
      'assets/images/GunungKerinci.jpeg',
    ],
  ),

//14
  Wisata(
    name: 'Taman Nasional Kerinci Seblat',
    location: 'Sumbar-Jambi',
    description: 'Habitat harimau Sumatra dan hutan hujan tropis.',
    latitude: -2.0, 
    longitude: 101.5,
    category: 'tamanNasional',
    rating: 4.6,
    imageAsset: [
      'assets/images/TamanNasionalKerinciSeblat.jpeg',
    ],
  ),

  //15
  Wisata(
    name: 'Pulau Belitung',
    location: 'Babel',
    description: 'Pantai putih dan batu granit besar yang eksotis',
    latitude: -2.8095,
    longitude: 107.8864,
    category: 'pulau',
    rating: 4.7,
    imageAsset: [
      'assets/images/PulauBelitung.jpeg',
    ],
  ),

  //16
  Wisata(
    name: 'Pantai Tanjung Tinggi',
    location: 'Belitung',
    description: 'Pantai film “Laskar Pelangi” dengan air jernih',
    latitude: -2.550556,
    longitude: 107.714444,
    category: 'pantai',
    rating: 4.8,
    imageAsset: [
      'assets/images/PantaiTanjungTinggi.jpeg',
    ],
  ),

  //17
  Wisata(
    name: 'Gunung Dempo',
    location: 'Sumsel',
    description: 'Gunung indah dengan perkebunan teh di lerengnya',
    latitude: -4.01583,
    longitude: 103.12833,
    category: 'gunung',
    rating: 4.6,
    imageAsset: [
      'assets/images/GunungDempo.jpeg',
    ],
  ),

  //18
  Wisata(
    name: 'Pagar Alam',
    location: 'Sumsel',
    description: 'Dataran tinggi dengan air terjun dan sawah bertingkat.',
    latitude: -4.14,
    longitude: 103.23,
    category: 'bukit',
    rating: 4.5,
    imageAsset: [
      'assets/images/PagarAlam.jpeg',
    ],
  ),

  //19
  Wisata(
    name: 'Way Kambas',
    location: 'Lampung',
    description: 'Taman nasional habitat gajah Sumatera.',
    latitude: -4.9167,
    longitude: 105.75,
    category: 'tamanNasional',
    rating: 4.6,
    imageAsset: [
      'assets/images/WayKambas.jpeg',
    ],
  ),

  //20
  Wisata(
    name: 'Teluk Kiluan',
    location: 'Lampung',
    description: 'Spot melihat lumba-lumba di laut lepas',
    latitude: -5.764329,
    longitude: 105.115601,
    category: 'pantai',
    rating: 4.5,
    imageAsset: [
      'assets/images/TelukKiluan.jpeg',
    ],
  ),

  //21
  Wisata(
    name: 'Gunung Bromo',
    location: 'Jatim',
    description: 'Gunung dengan sunrise terbaik dan lautan pasir luas.',
    latitude: -7.9448685,
    longitude: 112.9499272,
    category: 'gunung',
    rating: 4.8,
    imageAsset: [
      'assets/images/GunungBromo.jpeg',
    ],
  ),

  //22
  Wisata(
    name: 'Kawah Ijen',
    location: 'Jatim',
    description: 'Kawah belerang dengan fenomena blue fire langka.',
    latitude: -8.0583,
    longitude: 114.2417,
    category: 'gunung',
    rating: 4.8,
    imageAsset: [
      'assets/images/KawahIjen.jpeg',
    ],
  ),

  //23
  Wisata(
    name: 'Gunung Semeru',
    location: 'Jatim',
    description: 'Gunung tertinggi di Pulau Jawa dengan Danau Ranu Kumbolo.',
    latitude: -8.108,
    longitude: 112.922,
    category: 'gunung',
    rating: 4.9,
    imageAsset: [
      'assets/images/GunungSemeru.jpeg',
    ],
  ),

  //24
  Wisata(
    name: 'Pantai Klayar',
    location: 'Jatim',
    description: 'Pantai karang dengan semburan air Alami (seruling samudera).',
    latitude: -8.199,
    longitude: 111.038,
    category: 'pantai',
    rating: 4.5,
    imageAsset: [
      'assets/images/PantaiKlayar.jpeg',
    ],
  ),

  //25
  Wisata(
    name: 'Pantai Papuma',
    location: 'Jatim',
    description: 'Pantai pasir putih dengan batu karang besar.',
    latitude: -8.430833,
    longitude: 113.549667,
    category: 'pantai',
    rating: 4.6,
    imageAsset: [
      'assets/images/PantaiPapuma.jpeg',
    ],
  ),

  //26
  Wisata(
    name: 'Taman Nasional Baluran',
    location: 'Jatim',
    description: 'Africa van Java” dengan padang sabana',
    latitude: -7.8,
    longitude: 114.5,
    category: 'tamanNasional',
    rating: 4.7,
    imageAsset: [
      'assets/images/TamanNasionalBaluran.jpeg',
    ],
  ),

  //27
  Wisata(
    name: 'Green Canyon',
    location: 'Jabar',
    description: 'Sungai hijau di sela tebing batu, cocok untuk body rafting.',
    latitude: -7.7352,
    longitude: 108.4562,
    category: 'sungai',
    rating: 4.6,
    imageAsset: [
      'assets/images/GreenCanyon.jpeg',
    ],
  ),

  //28
  Wisata(
    name: 'Pantai Pangandaran',
    location: 'Jabar',
    description: 'Pantai terkenal dengan sunset dan hutan cagar Wisata.',
    latitude: -7.68,
    longitude: 108.65,
    category: 'pantai',
    rating: 4.5,
    imageAsset: [
      'assets/images/PantaiPangandaran.jpeg',
    ],
  ),

  //29
  Wisata(
    name: 'Gunung Tangkuban Perahu',
    location: 'Jabar',
    description: 'Gunung berapi dengan kawah besar mudah diakses.',
    latitude: -6.77,
    longitude: 107.60,
    category: 'gunung',
    rating: 4.4,
    imageAsset: [
      'assets/images/GunungTangkubanPerahu.jpeg',
    ],
  ),

  //30
  Wisata(
    name: 'Situ Patenggang',
    location: 'Jabar',
    description: 'Danau pegunungan dengan suasana dingin dan tenang.',
    latitude: -7.1687,
    longitude: 107.3592,
    category: 'danau',
    rating: 4.5,
    imageAsset: [
      'assets/images/SituPatenggang.jpeg',
    ],
  ),

  //31
  Wisata(
    name: 'Curug Cimahi',
    location: 'Jabar',
    description: 'Air terjun tinggi yang indah terutama mWisata hari (dihias lampu)',
    latitude: -6.79905,
    longitude: 107.577594,
    category: 'airTerjun',
    rating: 4.6,
    imageAsset: [
      'assets/images/CurugCimahi.jpeg',
    ],
  ),

  //32
  Wisata(
    name: 'Kawah Putih',
    location: 'Jabar',
    description: 'Kawah berair putih kehijauan di pegunungan Ciwidey',
    latitude: -7.166,
    longitude: 107.4,
    category: 'danau',
    rating: 4.7,
    imageAsset: [
      'assets/images/KawahPutih.jpeg',
    ],
  ),

  //33
  Wisata(
    name: 'Gunung Merbabu',
    location: 'Jateng',
    description: 'Jalur pendakian dengan padang savana.',
    latitude: -7.45,
    longitude: 110.4,
    category: 'gunung',
    rating: 4.8,
    imageAsset: [
      'assets/images/GunungMerbabu.jpeg',
    ],
  ),

  //34
  Wisata(
    name: 'Gunung Merapi',
    location: 'Jateng-DIY',
    description: 'Gunung aktif dengan museum dan tur lava.',
    latitude: -7.54,
    longitude: 110.446,
    category: 'gunung',
    rating: 4.7,
    imageAsset: [
      'assets/images/GunungMerapi.jpeg',
    ],
  ),

  //35
  Wisata(
    name: 'Karimunjawa',
    location: 'Jateng',
    description: 'Kepulauan dengan air jernih dan terumbu karang indah.',
    latitude: -5.8078,
    longitude: 110.1559,
    category: 'pulau',
    rating: 4.6,
    imageAsset: [
      'assets/images/Karimun.jpeg',
    ],
  ),

  //36
  Wisata(
    name: 'Dieng Plateau',
    location: 'Jateng',
    description: 'Dataran tinggi dengan kawah, danau warna, dan bukit teletubbies.',
    latitude: -7.21667,
    longitude: 109.9,
    category: 'bukit',
    rating: 4.7,
    imageAsset: [
      'assets/images/DiengPlateau',
    ],
  ),

  //37
  Wisata(
    name: 'Telaga Warna',
    location: 'Dieng',
    description: 'Danau yang berubah warna karena kandungan mineral.',
    latitude: -7.21364,
    longitude: 109.9167,
    category: 'danau',
    rating: 4.5,
    imageAsset: [
      'assets/images/TelagaWarna.jpeg',
    ],
  ),

  //38
  Wisata(
    name: 'Pantai Indrayanti',
    location: 'DIY',
    description: 'Pantai pasir putih bersih di Gunung Kidul.',
    latitude: -8.1333,
    longitude: 110.65,
    category: 'pantai',
    rating: 4.5,
    imageAsset: [
      'assets/images/PantaiIndrayanti.jpeg',
    ],
  ),

  //39
  Wisata(
    name: 'Goa Jomblang',
    location: 'DIY',
    description: 'Goa vertikal dengan “cahaya surga” Alami',
    latitude: -7.9360,
    longitude: 110.6385,
    category: 'goa',
    rating: 4.8,
    imageAsset: [
      'assets/images/GoaJomblang.jpeg',
    ],
  ),

  //40
  Wisata(
    name: 'Gunung Batur',
    location: 'Bali',
    description: 'Gunung sunrise favorit.',
    latitude: -8.2405556,
    longitude: 115.3769444,
    category: 'gunung',
    rating: 4.7,
    imageAsset: [
      'assets/images/GunungBatur.jpeg',
    ],
  ),

  //41
  Wisata(
    name: 'Danau Beratan Bedugul',
    location: 'Bali',
    description: 'Danau pegunungan dengan Pura Ulun Danu.',
    latitude: -0.849, 
    longitude: 115.148,
    category: 'danau',
    rating: 4.7,
    imageAsset: [
      'assets/images/DanauBeratanBedugul.jpeg',
    ],
  ),

  //42
  Wisata(
    name: 'Nusa Penida',
    location: 'Bali',
    description: 'Tebing Kelingking dan pantai biru dramatis.',
    latitude: -8.743118,
    longitude: 115.518884,
    category: 'pulau',
    rating: 4.8,
    imageAsset: [
      'assets/images/NusaPenida.jpeg',
    ],
  ),

  //43
  Wisata(
    name: 'Nusa Lembongan',
    location: 'Bali',
    description: 'Pulau kecil dengan jembatan kuning ikonik.',
    latitude: -8.6802,
    longitude: 115.4485,
    category: 'pulau',
    rating: 4.6,
    imageAsset: [
      'assets/images/NusaLembongan.jpeg',
    ],
  ),

  //44
  Wisata(
    name: 'Nusa Ceningan',
    location: 'Bali',
    description: 'Tebing laut dan Blue Lagoon.',
    latitude: -8.7000,
    longitude: 115.4500,
    category: 'pulau',
    rating: 4.6,
    imageAsset: [
      'assets/images/NusaCeningan.jpeg',
    ],
  ),

  //45
  Wisata(
    name: 'Pantai Kuta Lombok',
    location: 'NTB',
    description: 'Pantai biru tenang dengan pasir merica.',
    latitude: -8.7789,
    longitude: 116.2794,
    category: 'pantai',
    rating: 4.5,
    imageAsset: [
      'assets/images/PantaiKutaLombok.jpeg',
    ],
  ),

  //46
  Wisata(
    name: 'Bukit Merese',
    location: 'NTB',
    description: 'Bukit sunset terbaik di Lombok.',
    latitude: -8.9135,
    longitude: 116.3184,
    category: 'bukit',
    rating: 4.7,
    imageAsset: [
      'assets/images/BukitMerese.jpeg',
    ],
  ),

  //47
  Wisata(
    name: 'Gunung Rinjani',
    location: 'NTB',
    description: 'Gunung megah dengan danau Segara Anak.',
    latitude: -8.4000,
    longitude: 116.4667,
    category: 'gunung',
    rating: 4.9,
    imageAsset: [
      'assets/images/GunungRinjani.jpeg',
    ],
  ),

  //48
  Wisata(
    name: 'Gili Trawangan',
    location: 'NTB',
    description: 'Pulau wisata tanpa kendaraan bermotor.',
    latitude: -8.35,
    longitude: 116.03,
    category: 'pulau',
    rating: 4.7,
    imageAsset: [
      'assets/images/GiliTrawangan.jpeg',
    ],
  ),

  //49
  Wisata(
    name: 'Gili Meno',
    location: 'NTB',
    description: 'Pulau tenang dengan spot snorkeling patung bawah laut.',
    latitude: -8.2405556,
    longitude: 115.3769444,
    category: 'pulau',
    rating: 4.6,
    imageAsset: [
      'assets/images/GiliMeno.jpeg',
    ],
  ),

  //50
  Wisata(
    name: 'Gunung Batur' ,
    location: 'NTB',
    description: 'Gunung sunrise favorit.',
    latitude: -8.348611,
    longitude: 116.073611,
    category: 'gunung',
    rating: 4.7,
    imageAsset: [
      'assets/images/GunungBatur.jpeg',
    ],
  ),

  //51
  Wisata(
    name: 'Labuan Bajo',
    location: 'NTT',
    description: 'Kota gerbang menuju pulau-pulau indah.',
    latitude: -8.4907,
    longitude: 119.8851,
    category: 'pantai',
    rating: 4.7,
    imageAsset: [
      'assets/images/LabuanBajo.jpeg',
    ],
  ),

  //52
  Wisata(
    name: 'Pulau Komodo',
    location: 'NTT',
    description: 'Habitat komodo dengan savana dan pantai eksotis.',
    latitude: -8.55,
    longitude: 119.45,
    category: 'pulau',
    rating: 4.8,
    imageAsset: [
      'assets/images/PulauKomodo.jpeg',
    ],
  ),

  //53
  Wisata(
    name: 'Pink Beach',
    location: 'Komodo',
    description: 'Pasir berwarna merah muda Alami.',
    latitude: -8.601197,
    longitude: 119.5199311,
    category: 'pantai',
    rating: 4.8,
    imageAsset: [
      'assets/images/PinkBeach.jpeg',
    ],
  ),

  //54
  Wisata(
    name: 'Pulau Padar',
    location: 'NTT',
    description: 'Bukit ikonik berbentuk teluk bertiga.',
    latitude: -8.6477,
    longitude: 119.5733,
    category: 'bukit',
    rating: 4.9,
    imageAsset: [
      'assets/images/PulauPadar.jpeg',
    ],
  ),

  //55
  Wisata(
    name: 'Danau Kelimutu',
    location: 'NTT',
    description: 'Tiga danau kawah berbeda warna.',
    latitude: -8.776,
    longitude: 121.833,
    category: 'danau',
    rating: 4.7,
    imageAsset: [
      'assets/images/DanauKelimutu.jpeg',
    ],
  ),

  //56
  Wisata(
    name: 'Waerebo',
    location: 'NTT',
    description: 'Desa adat di puncak gunung dikelilingi kabut',
    latitude: -8.818889,
    longitude: 120.252222,
    category: 'desaAdat',
    rating: 4.8,
    imageAsset: [
      'assets/images/Waerebo.jpeg',
    ],
  ),

  //57
  Wisata(
    name: 'Pulau Alor',
    location: 'NTT',
    description: 'Spot diving kelas dunia.',
    latitude: -8.3,
    longitude: 124.5,
    category: 'pulau',
    rating: 4.6,
    imageAsset: [
      'assets/images/PulauAlor.jpeg',
    ],
  ),

  //58
  Wisata(
    name: 'Pantai Nembrala',
    location: 'NTT',
    description: 'Pantai surfing terkenal di Rote',
    latitude: -10.749500,
    longitude: 122.846000,
    category: 'pantai',
    rating: 4.5,
    imageAsset: [
      'assets/images/PantaiNembrala.jpeg',
    ],
  ),

  //59
  Wisata(
    name: 'Sumba – Bukit Wairinding ',
    location: 'NTT',
    description: 'Bukit savana luas yang indah saat sunrise.',
    latitude: -9.9833,
    longitude: 119.1667,
    category: 'bukit',
    rating: 4.7,
    imageAsset: [
      'assets/images/Sumba-BukitWairinding.jpeg',
    ],
  ),

  //60
  Wisata(
    name: 'Air Terjun Waikelo Sawah',
    location: 'Sumba',
    description: 'Air terjun tersembunyi dengan air jernih.',
    latitude: -8.4267,
    longitude: 119.3496,
    category: 'airTerjun',
    rating: 4.4,
    imageAsset: [
      'assets/images/AirTerjunWaikeloSawah.jpeg',
    ],
  ),

// =====================
// 61 – 70 KALIMANTAN
// =====================

//61
  Wisata(
    name: 'Danau Sentarum',
    location: 'Kalimantan Barat',
    description: 'Danau musiman yang berubah menjadi rawa luas di TN Sentarum.',
    latitude: 0.8436,
    longitude: 112.0736,
    category: 'danau',
    rating: 4.4,
    imageAsset: ['assets/images/DanauSentarum.jpeg'],
  ),

//62
  Wisata(
    name: 'Tanjung Puting',
    location: 'Kalimantan Tengah',
    description: 'Taman nasional habitat orangutan dengan wisata klotok.',
    latitude: -2.7500,
    longitude: 111.7500,
    category: 'tamanNasional',
    rating: 4.8,
    imageAsset: ['assets/images/TanjungPuting.jpeg'],
  ),

//63
  Wisata(
    name: 'Bukit Kelam',
    location: 'Kalimantan Barat',
    description: 'Salah satu batu monolit terbesar di dunia.',
    latitude: 0.0850,
    longitude: 111.4880,
    category: 'bukit',
    rating: 4.5,
    imageAsset: ['assets/images/BukitKelam.jpeg'],
  ),

//64
  Wisata(
    name: 'Pulau Derawan',
    location: 'Kalimantan Timur',
    description: 'Pulau tropis dengan pantai biru dan penyu hijau.',
    latitude: 2.2847,
    longitude: 118.2417,
    category: 'pulau',
    rating: 4.6,
    imageAsset: ['assets/images/PulauDerawan.jpeg'],
  ),

//65
  Wisata(
    name: 'Pulau Kakaban',
    location: 'Kalimantan Timur',
    description: 'Danau ubur-ubur tanpa sengat.',
    latitude: 2.1600,
    longitude: 118.5000,
    category: 'pulau',
    rating: 4.7,
    imageAsset: ['assets/images/PulauKakaban.jpeg'],
  ),

//66
  Wisata(
    name: 'Pulau Maratua',
    location: 'Kalimantan Timur',
    description: 'Pulau tropis dengan air laut sebening kaca.',
    latitude: 2.2867,
    longitude: 118.5656,
    category: 'pulau',
    rating: 4.6,
    imageAsset: ['assets/images/PulauMaratua.jpeg'],
  ),

//67
  Wisata(
    name: 'Pulau Sangalaki',
    location: 'Kalimantan Timur',
    description: 'Pulau konservasi pari manta.',
    latitude: 2.1247,
    longitude: 118.3747,
    category: 'pulau',
    rating: 4.6,
    imageAsset: ['assets/images/PulauSangalaki.jpeg'],
  ),

//68
  Wisata(
    name: 'Hutan Hujan Mahakam',
    location: 'Kalimantan Timur',
    description: 'Habitat bekantan dan pesut Mahakam.',
    latitude: -0.5000,
    longitude: 117.1500,
    category: 'hutan',
    rating: 4.5,
    imageAsset: ['assets/images/HutanHujanMahakam.jpeg'],
  ),

//69
  Wisata(
    name: 'Air Terjun Riam Bakung',
    location: 'Kalimantan Barat',
    description: 'Air terjun deras di pedalaman hutan.',
    latitude: 0.9167,
    longitude: 109.3667,
    category: 'airTerjun',
    rating: 4.3,
    imageAsset: ['assets/images/AirTerjunRiamBakung.jpeg'],
  ),

//70
  Wisata(
    name: 'Taman Nasional Kayan Mentarang',
    location: 'Kalimantan Utara',
    description: 'Taman nasional besar dengan hutan liar Alami.',
    latitude: 3.6000,
    longitude: 116.8000,
    category: 'tamanNasional',
    rating: 4.5,
    imageAsset: ['assets/images/TamanNasionalKayanMentarang.jpeg'],
  ),

// =====================
// 71 – 80 SULAWESI
// =====================

//71
  Wisata(
    name: 'Bunaken',
    location: 'Sulawesi Utara',
    description: 'Taman laut dengan visibilitas tinggi dan dinding karang.',
    latitude: 1.6167,
    longitude: 124.7667,
    category: 'tamanNasional',
    rating: 4.7,
    imageAsset: ['assets/images/Bunaken.jpeg'],
  ),

//72
  Wisata(
    name: 'Taman Nasional Bogani Nani Wartabone',
    location: 'Gorontalo – Sulawesi Utara',
    description: 'Hutan pegunungan dengan satwa endemik.',
    latitude: 0.5500,
    longitude: 123.9000,
    category: 'tamanNasional',
    rating: 4.4,
    imageAsset: ['assets/images/TamanNasionalBoganiNaniWartabone.jpeg'],
  ),

//73
  Wisata(
    name: 'Kepulauan Togian',
    location: 'Sulawesi Tengah',
    description: 'Kepulauan tropis tenang untuk diving.',
    latitude: -0.4000,
    longitude: 121.9000,
    category: 'pulau',
    rating: 4.6,
    imageAsset: ['assets/images/KepulauanTogian.jpeg'],
  ),

//74
  Wisata(
    name: 'Pantai Tanjung Bira',
    location: 'Sulawesi Selatan',
    description: 'Pantai pasir putih halus dan laut biru.',
    latitude: -5.6097,
    longitude: 120.4486,
    category: 'pantai',
    rating: 4.5,
    imageAsset: ['assets/images/PantaiTanjungBira.jpeg'],
  ),

//75
  Wisata(
    name: 'Rammang-Rammang',
    location: 'Sulawesi Selatan',
    description: 'Kawasan karst terbesar ketiga di dunia.',
    latitude: -4.9778,
    longitude: 119.6006,
    category: 'bukit',
    rating: 4.7,
    imageAsset: ['assets/images/Rammang-Rammang.jpeg'],
  ),

//76
  Wisata(
    name: 'Bantimurung',
    location: 'Sulawesi Selatan',
    description: 'Lembah kupu-kupu dengan air terjun.',
    latitude: -5.0072,
    longitude: 119.6897,
    category: 'airTerjun',
    rating: 4.4,
    imageAsset: ['assets/images/Bantimurung.jpeg'],
  ),

//77
  Wisata(
    name: 'Pulau Selayar',
    location: 'Sulawesi Selatan',
    description: 'Pulau panjang dengan pantai Alami.',
    latitude: -6.1186,
    longitude: 120.4589,
    category: 'pulau',
    rating: 4.5,
    imageAsset: ['assets/images/PulauSelayar.jpeg'],
  ),

//78
  Wisata(
    name: 'Labengki',
    location: 'Sulawesi Tenggara',
    description: 'Kepulauan karst mirip Raja Ampat.',
    latitude: -4.5714,
    longitude: 123.1214,
    category: 'pulau',
    rating: 4.6,
    imageAsset: ['assets/images/Labengki.jpeg'],
  ),

//79
  Wisata(
    name: 'Wakatobi',
    location: 'Sulawesi Tenggara',
    description: 'Surga penyelaman kelas dunia.',
    latitude: -5.5000,
    longitude: 123.7500,
    category: 'tamanNasional',
    rating: 4.8,
    imageAsset: ['assets/images/Wakatobi.jpeg'],
  ),

//80
  Wisata(
    name: 'Taman Nasional Lore Lindu',
    location: 'Sulawesi Tengah',
    description: 'Taman nasional dengan patung megalit misterius.',
    latitude: -1.3000,
    longitude: 120.3000,
    category: 'tamanNasional',
    rating: 4.4,
    imageAsset: ['assets/images/TamanNasionalLoreLindu.jpeg'],
  ),

// =====================
// 81 – 100 MALUKU & PAPUA
// =====================

//81
  Wisata(
    name: 'Ora Beach',
    location: 'Maluku Tengah',
    description: 'Pantai tenang berair jernih tanpa ombak.',
    latitude: -2.9700,
    longitude: 129.1500,
    category: 'pantai',
    rating: 4.6,
    imageAsset: ['assets/images/OraBeach.jpeg'],
  ),

//82
  Wisata(
    name: 'Danau Rana',
    location: 'Maluku',
    description: 'Danau terbesar di Maluku dengan suasana tenang.',
    latitude: -8.6667,
    longitude: 127.2500,
    category: 'danau',
    rating: 4.3,
    imageAsset: ['assets/images/DanauRana.jpeg'],
  ),

//83
  Wisata(
    name: 'Pulau Banda',
    location: 'Maluku',
    description: 'Kepulauan bersejarah dengan gunung api.',
    latitude: -4.5267,
    longitude: 129.9042,
    category: 'pulau',
    rating: 4.7,
    imageAsset: ['assets/images/PulauBanda.jpeg'],
  ),

//84
  Wisata(
    name: 'Pantai Ngurbloat',
    location: 'Maluku Tenggara',
    description: 'Pantai dengan pasir sehalus tepung.',
    latitude: -5.8050,
    longitude: 132.6533,
    category: 'pantai',
    rating: 4.7,
    imageAsset: ['assets/images/PantaiNgurbloat.jpeg'],
  ),

//85
  Wisata(
    name: 'Air Terjun Hoko',
    location: 'Maluku Tenggara',
    description: 'Air terjun tersembunyi dengan air jernih.',
    latitude: -5.7500,
    longitude: 132.7500,
    category: 'airTerjun',
    rating: 4.5,
    imageAsset: ['assets/images/AirTerjunHoko.jpeg'],
  ),

//86
  Wisata(
    name: 'Pulau Kei Kecil',
    location: 'Maluku Tenggara',
    description: 'Pulau dengan deretan pantai putih panjang.',
    latitude: -5.6500,
    longitude: 132.7000,
    category: 'pulau',
    rating: 4.8,
    imageAsset: ['assets/images/PulauKeiKecil.jpeg'],
  ),

//87
  Wisata(
    name: 'Pulau Kei Besar',
    location: 'Maluku Tenggara',
    description: 'Pulau hijau dengan tebing karst.',
    latitude: -5.9000,
    longitude: 132.9000,
    category: 'pulau',
    rating: 4.6,
    imageAsset: ['assets/images/PulauKeiBesar.jpeg'],
  ),

//88
  Wisata(
    name: 'Pantai Pintu Kota',
    location: 'Ambon',
    description: 'Tebing batu besar dengan celah Alami di laut.',
    latitude: -3.7206,
    longitude: 128.1800,
    category: 'pantai',
    rating: 4.6,
    imageAsset: ['assets/images/PintuKotaAmbon.jpeg'],
  ),

//89
  Wisata(
    name: 'Pantai Liang',
    location: 'Ambon',
    description: 'Pantai berair biru kehijauan yang jernih.',
    latitude: -3.5489,
    longitude: 128.3436,
    category: 'pantai',
    rating: 4.5,
    imageAsset: ['assets/images/PantaiLiang.jpeg'],
  ),

//90
  Wisata(
    name: 'Raja Ampat',
    location: 'Papua Barat',
    description: 'Kepulauan karst paling indah di dunia.',
    latitude: -0.2333,
    longitude: 130.5167,
    category: 'pulau',
    rating: 4.9,
    imageAsset: ['assets/images/RajaAmpat.jpeg'],
  ),

//91
  Wisata(
    name: 'Wayag',
    location: 'Papua Barat',
    description: 'Pulau karst ikonik dengan air biru toska.',
    latitude: -0.1617,
    longitude: 130.0200,
    category: 'pulau',
    rating: 4.9,
    imageAsset: ['assets/images/Wayag.jpeg'],
  ),

//92
  Wisata(
    name: 'Piaynemo',
    location: 'Papua Barat',
    description: 'Bukit karst populer untuk spot foto.',
    latitude: -0.5633,
    longitude: 130.3033,
    category: 'bukit',
    rating: 4.8,
    imageAsset: ['assets/images/Piaynemo.jpeg'],
  ),

//93
  Wisata(
    name: 'Danau Sentani',
    location: 'Jayapura',
    description: 'Danau besar dengan pulau kecil di tengahnya.',
    latitude: -2.6167,
    longitude: 140.5167,
    category: 'danau',
    rating: 4.5,
    imageAsset: ['assets/images/DanauSentani.jpeg'],
  ),

//94
  Wisata(
    name: 'Lembah Baliem',
    location: 'Wamena',
    description: 'Lembah pegunungan dengan kabut dan budaya adat.',
    latitude: -4.0833,
    longitude: 138.9500,
    category: 'bukit',
    rating: 4.7,
    imageAsset: ['assets/images/LembahBaliem.jpeg'],
  ),

//95
  Wisata(
    name: 'Pantai Base G',
    location: 'Jayapura',
    description: 'Pantai bersih favorit warga lokal.',
    latitude: -2.5333,
    longitude: 140.7000,
    category: 'pantai',
    rating: 4.4,
    imageAsset: ['assets/images/PantaiBaseG.jpeg'],
  ),

//96
  Wisata(
    name: 'Taman Nasional Lorentz',
    location: 'Papua',
    description: 'Taman nasional dengan glasier tropis.',
    latitude: -4.7500,
    longitude: 137.0000,
    category: 'tamanNasional',
    rating: 4.6,
    imageAsset: ['assets/images/TamanNasionalLorentz.jpeg'],
  ),

//97
  Wisata(
    name: 'Teluk Cenderawasih',
    location: 'Papua Barat',
    description: 'Spot berenang dengan hiu paus jinak.',
    latitude: -2.5000,
    longitude: 134.0000,
    category: 'pantai',
    rating: 4.8,
    imageAsset: ['assets/images/TelukCenderawasih.jpeg'],
  ),

//98
  Wisata(
    name: 'Pulau Biak',
    location: 'Papua',
    description: 'Pulau karang dengan laut jernih dan gua Wisata.',
    latitude: -1.0333,
    longitude: 135.9833,
    category: 'pulau',
    rating: 4.5,
    imageAsset: ['assets/images/PulaiBiak.jpeg'],
  ),

//99
  Wisata(
    name: 'Gunung Cycloop',
    location: 'Papua',
    description: 'Pegunungan dengan hutan kabut Alami.',
    latitude: -2.5167,
    longitude: 140.6667,
    category: 'gunung',
    rating: 4.4,
    imageAsset: ['assets/images/GunungCycloop.jpeg'],
  ),
//100
  Wisata(
    name: 'Pulau Numfor',
    location: 'Papua',
    description: 'Pulau kecil Alami dengan pantai sepi.',
    latitude: -1.1000,
    longitude: 134.9000,
    category: 'pulau',
    rating: 4.5,
    imageAsset: ['assets/images/PulauNumfor.jpeg'],
  ),

];