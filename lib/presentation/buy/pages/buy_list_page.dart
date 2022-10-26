import 'package:demo_app/common/common_widgets.dart';
import 'package:flutter/material.dart';

class BuyListPage extends StatelessWidget {
  static const route = 'buy_list_page';
  const BuyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar('BUY LIST'),
        body: ListView.separated(
            itemBuilder: ((context, index) {
              return Card(
                child: SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Name: Macbook Pro'),
                        Text('Price: 205000'),
                        Text('Quantity: 15'),
                      ],
                    ),
                  ),
                ),
              );
            }),
            separatorBuilder: ((context, index) => const Divider(
                  height: 1,
                )),
            itemCount: 3));
  }
}
