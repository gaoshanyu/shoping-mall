import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    onSubmitted: (value) {
                      debugPrint("TextField onSubmitted value: $value");
                    },
                    onChanged: (value) {
                      debugPrint("TextField onChanged value: $value");
                    },
                    decoration: InputDecoration(
                        hintText: "Input here",
                        filled: true,
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder(gapPadding: 0, borderRadius: BorderRadius.circular(4), borderSide: const BorderSide(color: Color(0xFFEAEAEA)))),
                  ),
                ),
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ));
  }
}
