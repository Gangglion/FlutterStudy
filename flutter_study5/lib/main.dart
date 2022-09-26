import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// 3번 사용 변수
enum Gender { MAN, WOMAN }

Gender _gender = Gender.MAN;

class _MyHomePageState extends State<MyHomePage> {
  // 2번 사용 변수
  bool _checkBox = false;
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("5장 기본위젯 - 입력용 위젯")),
      // 1. TextField : 글자를 입력받는 위젯. InputDecoration 클래스와 함께 사용하면 힌트 메시지나 외곽선 등의 꾸밈효과를 추가할 수 있다.
      // 형태 : TextField(decoration : InputDecoration( ... ))
      // body: Center(
      //   child: (TextField(
      //       decoration: InputDecoration(
      //     labelText: '아이디를 입력하세요', // 힌트
      //     border: OutlineInputBorder(), // 외곽선
      //   ))),
      // )

      // 2. CheckBox 와 Switch : 설정 화면 등에 많이 사용되는 체크박스, 라디오버튼, 스위치 위젯
      // 체크박스와 스위치는 모양만 다르고 사용방법 동일
      // Children 은 리스트형태기 때문에 [] 안에 , 로 여러개의 위젯이 들어갈 수 있다.[] 가 여러개가 아님.
      // SizedBox를 잘 활용하면 안에 공간을 줄 수 있다.
      // body : Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Center(
      //     child : Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children:<Widget>[
      //         Checkbox(
      //           value : _checkBox,
      //           onChanged: (value){
      //             setState(() => _checkBox = value!);
      //         }),
      //         SizedBox(
      //           height : 40,
      //         ),
      //         Switch(
      //           value: _switch,
      //           onChanged: (value){
      //             setState(() => _switch = value);
      //           }
      //         )
      //       ],
      //     )
      //   )
      // )

      // 3. Radio와 RadioListTile : 선택 그룹 중 하나를 선택할 때 사용하는 위젯. 터치영역에 따라서 두개를 나눠서 사용한다.
      // Radio는 딱 그 위젯 위에만 터치가 되고, RadioListTile 은 텍스트를 포함한 가로 전체가 터치 영역이 된다.
      // Radio 는 ListTile안에 leading : Radio() 형태이고,  RadioListTile 은 그 자체로 사용된다.
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListTile(
                title: Text('남자'),
                leading: Radio(
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                )),
            ListTile(
                title: Text('여자'),
                leading: Radio(
                  value: Gender.WOMAN,
                  groupValue: _gender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                )),
            SizedBox(
              height: 40,
            ),
            RadioListTile(
              title: Text('남자'),
              value: Gender.MAN,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value as Gender;
                });
              },
            ),
            RadioListTile(
              title: Text('여자'),
              value: Gender.WOMAN,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value as Gender;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
