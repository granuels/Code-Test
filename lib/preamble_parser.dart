// Breaks the input into lowercase words, stripping out punctuation
List<String> _cleanWords(String input) {
  return input
      .toLowerCase() //unify case
      .split(RegExp(r'\s+')) //split on whitespace
      .map((w) => w.replaceAll(RegExp(r'[^\w]'), '')) //remove non-word chars
      .where((w) => w.isNotEmpty) //drop any empty results
      .toList();
}

/// Parse text and return three counts:
///  't'  → words starting with 't'
///  'e'  → words ending with 'e'
///  'te' → words both starting 't' and ending 'e'
Map<String, int> analyzePreamble(String text) {
  final words = _cleanWords(text); //get clean word list

  final tCount = words.where((w) => w.startsWith('t')).length;
  final eCount = words.where((w) => w.endsWith('e')).length;
  final teCount =
      words.where((w) => w.startsWith('t') && w.endsWith('e')).length;
  return {'t': tCount, 'e': eCount, 'te': teCount};
}
