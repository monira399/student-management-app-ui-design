import 'package:flutter/material.dart';

import '../ui/models/dashboard_overViewModel.dart';
class ListViewCard extends StatelessWidget {
  const ListViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: overViewList.length,
      itemBuilder: (context, index) {
        final overView = overViewList[index];
        return ListTile(
          leading: Icon(overView.icon, color: overView.iconColor),
          title: Text(overView.title),
          subtitle: Text(overView.subtitle),
          trailing: TextButton(onPressed: (){}, child: Text(overView.statusCount)),

        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          thickness: 1,
          height: 1,
        );
      },
    );
  }
}