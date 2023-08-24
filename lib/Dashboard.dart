import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:learn_dsa_with_flutter/flowChart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          Text('USer InterFace'),
          DropdownButton2<String>(
            hint: const Text('Introduction'),
            // Displayed when no item is selected
            onChanged: (String? newValue) {
              if (newValue == 'Flowchart') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flowchart()),
                );
              } else if (newValue == 'Flowchart') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flowchart()),
                );
              }
              // You can add more else if blocks for additional items
            },
            items: const <DropdownMenuItem<String>>[
              // Use DropdownMenuItem
              DropdownMenuItem<String>(
                  value: 'Flowchart', child: Text('Flowchart')),
              DropdownMenuItem<String>(
                  value: 'MyScaffold', child: Text('Basic widgets')),
              DropdownMenuItem<String>(
                  value: 'TutorialHome',
                  child: Text('Using Material Components')),
              DropdownMenuItem<String>(
                  value: 'MyButton',
                  child: Text('Handling gestures')),
              DropdownMenuItem<String>(
                  value: 'Counter2',
                  child: Text('Changing widgets in response to input'))
              // Add more items here
            ],
          ),

        ],
      ),
    );
  }
}