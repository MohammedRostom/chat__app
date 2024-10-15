// ignore: file_names

import 'package:Chat_app/core/Components/inputform.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Form_section extends StatelessWidget {
  const Form_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                  2,
                  (index) => inputForm(
                    prefixIcon: Icon(index == 0
                        ? Icons.email
                        : index == 1
                            ? Icons.lock
                            : index == 2
                                ? Icons.lock
                                : index == 3
                                    ? Icons.phone
                                    : null),
                    labelText: index == 0
                        ? "Email "
                        : index == 1
                            ? "Password"
                            : index == 2
                                ? "Re_Password"
                                : "Phone",
                    hintText: index == 1
                        ? "*******************"
                        : index == 2
                            ? "*******************"
                            : index == 3
                                ? "+20123456789"
                                : "Emial456@gmail.com",
                    obscureText: index == 1 && index == 2 ? true : false,
                    suffixIcon: index == 1 || index == 2
                        ? InkWell(child: Icon(Icons.remove_red_eye_outlined))
                        : null,
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}
