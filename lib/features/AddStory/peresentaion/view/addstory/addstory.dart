import 'package:Chat_app/core/Components/screenBodySize.dart';
import 'package:Chat_app/core/Theme/Colors.dart';
import 'package:Chat_app/core/comm_methods/ComMethods.dart';
import 'package:Chat_app/features/AddStory/peresentaion/view/addstory/widgets/StoryTextArea.dart';
import 'package:Chat_app/features/MainHome/peresentaion/view/layout/Layout_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class addstory extends StatefulWidget {
  @override
  _AddStoryState createState() => _AddStoryState();
}

class _AddStoryState extends State<addstory> {
  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus when the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose(); // Clean up the focus node
    super.dispose();
  }

  final List<Color> storyColor = [
    const Color.fromARGB(255, 151, 41, 33), // Story with red background
    const Color.fromARGB(255, 40, 94, 42), // Story with green background
    const Color.fromARGB(255, 22, 99, 161), // Story with blue background
    const Color.fromARGB(255, 172, 103, 1), // Story with orange background
    const Color.fromARGB(255, 102, 26, 116), // Story with purple background
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              NavgateTo(context, Widget: layout_home(), time: 0);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 24,
            )),
        actions: [
          Container(
              margin: EdgeInsets.all(20),
              child: GestureDetector(
                child: Text("Save"),
                onTap: () {
                  print("save my  story ===> ${_controller.text}");
                },
              ))
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: storyColor[3],
      body: screenBodySize(
        widget: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StoryTextArea(focusNode: _focusNode, controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
