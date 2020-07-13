import 'package:flutter/material.dart';
import 'package:shareit/widgets/fileselector.dart';
import './app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ShareIt")),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          Container(height: 300, child: Image.asset('assets/homeimage.png')),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FileSelector()));
                  },
                  child: Column(children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/send.png',
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.blueAccent[700]),
                    )
                  ]),
                ),
                GestureDetector(
                  onTap: () => null,
                  child: Column(children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/receive.png',
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Receive",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.greenAccent),
                    ),
                  ]),
                ),
              ]),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => null,
                  child: Column(children: <Widget>[
                    Container(
                        height: 75,
                        width: 75,
                        child: Image.asset(
                          'assets/history.png',
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "History",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black87),
                    )
                  ]),
                ),
                GestureDetector(
                  onTap: () => null,
                  child: Column(children: <Widget>[
                    Container(
                        height: 75,
                        width: 75,
                        child: Image.asset(
                          'assets/icon.png',
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Invite",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black87),
                    ),
                  ]),
                ),
              ]),
        ],
      ),
    );
  }
}
