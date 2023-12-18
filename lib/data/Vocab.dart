class Vocab {
  final String russian;
  final String translation;
  const Vocab({required this.russian, required this.translation});

  Map<String, dynamic> toMap() {
    return {
      'russian': russian,
      'translation': translation,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Dog{russian: $russian, translation: $translation}';
  }
}
