import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'budget.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String? _jenis;
  DateTime? _tanggal;
  bool jenjangSarjana = false;
  bool jenjangDiploma = false;
  bool jenjangMagister = false;
  bool jenjangDoktor = false;
  double umur = 0;
  String kelasPBP = 'A';
  List<String> listKelasPBP = ['A', 'B', 'C', 'D', 'E', 'F', 'KI'];
  bool _nilaiSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      drawer: const AppDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Nasi Wibu Pacil",
                      labelText: "Judul",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.people),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: 69.000",
                      labelText: "Nominal",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.attach_money),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior while typing
                    onChanged: (String? value) {
                      setState(() {
                        if (value != null) {
                          _nominal = int.parse(value);
                        }
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        if (value != null) {
                          _nominal = int.parse(value);
                        }
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      } else if (int.tryParse(value) == null) {
                        return 'Nominal harus berupa angka!';
                      } else if (int.parse(value) < 0) {
                        return 'Nominal tidak boleh negatif!';
                      } else if (int.parse(value) == 0) {
                        return 'Nominal tidak boleh nol!';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                // add dropdown button widget here
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: "Contoh: Masuk",
                      labelText: "Jenis",
                      // Menambahkan icon agar lebih intuitif
                      icon: const Icon(Icons.category),
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    value: _jenis,
                    items: <String>['Pemasukan', 'Pengeluaran']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _jenis = value;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _jenis = value;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Jenis tidak ada';
                      }
                      return null;
                    },
                  ),
                ),
                
                
                Padding(
                  // Input Date
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 4.0),
                      TextButton(
                        onPressed: (() {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2999),
                          ).then((value) {
                            setState(() {
                              _tanggal = value;
                            });
                          });
                        }),
                        child: Text((() {
                                return _tanggal == null
                                    ? 'Pilih Tanggal'
                                    : _tanggal.toString().split(' ')[0];
                                }())
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Container(
                //   margin: const EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.grey),
                //     borderRadius: BorderRadius.circular(5),
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       const ListTile(
                //         leading: Icon(Icons.school),
                //         title: Text("Jenjang"),
                //       ),
                //       CheckboxListTile(
                //         title: const Text('Sarjana'),
                //         value: jenjangSarjana,
                //         onChanged: (bool? value) {
                //           setState(() {
                //             jenjangSarjana = value!;
                //             if (value) {
                //               jenjangMagister =
                //                   jenjangDiploma = jenjangDoktor = false;
                //             }
                //           });
                //         },
                //       ),
                //       CheckboxListTile(
                //         title: const Text('Diploma'),
                //         value: jenjangDiploma,
                //         onChanged: (bool? value) {
                //           setState(() {
                //             jenjangDiploma = value!;
                //             if (value) {
                //               jenjangMagister =
                //                   jenjangSarjana = jenjangDoktor = false;
                //             }
                //           });
                //         },
                //       ),
                //       CheckboxListTile(
                //         title: const Text('Magister'),
                //         value: jenjangMagister,
                //         onChanged: (bool? value) {
                //           setState(() {
                //             jenjangMagister = value!;
                //             if (value) {
                //               jenjangDiploma =
                //                   jenjangSarjana = jenjangDoktor = false;
                //             }
                //           });
                //         },
                //       ),
                //       CheckboxListTile(
                //         title: const Text('Doktor'),
                //         value: jenjangDoktor,
                //         onChanged: (bool? value) {
                //           setState(() {
                //             jenjangDoktor = value!;
                //             if (value) {
                //               jenjangMagister =
                //                   jenjangSarjana = jenjangDiploma = false;
                //             }
                //           });
                //         },
                //       ),
                //     ],
                //   ),
                // ),
                // ListTile(
                //   leading: const Icon(Icons.co_present),
                //   title: Row(
                //     children: [
                //       Text('Umur: ${umur.round()}'),
                //     ],
                //   ),
                //   subtitle: Slider(
                //     value: umur,
                //     max: 100,
                //     divisions: 100,
                //     label: umur.round().toString(),
                //     onChanged: (double value) {
                //       setState(() {
                //         umur = value;
                //       });
                //     },
                //   ),
                // ),
                // ListTile(
                //   leading: const Icon(Icons.class_),
                //   title: const Text(
                //     'Kelas PBP',
                //   ),
                //   trailing: DropdownButton(
                //     value: kelasPBP,
                //     icon: const Icon(Icons.keyboard_arrow_down),
                //     items: listKelasPBP.map((String items) {
                //       return DropdownMenuItem(
                //         value: items,
                //         child: Text(items),
                //       );
                //     }).toList(),
                //     onChanged: (String? newValue) {
                //       setState(() {
                //         kelasPBP = newValue!;
                //       });
                //     },
                //   ),
                // ),
                // SwitchListTile(
                //   title: const Text('Practice Mode'),
                //   value: _nilaiSwitch,
                //   onChanged: (bool value) {
                //     setState(() {
                //       _nilaiSwitch = value;
                //     });
                //   },
                //   secondary: const Icon(Icons.run_circle_outlined),
                // ),
                TextButton(
                  style: ButtonStyle(
                    // padding button bottom
                    padding: MaterialStateProperty.all(const EdgeInsets.all(12.0)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Budget.addBudget(
                        judul: _judul,
                        nominal: _nominal,
                        jenis: _jenis,
                        tanggal: _tanggal,
                      );
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 15,
                            child: ListView(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              shrinkWrap: true,
                              children: <Widget>[
                                const Center(child: Text('Informasi Data')),
                                const SizedBox(height: 20),
                                // Munculkan informasi yang didapat dari form
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Nama Lengkap: $_judul'),
                                    // show jenjang based on checkbox
                                    Text('Nominal: $_nominal'),
                                    Text('Jenis: $_jenis'),
                                    Text('Tanggal: $_tanggal'),
                                    // if (jenjangSarjana)
                                    //   const Text('\nJenjang: Sarjana')
                                    // else if (jenjangDiploma)
                                    //   const Text('\nJenjang: Diploma')
                                    // else if (jenjangMagister)
                                    //   const Text('\nJenjang: Magister')
                                    // else if (jenjangDoktor)
                                    //   const Text('\nJenjang: Doktor'),
                                    // Text('\nUmur: $umur'),
                                    // Text('\nKelas PBP: $kelasPBP'),
                                    // if (_nilaiSwitch)
                                    //   const Text('\nPractice Mode: Aktif')
                                    // else
                                    //   const Text(
                                    //       '\nPractice Mode: Tidak Aktif'),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Kembali'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                  child: const Text(

                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
