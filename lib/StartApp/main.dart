import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/matreial_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => matreial_app(),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String? _selectedOption; // To hold the currently selected option
// List of dropdown options

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button Example'),
      ),
      body: Center(
        child: Drobmenu(),
      ),
    );
  }
}

final List<String> _options = [
  'New Group ',
  'New Broadcast',
  'Starred Nessage',
  'Settings',
];
DropdownButtonHideUnderline Drobmenu() {
  return DropdownButtonHideUnderline(
    child: DropdownButton<String>(
      icon: Icon(Icons.more_vert_rounded),
      // Placeholder text
      // Current selected value
      onTap: () {},
      onChanged: (String? newValue) {},
      items: _options.map<DropdownMenuItem<String>>((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option), // Display option text
        );
      }).toList(),
    ),
  );
}
