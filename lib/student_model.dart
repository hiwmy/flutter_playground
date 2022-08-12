import 'package:flutter/material.dart';

/// FileName student_model
///
/// @Author MingYu
/// @Date 2022/8/12
///
/// @Description 数据模型

class StudentModel extends ChangeNotifier {
  // int age = 0;

  int _age = 0;

  StudentModel();

  set age(int value) {
    _age = value;
    notifyListeners();
  }

  int get age => _age;

}

// class StudentModel extends ChangeNotifier {
//   int age = 0;
//   /*
//   int _age = 0;
//
//   StudentModel();
//
//   set age(int value) {
//     _age = value;
//     notifyListeners();
//   }
//
//   int get age => _age;
//    */
// }