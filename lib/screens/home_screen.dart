import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 26);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera App - Flutter'),
        backgroundColor: Colors.redAccent,
        actions: [const Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('El valor actual es:'),
            Text('$counter', style: textStyle),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(increaseFn: increase),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function increaseFn;

  const CustomFloatingActionButton({super.key, required this.increaseFn});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          onPressed: () => increaseFn(),
          child: const Icon(Icons.plus_one),
        ),
        const SizedBox(width: 30),
        FloatingActionButton(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
