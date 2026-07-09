import 'package:flutter/material.dart';

class SearchBox_Card extends StatelessWidget {
  const SearchBox_Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 55,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(context).dividerColor
          ),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).brightness == Brightness.light
                ? Colors.black12
                :Colors.transparent,
                blurRadius: 8,
                offset: Offset(0, 3)
            )
          ]
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search students...',
            prefixIcon: Icon(Icons.search_rounded),
            suffixIcon: Icon(Icons.tune),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 15)
        ),

      ),
    );
  }
}