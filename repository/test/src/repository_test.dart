// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:repository/repository.dart';

void main() {
  group('Repository', () {
    test('can be instantiated', () {
      expect(Repository(), isNotNull);
    });
  });
}
