import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AssetsAudioPlayer().open(
              Audio.network(
                  "https://samplelib.com/lib/preview/mp3/sample-3s.mp3"),
              autoStart: true,
              showNotification: true,
            );
          },
          child: Text("Click me"),
        ),
      ),
    );
  }
}
