import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Hey,UserId"),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 1, vertical: 4),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(
                    child: FittedBox(
                        child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.people),
                ))),
                title: Text("Redmi Note 7 Pro"),
                trailing:
                    IconButton(icon: Icon(Icons.edit), onPressed: () => null),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.computer,
              color: Colors.black54,
            ),
            title: Text('Connect to computer'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.black54,
            ),
            title: Text('Invite'),
            onTap: () => null,
          ),
          Text(
            "Genral settings",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Colors.black54,
            ),
            title: Text('Language'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.folder_special,
              color: Colors.black54,
            ),
            title: Text('Destination Folder'),
            onTap: () => null,
          ),
          Divider(),
        ],
      ),
    );
  }
}
