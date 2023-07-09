import 'package:flutter/material.dart';

import '../info.dart';
import '../screens/chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ChatScreen(),
                  ),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString(),
                  ),
                  onBackgroundImageError: (exception, stackTrace) => Image.network(
                      'https://img.freepik.com/free-icon/user_318-159711.jpg'),
                ),
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
