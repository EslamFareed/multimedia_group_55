import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatefulWidget {
  const UrlLauncherScreen({super.key});

  @override
  State<UrlLauncherScreen> createState() => _UrlLauncherScreenState();
}

class _UrlLauncherScreenState extends State<UrlLauncherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Url Launcher"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var found = await launchUrl(Uri.parse(
                "https://wa.me/+201016361173?text=Hello Form Outside"));
            // var found = await launchUrl(Uri.parse("sms:+201016361173"));
            if (!found) {
              print("error");
            }
          },
          child: const Text("Open Url"),
        ),
      ),
    );
  }
}
