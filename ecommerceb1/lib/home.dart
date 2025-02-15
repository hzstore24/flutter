import 'package:ecommerceb1/chat.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List chats = [
    {
      'name': 'codewithowais',
      'lastMessage': 'Hellloooooo....',
      'image': '',
      'status': '',
      'time': '',
      'notificationCount': ''
    },
    {
      'name': 'codewithAbs',
      'lastMessage': 'Hellloooooo ABS....',
      'image': '',
      'status': '',
      'time': '',
      'notificationCount': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        // leading: const Text("Leading"),
        title: const Text("Whatsapp"),
        actions: const [
          Text("Action 1"),
          Text("Action 2"),
          Text("Action 3"),
          Text("Action 4"),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatView(),
                ),
              );
            },
            tileColor: Colors.blue,
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.jpg?s=2048x2048&w=is&k=20&c=yif473DFhN451o-tNC1tASFFoP5QTOYcqS26dhEbv6U='),
            ),
            title: Text("${chats[i]['name']}"),
            subtitle: const Text('Helloooo........'),
            trailing: const Icon(Icons.notifications_off_outlined),
          );
        },
      ),
      drawer: Drawer(
        child: Container(
          child: const Column(
            children: [
              // DrawerHeader(
              //   decoration: BoxDecoration(color: Colors.red),
              //   child: Text("Hello"),
              // )
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text("Codewithowais"),
                accountEmail: Text("codewithowais@gmail.com"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
