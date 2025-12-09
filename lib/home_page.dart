import 'package:demo_second_app/learn_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context){
              return const LearnFlutterPage();
            })
          );
        },
        child: Text('Learn flutter')
      ),
    );
  }
}