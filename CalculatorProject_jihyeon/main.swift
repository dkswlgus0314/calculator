//
//  main.swift
//  CalculatorProject_jihyeon
//  Created by ahnzihyeon on 6/4/24.
//import Foundation



/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
 🌟 Lv.1 계산기 만들기 과제 🌟
 1. 더하기, 빼기, 나누기, 곱하기, 나머지 연산을 수행하는 calculator 클래스 생성
 2. 생성한 클래스를 이용하여 연산 진행하고 출력
 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ*/

//계산기 사용법 설명 텍스트
print("""
------- [계산기 사용법] -------
1. 첫 번째 줄은 숫자를 입력해주세요.
2. 두 번째 줄은 연산 기호(+, -, /, *, %) 입력해주세요.
3. 세 번째 줄은 숫자를 입력해주세요.
----------------------------
""")


class Calculator {
    
    //속성(property)
    var firstNumber: Int
    var operators: String
    var secondNumber: Int
    
    
    //이니셜라이저
    init(firstNumber: Int, operators: String, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.operators = operators
        self.secondNumber = secondNumber
    }
    
    
    func calculate() -> Double {
        switch operators {
        case "+" : return add()
        case "-" : return subtract()
        case "*" : return multiply()
        case "/" : return divide()
        case "%" : return remainder()
        default: return 0
        }
    }
    
    
    //연산 메서드
    //덧셈
    
    func add() -> Double{
        return Double(firstNumber + secondNumber)
    }
    
    //뺄셈
    func subtract() -> Double{
        return Double(firstNumber - secondNumber)
    }
    
    //곱셈
    func multiply() -> Double{
        return Double(firstNumber * secondNumber)
    }
    
    //나눗셈
    func divide() -> Double{
        return Double(firstNumber / secondNumber)
    }
    
    //나머지
    func remainder() -> Double{
        return Double(firstNumber % secondNumber)
    }
}


// 콘솔창에 숫자 입력
while true {
    guard let inputValue = readLine(), let num1 = Int(inputValue) else {     //Int
        print("[ 숫자만 입력해주세요. ]")
        continue
    }
    guard let ops = readLine() , ["+", "-", "/", "*","%"].contains(ops) else {     //String
        print("[ +, -, /, *, % 중에서만 입력해주세요. ]")
        continue
    }
    guard let inputValue = readLine(), let num2 = Int(inputValue) else {     //Int
        print("[ 숫자만 입력해주세요 ]")
        continue
    }
    
    //인스턴스 생성하여 변수에 할당
    let calculator = Calculator(firstNumber: num1, operators: ops, secondNumber: num2)
    
    
    var result = calculator.calculate()
    
    print("[계산 결과] : \(result)")
    break
}


