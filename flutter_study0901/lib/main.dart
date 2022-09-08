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
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Tab'),
//           bottom: TabBar(
//             // Scaffold의 bottom 프로퍼티에 TabBar 지정
//             tabs: <Widget>[
//               // tabs 프로퍼티에 Tab의 리스트 지정
//               Tab(icon: Icon(Icons.tag_faces)),
//               Tab(text: '메뉴2'),
//               Tab(icon: Icon(Icons.info), text: '메뉴3'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             Container(color:Colors.red),
//             Container(color:Colors.green),
//             Container(color:Colors.blue),
//           ]
//         ),
//       ),
//     );
//   }
// }

// 6. BottomNavigationBar : 하단에 2~5개의 탭 메뉴를 구성할 수 있는 위젯. 보통 각 탭을 클릭하여 화면을 전환할 때 사용한다.
// 최근에 ios 와 android에서 자주 사용하는 UI
// Scaffold의 프로퍼티 중에서 bottomNavigatorBar 프로퍼티 정의 하고 하위 items에 bottomNavigatorItem 위젯 나열
// 추가 : 하단 탭을 눌렀을 때 마다 화면을 전환하고, 해당 탭이 선택됨을 알려주려면, 화면을 다시 그려야 하기 때문에 StatefulWidget으로 만들어야 한다.
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label : 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label : 'Profile',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications),
//           label : 'Notification',
//         ),
//       ]),
//     );
//   }
// }

// 7. 위치, 정렬, 크기를 위한 위젯 : 배치한 위젯의 위치를 정해줌. 위젯 크기, 위치, 정렬 등을 보조해주는 위젯이 존재한다.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('7. 위치, 정렬, 크기를 위한 위젯')),
        // 7-1.Center 위젯 : 중앙으로 정렬시키는 위젯. 상당히 자주 사용
        // body: Center(
        //   child: Container(
        //     color: Colors.red,
        //     width: 100,
        //     height: 100,
        //   ),
        // ),

        // 7-2. Padding 위젯 : 안쪽 여백을 표현할 때 사용하는 위젯
        // body: Padding(
        //   padding: const EdgeInsets.all(40.0),
        //   // padding 의 값인 EdgeInsets 함수 중 .all() 은 네 방향 모두 지정한 값만큼 여백 표현
        //   // .only(left : val1, top : val2, right : val3, bottom : val4)
        //   // 는 상하좌우 중 원하는 방향에만 값 지정. 지정하지 않을 시 기본값 0.0.
        //   // .fromTRB(leftVal, topVal, rightVal, bottomVal) 은 네 방향의 값을 각각 지정
        //   child: Container( // Container 에 width와 height지정 안해주면 컨테이너 크기 전체로 나타난다.
        //     color: Colors.red,
        //   ),
        // ),

        // 7-3. Align : 자식 위젯의 방향을 정할 수 있는 위젯. 원하는 방향으로 위젯을 정렬할 때 사용.
        // body : Align(
        //   alignment: Alignment.centerRight,
        //   // alignment 프로퍼티에 정의할 수 있는 값은 여러가지 있고, 정의된 클래스를 참고하자
        //   // 대충 형식은 상단/중간/하단 + 왼쪽/중앙/오른쪽 의 조합으로 정의되어 있다. 예)중앙오른쪽 : centerBottom
        //   child:Container(
        //     color: Colors.red,
        //     width : 100,
        //     height : 100,
        //     ),
        //   )

        // 7-4. Expanded : 자식 위젯의 크기를 최대한으로 확장시켜주는 위젯.
        // 여러 위젯에 동시 적용시 flex 프로퍼티에 정숫값을 지정하여 비율을 정할 수 있고, 기본값은 1이다.
        // 비율을 정하지 않으면 1:1:1...로 정의될 것이다.
        // 일정 크기로 계속 확대해 주는것이 아닌, 화면 크기는 정해져있고 그 안에서 위젯이 늘어나도 화면을 넘어가지 않고 정해진 비율대로 한 화면에 위젯을 모두 표현함
        // body: Column(
        //   children: <Widget>[
        //     Expanded(
        //       child: Container(
        //         color: Colors.red,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.orange,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.green,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.blue,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.blueGrey,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.purple,
        //       ),
        //     )
        //   ],
        // )

        // 7-5. SizedBox : 위젯 중에는 크기와 관련된 프로퍼티, 즉 크기설정을 할 수 없는 위젯이 많은데 그러한 위젯을 특정크기로 만들고 싶을 때 사용한다.
        // width 와 height에 double 타입으로 값을 지정한다. 이 위젯을 child없이 사용하게 되면 단순한 여백을 표현하는데 사용할 수 있다.
        // body:SizedBox(
        //   width:100,
        //   height:100,
        //   child:Container( // Container 위젯 속성에 width 와 height를 지정하는 방법이 더욱 간편하지만, 대부분의 위젯은 크기지정 프로퍼티가 없기 때문에 SizedBox를 많이 활용한다.
        //     color:Colors.red,
        //     )
        // )

        // 7-6. Card : 카드형태의 모양을 제공하는 위젯. 기본적으로 크기가 0이기 떄문에 자식위젯의 크기에 따라 크기가 결정된다.
        // card 형태의 모양 제공이라는 것은 둥근 모서리와 그림자효과가 포함된 박스를 제공한다는 것
        // 내부 구조에 Container 와 card, column을 어떻게 조합하느냐에 따라서 다양한 UI배치를 할 수 있음. 아래에서는 카드위젯 내부에 컨테이너를 넣어서 그 컨테이너에 둥근 모서리효과와 그림자 효과를 적용시켜주었음
        body: Center(
          child: Card(
              color:Colors.grey,
              shape: RoundedRectangleBorder(
                  // shape 프로퍼티는 카드 모양을 변경하는 방법을 제공. 여러가지가 있겠지만 클래스를 살펴봐도 못찾겠음. docs를 참고하자
                  borderRadius: BorderRadius.circular(16.0) // 카드위젯 모서리의 둥근 정도를 실숫값으로 조절한다. 값이 클수록 더 둥글게 됨.
              ),
              elevation: 50.0, // 카드 위젯의 그림자 효과의 그림자의 깊이를 조절. 실수값
              child: Container(
                color:Colors.grey,
                width:double.infinity,
                height: 300.0,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Container(color:Colors.red,width:100,height:100)
                  ]
                )
                )
              )
            )
    );
  }
}
