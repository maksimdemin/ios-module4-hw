import UIKit

//Home work Module 4
//Created by Demin Maksim

//  2)  Если бы в твоей программе была работа с игральными картами, как бы ты организовал их хранение? Приведи пример.


enum CardsPoker: Int {
    case twoClubs = 1, threeClubs, fourClubs, fiveClubs, sixClubs, sevenClubs, eightClubs, nineClubs, tenClubs, aceClubs, kingClubs, ladyClubs, jackClubs
    case twoSpades, threeSpades, fourSpades, fiveSpades, sixSpades, sevenSpades, eightSpades, nineSpades, tenSpades, aceSpades, kingSpades, ladySpades, jackSpades
    case twoDiamonds, threeDiamonds, fourDiamonds, fiveDiamonds, sixDiamonds, sevenDiamonds, eightDiamonds, nineDiamonds, tenDiamonds, aceDiamonds, kingDiamonds, ladyDiamonds, jackDiamonds
    case twoHearts, threeHearts, fourHearts, fiveHearts, sixHearts, sevenHearts, eightHearts, nineHearts, tenHearts, aceHearts, kingHearts, ladyHearts, jackHearts
    case JokerRed, JokerBlack
}
//var cardKing = CardsPoker.kingDiamonds
//let volumeCards = CardsPoker.allCases.count
//print("New card: \(cardKing)")

let jBlack = CardsPoker.JokerBlack.rawValue
let eHearts = CardsPoker.eightHearts.rawValue
let kHearts = CardsPoker(rawValue: 50)
print(kHearts!)

//  3)  Каких типов могут быть raw значения кейсов enum’а?
//raw значения могут быть типа String, Character, Int и Double (Float). Каждое исходное значение должно быть уникальным при его объявлении.


//  4)  Напишите класс и структуру для хранения информации (положение, размер) о круге, прямоугольнике

struct Resolution {
    var width = 0
    var height = 6
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
let someResolution = Resolution()
let someVideoMode = VideoMode()
someVideoMode.frameRate
print(someResolution.height)
someVideoMode.resolution.height = 1080
someVideoMode.resolution.height
let r = Resolution(width: 1000, height: 860)
someResolution.height
someVideoMode.resolution.height
print(r)


//  5)  Для следующего кода, выполнение каких строчек закончится ошибкой и почему
//class ClassUser1{
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class ClassUser2{
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//struct StructUser1{
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//struct StructUser2{
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let user1 = ClassUser1(name: "Nikita")
//user1.name = "Anton"
//
//let user2 = ClassUser2(name: "Nikita")
//user2.name = "Anton"
//
//let user3 = StructUser1(name: "Nikita")
//user3.name = "Anton"
//
//let user4 = StructUser2(name: "Nikita")
//user4.name = "Anton"
//
//var user5 = ClassUser1(name: "Nikita")
//user5.name = "Anton"
//
//var user6 = ClassUser2(name: "Nikita")
//user6.name = "Anton"
//
//var user7 = StructUser1(name: "Nikita")
//user7.name = "Anton"
//
//var user8 = StructUser2(name: "Nikita")
//user8.name = "Anton"


enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.qrCode("HHhdhdhdhsjdwihdhHDKHDJK")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let i = Planet.neptune.rawValue

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))


