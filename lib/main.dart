import 'package:basic/src/binding_binding.dart';
import 'package:basic/src/controller/count_controller_with_getx.dart';
import 'package:basic/src/controller/count_controller_with_getx_binding.dart';
import 'package:basic/src/home.dart';
import 'package:basic/src/pages/binding.dart';
import 'package:basic/src/pages/named/first_page.dart';
import 'package:basic/src/pages/named/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),

      //아래와 같이 라우팅 세팅을 먼저 해준다.
      getPages: [
        GetPage(name: '/', page: ()=>Home(), transition: Transition.cupertinoDialog),
        GetPage(name: '/first', page: ()=>FirstNamedPage(),transition: Transition.cupertinoDialog),
        GetPage(name: '/second', page: ()=>SecondNamedPage(),transition: Transition.cupertinoDialog),

        //바인딩을 인터페이스로 등록해 주고, 아래처럼 바인딩해줄 수 있다.
        GetPage(name: '/binding',
            page: ()=>BindingPage(),
            binding: BindingBinding(),

          // binding: BindingsBuilder((){
          //   Get.put(CountControllerWithGetXBinding());
          // }),

        ),



      ],
    );
  }
}
