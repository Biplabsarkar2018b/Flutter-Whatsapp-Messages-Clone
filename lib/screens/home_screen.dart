import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';
import '../widgets/contact_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle:
                const SystemUiOverlayStyle(statusBarColor: appBarColor),
            backgroundColor: appBarColor,
            centerTitle: false,
            title: const Text(
              'Biplab\'s Messagin',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_outlined,
                    color: Colors.grey,
                  )),
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ]),
          ),
          body: const ContactList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
            backgroundColor: tabColor,
          ),
        ));
  }
}
