import 'package:basic/src/controller/count_controller_with_getx.dart';
import 'package:basic/src/controller/count_controller_with_provider.dart';
import 'package:basic/src/home.dart';
import 'package:basic/src/pages/named/second_page.dart';
import 'package:basic/src/pages/state/with_getx.dart';
import 'package:basic/src/pages/state/with_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SimpleStateManage extends StatelessWidget {
  const SimpleStateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //인스턴스 생성...및 선언 끝! 이제부터 사용이 가능...어디서든지
    //선언 역시 어디서든 해도 된다는 장점이 있다!!
    //선언이 자유롭다는 장점!!!

    Get.put(CountControllerWithGetX());

    return Scaffold(
      appBar: AppBar(
        title: Text('단순상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              //하위 뷰모델
              child: WithGetX(),
            ),
            Expanded(
              //상단인 이곳에 Provider를 등록을 해줘야 한다. 원래는 최상위에 등록을 해줬어야 한다.
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(), //컨트롤러
                child: WithProvider(), //뷰 모델
              ),
            ),
          ],
        ),
      ),
    );
  }
}
