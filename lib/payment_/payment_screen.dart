import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
    PaymentScreen({super.key});

  // Declare default values outside of the StatelessWidget
  final String _selectedPaymentMethod = 'Credit Card';
  final bool _termsAccepted = false;

  final List<String> paymentMethods = [
    'Credit Card',
    'Debit Card',
    'PayPal',
    'Google Pay',
    'Apple Pay',
  ];

  void _proceedToPayment(BuildContext context) {
    if (_termsAccepted) {
      // Handle the payment process here
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Payment Successful'),
            content: const Text('Your payment has been processed successfully!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Show alert if terms are not accepted
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Terms and Conditions'),
            content: const Text('Please accept the terms and conditions before proceeding.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Order Summary Card
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Order Summary',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text('Item: Product Name'),
                    const SizedBox(height: 4),
                    const Text('Price: \$29.99'),
                    const SizedBox(height: 8),
                    const Divider(),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text('Total', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('\$29.99', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Payment Method Dropdown
            const Text(
              'Select Payment Method:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            DropdownButton<String>(
              value: _selectedPaymentMethod,
              items: paymentMethods.map((String method) {
                return DropdownMenuItem<String>(
                  value: method,
                  child: Text(method),
                );
              }).toList(),
              onChanged: (newMethod) {},
            ),
            const SizedBox(height: 16),

            // Terms and Conditions Checkbox
            Row(
              children: <Widget>[
                Checkbox(
                  value: _termsAccepted,
                  onChanged: null, // Can't change state in StatelessWidget
                ),
                const Text('I accept the terms and conditions'),
              ],
            ),
            const SizedBox(height: 16),

             ElevatedButton(
              onPressed: () => _proceedToPayment(context),
              child: const Text('Proceed to Payment'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 14),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
