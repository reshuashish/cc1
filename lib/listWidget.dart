import 'package:flutter/material.dart';

class ListOfChats extends StatelessWidget {
  const ListOfChats({
    Key key,
    @required this.chatData,
  }) : super(key: key);

  final List chatData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          return Card(margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
            child: ListTile(trailing: Text('9:00'),onTap: (){},
              subtitle: Text(
                chatData[index].message,
              ),
              title: Text(
                chatData[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              leading: CircleAvatar(radius: 30,
                backgroundImage: AssetImage(chatData[index].imgLocation),
              ),
            ),
          );
        });
  }
}
