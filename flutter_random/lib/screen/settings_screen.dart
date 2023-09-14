import 'package:flutter/material.dart';
import 'package:flutter_random/constant/color.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: maxNumber
                      .toInt()
                      .toString()
                      .split("")
                      .map(
                        (e) => Image.asset(
                          'asset/img/$e.png',
                          width: 50,
                          height: 70,
                        ),
                      )
                      .toList(),
                ),
              ),
              Slider(
                value: maxNumber,
                min: 1000,
                max: 1000000,
                onChanged: (double val) {
                  setState(() {
                    maxNumber = val;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(
                    maxNumber.toInt(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: RED_COLOR,
                ),
                child: Text('저장!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
