import 'package:flutter/material.dart';

class QuantityField extends StatelessWidget {
  const QuantityField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
