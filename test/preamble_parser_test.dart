import 'package:test/test.dart';
import 'package:preamble_parser/preamble_parser.dart';

void main() {
  test('simple sentence count', () {
    final text = 'To be or not to be';
    final counts = analyzePreamble(text);

    expect(counts['t'], equals(2)); // "to", "to"
    expect(counts['e'], equals(2)); // "be", "be"
    expect(counts['te'], equals(0)); // none both start+t and end+e
  });

  test('casing & punctuation', () {
    final text = 'The, the. THE!';
    final counts = analyzePreamble(text);

    expect(counts['t'], equals(3)); // all three "the"
    expect(counts['e'], equals(3)); // all three end "e"
    expect(counts['te'], equals(3)); // all three match both
  });
}
