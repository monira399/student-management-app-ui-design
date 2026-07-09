import 'package:flutter/material.dart';

class DashboardModel {
  final IconData icon;
  final String user;
  final String totalUser;
  final Color iconColor;

  DashboardModel({
    required this.icon, required this.user, required this.totalUser, required this.iconColor});
}

final List<DashboardModel> itemList = [
  DashboardModel(
      icon: Icons.person,
      user: 'Students',
      totalUser: "120",
      iconColor:Colors.blue,
  ),

  DashboardModel(
      icon: Icons.menu_book,
      user: 'Courses',
      totalUser: "12",
      iconColor: Colors.green),

  DashboardModel(
      icon: Icons.calendar_month_sharp,
      user: 'Attend',
      totalUser: "92%",
      iconColor: Colors.purple),

  DashboardModel(
      icon: Icons.report,
      user: 'Reports',
      totalUser: "80%",
      iconColor: Colors.orange),

];
