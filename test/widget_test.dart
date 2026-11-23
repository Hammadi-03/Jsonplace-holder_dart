import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jsonplacehoder/main.dart';

void main() {
  testWidgets('App renders tabs smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('JSONPlaceholder'), findsOneWidget);
    expect(find.byType(TabBar), findsOneWidget);
  });
}
