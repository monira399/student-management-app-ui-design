import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PresentAbsentPieChart extends StatelessWidget {
  const PresentAbsentPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Present vs Absent', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),

            SizedBox(height: 20,),

            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sectionsSpace: 2,
                  centerSpaceRadius: 50,

                  sections: [

                    PieChartSectionData(
                      value: 150,
                      color: Colors.green,
                      radius: 45,
                      title: '88%',
                      titleStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),

                    PieChartSectionData(
                      value: 30,
                      color: Colors.red,
                      radius: 45,
                      title: '12%',
                      titleStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ]
                )
              ),
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Container(
                  width: 15,
                    height: 15,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                  ),
                ),
                SizedBox(height: 20,),
                Text('Present(220)', style:TextStyle(fontSize: 16) ,)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(height: 10,),
                Text('Absent(30)', style:TextStyle(fontSize: 16) ,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
