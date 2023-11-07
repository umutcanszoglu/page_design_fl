import 'package:flutter/material.dart';

class TransparentCard extends StatelessWidget {
  const TransparentCard({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: widget,
    );
  }
}
