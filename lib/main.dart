import 'package:flutter/material.dart';
import 'package:tinder_with_chuck_norris/views/about.dart';
import 'package:tinder_with_chuck_norris/views/favorites.dart';
import 'dart:math';
import 'package:tinder_with_chuck_norris/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder with Chuck Norris',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tinder with Chuck Norris'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: IndexedStack(index: index, children: const [
          Home(),
          Favorites(),
          About(),
        ]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (int newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outlined), label: 'Favorites'),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About'),
            ]),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _chuckButton,
        //   tooltip: 'New Joke',
        //   child: Image.asset('assets/chuck.png'),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
