import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool status= false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 44.0,
      height: 28.0,
      toggleSize: 20.0,
      value: status,
      borderRadius: 30.0,
      padding: 4.0,
      activeColor: status?const Color(0xFF5F1ED9):const Color(0xFFEFEBFE),
      inactiveColor: status?const Color(0xFF5F1ED9):const Color(0xFFEFEBFE),
      toggleColor: status?const Color(0xFFEFEBFE):const Color(0xFF5F1ED9),
      onToggle: (val) {
        setState(() {
          status = val;
        });
      },
    );
  }
}