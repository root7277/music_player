import 'package:flutter/material.dart';

class TrandingWidget extends StatefulWidget {
  const TrandingWidget({super.key});

  @override
  State<TrandingWidget> createState() => _TrandingWidgetState();
}

class _TrandingWidgetState extends State<TrandingWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        Image.asset('img_tranding/1.png'),
        Image.asset('img_tranding/2.png'),
        Image.asset('img_tranding/1.png'),
        Image.asset('img_tranding/2.png'),
      ],
    );
  }
}
