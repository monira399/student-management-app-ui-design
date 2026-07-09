import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/ui/models/student_detail_model.dart';

class StudentInfoModel {
  final IconData icon;
  final String title;
  final String value;

  StudentInfoModel({
    required this.icon,
    required this.title,
    required this.value,
  });
}

List<StudentInfoModel> getStudentInfoList(StudentDetailsModel student) {
  return [
    StudentInfoModel(
        icon: Icons.
        email, title: "Email",
        value: student.email),

    StudentInfoModel(
        icon: Icons.phone,
        title: "Phone",
        value: student.phone),

    StudentInfoModel(
      icon: Icons.school,
      title: "Class",
      value: student.className,
    ),

    StudentInfoModel(
      icon: Icons.groups,
      title: "Section",
      value: student.section,
    ),

    StudentInfoModel(
        icon: Icons.badge,
        title: "Roll",
        value: student.roll),

    StudentInfoModel(
      icon: Icons.location_on,
      title: "Address",
      value: student.address,
    ),

    StudentInfoModel(
      icon: Icons.person,
      title: "Father",
      value: student.fatherName,
    ),

    StudentInfoModel(
      icon: Icons.person_2,
      title: "Mother",
      value: student.motherName,
    ),
  ];
}
