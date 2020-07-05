import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('野球情報アプリ'),
          ),
          body: Consumer<MainModel>(builder: (context,model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(model.mainWord),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        // 何かする
                        model.changeMainWord();
                      },
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}


