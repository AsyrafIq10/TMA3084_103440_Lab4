Inputs: item name (String), quantity (int), unit price (double, in RM).
Output: a screen showing the item name, quantity and total price like "RM 25.00".
Rules: the total must come from orderTotal() in lib/order.dart; quantity cannot be negative.
Rules: include a Back button that calls Navigator.pop(context).
Out of scope: payment, database, editing the order, and any change to other files.
Check: Cheese Pizza x 2 at RM 12.50 shows "Total: RM 25.00"; flutter analyze and flutter test pass.