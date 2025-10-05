// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:practica_11/main.dart';

void main() {
  testWidgets('SharedPage widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Wait for the widget to load
    await tester.pumpAndSettle();

    // Verify that our SharedPage loads correctly.
    expect(find.text('Practica 11'), findsOneWidget);
    expect(find.byIcon(Icons.refresh), findsOneWidget);

    // Verify that we have text widgets for nombre and edad
    expect(find.textContaining('Nombre:'), findsOneWidget);
    expect(find.textContaining('Edad:'), findsOneWidget);
  });
}
