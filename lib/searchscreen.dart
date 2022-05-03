import 'package:flutter/material.dart';

class searchscreen extends StatefulWidget {
  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
