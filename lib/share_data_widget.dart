import 'package:flutter/material.dart';

/// FileName share_data_widget
///
/// @Author MingYu
/// @Date 2022/7/8
///
/// @Description 共享数据

class ShareDataWidget extends InheritedWidget {
  final int data; // 需要在子树中共享的数据，保存点击次数

  const ShareDataWidget({
    Key? key,
    required this.data,
    required Widget child
  }) : super(key: key, child: child);

  // 定义一个便捷方法，方便子树中的widget获取共享数据
  static ShareDataWidget? of(BuildContext context) {
    return context.getElementForInheritedWidgetOfExactType<ShareDataWidget>()?.widget as ShareDataWidget;
  }

  @override
  // 该回调决定当data发生变化时，是否通知子树中依赖data的Widget重新build
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }
}