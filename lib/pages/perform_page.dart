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
                InkWell(onTap: () => Navigator.pop(context), child: SvgPicture.asset('assets/back.svg')),
                SizedBox(
                  width: 120,
                  child: Row(children: [SvgPicture.asset('assets/pand_logo.svg'), const SizedBox(width: 15), const Text('PANDA', style: TextStyle(fontSize: 10, fontFamily: 'Chewy', fontWeight: FontWeight.w400, color: Colors.white))]),
                ),
                SvgPicture.asset('assets/menu.svg'),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              width: 294,
              height: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 1, 46),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Image.asset('assets/perform.png'),
                  const SizedBox(height: 35),
                  const Text('Alan walker - Faded', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                  const SizedBox(height: 10),
                  const Text('Artist - Alan walker', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white)),
                  const SizedBox(height: 10),
                  const Text('Length - 3:10 mins', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 33),
          const Text('Switch to video music', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
          const SizedBox(height: 18),
          SvgPicture.asset('assets/Mp4.svg'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.skip_previous, color: Colors.white, size: 30)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.fast_rewind, color: Colors.white, size: 30)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.fast_forward, color: Colors.white, size: 30)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.skip_next, color: Colors.white, size: 30)),
            ],
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('1:00', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/music_track.svg'),
              const SizedBox(width: 10),
              const Text('3:10', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
