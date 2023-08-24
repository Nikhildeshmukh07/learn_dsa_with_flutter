import 'package:flutter/material.dart';
class Flowchart extends StatelessWidget {
  const Flowchart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flowchart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text('Flowchart'),
      ),
    );
  }
}
