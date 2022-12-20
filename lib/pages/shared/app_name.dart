import 'package:flutter/material.dart';
import 'package:movielab/constants/colors.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Movie',
        style: 
        TextStyle(fontFamily: 'HARLOWSI',fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        children: <TextSpan>[
          TextSpan(text: 'Zone', style: TextStyle(color: kPrimaryColor)),
        ],
      ),
    );
  }
}
