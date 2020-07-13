import 'package:flutter/material.dart';
import 'select_files/apps.dart'as apps;
import 'select_files/files.dart'as files;
import 'select_files/music.dart'as music;
import 'select_files/photos.dart'as photos;
import 'select_files/videos.dart'as videos;



class FileSelector extends StatefulWidget {
  @override
  _FileSelectorState createState() => _FileSelectorState();
}

class _FileSelectorState extends State<FileSelector> with SingleTickerProviderStateMixin {

TabController controller;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
  }


  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () => Navigator.pop(context),
        ),
       title: Text("Select files"), 
       bottom: TabBar(
         controller: controller,
         tabs:<Tab>[
           Tab(icon: Icon(Icons.android),),
           Tab(icon: Icon(Icons.folder_open),),
           Tab(icon: Icon(Icons.audiotrack),),
           Tab(icon: Icon(Icons.collections),),
           Tab(icon: Icon(Icons.slideshow),),
         ], 
       ),
      ),

      body: TabBarView(
        controller: controller,
        children: <Widget>[
          apps.Apps(),
          files.Files(),
          music.Music(),
          photos.Photos(),
          videos.Videos(),
        ],),


    );
  }
}