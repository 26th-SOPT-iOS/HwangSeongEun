### [과제1] 계산기 구현
👉 버튼 4개씩 Horizontal Stack View로 묶어서 AutoLayout 해주기

👉 모든 버튼 한번에 Outlet Collection으로 묶어서 IBOutlet 지정해주고 
```swift
@IBOutlet var buttons: [UIButton]!
```

👉 cornerRadius 지정해서 버튼 동그랗게 만들어주기~   
> (viewDidLoad()안에 넣어줄 것)
```swift
for i in 0...15 {
            buttons[i].layer.cornerRadius = 40
        }
```