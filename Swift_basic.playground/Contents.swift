import UIKit

// >> 스위프트 데이터 타입
// 데이터 타입 ? 프로그래밍할 때 우리가 이해할 수 있는 형태로 데이터를 처리할 수 있게 해준다.


// > 정수형 타입
// 정수에는 부호있는(signed)정수와 부호없는(unsigned) 정수가 있다.
// Swift는 8비트, 16비트, 32비트, 64비트 정수를 지원하며,
// 각각의 데이터 타입은 Int8, Int16, Int32, Int64이다.
// 또한 각각에 대한 부호없는 정수도 지원하며, 데이터 타입은 UInt8, UInt16, UInt32, UInt64이다
// 모든 정수형 데이터 타입들은 해당 데이터 타입이 지원하는 최댓값과 최솟값을 알 수 있도록 범위 속성을 가지고 있다.
var intnum : Int = 4;

// 다음의 코드는 32비트 정수형 데이터 타입의 최댓값과 최솟값을 출력한다.
print("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")


// > 부동소수점 데이터 타입
// Swift에서는 두 가지의 부동소수점 데이터 타입을 제공하는데, 하나는 Float이고, 하나는 Double이다.
// Double 데이터 타입은 최대 64비트의 부동소수점 수를 저장하기 위해 사용하며, 적어도 15자리까지 표현할 수 있다.
// Float 데이터 타입은 최대 32비트의 부동소수점 수를 저장하기 위해 사용하며, 적어도 6자리까지 표현할 수 있다.
var doublenum : Double = 3.14
var floatnum : Float = 3.14


// > 불리언 데이터 타입
// Swift는 두 개의 불리언 상숫값인 true와 false를 제공한다.
var Booleannum : Bool = true


// > 문자 데이터 타입
// Swift에서 문자는 내부적으로 그래핌 클러스터의 형태로 저장된다.
// 다음은 문자 타입의 변수에 서로 다른 문자들을 할당하는 코드다.
var Charnum1 : Character = "f"
var Charnum2 : Character = ":"
var Charnum3 : Character = "x"

// 유니코드의 코드 포인트를 이용하여 문자를 표현할 수도 있다.
var Charnum4 : Character = "\u{0058}"


// > 문자열 데이터 타입
// 문자열 데이터 타입은 일반저긍로 단어나 문장을 구성하는 일련의 문자들이다.
// 문자열 데이터 타입은 저장 메커니즘을 제공할 뿐만 아니라, 문자열 검색, 매칭, 연결, 그리고 수정 등의
// 다양한 문자열 편집 기능을 가지고 있다.
// 문자열은 문자열 보간(stirng interpolation)이라는 개념을 이용하여 함수 호출을 조합하여 구성할 수도 있다.

var userName = "yujin"
var inboxCount = 24
var maxCount = 1000

var message = "\(userName) has \(inboxCount) messages. Message capacity remaining is \(maxCount - inboxCount) messages. "

print(message)

// 여러 줄의 문자열은 다음과 같이 삼중 따옴표 안에 넣어서 선언할 수 있다.
var multiline = """
    The console glowed sith flashing warnings.
    Clearly time was running out.

    "I thought you said you knew how to fly this!" yelloed Mary.

    "It was much easier on the ismulator" replied her brother,
    trying to keep the panic out of his voice.
"""

print(multiline)


// > 특수 문자/이스케이프 시퀀스
// 위에서 설명한 표준 문자들뿐만 아니라 개행, 탭 또는 문자열 내에 특정 유니코드 값으 지정하는 이스케이프 시퀀스라는
// 특수 문자도 있다. 이러한 특수 문자들은 역슬래시 문자를 앞에 써서 구별하게 된다. 이것을 이스케이핑이라고 한다.

// newline이라는 변수에 개행 문자를 할당한 것이다.
var newline = "\n"

// 기본적으로 역슬래시가 앞에 붙은 문자는 특수 문자로 간주되어 처리된다.

// 역슬래시 문자를 쓰고 싶다면 역슬래시 자체르 이스케이핑하면 된다.
var backslash = "\\"
print(backslash)

// Swift에서 자주 사용되는 특수 문자
// \n ? 개행
// \r ? 캐리지 리턴
// \t ? 탭
// \\ ? 역슬래시
// \" ? 쌍따옴표
// \' ? 홑따옴표
// \u{nn} ? 한 바이트 유니코드 스칼라. nn은 유니코드 무자를 표현하는 두 개의 16진수를 쓴다.
// \u{nnnn} ? 두 바이트
// \u{nnnnnnnn} ? 네 바이트


// > 스위프트 변수
// 변수 ? 애플리케이션이 사용하는 데이터를 저장하기 위해 예약된 컴퓨터 메모리 내의 위치다.
// 각가의 변수는 프로그래머에 의해 이름이 주어지고 값이 할당된다.
// 변수에 할당된 이름은 변수에 할당된 값을 스위프트 코드 내에서 접근하기 위해 사용된다.
// 변수에 할당된 값을 변경할 수도 있다.

// > 스위프트 상수
// 상수 ? 변수처럼 데이터 값을 저장하기 위해 메모리 내의 위치에 이름을 명명한다.
// 변수와의 차이점은 값이 한번 할당되면 나중에 그 값을 바꾸지 못한다는 점이다.
// 상수는 코드 내에서 반복적으로 사용되는 값이 있을 때 유용하다.
// 코드 내의 여러 곳에서 어떤 상수를 사용하고 있고 그 밧을 전체적으로 변경해야 할 경우에
// 상수 선언부에서 한 번만 수정하면 모두 적용된다는 점이다.

