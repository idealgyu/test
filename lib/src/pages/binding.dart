import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/count_controller_with_getx.dart';
import '../controller/count_controller_with_getx_binding.dart';

class BindingPage extends GetView<CountControllerWithGetXBinding> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('바인딩'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //일반적인 사용법
            //등록된 컨트롤러를 find해서 메쏘드 접근해서 값을 증가시키고
            //그 값을 겟빌더를 통해 접근해서 가져온다.

            // GetBuilder<CountControllerWithGetXBinding>(builder: (controller){
            //   print('여기가 호출되야 하는데.....');
            //   return Text('${controller.count}', style: TextStyle(fontSize: 30),);
            // }),

            Obx(()=>Text(
              controller.count.toString(),
              style: TextStyle(fontSize: 30),
            )),

            ElevatedButton(onPressed: (){

              // Get.find<CountControllerWithGetXBinding>().increase();
              //위 표현이 매우 간결해 진다. 원하는 컨트롤러 이름으로 바로 접근 가능해 진다.

              //2번째로 간단한 방법!!!
              // CountControllerWithGetXBinding.to.increase();

              //최종 진화형!!!!!!!!!!!!
              controller.increase();

            },

                child: Text('++++', style: TextStyle(fontSize: 30),)),
          ],
        ),
      ),
    );
  }
}
