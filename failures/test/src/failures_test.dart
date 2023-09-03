// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:failures/failures.dart';

void main() {
  group('Failures', () {
    test('can be instantiated', () {
      expect(Failures(), isNotNull);
    });
  });
}
