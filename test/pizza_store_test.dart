import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/detail_page.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('menu lists the three items', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
    expect(find.byType(Card), findsNWidgets(3));
  });

  testWidgets('tapping a card opens its detail screen',
          (WidgetTester tester) async {
        await tester.pumpWidget(const PizzaStoreApp());

        await tester.tap(find.text('Cheese Pizza'));
        await tester.pumpAndSettle();

        expect(find.byType(DetailPage), findsOneWidget);
        expect(find.text('Cheese Pizza'), findsWidgets);
      });

  testWidgets('back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();
    expect(find.byType(DetailPage), findsOneWidget);

    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    expect(find.byType(DetailPage), findsNothing);
    expect(find.text('Pizza Store Menu'), findsOneWidget);
  });
}