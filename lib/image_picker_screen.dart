import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            image == null
                ? const CircleAvatar(
                    radius: 70,
                  )
                : CircleAvatar(
                    radius: 70,
                    backgroundImage: FileImage(File(image!.path)),
                  ),
            ElevatedButton(
              onPressed: () async {
                image =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                if (image == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("No Image Selected")));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Image Selected")));
                }

                setState(() {});
              },
              child: const Text("Pick Image"),
            ),
          ],
        ),
      ),
    );
  }
}
