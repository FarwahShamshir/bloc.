import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquatableTessting extends StatefulWidget {
  const EquatableTessting({super.key});

  @override
  State<EquatableTessting> createState() => _EquatableTesstingState();
}

class _EquatableTesstingState extends State<EquatableTessting> {
  String result = "Press the button to compare objects";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equatable Test'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Comparing two Person objects:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                result,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person = Person(name: 'abcd', age: 15);
          Person person1 = Person(name: 'abcd', age: 15);

          setState(() {
            result = person == person1
                ? "Both persons are equal"
                : "Persons are not equal";
          });

          print(person.hashCode.toString());
          print(person1.hashCode.toString());
          print(person == person1);
        },
        child: const Icon(Icons.compare),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class Person extends Equatable {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
