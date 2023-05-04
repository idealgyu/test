import 'package:basic/src/controller/dependency_controller.dart';
import 'package:basic/src/pages/dependency/getput/get_lazyput.dart';
import 'package:basic/src/pages/dependency/getput/get_put.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DependencyManage extends StatelessWidget {
  const DependencyManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('의존성 관리'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {

                  //Get.to로 보내면서, binding 을 써서 put(객체 선언 및 생성) 해준다. 의존성 주입
                  Get.to(GetPut(),
                      binding: BindingsBuilder(() {
                        Get.put(DependencyController());
                  }));


                },
                child: Text('Get.Put')),
            ElevatedButton(onPressed: () {

              //나중에 컨트롤러가 사용할 때 생성된다.
              Get.to(GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(() => DependencyController());
                  }));

            }, child: Text('Get.lazyPut')),
            ElevatedButton(onPressed: () {}, child: Text('')),
            ElevatedButton(onPressed: () {}, child: Text('')),
          ],
        ),
      ),
    );
  }
}
