import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/widgets/present_absent_pie_chart.dart';

import '../../widgets/report_gridView.dart';
import '../models/report_model.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Reports', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Quick Update', style:TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600
              ),),
              Report_GridView(),
              SizedBox(height: 20,),
              Text('OverView Charts',  style:TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600
              ),),
              PresentAbsentPieChart(),
          
          
            ],
          ),
        ),
      ),
    );
  }
}

