import 'package:flutter/material.dart';
import 'package:ui_design/ui/screens/student_list_screen.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key, required this.icon, required this.user, required this.totalUser, required this.iconColor,
  });

  final IconData icon;
  final String user;
  final String totalUser;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              spacing: 15,
              children: [
                Icon(icon, color: iconColor,size:25,),
                Text(user, style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600
                ),),
              ],
            ),
            SizedBox(height: 15,),
            Text(totalUser, style: TextStyle(
                fontSize: 15,
            ),),
            SizedBox(height:20,),
            Row(
              children: [
                TextButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StudentListScreen()),
                  );
                },
                    label: Text('View All'),
                icon: Icon(Icons.arrow_forward),
                iconAlignment: IconAlignment.end,)
              ],
            )
          ],
        ),
      ),
    );
  }
}