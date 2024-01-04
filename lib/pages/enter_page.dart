import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({super.key});

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 1, 35),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text('Sign In', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white))]),
          ),
          const SizedBox(height: 40),
          Center(child: SvgPicture.asset('assets/frame.svg')),
          const SizedBox(height: 55),
          const Center(child: Text('PANDA', style: TextStyle(fontSize: 32, fontFamily: 'Chewy', fontWeight: FontWeight.w400, color: Colors.white))),
          const SizedBox(height: 40),
          const Text('Panda music app capability of Mp3 as well \nas Mp4 music', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
          const SizedBox(height: 40),
          ElevatedButton(onPressed: () {}, style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(118, 40)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 157, 6, 59))), child: const Text('Play', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white))),
          const SizedBox(height: 50),
          const Text('Login from social media accounts', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SvgPicture.asset('assets/twitter.svg'), SvgPicture.asset('assets/facebook.svg'), SvgPicture.asset('assets/instagram.svg')],
            ),
          )
        ],
      ),
    );
  }
}
