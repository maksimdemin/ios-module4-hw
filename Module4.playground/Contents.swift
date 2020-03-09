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
var cardKing = CardsPoker.kingDiamonds
//let volumeCards = CardsPoker.allCases.count
print("New card: \(cardKing)")

let jBlack = CardsPoker.JokerBlack.rawValue
let eHearts = CardsPoker.eightHearts.rawValue
let kHearts = CardsPoker(rawValue: 50)
print(kHearts!)

//  3)  Каких типов могут быть raw значения кейсов enum’а?
//raw значения могут быть типа String, Character, Int и Double (Float). Каждое исходное значение должно быть уникальным при его объявлении.


//  4)  Напишите класс и структуру для хранения информации (положение, размер) о круге, прямоугольнике

// Прямоугольник
//класс Прямоугольник
class RectangleClass {
    var width = 0
    var height = 0
    var position = (0, 0) //положение фигуры относительно начала координат
    
    init(width: Int, height: Int, position: (Int, Int)) {
        self.width = width
        self.height = height
        self.position = position
    }
    
    func SquareRectangle() -> Int {
        return width * height
    }
}

var rectangle = RectangleClass(width: 10, height: 5, position: (0, 10))
rectangle.SquareRectangle()

//структура Прямоугольник
struct sizesRectangle{
    let width = 20
    let height = 30
}

struct RectangleStruct{
    let sizes = sizesRectangle()
    var position = (0, 0)
    
    init(position: (Int, Int)) {
        self.position = position
    }
    
    func perimeter() -> Int {
        print("Calculate the perimeter")
        return (sizesRectangle().width + sizesRectangle().height) * 2
    }
}

let rectangleFromStruct = RectangleStruct(position: (5, 5))
rectangleFromStruct.perimeter()

//Круг
//класс Круг
class CircleClass{
    var radius = 0
    var position = (0, 0) //положение фигуры относительно начала координат
    var speedRotation = 0
    
    init(radius: Int, position: (Int, Int)) {
        self.radius = radius
        self.position = position
    }
    
    func circleRotation(speedRotation: Int) {
        print("Сircle rotates at a speed = \(speedRotation) m/s")
    }
}

let circleClass = CircleClass (radius: 7, position: (1, 3))
circleClass.circleRotation(speedRotation: 20)
circleClass.radius = 50
print(circleClass.radius)

//структура Круг
struct CircleStruct{
    let radius = 25.0
    let position = (5, 13)
    let PI = 3.14159265
    
    func circumference() -> Double {
        return 2 * radius * PI
    }
}

let circleStruct = CircleStruct()
let circumf = circleStruct.circumference()
print("Circumference = \(circumf)")



//  5)  Для следующего кода, выполнение каких строчек закончится ошибкой и почему
class ClassUser1{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class ClassUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct StructUser1{
    let name: String
    init(name: String) {
        self.name = name
    }
}

struct StructUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}

//let user1 = ClassUser1(name: "Nikita")
//user1.name = "Anton" //<- тут будет ошибка, так как нельзя изменить свойство объекта класса, которое объявлено как константа
//
//let user2 = ClassUser2(name: "Nikita")
//user2.name = "Anton"
//
//let user3 = StructUser1(name: "Nikita")
//user3.name = "Anton" //<- тут будет ошибка, так как нельзя изменить свойство объекта структуры, которое объявлено как константа
//
//let user4 = StructUser2(name: "Nikita")
//user4.name = "Anton" //<- тут будет ошибка, так как сам объект структуры объявлен как константа, то все свойства объекта изменить нельзя
//
//var user5 = ClassUser1(name: "Nikita")
//user5.name = "Anton" //<- тут будет ошибка, так как нельзя изменить свойство объекта класса, которое объявлено как константа, даже не смотря на то что сам объект объявлен как переменная
//
//var user6 = ClassUser2(name: "Nikita")
//user6.name = "Anton"
//
//var user7 = StructUser1(name: "Nikita")
//user7.name = "Anton" //<- тут будет ошибка, так как нельзя изменить свойство объекта структуры, которое объявлено как константа
//
//var user8 = StructUser2(name: "Nikita")
//user8.name = "Anton"



//  6)    Напишите пример класса автомобиля (какие поля ему нужны – на ваше усмотрение) с конструктором, в котором часть полей будет иметь значение по умолчанию

class CarClass {
    var model: String
    var color: ColorCar
    var speed = 0
    var maxSpeed: Int
    var power: Int
    var clearance = 0.0
    
    let freezingPoinWater = 0 // температура замерзания омывающей жидкости
    let typeFuel = "gasoline"
    
    init(model: String, color: ColorCar, maxSpeed: Int, power: Int, clearance: Double) {
        self.model = model
        self.color = color
        self.maxSpeed = maxSpeed
        self.power = power
        self.clearance = clearance
    }
    
    func offRoadCar() {
        if (clearance >= 10) {
            print("Your car will be able to overcome this obstacle. Clearance = \(clearance) cm")
        } else {
            print("You have to find another way")
        }
    }
    
    func driveCar(speedSet: Int, temp: Int){
        if(speedSet < maxSpeed) {
            print("Car drive at speed = \(speedSet) km/h")
        } else {
            print("drive slowly please...")
        }
        if(temp < freezingPoinWater) {
            print("Using washer fluid is not recommended")
        }
    }
    
    enum ColorCar {
        case Red, Black, Blue, Yellow, White
    }
}

