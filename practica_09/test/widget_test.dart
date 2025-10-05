// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:practica_09/main.dart';

void main() {
  testWidgets('Pokemon types list test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our app shows the title 'Practica 09'.
    expect(find.text('Practica 09'), findsOneWidget);

    // Verify that we can find the first Pokemon type in the list
    expect(find.text('Normal'), findsOneWidget);

    // Verify that ListView is present
    expect(find.byType(ListView), findsOneWidget);

    // Verify that AppBar is present
    expect(find.byType(AppBar), findsOneWidget);
  });
}
