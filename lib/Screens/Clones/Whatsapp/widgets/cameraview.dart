import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraView extends StatefulWidget {
  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  File? image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    try {
      final _image = await imagePicker.pickImage(
          source: ImageSource
              .camera); //It will be used to access the camera and use the image
      setState(() {
        image = File(_image!.path);
      });
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: image == null
              ? Text(
                  'No Image Selected',
                  style: TextStyle(fontSize: 24),
                )
              : Image.file(image!)),
      floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          child: Icon(Icons.camera_alt, color: Colors.white),
          backgroundColor: Color.fromRGBO(37, 211, 102, 0.9)),
    );
  }
}
