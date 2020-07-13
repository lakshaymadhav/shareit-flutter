import 'package:flutter/material.dart';

class Photos extends StatefulWidget {
  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Photos section"),
      ),
    );
  }
}