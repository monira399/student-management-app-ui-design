import 'package:flutter/material.dart';
import 'package:ui_design/widgets/userCard.dart';

import '../ui/models/dashboardModel.dart';

class GridViewCard extends StatelessWidget {
  const GridViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 170,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          final item = itemList[index];
          return UserCard(icon: item.icon, user: item.user, totalUser: item.totalUser, iconColor: item.iconColor,);
        });
  }
}