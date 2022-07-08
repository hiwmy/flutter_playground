import 'package:flutter/material.dart';
import 'package:flutter_playground/change_notifier_provider.dart';

/// FileName consumer
///
/// @Author MingYu
/// @Date 2022/7/8
///
/// @Description TODO

// 这是一个便捷类，会获得当前context和指定数据类型的Provider
class FPConsumer<T> extends StatelessWidget {
  FPConsumer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext context, T? value) builder;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      ChangeNotifierProvider.of<T>(context),
    );
  }
}