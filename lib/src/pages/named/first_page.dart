import 'package:basic/src/pages/named/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Named Page'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('두번째 페이지로 라우트'),
            onPressed: (){
              Get.toNamed('/second');
            },
          ),
        ),
      ),
    );
  }
}
