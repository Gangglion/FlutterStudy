import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title : const Text("버튼 계열 위젯"),
        // ),
        // 1. ElevatedButton : 입체감을 가지는 일반적인 버튼 위젯
        // 버튼 눌렀을때의 실행될 함수를 반드시 정의해주어야 함. onPressed() / null을 지정하면 버튼이 비활성화 됨
        // body : ElevatedButton(
        //   child: const Text("RaisedButton"),
        //   // 버튼의 글자를 바꾸려면 앱을 다시 그려야 함. statefulWidget 이여야함.
        //   onPressed: () => print("ElevatedButton Pressed")
        //   ),

        // 2. TextButton : 평평한 형태의 버튼. 하이퍼텍스트 같은 느낌?
        // body : TextButton(
        //   child: Text("TextButton"),
        //   onPressed: ()=>print("TextButton onPressed")
        //   ),

        // 3. IconButton : 아이콘을 표시하는 버튼 위젯
        // 아이콘의 크기나 색을 지정할 수 있다. child 프로퍼티x(자식 위젯을 설정할 수 없다)
        // 대신 icon 프로퍼티에 아이콘을 작성한다.
        // body: IconButton(
        //   icon : Icon(Icons.add),
        //   color : Colors.red,
        //   iconSize:100.0,
        //   onPressed: () => print("IconButton Pressed"),
        //   )

        // 4. FloatingActionButton : 입체감 있는 둥근 버튼 위젯. 아이콘 표시하는데 주로 사용
        // Scaffold의 floatingActionButton 프로퍼티에 바로 사용할 수도 있고, 일반적인 버튼처럼 단독 사용할 수도 있음
        // 일반적인 버튼처럼 단독 사용하는 예시
        // body : FloatingActionButton(
        //   child : Icon(Icons.add),
        //   onPressed: () => print("FloatingActionButton Pressed"),
        //   )

        //Scaffold의 floatingActionButton 프로퍼티에 바로 사용 - 이 경우 오른쪽 하단이 기본 위치인 듯 하다.
        // floatingActionButton: FloatingActionButton(
        //   onPressed: ()=>print("floatingActionButton Property onPressed"),
        //   child : const Icon(Icons.add)
        //   ),

        appBar: AppBar(title: const Text("화면 표시용 위젯 - 텍스트, 이미지\n아이콘, 프로그래스바")),
        // 1. Text 위젯 : 첫번째 인수에 문자열 지정.
        // style 프로퍼티에 TextStyle 인스턴스 지정하여 다양한 스타일 가능
        // body : const Text(
        //   "Screen Explain Widget : Text", // 필수프로퍼티/이름없는 인수. 반대로 모든 이름있는 인수는 옵션 성격이므로 선택해서 사용하자
        //   style : TextStyle(
        //     fontSize: 50.0, // 글자 크기
        //     fontStyle: FontStyle.italic, // 이텔릭체
        //     fontWeight: FontWeight.bold, // 볼드체
        //     color : Colors.blue, //글자 색
        //     letterSpacing: 4.0 // 자간
        //   )
        // )

        // 2. Image 위젯 : 이미지를 표시하는 위젯.
        // 네트워크에 있는 이미지 간단하게 표시 가능. network() 메서드에 이미지파일의 URL입력하면 됨
        // asset() 메서드로 표시 가능. 프로젝트 폴더 내에 이미지파일이 들어가는 폴더가 존재해야하고, pubspec.yaml 파일을 수정해주어야 함.
        // body : 바로 다음에 Image.메서드() 가 바로 나오게 된다. asset() 을 사용하게 되면 경로에 확장자까지 적어줘야 한다.

        // 1) network()
        // body : Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),)
        // 2) asset()
        // body : Image.asset('resources/sampleimg1.jpeg')

        // 3. Icon 위젯 : 메뉴나 리스트, 버튼과의 조합으로 사용하게 된다.
        // 머티리얼 디자인용 아이콘들은 Icons클래스에 상수로 미리 정의되어있다. 색상이나 크기 등을 자유롭게 조절할 수 있다.
        // body : const Icon(
        //   Icons.home,
        //   color : Colors.green,
        //   size : 50 // 기본값은 24.0
        // )
        
        // ## 그동안 배웠던 기억나는 위젯을 이용하여 아이코과 사진을 이어붙여봤음
        // body: SingleChildScrollView(
        //   child: Center(
        //     child: Column(
        //       children: <Widget>[
        //         Image.network(
        //             'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        //         Image.asset("resources/sampleimg2.jpeg"),
        //         Icon(Icons.add, color: Colors.red, size: 24)
        //       ],
        //     )
        //   ),
        // )

        // 4. Progress 위젯 : 로딩중이거나 오래 걸리는 작업을 할때 사용자에게 진행중임을 알려줌. 
        // 2종류 존재(둥근형태 : CircularProgressIndicator(), 바형태 : LinearProgressIndiator())
        // 둥근형태는 다른화면 위에 겹쳐서 표현하므로 Stack 위젯으로 겹쳐서 사용
        // body : CircularProgressIndicator()
        // body : Center(
        //   child: LinearProgressIndicator(),
        // )
        
        // 5. CircleAvatar : 프로필 화면 등에 많이 사용되는 원형 위젯
        // child 프로퍼티에 정의한 위젯을 원형으로 만들어줌
        // body : Center(
        //   child: CircleAvatar(
        //     child : Icon(Icons.person)
        //   ),
        // )
        // ++ 사용자에게 구글 로그인을 받고 그 프로필을 가져오는 등의 네트워크상에 존재하는 이미지를 표시한다면, child 프로퍼티가 아닌
        // backgroundImage 프로퍼티에 NetworkImage 클래스의 인스턴스를 지정해야함. backgroundImage : NetworkImage([url])
    );
  }
}
