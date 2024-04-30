import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'chat.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Lite', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.group), label: "Users"),
          NavigationDestination(icon: Icon(CupertinoIcons.photo), label: "Photos"),
          NavigationDestination(icon: Icon(CupertinoIcons.chart_bar_alt_fill), label: "Dashboard"),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) =>  ListTile(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat()));},
                leading: const Icon(CupertinoIcons.person_crop_circle),
                title: const Text('Lorem im-sum mono'),
                subtitle: const Text('Hello. GoodBye'),
              ),
            ),
          ),
            const VerticalDivider(),
           const Expanded(
              flex: 2,
              child: Center(
                  child: Text('Select chat to start messaging')
              )
          )
        ],
      ),
    );
  }
}
