// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/presentation/landing/bloc/bloc.dart';

void main() {
  group('LandingEvent', () {  
    group('CustomLandingEvent', () {
      test('supports value equality', () {
        expect(
          CustomLandingEvent(),
          equals(const CustomLandingEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomLandingEvent(),
          isNotNull
        );
      });
    });
  });
}
