import 'package:clean_architecture_with_mvvm/app/app.dart';
import 'package:flutter/cupertino.dart';

class Text extends StatelessWidget {
  const Text({super.key});
void updateAppState(){
  MyApp.instance.appState = 10;
}
void getAppState(){
  print(MyApp.instance.appState ); // 10
}
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
