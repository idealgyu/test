import 'package:basic/src/controller/count_controller_with_getx.dart';
import 'package:basic/src/controller/count_controller_with_provider.dart';
import 'package:basic/src/controller/count_controller_with_reactive.dart';
import 'package:basic/src/home.dart';
import 'package:basic/src/pages/named/second_page.dart';
import 'package:basic/src/pages/state/with_getx.dart';
import 'package:basic/src/pages/state/with_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ReactiveStateManage extends StatelessWidget {
  const ReactiveStateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //선언해준다. 이제부터 쓸수 있게 된다.
    Get.put(CountControllerWithReactive());

    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GetX',
              style: TextStyle(fontSize: 30),
            ),

            //일반적으로 GetBuilder를 썼지만 반응형은 obx를 쓴다.
            //증가된 값을 가져오는 것도 컨트롤러를 찾아서 접근해서 가져온다.
            Obx((){
              return Text(
              '${Get.find<CountControllerWithReactive>().count.value}',
              style: TextStyle(fontSize: 30),
            );
            },),

            //버튼 눌러서 증가시켜주는 것도 컨트롤러를 찾아서 접근해서 증가시킨다.
            ElevatedButton(
                onPressed: () {
                  Get.find<CountControllerWithReactive>().increase();
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 30),
                )),
            
            ElevatedButton(
                onPressed: () {
                  Get.find<CountControllerWithReactive>().set5(5);
                },
                child: Text(
                  "5로 변경",
                  style: TextStyle(fontSize: 30),
                )),
          ],
        ),
      ),
    );
  }
}
