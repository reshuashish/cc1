import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String dropdownValue = 'Football';

  List<String> sports = ['Cricket', 'Football', 'Squash', 'Basketball'];

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.tealAccent,
      padding: EdgeInsets.all(15),
      child: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: CircleAvatar(radius: 50,
              backgroundImage: AssetImage('assets/img5.jpeg'),
        ),
            ),
          ),

          TextFormField(
            decoration:
            InputDecoration(hintText: 'Full name', labelText: 'Name'),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Age', labelText: 'Age'),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'bitsId', labelText: 'Id'),
          ),
          SizedBox(height: 15,
          ),
          TextFormField(
            decoration:
            InputDecoration(hintText: 'Bits email', labelText: 'Email id'),
          ),
          SizedBox(
            height: 30,
          ),
          DropdownButton<String>(
            isExpanded: true,
            hint: Text('Sports'),
            value: dropdownValue,
            icon: Icon(
              Icons.keyboard_arrow_down,
            ),
            iconSize: 30,
            elevation: 16,
            style: TextStyle(fontSize: 30, color: Colors.deepPurple),
            underline: Container(
              height: 1,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: sports.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