var newCar = CarClass(model: "Toyota", color: CarClass.ColorCar.Red, maxSpeed: 200, power: 130, clearance: 12)
newCar.offRoadCar()
newCar.driveCar(speedSet: 150, temp: -15)



// 7)    Напишите класс для калькулятора с функциями для сложения, вычитания, умножения и деления цифр, которые в нем хранятся как свойства

class Calculator {
    var numberOne: Double
    var numberTwo: Double
    
    init(_ numberOneSet: Double, _ numberTwoSet: Double) {
        self.numberOne = numberOneSet
        self.numberTwo = numberTwoSet
    }
    
    func addition() -> Double {
        return numberOne + numberTwo
    }
    
    func subtraction() -> Double {
        return numberOne - numberTwo
    }
    
    func multiplication() -> Double {
        return numberOne * numberTwo
    }
    
    func splitting() -> Double {
        if(numberTwo == 0) {
            print("Splitting by zero is not possible")
            return 0
        } else {
        return numberOne / numberTwo
        }
    }
}

var calc = Calculator(5, 100)
var sum = calc.addition()
var vychet = calc.subtraction()
var proizvedenie = calc.multiplication()
var delenie = calc.splitting()



// 8)    В каких случаях следует использовать ключевое слово static?

//Static в свойствах используется, если надо чтобы свойства относились ко всему классу (структуре), а не к экземпляру класса (структуры). Свойство будет общим для всех экземпляров.
//Также и с методами static. Такие методы относятся ко всему классу (структуре), а не к определенному объекту. Чтобы обращаться к таким свойствам и методам нет необходимости создавать экземпляр класса (структуры). Обращение производится по имени класса (структуры).
//Например имеем класс User и свойство  url, которое будет общим для всех экземпляров.

print()
class User {
    static var url = "google.com"

    static func goToNet() {
        print("Check url: \(url). All ok!")
    }
}

//Например имеем структуру anotherUser и свойство  url, которое будет общим для всех экземпляров.

struct anotherUser {
    static var url = "lenta.ru"
    
    static func goToNet() {
        print("Check url: \(url). All ok!")
    }
}

User.goToNet()
User.url = "ya.ru"
User.goToNet()

anotherUser.goToNet()
print()


// 9)    Могут ли иметь наследников:
//  -    Классы
//  -    Структуры
//  -    Enum’ы

//Наследоваться могут только классы.



// 10)Представим, что вы создаете rpg игру. Напишите структуру для хранения координаты игрока, enum для направлений (восток, сервер, запад, юг) и функцию, которая берет к себе на вход позицию и направление и возвращает новую координату (после того как игрок походил на одну клетку в соответствующую сторону). Вызовите эту функцию несколько раз, «походив» своим игроком

struct Position {
    var x = 0.0, y = 0.0
}
 
class Player {
    var originPositionPlayer = Position()
    
    
    enum Direction {
        case East, North, West, South, Stay
    }
    
    
    func movePlayer(currentDirection: Direction) -> Position {
        switch currentDirection {
        case .East:
            originPositionPlayer.x = originPositionPlayer.x + 1
            return originPositionPlayer
        case .North:
            originPositionPlayer.y = originPositionPlayer.y + 1
            return originPositionPlayer
        case .West:
            originPositionPlayer.x = originPositionPlayer.x - 1
            return originPositionPlayer
            case .South:
            originPositionPlayer.y = originPositionPlayer.y - 1
            return originPositionPlayer
        default:
            print("player don't move")
            return originPositionPlayer
        }
    }
    
}

var player = Player()
//Начинаем двигаться игроком
print(player.movePlayer(currentDirection: .East))
print(player.movePlayer(currentDirection: .East))
print(player.movePlayer(currentDirection: .East))
print(player.movePlayer(currentDirection: .East))
print(player.movePlayer(currentDirection: .North))
print(player.movePlayer(currentDirection: .East))
print(player.movePlayer(currentDirection: .North))
print(player.movePlayer(currentDirection: .West))
print(player.movePlayer(currentDirection: .South))
print(player.movePlayer(currentDirection: .South))
print(player.movePlayer(currentDirection: .South))
print(player.movePlayer(currentDirection: .South))
print(player.movePlayer(currentDirection: .South))
print(player.movePlayer(currentDirection: .South))
print(player.movePlayer(currentDirection: .Stay))

print("Current position \(player.originPositionPlayer))")



//Бонусные задания к урокам:
//•    Енамы
//Можно ли в enum’е хранить дополнительные данные?
//Перечисления обладают особенностями, которые обычно поддерживаются классами, например, вычисляемые свойства, для предоставления дополнительной информации о текущем значении перечисления

//Structs являются value type (типы значений), а Classes являются reference type (ссылочныетипы)

//•    Классы
//В каких случаях удобнее структурировать данные и функции в класс?
//Тогда когда требуется использовать деинициализатор
//Если требуется использовать наследоание
//Если требуется использовать классовые дженерики
//Если требуется контролировать идентичность данных, которые вы моделируете

//
//•    Структуры
//В каких случаях лучше использовать класс, а в каких – структуру?
//Типы значений быстрее, чем ссылочные типы
//Значения следует копировать, а не передавать по ссылке
//Если надо инкапсулировать несколько относительно простых значений данных.

//Классы лучше использовать:
//Когда надо использовать наследование
//Когда надо использовать деинициализатор
//Если требуется, чтобы объект был доступен из нескольких мест и его можно было менять из них.
