import 'package:flutter/material.dart';

class OnboardingSkeleton extends StatelessWidget {
  final String imagePath;
  final String title;
  final String desc;

  const OnboardingSkeleton({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.40,
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                softWrap: true,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.indigo, decoration: TextDecoration.none),
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              desc,
              softWrap: true,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.blueGrey, decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}