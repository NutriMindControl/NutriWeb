import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';

class Chart extends StatelessWidget {
  final sections;
  final title;
  const Chart({
    required this.sections,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: PieChart(
              PieChartData(
                sections: sections,
                pieTouchData: PieTouchData(
                  touchCallback: (event, response) {},
                ),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              // color: MyColors().darkComponent,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
