import 'package:flutter/material.dart';
import 'package:projectify/constraints.dart';

class TaskListComponent extends StatelessWidget {
  final List<String> titles = ['by projects', 'boards', 'all tasks'];
  final Color oddItemColor = bgColor.withOpacity(0.6);
  final Color evenItemColor = bgColor.withOpacity(0.15);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: titles.length,
      child: Column(
        children: [
          TabBar(
            tabs: <Widget>[
              Tab(
                icon: const Icon(Icons.cloud_outlined),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.beach_access_sharp),
                text: titles[1],
              ),
              Tab(
                icon: const Icon(Icons.brightness_5_sharp),
                text: titles[2],
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                ListView.builder(
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      tileColor: index.isOdd ? oddItemColor : evenItemColor,
                      title: Text('${titles[0]} $index'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      tileColor: index.isOdd ? oddItemColor : evenItemColor,
                      title: Text('${titles[1]} $index'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      tileColor: index.isOdd ? oddItemColor : evenItemColor,
                      title: Text('${titles[2]} $index'),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
