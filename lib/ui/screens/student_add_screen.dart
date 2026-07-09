import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/ui/models/student_detail_model.dart';
import 'package:ui_design/ui/provider/student_provider.dart';

class StudentAddScreen extends StatefulWidget {
  const StudentAddScreen({super.key});

  @override
  State<StudentAddScreen> createState() => _StudentAddScreenState();
}

File? selectedImage;

final ImagePicker picker = ImagePicker();


class _StudentAddScreenState extends State<StudentAddScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text('Add Student', style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: pickImage,
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage:
                  selectedImage != null ?
                      FileImage(selectedImage!)
                      : null,
                  child: selectedImage == null ?
                   const Icon(Icons.camera_alt, size: 35,)
                      : null
                ),
              ),
              SizedBox(height: 10),
              Text('Upload Photo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),
              SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Student Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(
                  hintText: 'Student Id',
                  prefixIcon: Icon(Icons.credit_card),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FilledButton(onPressed: (){
                 context.read<StudentProvider>().addStudent(
                   StudentDetailsModel(
                     name: _nameController.text,
                     id: _idController.text,
                     email: _emailController.text,
                     image: selectedImage?.path ?? "",
                   ),
        
                 );
                 Navigator.pop(context);
        
                }, child: Text('Add Student', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
                ),)),
              )
            ],
        
          ),
        ),
      ),
    );
  }

  Future <void> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if(image != null){
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _idController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
