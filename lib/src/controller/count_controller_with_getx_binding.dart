import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountControllerWithGetXBinding extends GetxController{

  //전역으로 선언
  static CountControllerWithGetXBinding get to => Get.find();

  RxInt count = 0.obs;

  void increase(){
    print('호출!!!!!!!!!!!!1');
    count++;
  }
}

