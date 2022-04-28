// lib/widgets/counter.dart

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'ตอนนี้นับ $_count',
            style: TextStyle(
              fontSize: 40,
              color: Colors.green[300],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _count = _count + 1;
                print('ค่า count ล่าสุด $_count');
              });
            },
            child: Text('+'),
          ),
        ],
      ),
    );
  }
}
