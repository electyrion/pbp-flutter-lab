# Flutter Assignment

## Tugas 7

### Widget yang Digunakan Pada Flutter Assignment

- `AppBar`: Widget untuk bar yang ada di atas layar
- `Center`: Widget untuk meletakkan child widget di tengah-tengah parent
- `Column`: Widget untuk menaruh widget children di suatu kolom (dari atas ke bawah)
- `FloatingActionButton`: Widget untuk menampilkan button lingkaran yang melayang
- `MaterialApp`: Widget untuk membuat aplikasi material
- `Padding`: Widget untuk memberi spasi di sekitar child widget
- `Row`: Widget untuk menaruh widget children di suatu baris (dari kiri ke kanan)
- `Scaffold`: Widget untuk mengimplementasikan layout Material Design
- `Text`: Widget untuk menaruh teks

### Fungsi setState()

Fungsi setState() pada Flutter API berfungsi untuk memberitahu framework bahwasanya internal state dari object yang sedang di-refer telah berubah. Pada tugas kali ini setState() berada di dalam fungsi _incrementCounter() yang berfungsi untuk menambahkan nilai dari counter ketika button di tekan. Ketika fungsi setState() dipanggil, framework akan memanggil method build() dari State object yang bersangkutan untuk membangun ulang widget tree yang terkait dengan state tersebut. setState() hanya dapat dipanggil pada State object dan hanya dapat dipanggil ketika State object tersebut sedang dalam state mounted. setState() juga dapat dipanggil ketika State object tersebut sedang dalam state inactive, namun framework tidak akan memanggil method build() dari State object tersebut.

### Const vs Final

"Final" berarti single-assignment: sebuah variabel atau field final harus memiliki nilai yang di-inisiasi. Setelah itu, nilai dari variabel atau field tersebut tidak dapat diubah lagi.

"const" memiliki arti yang sedikit lebih kompleks dan halus di Dart. const memodifikasi nilai. Kita dapat menggunakannya saat membuat list, seperti const [1, 2, 3], dan saat membuat objek (bukan baru) seperti const Point(2, 3). Di sini, const berarti bahwa seluruh keadaan dalam objek dapat diubah seluruhnya pada waktu kompilasi dan bahwa objek akan di-freeze dan sepenuhnya tidak dapat diubah.

### Langkah-langkah Implementasi Flutter Assignment

1. Membuat project baru dengan nama `counter_7` dengan menggunakan command `flutter create counter_7`
2. Membuat class `MyApp` yang merupakan class yang akan menjadi root dari aplikasi kita
3. Membuat class `MyHomePage` yang merupakan class yang akan menjadi class utama dari aplikasi kita
4. Membuat fungsi `_incrementCounter()` yang akan menambahkan nilai dari counter ketika button di tekan
5. Membuat fungsi `_decrementCounter()` yang akan mengurangi nilai dari counter ketika button di tekan
6. Menambahkan atribut teks yang menampilkan status ganjil atau genap dari counter, serta menentukan warna teksnya
7. Mengganti atribut `floatingActionButton` pada class `MyHomePage` dengan atribut `floatingActionButton` yang baru yang berisi button untuk menambah dan mengurangi nilai dari counter

### Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Tugas 8

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement

Navigator.push dan Navigator.pushReplacement keduanya adalah method yang dapat digunakan untuk berpindah laman pada aplikasi yang dibuat menggunakan flutter. Navigator.pushReplacement bekerja dengan cara menggantikan route halaman dari navigator dengan cara melakukan `push` route yang diberikan ke navigator, dan kemudian menghapus semua route yang ada di atasnya. Navigator.push bekerja dengan cara melakukan `push` route yang diberikan ke navigator, dan kemudian mengembalikan hasil dari route tersebut.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya

- `TextFormField`: widget yang berfungsi untuk membuat form inputan teks
- `Form`: widget yang berfungsi untuk membuat form
- `DropdownButtonFormField`: widget yang berfungsi untuk membuat form inputan dropdown
- `Card` : widget yang berfungsi untuk membuat card
- `ListTile` : widget yang berfungsi untuk membuat list tile
- `Scaffold` : widget yang berfungsi untuk membuat layout material design
- `Column` : widget yang berfungsi untuk menaruh widget children di suatu kolom (dari atas ke bawah)

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)

- `onPressed`: event yang terjadi ketika button di tekan
- `onChanged`: event yang terjadi ketika value dari inputan berubah
- `onSaved`: event yang terjadi ketika form disimpan
- `onTap`: event yang terjadi ketika widget di tap
- `onLongPress`: event yang terjadi ketika widget di tekan lama
- `onDoubleTap`: event yang terjadi ketika widget di tap dua kali
- `onSubmit`: event yang terjadi ketika form di submit
- `onLongPressStart`: event yang terjadi ketika widget di tekan lama
- `onLongPressMoveUpdate`: event yang terjadi ketika widget di tekan lama
- `onVerticalDragDown`: event yang terjadi ketika widget di geser secara vertikal

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter

Navigator bekerja dengan cara melakukan `push` route yang diberikan ke navigator, dan kemudian mengembalikan hasil dari route tersebut. Navigator juga dapat melakukan `pop` route yang diberikan dari navigator, dan kemudian mengembalikan hasil dari route tersebut. Navigator juga dapat melakukan `pushReplacement` route yang diberikan ke navigator, dan kemudian menghapus semua route yang ada di atasnya. Navigator juga dapat melakukan `pushAndRemoveUntil` route yang diberikan ke navigator, dan kemudian menghapus semua route yang ada di atasnya. Navigator juga dapat melakukan `pushNamed` route yang diberikan ke navigator, dan kemudian mengembalikan hasil dari route tersebut. Navigator juga dapat melakukan `pushNamedAndRemoveUntil` route yang diberikan ke navigator, dan kemudian menghapus semua route yang ada di atasnya.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas

1. Membuat file `drawer.dart` pada folder `lib` yang berfungsi untuk membuat drawer yang akan ditampilkan pada aplikasi
2. Mengimport file `drawer.dart` pada file `main.dart` dan menambahkan atribut `drawer` pada class `MyApp`
3. Membuat file `form.dart` pada folder `lib` yang berfungsi untuk membuat form yang akan ditampilkan pada aplikasi
4. Mengimport file `form.dart` pada file `drawer.dart` dan menambahkan form tersebut pada list tile yang berisi text `Form`
5. Membuat file `budget.dart` pada folder `lib` yang di dalamnya berisi class `Budget` yang berfungsi untuk membuat model dari data budget
6. Membuat file `data.dart` pada folder `lib` yang berfungsi untuk menampilkan data budget yang telah diinputkan melalui form dan disimpan menggunakan array budget
