import 'package:flutter/material.dart';
import 'package:kshethra_mini/view/payment_complete_screen.dart';
import 'package:kshethra_mini/view/widgets/advanced_booking_page_widget/confirm_button_widget.dart';

import '../utils/app_color.dart';
import '../utils/app_styles.dart';
import '../utils/components/app_bar_widget.dart';

class CashPayment extends StatelessWidget {
  final int amount;
  const CashPayment({super.key, required this.amount});

  void _onConfirmPayment(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Cash payment confirmed."),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaymentCompleteScreen(
          amount: amount.toString(),
          noOfScreen: 1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AppStyles styles = AppStyles();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppBarWidget(title: "Cash Payment"),
          const SizedBox(height: 80),
          Center(
            child: Container(
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kDullPrimaryColor,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/icons/donation.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Please give ₹$amount to our representative',
            style: styles.blackRegular20,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            'Confirm after receiving the full amount.',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      floatingActionButton: ConfirmButtonWidget(
        onConfirm: () {
          _onConfirmPayment(context);
        },
      ),
    );
  }
}
