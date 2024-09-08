import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gadget_shop/screens/front.dart';
import 'package:gadget_shop/screens/order_review.dart';
import 'package:gadget_shop/screens/store.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIdx = 0;
  final List<Widget> screens = [
    const Front(),
    const Store(),
    const Center(
      child: Text("Hello3"),
    ),
    const OrderReview()
  ];

  void _onTap(int idx) {
    setState(() {
      selectedIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIdx],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.home),
          Icon(Icons.business),
          Icon(Icons.school),
          Icon(Icons.abc_sharp),
        ],
        index: selectedIdx,
        onTap: _onTap,
        // Optionally, you can customize the CurvedNavigationBar with other properties
      ),
    );
  }
}
