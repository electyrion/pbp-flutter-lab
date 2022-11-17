class Budget {
  static List<Budget> budgets = [];
  String judul;
  int nominal;
  String jenis;
  DateTime tanggal;

  Budget({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.tanggal,
  });

  static void addBudget({
    required judul,
    required nominal,
    required jenis,
    required tanggal,
  }) {
    budgets.add(Budget(
      judul: judul,
      nominal: nominal,
      jenis: jenis,
      tanggal: tanggal,
    ));
  }
}