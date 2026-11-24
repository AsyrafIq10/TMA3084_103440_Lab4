import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('shows item, quantity and total RM 25.00',
          (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(
          home: OrderSummary(
            itemName: 'Cheese Pizza',
            quantity: 2,
            unitPrice: 12.50,
          ),
        ));

        expect(find.text('Item: Cheese Pizza'), findsOneWidget);
        expect(find.text('Quantity: 2'), findsOneWidget);
        expect(find.text('Total: RM 25.00'), findsOneWidget);
      });
}