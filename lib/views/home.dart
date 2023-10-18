import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:tinder_with_chuck_norris/models/joke.dart';
import 'package:tinder_with_chuck_norris/services/joke_service.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  final String title = "Home Page";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final JokeService _jokeService = JokeService();
  int _randomImgId = Random().nextInt(32) + 1;
  Color _randomColor =
  Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  void _chuckButton() {
    _randomImgId = Random().nextInt(32) + 1;
    _randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(.5); // TODO: make sure random color is light
    setState(
          () {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
        _randomImgId;
        _randomColor;
      },
    );
  }

  Future<void> _launchJokeUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: FutureBuilder<Joke>(
          future: _jokeService.fetchRandomJoke(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final joke = snapshot.data;
              return Container(
                color: _randomColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        height: 250,
                        padding: const EdgeInsets.all(12.0),
                        child: Image(
                            image: AssetImage(
                                'assets/profiles/$_randomImgId.png'),
                            fit: BoxFit.scaleDown)),
                    const Text(
                      'Chuck Norris Joke:',
                      style: TextStyle(fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        // TODO: handle extremely long jokes with "see more"
                        height: 200,
                        child: Text(
                          joke?.value ?? 'No joke available',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {}, // TODO: Dislike button
                          child: const Icon(Icons.heart_broken,
                              color: Colors.pink),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            await _launchJokeUrl(joke?.url ?? '');
                          },
                          child: const Icon(Icons.public,
                              color: Colors.blueAccent),
                        ),
                        ElevatedButton(
                          onPressed: () {}, // TODO: Like button
                          child: const Icon(Icons.favorite,
                              color: Colors.green),
                        ),
                        ElevatedButton(
                          onPressed: _chuckButton,
                          child: const Icon(Icons.skip_next,
                              color: Colors.black45),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }
}