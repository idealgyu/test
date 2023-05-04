import 'package:basic/src/pages/binding.dart';
import 'package:basic/src/pages/blind_app.dart';
import 'package:basic/src/pages/dependency/dependency_manage.dart';
import 'package:basic/src/pages/named/first_page.dart';
import 'package:basic/src/pages/next.dart';
import 'package:basic/src/pages/normal/first_page.dart';
import 'package:basic/src/pages/reactive_state_manage.dart';
import 'package:basic/src/pages/simple_state_manage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 홈'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber
                )),
                child: Text('일반적인 라우트'),
                onPressed: (){
                  Get.to(FirstPage());
                },
              ),
            ),

            SizedBox(height: 30),

            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange
                )),

                child: Text('Named 라우트'),
                onPressed: (){
                  Get.toNamed('/first'); //등록한 네임으로 라우팅
                  },

              ),
            ),

            SizedBox(height: 30),

            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent
                )),

                child: Text('Argument 전달'),
                onPressed: (){
                  // Get.to(NextPage(), arguments: [1,2,3,4,5,]); // Arguments 전달

                  // Get.toNamed('/first', arguments: '라이언 맨'); //Arguments 전달

                  //클래스 객체도 전달 가능하다.
                  Get.to(NextPage(), arguments: User(name: '라이언', age: 41));

                },

              ),
            ),

            SizedBox(height: 30),

            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent
                )),

                child: Text('단순상태관리'),
                onPressed: (){

                  Get.to(SimpleStateManage());

                },

              ),
            ),

            SizedBox(height: 30),

            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown
                )),

                child: Text('반응형 상태관리'),
                onPressed: (){
                  Get.to(ReactiveStateManage());
                },

              ),
            ),

            SizedBox(height: 30),

            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent
                )),

                child: Text('의존성 관리'),
                onPressed: (){
                  Get.to(DependencyManage());
                },

              ),
            ),

            SizedBox(height: 30),

            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent
                )),

                child: Text('바인딩'),
                onPressed: (){
                  Get.toNamed('/binding');
                },

              ),
            ),

            SizedBox(height: 30),

            Container(
              child: ElevatedButton(
                style: (ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent
                )),

                child: Text('블라인드 인풋 페이지'),
                onPressed: (){
                  Get.to(InputScreen());
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}

class User{
  String? name;
  int? age;

  User({this.name, this.age});
}


