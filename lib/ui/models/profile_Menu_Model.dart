import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/theme_provider.dart';

class ProfileMenuModel {
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  ProfileMenuModel({
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.subtitle,  this.onTap,
  });
}

final List<ProfileMenuModel> profileMenuList = [
  ProfileMenuModel(
    leadingIcon: Icons.person,
    trailingIcon: Icons.arrow_forward,
    title: 'My Profile',
    subtitle: 'View and edit your profile',
  ),
  ProfileMenuModel(
    leadingIcon: Icons.settings,
    trailingIcon: Icons.arrow_forward,
    title: 'Account Settings',
    subtitle: 'Change password,security',
  ),
  ProfileMenuModel(
    leadingIcon: Icons.notifications,
    trailingIcon: Icons.arrow_forward,
    title: 'Notifications',
    subtitle: 'Manage notifications settings',
  ),
  ProfileMenuModel(
    leadingIcon: Icons.dark_mode,
    trailingIcon: Icons.arrow_forward,
    title: 'Theme',
    subtitle: 'Light/Dark Mode',
  ),
  ProfileMenuModel(
    leadingIcon: Icons.language,
    trailingIcon: Icons.arrow_forward,
    title: 'Language',
    subtitle: 'English',
  ),
  ProfileMenuModel(
    leadingIcon: Icons.help,
    trailingIcon: Icons.arrow_forward,
    title: 'Help',
    subtitle: 'Get help and support',
  ),
  ProfileMenuModel(
    leadingIcon: Icons.info,
    trailingIcon: Icons.arrow_forward,
    title: 'About',
    subtitle: 'Version 1.0.0',
  ),
];
