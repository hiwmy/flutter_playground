import 'package:flutter/material.dart';
import 'package:flutter_playground/second.dart';
import 'package:flutter_playground/student_model.dart';
import 'package:provider/provider.dart';

/// FileName first
///
/// @Author MingYu
/// @Date 2022/8/12
///
/// @Description 第一个测试页面

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('first builder - 1');
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('First'))),
      body: Consumer<StudentModel>(
        builder: (context, stu, child) {
          debugPrint('first builder - 2');
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('first'),
              TextButton(
                  onPressed: () {
                    // stu.age = 10;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const Second()));
                  },
                  child: Container(
                    width: 100,
                    height: 44,
                    color: Colors.blue,
                    child: const Center(child: Text('go to second', style: TextStyle(color: Colors.white))),
                  ))
            ],
          );
        },
      ),
    );
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('First'))),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('first'),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Second()));
              },
              child: Container(
                width: 100,
                height: 44,
                color: Colors.blue,
                child: const Center(child: Text('go to second', style: TextStyle(color: Colors.white))),
              ))
        ],
      )),
    );
  }
}
