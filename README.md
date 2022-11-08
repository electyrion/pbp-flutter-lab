# Flutter Assignment

## Stateful Widget vs Stateless Widget

Stateful widget merupakan widget yang memiliki mutable state. State merupakan informasi yang dapat dibaca secara synchronously ketika widget tersebut sedang di-build dan dapat berubah selama kurun waktu siklus hidup widget tersebut. Stateful widget dapat sangat berguna ketika terdapat bagian dari user interface yang berubah secara dinamis misalnya seperti  komponen yang bergantung pada state dari suatu sistem. Instance dari stateful widget sendiri adalah immutable dan menyimpah state mutable mereka dalam objek state terpisah yang dibuat oleh method createState atau di dalam objek yang  menjadi parent dari state tersebut. Stateful widget menyimpan objek state yang saa ketika berpindah dari satu lokasi ke lokasi lainnya di dalam tree jika si pembuat menggunakan GlobalKey untuk key-nya.

Stateless widget merupakan widget yang tidak membutuhkan mutable state. Stateless widget dapat sangat berguna ketika terdapat bagian dari user interface yang tidak bergantung pada hal-hal lain (independet) selain dari konfigurasi dari informasi objeknya sendiri dan BuildContext yang mendefinisikan widget tersebut. Method dari stateless widget biasanya hanya dipanggil pada tiga situasi saja: saat pertama kali widget tersebut dimasukkan ke dalam tree, ketika widget parent nya mengubah konfigurasi stateless widget, dan ketika sebuah inheritted widget yang bergantung padanya berubah. 

## Widget yang Digunakan Pada Flutter Assignment

    - `AppBar`: Widget untuk bar yang ada di atas layar
    - `Center`: Widget untuk meletakkan child widget di tengah-tengah parent
    - `Column`: Widget untuk menaruh widget children di suatu kolom (dari atas ke bawah)
    - `FloatingActionButton`: Widget untuk menampilkan button lingkaran yang melayang
    - `MaterialApp`: Widget untuk membuat aplikasi material
    - `Padding`: Widget untuk memberi spasi di sekitar child widget
    - `Row`: Widget untuk menaruh widget children di suatu baris (dari kiri ke kanan)
    - `Scaffold`: Widget untuk mengimplementasikan layout Material Design
    - `Text`: Widget untuk menaruh teks

## Fungsi setState()

Fungsi setState() pada Flutter API berfungsi untuk memberitahu framework bahwasanya internal state dari object yang sedang di-refer telah berubah. Pada tugas kali ini setState() berada di dalam fungsi _incrementCounter() yang berfungsi untuk menambahkan nilai dari counter ketika button di tekan. Ketika fungsi setState() dipanggil, framework akan memanggil method build() dari State object yang bersangkutan untuk membangun ulang widget tree yang terkait dengan state tersebut. setState() hanya dapat dipanggil pada State object dan hanya dapat dipanggil ketika State object tersebut sedang dalam state mounted. setState() juga dapat dipanggil ketika State object tersebut sedang dalam state inactive, namun framework tidak akan memanggil method build() dari State object tersebut.

## Const vs Final

"Final" berarti single-assignment: sebuah variabel atau field final harus memiliki nilai yang di-inisiasi. Setelah itu, nilai dari variabel atau field tersebut tidak dapat diubah lagi.

"const" memiliki arti yang sedikit lebih kompleks dan halus di Dart. const memodifikasi nilai. Kita dapat menggunakannya saat membuat list, seperti const [1, 2, 3], dan saat membuat objek (bukan baru) seperti const Point(2, 3). Di sini, const berarti bahwa seluruh keadaan dalam objek dapat diubah seluruhnya pada waktu kompilasi dan bahwa objek akan di-freeze dan sepenuhnya tidak dapat diubah.

## Langkah-langkah Implementasi Flutter Assignment

1. Membuat project baru dengan nama `counter_7` dengan menggunakan command `flutter create counter_7`
2. Membuat class `MyApp` yang merupakan class yang akan menjadi root dari aplikasi kita
3. Membuat class `MyHomePage` yang merupakan class yang akan menjadi class utama dari aplikasi kita
4. Membuat fungsi `_incrementCounter()` yang akan menambahkan nilai dari counter ketika button di tekan
5. Membuat fungsi `_decrementCounter()` yang akan mengurangi nilai dari counter ketika button di tekan
6. Menambahkan atribut teks yang menampilkan status ganjil atau genap dari counter, serta menentukan warna teksnya
7. Mengganti atribut `floatingActionButton` pada class `MyHomePage` dengan atribut `floatingActionButton` yang baru yang berisi button untuk menambah dan mengurangi nilai dari counter

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
