import 'package:flutter/material.dart';
import 'package:flutter_playground/change_notifier_provider.dart';
import 'package:flutter_playground/consumer.dart';

import 'Cart/cart_model.dart';
import 'Cart/item.dart';

/// FileName provider_route
///
/// @Author MingYu
/// @Date 2022/7/8
///
/// @Description TODO

class ProviderRoute extends StatefulWidget {
  @override
  _ProviderRouteState createState() => _ProviderRouteState();
}

class _ProviderRouteState extends State<ProviderRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProviderRoute'),
      ),
      body: Center(
        child: ChangeNotifierProvider<CartModel>(
          data: CartModel(),
          child: Builder(builder: (context) {
            return Column(
              children: <Widget>[
                FPConsumer<CartModel>(
                  builder: (BuildContext context, cart) =>Text("总价: ${cart?.totalPrice}"),
                ),
                Builder(builder: (context){
                  print("ElevatedButton build"); //在后面优化部分会用到
                  return ElevatedButton(
                    child: Text("添加商品"),
                    onPressed: () {
                      //给购物车中添加商品，添加后总价会更新
                      // ChangeNotifierProvider.of<CartModel>(context).add(Item(20.0, 1));
                      // listen 设为false，不建立依赖关系
                      ChangeNotifierProvider.of<CartModel>(context, listen: false)
                          .add(Item(20.0, 1));
                    },
                  );
                }),
              ],
            );
          }),
        ),
      ),
    );
  }
}