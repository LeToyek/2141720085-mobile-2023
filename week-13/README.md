# Week 13

## Praktikum 1

### Soal 1

1. Ubah title

    ![ScreenShot](./docs/s1.png)

### Soal 2

1. Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel `colors` tersebut.

    ![ScreenShot](./docs/s2.png)

### Soal 3

1. Jelaskan fungsi keyword `yield*` pada kode tersebut!

    `yield*` digunakan untuk mengembalikan nilai dari fungsi generator yang dipanggil.

2. Apa maksud isi perintah kode tersebut?

    Maksud dari kode tersebut adalah untuk mengembalikan nilai dari fungsi generator yang dipanggil.
    ![ScreenShot](./docs/s3.png)

### Soal 4

1. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

    ![ScreenShot](./docs/s4.gif)

### Soal 5

1. Jelaskan perbedaan menggunakan `listen` dan `await for` (langkah 9) !

    Keduanya sama-sama digunakan untuk mendapatkan data dari stream, namun `await for` digunakan untuk mendapatkan semua data dari stream, sedangkan `listen` digunakan untuk mendapatkan data dari stream secara berulang.

### Soal 6

1. Jelaskan maksud kode langkah 8 dan 10 tersebut!

    kode langkah 8 digunakan untuk mendapatkan data dari stream `NumberStream()` dengan menggunakan controller.

    kode langkah 10 digunakan untuk memberi nilai pada stream dengan menggunakan nilai acak dibawah 10.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README

    ![ScreenShot](./docs/s5.gif)

### Soal 7

1. Jelaskan maksud kode langkah 13 sampai 15 tersebut!

    - Langkah 13 digunakan untuk menambahkan error pada stream yang bertujuan untuk melakukan penanganan error pada stream.

    - Langkah 15 digunakan untuk mengaktifkan error pada stream.

2. Kembalikan kode seperti semula pada Langkah 15, comment `addError()` agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

    ![ScreenShot](./docs/s7.gif)

### Soal 8

1. Jelaskan maksud kode langkah 1-3 tersebut!

    langkah - langkah tersebut merupakan langkah untuk membuat stream dengan menggunakan `transform` serta memberikan handling pada setiap kondisi yang terjadi pada stream.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
  
      ![ScreenShot](./docs/s8.gif)

### Soal 9

1. Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

    - Langkah 2 digunakan untuk mengisi nilai pada subscription sehingga dapat memperoleh stream dari `NumberStream()`.

    - Langkah 6 digunakan untuk menghentikan subscription sehingga tidak memperoleh stream dari `NumberStream()`.

    - Langkah 8 digunakan untuk melakukan pemeriksaan error `error handling` sehingga akan melakukan print -1 ketika stream terlah ditutup.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

    ![ScreenShot](./docs/s9.gif)

### Soal 10

1. Jelaskan mengapa error itu bisa terjadi ?

    karena pada kode tersebut melakukan listen sebanyak 2 kali di stream yang sama sehingga terjadi error.

### Soal 11

1. Jelaskan mengapa hal itu bisa terjadi ?

    Ketika stream diubah dengan memanggil function `asBroadcastStream()` maka stream akan menjadi broadcast sehingga dapat di listen lebih dari 1 kali.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

    ![ScreenShot](./docs/s11.gif)

### Soal 12

1. Jelaskan maksud kode pada langkah 3 dan 7 !

    - Langkah 3 digunakan untuk menghasilkan nilai random kurang dari 10 dalam stream dengan delay 1 detik setiap nilai yang dihasilkan.

    - Langkah 7 digunakan untuk menggunakan stream yang telah diinisialisasi sehingga dapat digunakan untuk mendapatkan nilai dari stream tersebut.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

    ![ScreenShot](./docs/s12.gif)

### Soal 13

