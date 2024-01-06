import 'package:flutter/material.dart';

class AlbumsWidget extends StatefulWidget {
  const AlbumsWidget({super.key});

  @override
  State<AlbumsWidget> createState() => _AlbumsWidgetState();
}

class _AlbumsWidgetState extends State<AlbumsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(right: 20),
      children: [
        Image.asset('img_albums/1.png'),
        Image.asset('img_albums/2.png'),
        Image.asset('img_albums/3.png'),
        Image.asset('img_albums/1.png'),
        Image.asset('img_albums/2.png'),
        Image.asset('img_albums/3.png'),
      ],
    );
  }
}
