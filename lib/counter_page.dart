import 'package:flutter/material.dart';
import 'package:flutter_playground/provider_route.dart';
import 'package:flutter_playground/share_data_widget.dart';

/// FileName counter_page
///
/// @Author MingYu
/// @Date 2022/7/8
///
/// @Description 计数器使用InheritedWidget共享数据

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterPage'),
      ),
      /*
      body: Column(
        children: [
          ShareDataWidget(
              data: count,
              child: Column(
                  children: [
                    const Center(
                      child: Text('It is counter page'),
                    ),
                    Center(
                      child: Text('random number is $randomNumber'),
                    ),
                    CounterNumberWidget(),
                    TextButton(
                        onPressed: (){_onPressedCounterNumber();},
                        child: const Text('change counter number')
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) {
                                  return ProviderRoute();
                                }
                            )
                          );
                        },
                        child: const Text('go to ProviderRoute')
                    ),
                    const CounterNumberStatelessWidget(),
                  ]
              )
          ),
          // const CounterNumberWidget()
        ],
      )
       */
      body: ShareDataWidget(
        data: count,
        child: Builder(builder: (context){
          return Center(
            // 使用InheritedWidget中的共享数据
            child: Text(ShareDataWidget.of(context)?.data.toString() ?? 'counter number is null'),
          );
        })
      ),
    );
  }

  @override
  // 当State对象的依赖发生变化时会被调用
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 父或祖父widget中的InheritedWidget改变（updateShouldNotify返回true）时会被调用。
    // 如果build中没有依赖InheritedWidget，则此回调不会被调用。
    debugPrint('change dependencies');
  }

  void _onPressedCounterNumber() {
    // ++count;
    ++randomNumber;
    setState(() {
      ++randomNumber;
      ++count;
    });
  }

}

class CounterNumberStatelessWidget extends StatelessWidget {
  const CounterNumberStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Text(ShareDataWidget.of(context)?.data.toString() ?? 'counter number is null'),
      ),
    );
  }
}

class CounterNumberWidget extends StatefulWidget {
  const CounterNumberWidget({Key? key}) : super(key: key);

  @override
  State<CounterNumberWidget> createState() => _CounterNumberWidgetState();
}

class _CounterNumberWidgetState extends State<CounterNumberWidget> {
  @override
  Widget build(BuildContext context) {
    debugPrint('Counter Number WidgetState build');
    return Center(
      // 使用InheritedWidget中的共享数据
      child: Text(ShareDataWidget.of(context)?.data.toString() ?? 'counter number is null'),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('Counter Number WidgetState didChangeDependencies');
  }
}