import 'package:flutter/material.dart';
import '../../widgets/grid_view_card.dart';
import '../../widgets/list_view_card.dart';
import '../../widgets/search_box_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1730454626266-e6d47134c044?q=80&w=781&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
              SizedBox(width: 10,),
              Text("DashBoard", style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600
              ),),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchBox_Card(),
                SizedBox(height: 20,),
                GridViewCard(),
                SizedBox(height: 20,),
                SizedBox(
                  height: 400,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dashboard OverView', style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600
                          ),),
                          Expanded(
                            child: ListViewCard(),
                          ),
                        ],
                      ),
                    ),

                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}








