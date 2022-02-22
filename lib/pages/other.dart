import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/counterController.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                  "Page Was Clicked ${_counterController.counter.value}times")),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("open other page"),
            ),
          ),
        ],
      ),
      
    );
  }
}
