import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

bool deskT = false;

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            minWidth: 75,
            selectedIndex: 0,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.group), label: Text("Users")),
              NavigationRailDestination(
                  icon: Icon(CupertinoIcons.photo), label: Text("Photos")),
              NavigationRailDestination(
                  icon: Icon(CupertinoIcons.chart_bar_alt_fill),
                  label: Text("Dashboard")),
            ],
          ),
          const VerticalDivider(),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  setState(() {
                    deskT = true;
                  });
                },
                leading: const Icon(CupertinoIcons.person_crop_circle),
                title: const Text('Lorem im-sum mono'),
                subtitle: const Text('Hello. GoodBye'),
              ),
            ),
          ),
          const VerticalDivider(),
          Expanded(
              flex: 2,
              child: deskT ? const Chat()
                  : const Center(
                      child: Text('Select chat to start messaging'),
              )
          )
        ],
      ),
    );
  }
}
