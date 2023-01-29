import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_radio_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _value = 1.obs;

    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          child: Column(
            children: [
              Obx(
                () => CustomRadioButton(
                  title: Text('test'),
                  value: 1,
                  groupValue: _value.value,
                  onChanged: (value) {
                    _value.value = value!;
                  },
                  leading: Text(
                    'test',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _value.value == 1 ? Colors.white : Colors.grey,
                    ),
                  ),
                  backgroundColor: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: _value.value == 1 ? Colors.red : Colors.grey,
                    width: 1,
                  ),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 35,
                ),
              ),
              Obx(
                () => CustomRadioButton(
                  value: 2,
                  groupValue: _value.value,
                  onChanged: (value) {
                    _value.value = value!;
                  },
                  leading: Text(
                    'test',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _value.value == 2 ? Colors.white : Colors.grey,
                    ),
                  ),
                  backgroundColor: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: _value.value == 2 ? Colors.red : Colors.grey,
                    width: 1,
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  height: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
