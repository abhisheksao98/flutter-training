import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  SubjectCard({
    Key? key,
    required this.subjectTitle,
    required this.image,
    required this.onpress,
  }) : super(key: key);

  final String subjectTitle;
  final String image;
  final VoidCallback onpress;
  bool isTap = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: onpress,
      child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.contain,
                  image: NetworkImage(
                    image,
                    scale: 5,
                  ),
                ),
              ),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  subjectTitle,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
