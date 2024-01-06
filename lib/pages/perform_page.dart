import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PerformPage extends StatefulWidget {
  const PerformPage({super.key});

  @override
  State<PerformPage> createState() => _PerformPageState();
}

class _PerformPageState extends State<PerformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 1, 35),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/back.svg'),
                SizedBox(
                  width: 120,
                  child: Row(children: [SvgPicture.asset('assets/pand_logo.svg'), const SizedBox(width: 15), const Text('PANDA', style: TextStyle(fontSize: 10, fontFamily: 'Chewy', fontWeight: FontWeight.w400, color: Colors.white))]),
                ),
                SvgPicture.asset('assets/menu.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
