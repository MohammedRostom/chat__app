import 'package:flutter/material.dart';

class DroupPopupMenuButton extends StatelessWidget {
  const DroupPopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert_rounded,
          color: Theme.of(context).iconTheme.color),
      onSelected: (String value) {
        // Handle menu selection
        print("Selected: $value");
      },
      itemBuilder: (BuildContext context) {
        return <String>[
          'New Group',
          'New Broadcast',
          'Starred Message',
          'Settings'
        ].map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }
}
