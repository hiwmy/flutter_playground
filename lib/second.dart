import 'package:flutter/material.dart';
import 'package:flutter_playground/student_model.dart';
import 'package:provider/provider.dart';

/// FileName second
///
/// @Author MingYu
/// @Date 2022/8/12
///
/// @Description 第二个页面

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SecondState();
  }
}

class SecondState extends State<Second> {
  @override
  /*
  Widget build(BuildContext context) {
    debugPrint('Second -1');
    return Scaffold(
      appBar: AppBar(title: const Text('Second')),
      body: Consumer<StudentModel>(builder: (context, stu, cld) {
        debugPrint('Second -2');
        return Center(
          child: TextButton(
              onPressed: () {
                stu.age = 5;
                debugPrint('second ');
              },
              child: cld ?? const Center(child: Text('hello'))),
        );
      },

    child: Builder(builder: (context) {
      debugPrint('hello world widget');
      return const Center(
      child: Text('hello world')
    );
    }
    )
    //   child: const Center(
    //       child: Text('hello world'))
    //   ),
    ));
  }
  */
  /*
  Widget build(BuildContext context) {
    debugPrint('Second -1');
    return Scaffold(
        appBar: AppBar(title: const Text('Second')),
        body: Center(
    child: TextButton(
    onPressed: () {
      Provider.of<StudentModel>(context, listen: false).age = 5;
    debugPrint('second ');
    },
    child: const Center(child: Text('hello'))),
    ));
  }
   */
  /*
  Widget build(BuildContext context) {
    return Selector<StudentModel, int>(
        builder: (context, ae, cld) {
          debugPrint('selector');
          return Scaffold(
              appBar: AppBar(title: const Text('Second')),
              body: Center(
            child: TextButton(
                onPressed: () {
                  Provider.of<StudentModel>(context, listen: false).age = 1;
                  debugPrint('second ');
                },
                child: const Center(child: Text('hello'))),
          ));
        },
        selector: (_, model) => model.age,
      shouldRebuild: (int previous, int next) => previous != next
    );
    */
  /*
    return Scaffold(
        appBar: AppBar(title: const Text('Second')),
        body: Center(
          child: TextButton(
              onPressed: () {
                Provider.of<StudentModel>(context, listen: false).age = 5;
                debugPrint('second ');
              },
              child: const Center(child: Text('hello'))),
        ));
  }
   */
  Widget build(BuildContext context) {
    debugPrint('Second -1');
    return Scaffold(
        appBar: AppBar(title: const Text('Second')),
        body: Consumer<StudentModel>(builder: (context, stu, cld) {
          debugPrint('Second -2');
          return Selector<StudentModel, int>(
            builder: (context, ae, cld) {
              debugPrint('selector');
              return Center(
                child: TextButton(
                    onPressed: () {
                      Provider.of<StudentModel>(context, listen: false).age = 1;
                      debugPrint('second ');
                    },
                    child: const Center(child: Text('hello'))),
              );
            },
            selector: (_, model) => model.age,
          );
        }, child: Builder(builder: (context) {
          debugPrint('hello world widget');
          return const Center(child: Text('hello world'));
        })));
  }
}
