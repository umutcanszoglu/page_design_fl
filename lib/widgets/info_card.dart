import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.num,
      required this.percent,
      required this.name,
      required this.color});
  final String num;
  final String percent;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 110,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                num,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  percent,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
