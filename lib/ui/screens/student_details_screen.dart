import 'package:flutter/material.dart';
import 'package:ui_design/ui/models/student_detail_model.dart';

import '../models/studentList_infoModel.dart';

class StudentDetailsScreen extends StatelessWidget {

  final StudentDetailsModel student;
  const StudentDetailsScreen({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final infoList = getStudentInfoList(student);

    return Scaffold(
      appBar: AppBar(
        title: Text('Students Details', style:TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                elevation: 3,
                child:Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                        backgroundImage: NetworkImage(student.image),
                    ),
                    SizedBox(height: 10,),
                    Text('ID: ${student.id}', style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),

                  ],
                )
              ),
            ),
            SizedBox(height: 20,),
         TextButton.icon(onPressed: (){},
             icon: Icon(Icons.person, size: 30,),
                 label: Text('Student Information', style: TextStyle(
                   fontSize: 20, fontWeight: FontWeight.bold
                 ),)),
               Expanded(
                 child: ListView.separated(
                   itemCount: infoList.length,
                     itemBuilder: (context, index){
                     final info = infoList[index] ;
                     return
                     Column(
                       children: [
                         ListTile(
                           leading: Icon(info.icon, size: 30,),
                           title: Text(info.title, style: TextStyle(fontWeight: FontWeight.bold),),
                           trailing: Text(info.value, style: TextStyle(
                             fontSize: 15
                           ),),
                         ),
                       ],
                     );

                 },

                 separatorBuilder: (context, index) {
                 return Divider(
                   thickness: 1,
                   height: 1,
                 );
                 }),
               )
          ],
        ),
      ),
    );
  }
}
