import 'package:flutter/material.dart';

class HomeScree extends StatefulWidget {
  const HomeScree({super.key});

  @override
  State<HomeScree> createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScree> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 110),
            child: AppBar(
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: const Text("TabBar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            bottom: const TabBar(
              labelStyle: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
                tabs: [
                  Tab(
                    text: "Chats",
                  icon: Icon(Icons.chat,
                    size: 18,
                  ),
                   ),
                  Tab(
                    text: "status",
                    icon: Icon(Icons.update,
                      size: 18,
                    ),
                  ),
                  Tab(
                    text: "call",
                    icon: Icon(Icons.call,
                    size: 18,
                    ),
                  ),
                ],
            ),
            ),
          ),
          body: const TabBarView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your Chats Is Empty !!")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your Status Is Empty !!")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your Call Is Empty !!")
                  ],
                ),
              ],
          ),
        ),
    );
  }
}
