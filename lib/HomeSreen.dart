import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MOVIES'),
            bottom: TabBar(
              tabs: [
                Tab(text: "Top Movies"),
                Tab(text: "Popular"),
                Tab(text: "Now Playing"),
              ],
            ),
          ),
        ),
      ),
    );
  }

}












