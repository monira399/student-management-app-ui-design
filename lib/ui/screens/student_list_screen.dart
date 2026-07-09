import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/ui/models/student_list_model.dart';
import 'package:ui_design/ui/provider/student_provider.dart';
import 'package:ui_design/ui/screens/student_add_screen.dart';
import 'package:ui_design/ui/screens/student_details_screen.dart';
import 'package:ui_design/widgets/search_box_card.dart';

import '../models/student_detail_model.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key });

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  @override
  Widget build(BuildContext context) {
    final students = context.watch<StudentProvider>().students;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text('Students', style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600
        ),),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),

      body: Padding  (
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SearchBox_Card(),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                  itemBuilder: (context, index) {
                  final student = students[index];
                    return Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(student.image),
                        ),
                        title: Text(student.name, style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold
                        ),),
                        subtitle: Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text(student.id, style: TextStyle(
                              color: Colors.grey.shade600
                            ),),
                            Text(student.className),
                          ],
                        ),
                        trailing: TextButton.icon(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDetailsScreen(student: student)));
                        },
                            icon: Icon(Icons.arrow_forward_ios),
                            iconAlignment: IconAlignment.end,
                            label: Text(student.attendance.toString(), style: TextStyle(
                              color: Colors.green
                            ),),) ,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StudentAddScreen()));
      },
        child: Icon(Icons.add),
      ),
    );

    
  }
}
