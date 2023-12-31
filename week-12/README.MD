# Pertemuan 12

## Praktikum 1

### Soal 1 

Tambahkan nama panggilan Anda pada `title` app sebagai identitas hasil pekerjaan Anda.

![Screenshot](./docs/p1l1.png)

### Soal 2

![Screenshot](./docs/p1l2.png)

### Soal 3

1. Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!

    `Substring` adalah method yang digunakan untuk membatasi value dari `string` sehingga yang tampil hanyalah karakter dari 0 hingga 450 saja

    `catchError` merupakan method untuk menangkap error yang terjadi pada program yang terdapat pada fungsi `then()`

2. Jalankan Aplikasi

![GIF](./docs/p1l3.gif)

## Praktikum 2

### Soal 4

1. Jelaskan maksud kode langkah 1 dan 2 tersebut!

    Langkah 1 adalah langkah untuk membuat kode berupa `function` yang menghasilkan suatu nilai (1,2,3) namun dengan jeda waktu selama 3 detik. Hal ini disebabkan karena penggunaan `Future.delayed()`

2. Jalankan Aplikasi

![GIF](./docs/p2l4.gif)

## Praktikum 3

### Soal 5

1. Jelaskan maksud kode langkah 2 tersebut!

    Kode tersebut bertujuan untuk mengembalikan nilai 42 dengan jeda 5 detik dengan menggunakan completer

2. Jalankan Aplikasi

![GIF](./docs/p3l5.gif)

### Soal 6

1. Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!

    Langkah tersebut bertujuan untuk menangkap error yang mungkin ada pada function `getNumber()`

2. Jalankan Aplikasi

![GIF](./docs/p3l6.gif)

## Praktikum 4

### Soal 7

1. Jalankan Aplikasi

![GIF](./docs/p4l7.gif)

### Soal 8

```dart
final futures = Future.wait<int>([
  returnOneAsync(),
  returnTwoAsync(),
  returnThreeAsync(),
]);
```

    Langkah tersebut menunjukan proses asynchronus dengan `FutureGroup`. `FutureGroup` adalah sebuah class yang digunakan untuk mengelompokkan beberapa `Future` menjadi satu `Future` tunggal. `FutureGroup` akan mengembalikan nilai `List` yang berisi hasil dari `Future` yang telah di kelompokkan.
    

## Praktikum 5

### Soal 9

1. Jalankan Aplikasi

![GIF](./docs/p5l9.gif)

### Soal 10

1. Panggil method `handleError() `tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

    Perbedaannya adalah dengan `finally` maka terdapat code yang pasti dieksekusi setelah `try catch` tanpa mempedulikan apakah hasil dari `try catch` tersebut error atau tidak.

## Praktikum 6

### Soal 11

1. Jalankan Aplikasi
    
    ![ScreenShot](./docs/p1l11.png)

### Soal 12

1. Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

    Tidak, karena browser tidak memiliki GPS

2. Jalankan Aplikasi

    ![ScreenShot](./docs/p6l12.gif)

## Praktikum 7

### Soal 13

1. Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?

    Tidak ada perbedaan karena hanya menambahkan `FutureBuilder` pada `body` dari `Scaffold`

2. Jalankan Aplikasi

    ![ScreenShot](./docs/p7l13.gif)

### Soal 14

1. Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?

    Tidak ada perbedaan karena hanya menambahkan `FutureBuilder` pada `body` dari `Scaffold`

2. Jalankan Aplikasi

    ![GIF](./docs/p7l14.gif)

## Praktikum 8

### Soal 15

1. Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

    ![ScreenShot](./docs/p8l15.png)

### Soal 16

1. Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

    Yang terjadi adalah, Halaman `SecondScreen()` kembali menuju `FirstScreen()` dengan warna yang berbeda. Hal ini bisa terjadi karena penggunaan parameter `color` pada `Navigator.pop()` merubah warna dari `FirstScreen()`

2. Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!

3. Jalankan Aplikasi

    ![GIF](./docs/p8l16.gif)