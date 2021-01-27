import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(PianoApp());
}

class PianoApp extends StatelessWidget {
  void playSound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({Color color, int soundnumber , String text}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            return playSound(soundnumber);
          },
          color: color,
        child: Text(text),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("My Lullaby List "),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Image.network("https://www.bellybelly.com.au/wp-content/uploads/2013/10/when-do-babies-start-talking.jpg"),

              buildKey(color: Colors.blueGrey, soundnumber: 1, text: "Mio's Dream"),
              Image.network("https://www.unicef.org/parenting/sites/unicef.org.parenting/files/styles/hero_desktop/public/AdobeStock_166161324.jpeg?itok=w6XMDzoD"),
              buildKey(color: Colors.green, soundnumber: 2,text: "Western"),

              Image.network("https://www.premierhealth.com/images/default-source/premier-health-now/p-c-mkt93095_twin_babies_1024x512.jpg?sfvrsn=e958650_0"),

              buildKey(color: Colors.red, soundnumber: 3,text: "Celeste"),

            ],
          ),
        ),
      ),
    );
  }
}

