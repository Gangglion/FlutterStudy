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
      home:MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {

//     Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title : Text('위젯 예제')
//       ),
//       // 1.SingleChildScrollView
//       // body: SingleChildScrollView(
//       //   // SingleChildScrollView 로 감싸서 스크롤을 할 수 있게 한다.
//       //   // 하나의 자식을 포함하는 스크롤 가능한 위젯으로서 Column이나 ListBody를 감싼다
//       //   child: ListBody(
//       //     children: items.map((i)=>Text('$i')).toList(),
//       //     ),
//       //   ),

//       // 2.ListView, ListTile
//       // body: ListView(
//       //   scrollDirection: Axis.vertical,
//       //   children: <Widget>[
//       //     ListTile(
//       //       // 각 리스트 항목에서 다음과 같은 역할을 함
//       //       leading: Icon(Icons.home), // 좌측의 아이콘
//       //       title: Text('Home'), // 중앙에 텍스트
//       //       trailing: Icon(Icons.navigate_before), // 우측의 아이콘
//       //       onTap: () {}, // 이 부분에 리스트 항목을 tap 했을때 실행해야 하는 동작을 정의한 함수를 작성
//       //       // on~ 으로 시작하는 프로퍼티에 작성한 함수는 사용자 동작에 의해 호출됨. ~이벤트 라고 부름
//       //     ),
//       //     ListTile(
//       //       leading: Icon(Icons.event),
//       //       title: Text('Event'),
//       //       trailing: Icon(Icons.navigate_next),
//       //       onTap: () {},
//       //     ),
//       //     ListTile(
//       //       leading: Icon(Icons.camera),
//       //       title: Text('Camera'),
//       //       trailing: Icon(Icons.navigate_next),
//       //       onTap: () {},
//       //     ),
//       //   ],
//       // )

//       // 3.GridView
//       // 그리드뷰 : 사용자가 정의한 데이터를 목록화하여 아이템 단위로 구성하여 화면에 출력해줌.
//       // 기본적으로 정한 열 수에 따라 아이템을 나타내고, 아이템이 화면을 넘어가면 스크롤을 할 수 있다.
//       // 컨테이너 속성에 패딩과 마진값을 주지 않으면 당연하겠지만 꽉 차게 나타난다.
//       // body: GridView.count(
//       //   crossAxisCount: 2,
//       //   children: <Widget>[
//       //     Container(color: Colors.red, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.green, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.yellow, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.orange, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.blue, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.blueGrey, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.black, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.grey, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.pink, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.lightGreen, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //     Container(color: Colors.redAccent, width: 100, height: 100,padding:const EdgeInsets.all(8.0),margin:const EdgeInsets.all(8.0)),
//       //   ],
//       // ),

//       // 4.PageView
//       // 여러 페이지를 좌우로 슬라이드 하여 넘길수 있도록 해주는 위젯
//       // 어플 설명 이미지 만들때 사용할 수 있을것 같음 -> tap 과 연동하여 사용하지 않으면 좌우로 슬라이드가 가능한지 사용자가 모르기 때문에 단독으로는 사용하지 않는다
//       // 좌우로 슬라이드가 가능하다는 것을 나타내어 주면 사용하기에 따라 용이할 수 있을것 같음
//       body: PageView(
//         children: <Widget>[
//           // 배치되는 위젯 하나는 하나의 페이지를 담당한다.
//           Container(color:Colors.red),
//           Container(color:Colors.orange),
//           Container(color:Colors.yellow),
//           Container(color:Colors.green),
//         ],
//       )
//     );
//   }
// }

// 5.Appbar, TabBar, Tab, TabBarView
// 위의 4가지를 조합하여 PageView 와 유사하지만 페이지와 탭이 연동되는 화면을 구성 할 수 있다.
// 아래 코드에서는 Scaffold를 DefaultTabController로 감싸야 하는것에 주의하며 코드 구성을 잘 살펴보자
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          bottom: TabBar(
            // Scaffold의 bottom 프로퍼티에 TabBar 지정
            tabs: <Widget>[
              // tabs 프로퍼티에 Tab의 리스트 지정
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: '메뉴2'),
              Tab(icon: Icon(Icons.info), text: '메뉴3'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(color:Colors.red),
            Container(color:Colors.green),
            Container(color:Colors.blue),
          ]
        ),
      ),
    );
  }
}