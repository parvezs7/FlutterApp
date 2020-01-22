import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white70,
            radius: 50,
            backgroundImage: AssetImage('images/myprofile.jpg'),
          ),
          Text(
            'Parvez Siddique',
            style: TextStyle(
                color: Colors.black38,
                fontSize: 20,
                fontFamily: 'Pacifico',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          ),
          Text('Software Developer',
              style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  fontFamily: 'OpenSansBold',
                  fontStyle: FontStyle.normal,
                  letterSpacing: 2.5)),
          SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              )),
          Card(
              borderOnForeground: true,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text('+91 8286149863',
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'OpenSansBold',
                        fontSize: 20.0)),
              )),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                  leading: Icon(Icons.mail, color: Colors.teal),
                  title: Text('parvez.r7@outlook.com',
                      style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'OpenSansBold',
                          fontSize: 20.0))))
        ]);
  }
}
