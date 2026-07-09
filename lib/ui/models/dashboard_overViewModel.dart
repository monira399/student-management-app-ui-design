import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardOverViewmodel {
  final IconData icon;
  final String title;
  final String subtitle;
  final String statusCount;
  final Color iconColor;

  DashboardOverViewmodel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.statusCount,
    required this.iconColor,
});
}

final List<DashboardOverViewmodel> overViewList = [
  DashboardOverViewmodel(
      icon: Icons.local_activity,
      title: 'Recent Activities',
      subtitle: 'See what\'s happened recently',
      statusCount:'4 new',
      iconColor: Colors.green),
  DashboardOverViewmodel(
      icon: Icons.calendar_month_sharp,
      title: 'Today\'s classes',
      subtitle: 'View today\'s class schedule',
      statusCount:'4 classes',
      iconColor: Colors.blue),
  DashboardOverViewmodel(
      icon: Icons.star_rounded,
      title: 'Top Students',
      subtitle: 'Check top performing students',
      statusCount:'Top 5',
      iconColor: Colors.orange),
  DashboardOverViewmodel(
      icon: Icons.pending_actions,
      title: 'Recent Activities',
      subtitle: 'See your pending task',
      statusCount:'4 tasks',
      iconColor: Colors.red.shade50),


];