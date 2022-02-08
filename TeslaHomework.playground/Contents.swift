import UIKit

import UIKit

//Задание 2
let carName = "Tesla"
let tWeight = 2108
let tLength = 4976
let tWidth = 1963
let tHeight = 1435
let tWheels = 2959
let tClearence = 154.9
let tTrunck = 900

let tesla = "Автомобиль: \(carName)\nМасса: \(tWeight) кг\nДлина: \(tLength) мм\nШирина (с учетом боковых зеркал): \(tWidth) мм\nВысота: \(tHeight) мм\nКолесная база: \(tWheels) мм\nКлиренс: \(tClearence) мм\nОбъем багажника: \(tTrunck) литров"

print(tesla)

//Задание 1 и 5
var manualDriving: Bool
manualDriving = false
if manualDriving == false{
    print("Смотрите внимательно на дорогу! Следите за движением.")
}else{
    print("Не убирайте руки от руля! Автопилот может автоматически деактивироваться.")
}

var autopilotOne: Bool
autopilotOne = false
if autopilotOne == false{
    print("Смотрите внимательно на дорогу! Следите за движением.")
}else{
    print("Не убирайте руки от руля! Автопилот может автоматически деактивироваться.")
}

//Задание 3
var climatControlSpeed = 34

switch climatControlSpeed {
case 0:
    print("Автоматический обдув")
case 0...10:
    print("Cлабый обдув")
case 11...40:
    print("Средний Обдув")
case 40...100:
    print("Максимальный Обдув")
default:
    break
}


var music = 3

switch music {
case 0:
    print("Музыка Включена")
case 1:
    print("Следующий трек")
case 2:
    print("Предыдущий трек")
case 3:
    print("Выключить музыку")
default:
    break
}

var sunroof = 0.00

if sunroof >= 0.75 {
    print ("Люк открыт более чем на 75%")
}else if sunroof >= 0.50{
    print ("Люк открыт более чем на 50%")
}else if sunroof >= 0.25{
    print ("Люк открыт более чем на 25%")
}else if sunroof > 0.00 {
        print ("Режим проветривания")
}else if sunroof == 0.00 {
    print ("Люк закрыт")
}

var driverClimatControl = 2

switch driverClimatControl {
case 0:
    print("Комфорт")
case 1:
    print("Кондиционирование")
case 2:
    print("Обогрев")
default:
    break
}

//Задание 4
enum TeslaError: Error {
    case blinkerFluid // заблудился
    case lowTire // низкая батарея
    case trunkIsOpen // проблемы с управлением машины
}

var blinkerFluid : Bool = true
var lowTire: Bool = false
var trunkIsOpen: Bool = true

do {
    if blinkerFluid  {
        throw TeslaError.blinkerFluid
    }
    
    if lowTire {
        throw TeslaError.lowTire
    }
    
    if trunkIsOpen {
        throw TeslaError.trunkIsOpen
    }
} catch TeslaError.blinkerFluid  {
    print("Низкий уровень омывателя для стекла.")
} catch TeslaError.lowTire {
    print("Проверьте уровень воздуха в шинах!")
} catch TeslaError.trunkIsOpen {
    print("Багажник открыт.Закройте багажник чтобы продолжить движение")
}







