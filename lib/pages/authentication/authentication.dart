import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custome_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: "Authentication",
      color: Colors.blueAccent,
      size: 16,
      weight: FontWeight.normal,
    );
  }
}
