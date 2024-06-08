import 'package:flutter/material.dart';
import 'package:multimedia_group_55/audio_player_screen.dart';
import 'package:multimedia_group_55/camera_screen.dart';
import 'package:multimedia_group_55/pdf_view_screen.dart';
import 'package:multimedia_group_55/url_launcher_screen.dart';
import 'package:multimedia_group_55/video_view_screen.dart';
import 'package:multimedia_group_55/web_view_screen.dart';

import 'image_picker_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraScreen(),
    );
  }
}
