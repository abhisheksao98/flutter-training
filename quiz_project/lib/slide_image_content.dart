import 'package:flutter/material.dart';

class SlideImageContent extends StatelessWidget {
  const SlideImageContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text('shivanshu'),
        Text(text),
        const Spacer(flex: 2),
        Image.network(image)
      ],
    );
  }
}
