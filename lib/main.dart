import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

     var myGroup = AutoSizeGroup();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Таблица"),
        ),
        body: Row(
          children:  [
            Expanded(
              flex: 2,
              child: AutoSizeText(
                'Сума ',
                group: myGroup,
                maxLines: 2,
              ),
            ),
            Expanded(
              child: AutoSizeText(
                'Дата: 07.02.2022',
                group: myGroup,
                maxLines: 2,
              ),
            ),
            Expanded(
              child: AutoSizeText(
                'Количество товаров на складі',
                maxLines: 2,
                group: myGroup,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
