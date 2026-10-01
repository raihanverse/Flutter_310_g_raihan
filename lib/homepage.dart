import 'package:flutter/material.dart';
import 'package:flutter/widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Hello",
        style: TextStyle(
          fontSize: 20,
          color: const Color.fromARGB(255, 234, 78, 31),
        ),
      ),
    );
  }
}
```
