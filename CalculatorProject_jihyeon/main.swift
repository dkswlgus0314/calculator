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




//임의의 값 할당
var testInput1 = 2
var testOper = "*"
var testInput2 = 5

// 콘솔창에 숫자 입력
//var inputValue = readLine() //String?


//if let userFirstNum = inputValue {     //String
//    if let num1 = Int(userFirstNum) {
//        print("테스트 \(num1)")
//    }
    
//    guard let num1 = Int(userFirstNum) else { print("edfsdf") }
    
    
//}

class Calculator {
    
    //속성(property)
    var firstNumber: Int
    var operatorArray: String
    var secondNumber: Int
    
    
    //이니셜라이저
    init(firstNumber: Int, operatorArray: String, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.operatorArray = operatorArray
        self.secondNumber = secondNumber
    }
    
    
    //연산 메서드
    //덧셈
    func add() -> Double{
        return Double(firstNumber) + Double(secondNumber)
    }
    
    //뺄셈
    func subtract(firstNumber: Int, secondNumber: Int) -> Double{
        return Double(firstNumber) - Double(secondNumber)
    }
    
    //곱셈
    func multiply(firstNumber: Int, secondNumber: Int) -> Double{
        return Double(firstNumber) * Double(secondNumber)
    }
    
    //나눗셈
    func divide(firstNumber: Int, secondNumber: Int) -> Double{
        return Double(firstNumber) / Double(secondNumber)
    }
    
    //나머지
    func remainder(firstNumber: Int, secondNumber: Int) -> Double{
        return Double(firstNumber % secondNumber)
    }
    
    
}




//인스턴스 생성하여 변수에 할당
//let calculator = Calculator(firstNumber: Int(readLine()!)! , operatorArray: testOper , secondNumber: testInput1)

//let calculator = Calculator()

let calculator = Calculator(firstNumber: Int(readLine()!)! , operatorArray: readLine()! , secondNumber: Int(readLine()!)!)


var result = calculator.add()

print(result)






//let addResult =     //덧셈 연산
//let subtractResult =  //뺄셈 연산
//let multiplyResult = //곱셈 연산
//let divideResult = //나눗셈 연산





