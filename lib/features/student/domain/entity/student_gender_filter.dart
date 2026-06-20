/// Bộ lọc giới tính — giá trị Firestore: `Nam` / `Nữ`.
enum StudentGenderFilter {
  all,
  male,
  female;

  String? get firestoreValue => switch (this) {
        StudentGenderFilter.all => null,
        StudentGenderFilter.male => 'Nam',
        StudentGenderFilter.female => 'Nữ',
      };

  static StudentGenderFilter fromIndex(int index) => switch (index) {
        1 => StudentGenderFilter.male,
        2 => StudentGenderFilter.female,
        _ => StudentGenderFilter.all,
      };

  int get tabIndex => switch (this) {
        StudentGenderFilter.all => 0,
        StudentGenderFilter.male => 1,
        StudentGenderFilter.female => 2,
      };
}
