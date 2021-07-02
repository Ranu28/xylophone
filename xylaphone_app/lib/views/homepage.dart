import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AudioPlay(
                  size: size,
                  audioileName: "note1.wav",
                  backgroundColor: Colors.green[400],
                ),
                AudioPlay(
                  size: size,
                  audioileName: "note2.wav",
                  backgroundColor: Colors.yellow[400],
                ),
                AudioPlay(
                  size: size,
                  audioileName: "note3.wav",
                  backgroundColor: Colors.amber[400],
                ),
                AudioPlay(
                  size: size,
                  audioileName: "note4.wav",
                  backgroundColor: Colors.orange[400],
                ),
                AudioPlay(
                  size: size,
                  audioileName: "note5.wav",
                  backgroundColor: Colors.purple[400],
                ),
                AudioPlay(
                  size: size,
                  audioileName: "note6.wav",
                  backgroundColor: Colors.blue[200],
                ),
                AudioPlay(
                  size: size,
                  audioileName: "note7.wav",
                  backgroundColor: Colors.blue[400],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AudioPlay extends StatelessWidget {
  final String audioileName;
  final Color backgroundColor;
  const AudioPlay({
    Key key,
    @required this.size,
    this.audioileName,
    this.backgroundColor,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        final player = AudioCache();
        player.play(audioileName);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        height: 70,
        width: size.width,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
