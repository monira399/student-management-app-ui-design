import 'package:flutter/material.dart';
import 'package:ui_design/ui/models/student_detail_model.dart';

class StudentProvider extends ChangeNotifier{

  final List<StudentDetailsModel> _students =[];

  List<StudentDetailsModel> get students => _students;

  void addStudent(StudentDetailsModel student) {
    _students.add(student);
    notifyListeners();
  }

}