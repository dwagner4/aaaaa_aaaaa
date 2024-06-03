import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNum) async {
    final player = AudioPlayer();
    await player.setVolume(0.5);
    await player.play(DeviceFileSource('assets/note$soundNum.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                  onPressed: (){playSound(1);}, 
                  child: Text(''),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                  ),
              ),
              TextButton(
                  onPressed: (){playSound(2);}, 
                  child: Text(''),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
                  ),
              ),
              TextButton(
                  onPressed: (){playSound(3);}, 
                  child: Text(''),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.yellow),
                  ),
              ),
              OutlinedButton(
                  onPressed: (){playSound(4);}, 
                  child: Text(''),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                  ),
              ),
              TextButton(
                  onPressed: (){playSound(5);}, 
                  child: Text(''),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
                  ),
              ),
              TextButton(
                  onPressed: (){playSound(6);}, 
                  child: Text(''),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
                  ),
              ),
              TextButton(
                  onPressed: (){playSound(7);}, 
                  child: Text(''),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple),
                  ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
