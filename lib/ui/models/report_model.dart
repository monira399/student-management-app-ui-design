import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportModel {
  final IconData icon;
  final String title;
  final String subTitle;
  final int percent;
  final Color textColor;
  final Color iconColor;

  ReportModel({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.percent,
    required this.iconColor, required this.textColor,
  });
}

final List<ReportModel> reportList = [
  ReportModel(
      icon: Icons.perm_contact_cal_outlined,
      title: 'Total Students',
      subTitle:'8 this month',
      percent: 250,
      iconColor: Colors.blue,
      textColor: Colors.blue ),
  ReportModel(
      icon: Icons.cloud_done,
      title: 'Present Today',
      subTitle:'5 this week',
      percent: 220,
      iconColor: Colors.green,
      textColor: Colors.green ),
  ReportModel(
      icon: Icons.perm_contact_cal_outlined,
      title: 'Absent Today',
      subTitle:'3 this week',
      percent: 30,
      iconColor: Colors.red,
      textColor: Colors.red ),
  ReportModel(
      icon: Icons.bar_chart_outlined,
      title: 'Attend',
      subTitle:'8% this month',
      percent: 88,
      iconColor: Colors.orange,
      textColor: Colors.orange ),
];