// > 상수와 변수 선언하기
// 변수는 var 키워드를 사용하여 선언하며, 변수를 생성할 때 값으로 초기화할 수 있다.
// 만약 어떤 변수가 초깃값 없이 선언되었다면, 이번 장 후반부에서 설명할 옵셔널로 선언된 것으로 간주한다.

// 일반적인 변수 선언
var userCount = 10

// 상수 선언
let maxUsercount = 20

// > 타입 선언과 타입 추론
// Swift는 데이터 타입이 안전한 프로그래밍 언어에 속한다.
// 즉 변수의 데이터 타입이 한번 정해지면 그 변수는 다른 타입의 데이터를 저장하는 데 사용될 수 없으며, 컴파일 에러 발생
// 이와 반대로 데이터 타입이 느슨한 프로그래밍 언어는 변수 선언 후 다른 데이터 타입을 저장할 수 있는 언어다.

// 변수 또는 상수의 타입을 지정하는 방법은 두 가지가 있다.
// 1) 선언할 때 타입 선언
var usernum: Int = 10

// 선언부에서 타입 선언이 없다면 스위프트 컴파일러는 타입추론이라는 기술을 사용하여 변수 또는 상수의 타입을 지정한다.
var signalStrength = 2.231 // 모든 부동소수점 수에 대하여 스위프트는 doule이 디폴트다.
let companyName = "company"
// 변수 SignalStrength는 double, 상수 companyName은 String타입으로 간주한다.

// 타입 선언없이 상수를 선언할 때에는 반드시 값을 할당해야 한다.
let bookTitle = "SwiftUI"
// 하지만 상수를 선언할 때 타입 선언을 사용하면 다음의 예제와 같이 코드 내에서 나중에 할당 가능
let bookletTitle: String

// 여기서 기억해야 할 점은 상수에 값을 할당하는 것은 오직 한 번뿐이라는 것이다.

// > 스위프트 튜플
// 튜플 ? 여러 값을 하나의 항목으로 임시적으로 그루핑하는 매우 간단한 방법
let myTuple = (10,12.324,"string")

// 튜플에 저장된 값을 얻는 방법
// 특정 튜플 값은 인덱스 위치를 참조하면 간단하게 접근할 수 있으며, 가장 첫 번째 값의 인덱스는 0이다.
let myString = myTuple.2 // stirng 할당
print(myString)

// 하나의 구문으로 튜플에 있는 모든 값을 추출하여 변수 또는 상수에 각각 할당하는 방법
let (myInt, myDouble, myStirng) = myTuple

print(myTuple)

// 원하지 않는 값의 자리에 밑줄 문자를 쓰면 해당 값이 무시된다.
let (yourInt, _, yourStirng) = myTuple

// 튜플을 생성할 시점에서 각각의 값을 변수에 할당할 수도 있다.
var mybTuple = (count: 10, length: 234.23, message: "this is a String")

// 값들이 할당된 변수를 튜플에 저장하면 코드 내에서 저장된 값을 참조할 때 변수를 사용할 수 있다.
// mybTuple에서 message를 출력하고자 한다면 다음과 같이 할 수 있다.
print(mybTuple.message)


// > 스위프트 옵셔널 타입
// 옵셔널 타입 ? 변수 또는 상수에 값이 할당되지 않은 상황을 처리하기 위해 안전하고 일관된 접근 방식을 제공하는 것이다.

// 변수를 선언할 때, 데이터 타입 선언 다음에 '?'문자를 두어 옵셔널에 되게 한다.
var index: Int?

// 이제 index변수는 정숫값이 할당되거나 아무런 값도 할당되지 않을 수 있다. 내부적으로 컴파일러와 런타임의 관점에서 볼 때
// 어떤 값도 할당되지 않은 옵셔널은 실제로 nil의 값을 갖는다.

// 옵셔널은 할당된 값이 있는지를 식별하기 위한 테스트를 다음과 같이 쉽게 할 수 있다.
if index != nil {
    print("index 변수는 값이 할당되어 있다")
}
else{
    print("index 변수는 값이 할당되어 있지 않다")
}

// 만약 옵셔널에 값이 할당되었다면 해당 값이 옵셔널 내에서 래핑되었다고 말한다.
// 강제 언래핑 ? 옵셔널 안에 래핑된 값을 사용할 때 쓰는 방식
// 래핑된 값은 옵셔널 데이터 타입에서 옵셔널 이름 뒤에 느낌표를 두어 추출되게 한다.

index = 3

var treeArray = ["a","b","c","d"]

if index != nil{
    print(treeArray[index!])
} else {
    print("index does not contain a value == nil")
}

// 강제 언래핑 대신, 옵셔널로 할당된 값은 옵셔널 바인딩을 이용하여 임시 변수나 상수에 할당할 수 있다.

// 다음은 한 줄의 코드 내에서 두 개의 옵셔널을 언래핑하기 위하여 옵셔널 바인딩을 사용하는 코드다.
var pet1: String?
var pet2: String?

pet1 = "cat"
pet2 = "dog"

if let firstPet = pet1, let secondPet = pet2 {
    print(firstPet)
    print(secondPet)
} else {
    print("insufficient pets")
}

// Swift 옵셔널에 대해 마지막으로 살펴봐야 할 부분은 할당된 값이 없거나 nil을 할당하 수 있는 것은 옵셔널 타입뿐이라는 점이다.
// 즉, Swift에서 옵셔널이 아닌 변수 또는 상수에는 nil을 할당할 수 없다.
