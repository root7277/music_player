import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetSongs extends StatefulWidget {
  const ResetSongs({super.key});

  @override
  State<ResetSongs> createState() => _ResetSongsState();
}

class _ResetSongsState extends State<ResetSongs> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 8,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.pushNamed(context, 'perform_page'),
          child: Row(
            children: [
              Image.asset('assets/music_scroll.png'),
              const SizedBox(width: 15),
              const Text('Katy Perry - Roar', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
              const SizedBox(width: 15),
              const Text('3:20', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
              const SizedBox(width: 15),
              SvgPicture.asset('assets/play_button.svg'),
            ],
          ),
        );
      },
    );
  }
}
