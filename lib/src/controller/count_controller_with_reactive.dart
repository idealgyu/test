import 'package:get/get.dart';

enum Status {Approved, Rejected, Pending}

class User{
  String? name;
  int? age;
  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController{

  //하나하나 요소에 옵저버를 넣을 수 있다. 아래 obs가 옵저버, Rx는 Reactive 겟X의 축약 정도..
  RxInt count = 0.obs;
  RxDouble _rxdouble = 0.0.obs;
  RxString value = "".obs;
  Rx<Status> status = Status.Approved.obs;
  Rx<User> user = User(name: '라이언', age: 41).obs;
  RxList<String> list = [''].obs;


  void increase(){
    count++;
    _rxdouble(424);
    status(Status.Rejected); //enum 타입 변경할 때
    user(User());
    user.update((_user) {
      _user!.name= "이티맨";
    });
    // list.addAll([]);
    // list.add();
  }

  void set5(int value){
    //보통 count = 5; 이렇게 하지만, 옵저버블은 표현식이 다르다. 아래 표현식으로 표현한다.
    count(value);
  }

  //반응형은 이벤트를 트리거 할 수 있다. 이럴경우 GetxController을 상속 받아야 한다.

@override
  void onInit() {
    //매번 값이 변경될 때마다 호출
    ever(count, (_) => print('값 변경될 때마다 매번호출!'));

    //매번 값이 변경될 때마다 호출
    once(count, (_) => print('한번만 호출!'));

    //마지막 변경되고 타이머 시간 이후에 한번만 호출, 검색 때 사용자가 키인 끝나고 검색활성화 할 때 등 사용
    debounce(count, (_) => print('마지막 변경에 한번만 호출!'), time: Duration(seconds: 1));

    //변경되고 있는 동안에 일정시간(1초 등) 마다 호출
    interval(count, (_) => print('변경되고 있는 동안에 호출!'), time: Duration(seconds: 1));

    //5로 변경 - 값이 변하지 않으면 위에 4개는 최초 한번만 호출되고 이후에는 호출되지 않는다.

  super.onInit();
  }

}