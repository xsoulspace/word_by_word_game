import 'package:flutter/material.dart';

import '../widgets/resizable_pane.dart';

class DesignSystemScreen extends StatelessWidget {
  const DesignSystemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Sidebar
          ResizablePane(
            child: ObjectsPane(),
            initialSize: 250,
            minSize: 150,
            maxSize: 400,
          ),
          // Main Content Area
          Expanded(
            child: Center(
              child: Text('Design Canvas'),
            ),
          ),
          // Right Sidebar
          ResizablePane(
            child: ObjectPropertiesPane(),
            initialSize: 250,
            minSize: 150,
            maxSize: 400,
          ),
        ],
      ),
    );
  }
}

class ObjectsPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Text('Objects', style: Theme.of(context).textTheme.titleLarge),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(title: Text('Text')),
                ListTile(title: Text('Painter')),
                // Add more objects as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ObjectPropertiesPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Object Properties',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          // Add property fields here
        ],
      ),
    );
  }
}
