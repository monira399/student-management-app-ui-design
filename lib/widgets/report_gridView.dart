import 'package:flutter/material.dart';

import '../ui/models/report_model.dart';
class Report_GridView extends StatelessWidget {
  const Report_GridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: reportList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1
        ),
        itemBuilder: (context,index) {
          final reportItem = reportList[index];
          return SizedBox(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(reportItem.icon, size: 40,color: reportItem.iconColor),
                    SizedBox(height: 10),
                    Text(reportItem.title, style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600
                    ),),
                    Text(
                      reportItem.percent.toString(),
                      style: TextStyle(color: reportItem.textColor, fontSize: 20),
                    ),
                    Text(reportItem.subTitle),
                  ],
                ),
              ),
            ),
          );
        });
  }
}