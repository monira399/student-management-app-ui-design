import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ui/models/profile_Menu_Model.dart';
import '../ui/provider/theme_provider.dart';

class ProfileListViewCard extends StatelessWidget {
  const ProfileListViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final menuList = [
      ProfileMenuModel(
        leadingIcon: Icons.dark_mode,
        trailingIcon: Icons.arrow_forward_ios,
        title: "Theme",
        subtitle: "Light / Dark Mode",
        onTap: () {
          context.read<ThemeProvider>().toggleThemeMode();
        },
      ),
    ];
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: profileMenuList.length,
        itemBuilder: (context, index){
          final profileMenu = profileMenuList[index];

          return ListTile(
            leading: Icon(profileMenu.leadingIcon),
            title:Text(profileMenu.title),
            subtitle: Text(profileMenu.subtitle),
            trailing: Icon(profileMenu.trailingIcon),
            onTap: (){
              if(profileMenu.title == 'Theme'){
                context.read<ThemeProvider>().toggleThemeMode();
              }
            },

          );
        },

        separatorBuilder: (context, index){
          return Divider(
            thickness: 1,
            height: 1,
          );
        }
    );
  }
}