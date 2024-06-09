//
//  main.swift
//  CalculatorProject_jihyeon
//  Created by ahnzihyeon on 6/4/24.
//import Foundation



/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
 🌟 Lv.1~2 계산기 만들기 과제 🌟
 1. 더하기, 빼기, 나누기, 곱하기, 나머지 연산을 수행하는 calculator 클래스 생성
 2. 생성한 클래스를 이용하여 연산 진행하고 출력
 
 🌟 Lv.3 계산기 만들기 과제 🌟
 - 아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
 - AddOperation(더하기)
 - SubstractOperation(빼기)
 - MultiplyOperation(곱하기)
 - DivideOperation(나누기)
 
 - Calculator 클래스의 내부코드를 변경
 - 관계를 맺은 후 필요하다면 별도로 만든 연산 클래스의 인스턴스를 Calculator 내부에서 사용
 
 - Lv2 와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 봅니다.
 - hint. 클래스의 책임(단일책임원칙)
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
        case "+" :
            let addOperation = AddOperation(firstNumber: <#T##Int#>, secondNumber: <#T##Int#>)
            return addOperation.add()
        case "-" :
            let substractOperation = SubstractOperation(firstNumber: <#T##Int#>, secondNumber: <#T##Int#>)
            return substractOperation.subtract()
        case "*" :
            let multiplyOperation = MultiplyOperation(firstNumber: <#T##Int#>, secondNumber: <#T##Int#>)
            return multiplyOperation.multiply()
        case "/" :
            let divideOperation = DivideOperation(firstNumber: <#T##Int#>, secondNumber: <#T##Int#>)
            return divideOperation.divide()
        case "%" :
            let remainderOperation = RemainderOperation(firstNumber: <#T##Int#>, secondNumber: <#T##Int#>)
            return remainderOperation.remainder()
        default: return 0
        }
    }
    
    
}

//연산 클래스
class AddOperation {
    var firstNumber: Int
    var secondNumber: Int
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func add() -> Double{
        return Double(firstNumber + secondNumber)
    }
}

class SubstractOperation{
    var firstNumber: Int
    var secondNumber: Int
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func subtract() -> Double{
        return Double(firstNumber - secondNumber)
    }
}

class MultiplyOperation {
    var firstNumber: Int
    var secondNumber: Int
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func multiply() -> Double{
        return Double(firstNumber * secondNumber)
    }
}

class DivideOperation {
    var firstNumber: Int
    var secondNumber: Int
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func divide() -> Double{
        return Double(firstNumber / secondNumber)
    }
}

class RemainderOperation {
    var firstNumber: Int
    var secondNumber: Int
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
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
    
    
    let result = calculator.calculate()
    
    print("[계산 결과] : \(result)")
    break
}


