import 'package:flutter/material.dart';
import 'package:flutter_apperentice_book/03_basic_widgets/card1.dart';

class FooderlichHome extends StatefulWidget {
  const FooderlichHome({Key? key}) : super(key: key);

  @override
  State<FooderlichHome> createState() => _FooderlichHomeState();
}

class _FooderlichHomeState extends State<FooderlichHome> {
  int _selectedIndex = 0;

// 8
  static List<Widget> pages = <Widget>[
  const Card1(),
// TODO: Replace with Card2
    Container(color: Colors.green),
// TODO: Replace with Card3
    Container(color: Colors.blue)
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          _onItemTapped(index);
        },
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
