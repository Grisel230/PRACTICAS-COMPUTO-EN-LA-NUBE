// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:practica_03/src/app.dart';

void main() {
  testWidgets('App navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the main page is displayed
    expect(find.text('Bienvenido a la Página Principal'), findsOneWidget);
    expect(find.text('Ir a Página 2'), findsOneWidget);
    expect(find.text('Ir a Página 3'), findsOneWidget);
  });
}
