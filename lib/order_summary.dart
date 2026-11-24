import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummary extends StatelessWidget {
  final String itemName;
  final int quantity;
  final double unitPrice;

  const OrderSummary({
    super.key,
    required this.itemName,
    required this.quantity,
    required this.unitPrice,
  });

  @override
  Widget build(BuildContext context) {
    final total = orderTotal(unitPrice, quantity);

    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item: $itemName', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Quantity: $quantity', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text(
              'Total: RM ${total.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}