import 'package:basic/src/home.dart';
import 'package:basic/src/pages/named/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //객체도 전달 가능하다
            Text('${(Get.arguments as User).name} ${(Get.arguments as User).age}'),
            Container(
              child: ElevatedButton(
                child: Text('홈으로'),
                onPressed: (){
                  Get.to(Home());
                  Get.offAll(Home());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
