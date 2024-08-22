import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';

class ProgressLine extends StatelessWidget {
  final Color color;
  final String value;
  final double currentCount;
  final double totalCount;

  const ProgressLine({
    super.key,
    required this.color,
    required this.value,
    required this.currentCount,
    required this.totalCount,
  });

  double _handleDouble(double num) {
    num *= 100;
    num = num.roundToDouble();
    num /= 100;
    return num;
  }

  @override
  Widget build(BuildContext context) {
    final percent = currentCount > totalCount ? 1 : (currentCount/totalCount);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Row(
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${currentCount.toInt()}/${totalCount.toInt()}',
                    style: TextStyle(fontSize: 15, color: color),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200]),
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width * 0.3 * percent,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
