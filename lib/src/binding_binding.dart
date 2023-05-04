import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'controller/count_controller_with_getx.dart';
import 'controller/count_controller_with_getx_binding.dart';

class BindingBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    //여기에 인터페이스로 등록해서 사용 가능하다. 효과는 똑같다.
    Get.put(CountControllerWithGetXBinding(), permanent: true);

    //permanent: true 해주면 GetxService와 같은 효과를 볼 수 있다.

  }
}

