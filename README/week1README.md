### [과제1] Navigation 이용해서 View 전환
스토리보드 이용
   
### [과제2] 로그인/회원가입 화면 구현   
#### 화면 간 데이터 이동
   
<첫번째 VC>  
   
👉화면 넘어가는 버튼에 IBAction 연결하기   
   
👉넘겨줄 페이지 지정 (identifier 사용)
```swift
guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? LoginViewController else {return}
```

👉화면에서 데이터 받기
```swift
receiveViewController.id = idTextField.text
receiveViewController.pw = pwTextField.text
```

👉데이터 넘겨주기
```swift
self.present(receiveViewController, animated: true, completion: nil)
```

<두번째 VC>   
   
👉optional binding
```swift
guard let id = self.id else {return}
guard let pw = self.pw else {return}
```

👉지정해둔 label에 데이터 띄우기
```swift
idLabel.text = id
pwLabel.text = pw
```

#### 로그아웃 클릭 시 첫 페이지로 가기
👉회원가입 VC에서 다음 VC로 넘어갈 때 self를 pop 해주기
```swift
self.present(receiveViewController, animated: true, completion: {
self.navigationController?.popViewController(animated: false)})
}
```