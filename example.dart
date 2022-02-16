void main() {
  // const DateTime nowTimeConst = DateTime.now();
  // const는 컴파일 시점에 값이 할당되어야 함. DateTime.now() 함수는 코드진행 타이밍의 시간을
  // 반환하기 때문에 런타임 시점에 값이 생김. 따라서 const 키워드가 붙은 변수에는 할당 불가능
  int temp = 323;
  final DateTime nowTimeFinal = DateTime.now();

  // print(nowTimeFinal+'문자열 연결 자바처럼 가능한지'); -> 불가능
  print('$nowTimeFinal 문자열 연결은 다음과 같이 가능하다');
  print('${DateTime.now()} 처럼 수식을 넣을 수 있다.');

  print(nowTimeFinal is String);
  print(ReturnType());

  // 익명함수 vs 람다식

  // 익명함수 예시
  // (temp) {
  //   return temp % 2 == 0;
  // };

  //익명함수 실제로 사용하는 방법
  dynamic closure = (temp) {
    return temp % 2 == 0;
  };
  print(closure(2));

  // 람다식 예시
  // (temp) => temp % 2 == 0;

  //람다식 실제로 사용하는 방법
  dynamic ramda = (temp) => {
        if (temp % 2 == 0)
          {print('temp $temp는 짝수입니다')}
        else
          {print('temp $temp는 홀수입니다.')}
      };
  ramda(123);

  ChoiceParameter(1, b: 2);

  Person person = Person('한승협', 26);
  person.PrintPersonal();
}

// 타입추론에 의해 함수 반환타입을 생략한 경우. -> 가능하다
ReturnType() {
  int x = 12;
  return x;
}

// 선택적 매개변수
void ChoiceParameter(int a, {dynamic b}) {
  print(a);
  if (b != null) {
    print(b);
  }
}

// 클래스와 생성자 사용 예시
class Person {
  String? name;
  int? age;

  Person(this.name, this.age); // 기본 생성자 - dart 제공하는 형태

  //사용자 지정 생성자
  // Person() {
  //   this.name = '홍길동';
  //   this.age = 18;
  // }

  void PrintPersonal() {
    print('이름 : $name ,나이 : $age');
  }
}
