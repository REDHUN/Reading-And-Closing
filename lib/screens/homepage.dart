import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openAddRate() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.red,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reading And Closing'),
        actions: [
          IconButton(
            onPressed: _openAddRate,
            icon: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
