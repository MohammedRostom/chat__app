import 'package:flutter/material.dart';

class lodaingWidget extends StatelessWidget {
  const lodaingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
