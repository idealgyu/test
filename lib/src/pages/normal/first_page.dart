import 'package:basic/src/pages/normal/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('두번째 페이지로 라우트 ㄱㅏ즈아~~'),
            onPressed: (){
              Get.to(SecondPage());
            },
          ),
        ),
      ),
    );
  }
}
