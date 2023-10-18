import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  final String title = "Home Page";

  @override
  State<About> createState() => _FavoritesState();
}

class _FavoritesState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/chuck.png')),
          Text(
            "About the Author",
            style: TextStyle(fontSize: 30),
          ),
          Text("Rami Husami", style: TextStyle(fontSize: 30)),
          Text("Telegram: @t0mcr8se", style: TextStyle(fontSize: 30)),
          Text("LinkedIn: ramihusami", style: TextStyle(fontSize: 30)),
          Text("Github: @t0mcr8se", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
