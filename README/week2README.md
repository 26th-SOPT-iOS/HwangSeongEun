### [과제1] 계산기 구현
> 버튼 눌렀을 때 숫자 입력되는 것까지만 구현했습니다

👉 버튼 4개씩 Horizontal Stack View로 묶어서 AutoLayout 해주기

👉 버튼 동그랗게 만들기
> 모든 버튼 Outlet Collection으로 묶어서 IBOutlet 지정하고
```swift
@IBOutlet var buttons: [UIButton]!
```
> cornerRadius 지정해서 버튼 동그랗게 만들어주기~    
> (viewDidLoad() 안에 넣어줄 것)
```swift
for i in 0...15 {
            buttons[i].layer.cornerRadius = 40
        }
```

👉 버튼 Action 구현하기
> 먼저, 숫자 보여줄 label 이랑 안에 들어갈 값 변수로 정해주기
```swift
@IBOutlet weak var answerLabel: UILabel!

var answer = 0
```
> AC 버튼은 무조건 answer를 0으로~
```swift
@IBAction func btnAC(_ sender: Any) {
        answer = 0
        answerLabel.text = String(answer)
    }
```
> 숫자 버튼들은 현재 answer에 10을 곱해준 뒤 각각의 값을 넣어줍니다.
```swift
@IBAction func btn0(_ sender: Any) {
        answer = answer * 10 + 0
        answerLabel.text = String(answer)
   }
```
      

   ***
### [과제2] Zeplin 이용해서 로그인 화면 구현
