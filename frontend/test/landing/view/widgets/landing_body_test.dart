// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/presentation/landing/landing.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LandingBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => LandingBloc(),
          child: MaterialApp(home: LandingBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
