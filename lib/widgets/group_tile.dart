import 'package:flutter/material.dart';
import 'package:group_chat_app/pages/chat_page.dart';

class GroupTile {
  final String userName;
  final String groupId;
  final String groupName;
//GroupTile({this.userName, this.groupId, this.groupName});
  //GroupTile({required this.userName, this.groupId = 'Default Group ID', this.groupName = 'Default Group Name'});
  GroupTile({required this.userName, this.groupId = 'Default Sender', this.groupName = 'Default Group Name'});
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(groupId: groupId, userName: userName, groupName: groupName,)));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.blueAccent,
            child: Text(groupName.substring(0, 1).toUpperCase(), textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
          ),
          title: Text(groupName, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Join the conversation as $userName", style: TextStyle(fontSize: 13.0)),
        ),
      ),
    );
  }
