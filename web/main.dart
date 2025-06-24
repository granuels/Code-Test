import 'dart:html';
import 'package:preamble_parser/preamble_parser.dart';

void main() {
  //Grab references to page elements
  final inputEl = querySelector('#preamble') as TextAreaElement;
  final analyzeBtn = querySelector('#analyzeBtn') as ButtonElement;
  final resetBtn = querySelector('#resetBtn') as ButtonElement;
  final tCountEl = querySelector('#tCount') as SpanElement;
  final eCountEl = querySelector('#eCount') as SpanElement;
  final bothCountEl = querySelector('#bothCount') as SpanElement;

  //when "Parse" is clicked, run the analysis and update counts
  analyzeBtn.onClick.listen((_) {
    final counts = analyzePreamble(inputEl.value ?? '');
    tCountEl.text = '${counts['t']}';
    eCountEl.text = '${counts['e']}';
    bothCountEl.text = '${counts['te']}';
  });

  //when "Reset", is clicked, clear the input and reset all counts
  resetBtn.onClick.listen((_) {
    inputEl.value = '';
    tCountEl.text = '0';
    eCountEl.text = '0';
    bothCountEl.text = '0';
  });
}
