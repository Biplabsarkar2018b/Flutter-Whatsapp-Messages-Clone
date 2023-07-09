

import 'package:flutter/material.dart';

import '../colors.dart';
import '../info.dart';
import '../widgets/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ,
      appBar: AppBar(
        leadingWidth: 30,
        centerTitle: false,
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            info[0]['profilePic'].toString(),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: const [
          // CHAT LIST
          Expanded(child: ChatList()),
          // TEXT INPUT
          TextField(
            decoration: InputDecoration(
              hintText: 'Type a Message',
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
              ),
              suffix: Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
