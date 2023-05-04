import 'package:basic/src/controller/count_controller_with_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Provider',
            style: TextStyle(fontSize: 30),
          ),

          //provider 라이브러리에 있는 Consumer.
          //즉 컨트롤러에서 날리는 노티파이를 소비하는 의미...consumer...그 소비의 먹기(소스)가 CountControllerWithProvider
          //(_,snapshot,child) 이 부분은 관행적으로 외우자..

          Consumer<CountControllerWithProvider>(
            builder: (_,snapshot,child){
              return Text('${snapshot.countt}', style: TextStyle(fontSize: 30),);
            },
          )
          ,
          ElevatedButton(
            onPressed: () {
              //컨트롤러 context를 찾아서 해당 메쏘드를 수행해라!!
              //listen : false를 해주는 이유는 잘 모르겠음...Consumer가 있기 때문에 listen을 할 필요가 없기 때문에??
              //listen을 하게 되면 여기 위아래 코드 전체가 빌드되게 되어 효율성이 떨어지게 되는것...
              //Consumer를 쓰게 되면 Consumer 부분만 빌드되게 된다...

              Provider.of<CountControllerWithProvider>(context, listen: false).increase();

            },
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
