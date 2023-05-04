import 'package:basic/src/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.redAccent,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //뒤로가기
                Get.back();
              },
              child: Text('뒤로가기'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  side: BorderSide(width: 3, color: Colors.brown),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.all(20)
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  //홈으로 이동하면서 히스토리 다 지워주기
                  Get.to(Home());
                  Get.offAll(Home());
                },
                child: Text('홈으로가기'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  //background color of button
                  side: BorderSide(width: 3, color: Colors.brown),
                  //border width and color
                  elevation: 3,
                  //elevation of button
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.all(20) //content padding inside button
              ),),

          ],
        ),
      ),
    );
  }
}
