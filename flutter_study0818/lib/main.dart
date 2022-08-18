// import 'package:flutter/material.dart';

// // 앱 시작 부분
// void main() {
//   runApp(const MyApp());
// }

// //시작 클래스. 머티리얼 디자인 앱 생성
// class MyApp extends StatelessWidget { // statelessWidget = 상태를 가지지 않음. 한번 그려진 후 다시 그려지지 않음
// // statelessWidget 은 프로퍼티로 변수를 가지지 않는다.
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: '플러터 데모 홈 페이지'), // 표시할 화면의 인스턴스
//       // home 에 작성되는 위젯(여기서는 MyHomePage)이 실제 이 앱이 표시하는 위젯
//     );
//   }
// }
// // 시작 클래스가 실제로 표시하는 클래스. 카운터 앱 화면
// class MyHomePage extends StatefulWidget { //statefulWidget = 상태가 있는 위젯.
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title; // 위에서 title 매개변수에 주입한 string값이 이 필드상수로 들어오게 된다.
//   @override
//   State<MyHomePage> createState() => _MyHomePageState(); // StatefulWidget이 생성될때 한번만 실행되는 createState 메소드
// }
// // 위 MyHomePage 클래스의 상태를 나타내는 State 클래스 - State 클래스를 상속받은 클래스를 '상태 클래스' 라고 함
// class _MyHomePageState extends State<MyHomePage> {
//   // 변경 가능한 상태를 프로퍼티 변수로 표현한다.
//   int _counter = 0; //화면에 표시할 상탯값인 카운터 숫자 - 변경 가능한 상태

//   // counter 변수를 1 증가시키고 화면을 다시 그리는 메서드
//   void _incrementCounter() {
//     setState(() { // setState 는 화면을 다시 그리도록 하는 함수. StatefulWidget만 가능
//     // _counter 변수를 1 증가시키는 행동을 먼저 하고, setState() 함수 실행하여 화면 다시 그림. 이때 build() 함수가 실행됨.
//       _counter++;
//     });
//   }
//   // 화면에 UI를 그리는 메서드. 그려질 위젯을 반환한다.
//   // _MyhomePageState 클래스의 상태에 따라 화면에 그려질 코드를 여기에 작성한다. build() 메소드를 가지고 있으며, 여기에 화면에 그려질 부분을 정의한다.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( // 머티리얼 디자인 기본 뼈대 위젯
//       appBar: AppBar( // 상단 앱 바 - 머티리얼 앱에서 상단의 제목과 메뉴를 표시하는 영역
//         title: Text(widget.title),
//       ),
//       body: Center( // 표시할 내용
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter', // counter 변수를 화면에 표시. Text 위젯에 표시하기 위해서 int 형인 counter 변수를 문자열형태로 변경해야함.
//               // 이때 $기호를 앞에 붙여주면 변수값을 문자열 형태로 변경가능하다.
//               style: Theme.of(context).textTheme.headline1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter, // onPressed() 메소드는 버튼클릭이벤트. 클릭시 _incrementCounter 메서드 실행.
//         // dart에서 함수 또한 값으로 사용된 부분.
//         tooltip: 'Increment',
//         child: const Icon(Icons.add), // 상단 앱 바
//       ), 
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(exApp());

class exApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 실제 앱이 그려지는 부분에 Scaffold를 반환하는 위젯을 넣은것이 아닌 Scaffold 뼈대 자체를 넣을 수도 있으나
      /*
      Scaffold(
        appBar: AppBar(
          title:const Text('Hello World'),
        ),
        body: Text(
          'Hello World',
          style: TextStyle(fontSize: 40),
        ),
      ),
      */
      // 표시할 화면의 인스턴스를 넣어주고 그 클래스를 아래에 정의하여 구분할 수 있다. 아래 방법이 유지보수에 뛰어나다.
      home: exHomePage(), // 표시할 화면의 인스턴스
      // home 에 작성되는 위젯(여기서는 MyHomePage)이 실제 이 앱이 표시하는 위젯
    );
  }
}
class exHomePage extends StatefulWidget{
  _exHomePageState createState() => _exHomePageState();
}

class _exHomePageState extends State<exHomePage>{
  var _text = 'hello';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Hello World')
      ),
      body: Text(
        _text,
        style: TextStyle(fontSize: 40),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            _text='Hi';
          });
        },
        child:Icon(Icons.touch_app),
        ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}