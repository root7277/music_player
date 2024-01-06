import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player/widgets/albums_widget.dart';
import 'package:music_player/widgets/resent_songs_widget.dart';
import 'package:music_player/widgets/tranding_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                SizedBox(
                  width: 120,
                  child: Row(children: [SvgPicture.asset('assets/pand_logo.svg'), const SizedBox(width: 15), const Text('PANDA', style: TextStyle(fontSize: 10, fontFamily: 'Chewy', fontWeight: FontWeight.w400, color: Colors.white))]),
                ),
                SvgPicture.asset('assets/menu.svg'),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  icon: const Icon(Icons.search_rounded),
                  iconColor: Colors.white),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                const Text('Albums', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                SvgPicture.asset('assets/right.svg'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: SizedBox(
              height: 95,
              child: AlbumsWidget(),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                const Text('Trending', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                SvgPicture.asset('assets/right.svg'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: SizedBox(
              height: 131,
              child: TrandingWidget(),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                const Text('Recent songs', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                SvgPicture.asset('assets/right.svg'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(height: 177, child: ResetSongs()),
          )
        ],
      ),
    );
  }
}
