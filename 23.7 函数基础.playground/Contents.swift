//: Playground - noun: a place where people can play

import UIKit

/***************1.函数定义和调用****************/
func sayHello(name:String) -> String {
    return "Hello, " + name + "!"
}


//把返回值赋给一个常量
let str = sayHello(name: "Amy")
print(str)
//直接在print函数里面调用
print(sayHello(name: "Bry"))

/****************2.函数形参和返回值**************/
//多个参数
func maxInt(a: Int, b: Int)-> Int{
    return a > b ? a :b
}
print(maxInt(a:2,b:1)) //输出2
//无形参、无返回值
func printConst(){
    print("I'm constant~")
}
printConst()

//多个返回值
func getPoint()-> (Int, Int){
    return (1,1)
}
let (x,y) = getPoint()
print("(\(x),\(y))")

//不指定外部形参名
func someFunction(first: Int, second: Int) {
}
someFunction(first: 1, second: 2)

//指定外部形参名 argumentLabel
func someFunction1(argumentLabel parameterName: Int) {
    
}
someFunction1(argumentLabel: 1)


func someFunction(_ first: Int, second: Int) {
    
}
someFunction(1, second: 2)


func someFunction(first: Int, withDefault: Int = 12) {
}
someFunction(first: 3, withDefault: 6) // withDefault的值是12
someFunction(first: 4) // withDefault 的值是 12


func sumNum(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total
}
sumNum(1, 2, 3, 4, 5)
// 返回值15是上面几个数之和
sumNum(3, 8.25, 18.75)
// 返回上面几个数的和30


func swapInt(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var one = 1
var two = 2
swapInt(&one,&two)
print("现在两个值是\(one),\(two)")
//打印：现在两个值是2,1


/****************3.示例代码**************/
func concat(_ prefix: inout String, nums:Int...)->(str1:String,count:Int){
    for num in nums {
        prefix += String(num) + " "
    }
    return (prefix,nums.count)
}

var str1 = "Hello "
var num1 = 9
var num2 = 8
var num3 = 7
// 字符串的操作是值拷贝
var returnStr = concat(&str1, nums: num1,num2,num3)

print(str1) //函数外的值被函数改变

print(returnStr) //返回的元组

returnStr.str1 += "6" //验证字符串是值拷贝

print(str1)

print(returnStr)

