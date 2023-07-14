import 'package:example_of_bottm_navigation_bar/bodycontent.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}
int _currentitem=0;
class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("example of BottomNavigationBar "),
      ),
      body: getWidget(context,_currentitem),
      bottomNavigationBar: BottomNavigationBar(items: 
     const [
        BottomNavigationBarItem(
          icon: Icon(Icons.email),
          label: "email"),
           BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: "Info"),
           BottomNavigationBarItem(
          icon: Icon(Icons.keyboard),
          label: "keyboard"),


      ],
      onTap: ((value) {
        setState(() {
          _currentitem=value;
        }
        );
      }
      ),
      ),
      );
  }
}