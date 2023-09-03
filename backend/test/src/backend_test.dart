// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:backend/backend.dart';

void main() {
  group('Backend', () {
    test('can be instantiated', () {
      expect(Backend(), isNotNull);
    });
  });
}
