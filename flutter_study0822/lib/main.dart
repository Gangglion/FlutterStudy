import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('제목'),
        ),
        body:
            // Text('여기에 예제 작성'),

            // Container 위젯 - 아무것도 없는 위젯. 가로 세로 길이, 색, padding, margin 설정 가능. child 프로퍼티로 또다른 위젯을 자식으로 가질수 있음
            // Container(
            //   color: Colors.blueGrey,
            //   width: 30,
            //   height: 30,
            //   padding: const EdgeInsets.all(8.0),
            //   margin : const EdgeInsets.all(8.0),

            // Column 위젯 - 수직 방향으로 위젯들을 나란히 배치하는 위젯. 대부분 레이아웃은 Column 과 Row를 조합해서 만든다.
            // Children 프로퍼티 - 여러개의 위젯 리스트 지정 가능. 지정한 위젯은 세로로 배치됨
            // Column(
            //   children: <Widget>[
            //     Container(
            //       color: Colors.red,
            //       width: 30,
            //       height: 30,
            //       padding: const EdgeInsets.all(8.0),
            //       margin: const EdgeInsets.all(8.0),
            //     ),
            //     Container(
            //       color: Colors.blue,
            //       width: 30,
            //       height: 30,
            //       padding: const EdgeInsets.all(8.0),
            //       margin: const EdgeInsets.all(8.0),
            //     ),
            //     Container(
            //       color: Colors.green,
            //       width: 30,
            //       height: 30,
            //       padding: const EdgeInsets.all(8.0),
            //       margin: const EdgeInsets.all(8.0),
            //     )
            //   ],
            // ),

            // Row 위젯 - Column 위젯의 반대(수평배치)
            // Row 와 Column 같이 방향성이 있는 위젯은 mainAxis 와 crossAxis관련 프로퍼티 존재
            // mainAxis는 위젯의 기본방향. Row는 오른쪽(가로), Column은 아래쪽(세로). crossAxis는 mainAxis의 반대방향

            // 두가지 혼합하여 만들수 있음. 전체 큰 위젯 안에 children을 추가하여 다른 위젯을 추가시킬수 있음
            //     Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: <Widget>[
            //     Text("center"),
            //     Row(
            //       mainAxisSize: MainAxisSize.max,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: <Widget>[
            //         Container(
            //           color: Colors.red,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.green,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.blue,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //       ],
            //     ),
            //     Text("spaceEvenly"),
            //     Row(
            //       mainAxisSize: MainAxisSize.max,
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: <Widget>[
            //         Container(
            //           color: Colors.red,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.green,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.blue,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //       ],
            //     ),
            //     Text("spaceBetween"),
            //     Row(
            //       mainAxisSize: MainAxisSize.max,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         Container(
            //           color: Colors.red,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.green,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.blue,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //       ],
            //     ),
            //     Text("spaceAround"),
            //     Row(
            //       mainAxisSize: MainAxisSize.max,
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: <Widget>[
            //         Container(
            //           color: Colors.red,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.green,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //         Container(
            //           color: Colors.blue,
            //           width: 30,
            //           height: 30,
            //           padding: const EdgeInsets.all(8.0),
            //           margin: const EdgeInsets.all(8.0),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),

            // Stack 위젯 - 사진위에 글자를 표현하거나, 화면위에 로딩표시를 하는 상황에 맞게 사용할 수 있음. children 리스트에 먼저 작성한게 가장 아래에 위치. 선입선출
            Stack(
          children: <Widget>[
            Container(
                color: Colors.red,
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0)),
            Container(
                color: Colors.blue,
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(18.0),
                margin: const EdgeInsets.all(18.0)),
            Container(
                color: Colors.green,
                width: 25,
                height: 25,
                padding: const EdgeInsets.all(28.0),
                margin: const EdgeInsets.all(28.0)),
          ],
        ));
    // TODO: implement build
    throw UnimplementedError();
  }
}
