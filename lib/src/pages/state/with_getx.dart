import 'package:basic/src/controller/count_controller_with_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);

  //이렇게 선언하고 사용해도 된다..
  // CountControllerWithGetX _controllerWithGetX = Get.put(CountControllerWithGetX());

  Widget _elevatedButton(String id){
    return ElevatedButton(
      onPressed: () {

        //Get은 컨텍스트를 간단히 find로 찾는다. context가 없다는 점이 특이한 점..
        //context가 중복되어 사용될 필요가 있는 경우가 있는데, 이럴 경우 문제가 생긴다.
        // context를 찾을 수 없다거나, 넘겨줘야 한다거나...등등
        //Get은 그럴 필요가 없다는 점이 편리하고 좋은 것임

        Get.find<CountControllerWithGetX>().increase(id);

      },
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    //여기에 선언해도 된다.
    // Get.put(CountControllerWithGetX());

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GetX',
            style: TextStyle(fontSize: 30),
          ),

          //CountControllerWithGetX 를 모니터링 한다..
          //controller를 통해서 접근한다.

          GetBuilder<CountControllerWithGetX>(
              id: 'first',
              builder: (controller) {
            return Text(
              '${controller.count}',
              style: TextStyle(fontSize: 30),
            );
          }),

          GetBuilder<CountControllerWithGetX>(
              id: 'second',
              builder: (controller) {
            return Text(
              '${controller.count}',
              style: TextStyle(fontSize: 30),
            );
          }),

          _elevatedButton('first'),
          _elevatedButton('second'),
        ],
      ),
    );
  }
}
