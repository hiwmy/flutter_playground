import 'package:flutter/material.dart';

/// FileName change_notifier
///
/// @Author MingYu
/// @Date 2022/7/8
///
/// @Description TODO

class FPChangeNotifier implements Listenable {
  List listeners = [];
  @override
  void addListener(VoidCallback listener) {
    // 添加监听器
    listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    // 移除监听器
    listeners.remove(listener);
  }

  void notifyListeners() {
    for (var element in listeners) {
      element();
    }
  }
}