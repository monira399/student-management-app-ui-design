import 'package:flutter/material.dart';
import 'package:ui_design/services/auth_service.dart';

import '../../widgets/grid_view_card.dart';
import '../../widgets/profile_list_view_card.dart';
import '../models/profile_Menu_Model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        title: Text('Profile', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
        actions: [
          Icon(Icons.notification_important)
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1552699611-e2c208d5d9cf?q=80&w=508&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),

                ),
                Text('Moon Islam', style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w600
                ),),
                Text('Admin',style: TextStyle(
                  fontSize: 20
                ),),
                Text('rasel@gmail.com', style: TextStyle(
                  fontSize: 20, color: Colors.grey.shade600
                ),),
                SizedBox(height: 20,),
                Text('Profile Menu',style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w600
                ),)  ,
                SizedBox(height: 20,),
                SizedBox(
                  height: 550,
                  child: Card(
                    child:
                    ProfileListViewCard(),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: 130,
                  child: TextButton.icon(
                    onPressed: () {
                      AuthService.logOut(context);
                    },
                    icon: Icon(Icons.logout, color: Colors.red,size: 30,),
                    label: Text(
                      "Logout",
                      style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),

    );
  }
}

