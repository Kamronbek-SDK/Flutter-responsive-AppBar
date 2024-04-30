import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter13/chat.dart';
import 'package:flutter13/desktop.dart';
import 'package:flutter13/tablet.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    if(size <= 500){
      return const Phone();
    }
    else if(size <= 750 && size >= 500){
      return const Tablet();
    }
    else{
      return const Desktop();
    }
  }
}


class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
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
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) =>  ListTile(
          onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat()));},
          leading: const Icon(CupertinoIcons.person_crop_circle),
          title: const Text('Lorem im-sum mono'),
          subtitle: const Text('Hello. GoodBye'),
        ),
      ),
    );
  }
}
