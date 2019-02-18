import UIKit
import Foundation

protocol Car {
    func drive()
}
class LittleSizeCar: Car {
    func drive() {
        print("drive a little size car")
    }
}
class MiddleSizeCar: Car {
    func drive() {
        print("drive a middle size car")
    }
}

protocol Bus {
    func drive()
}
class LittleSizeBus: Bus {
    func drive() {
        print("drive a little size bus")
    }
}
class MiddleSizeBus: Bus {
    func drive() {
        print("drive a middle size bus")
    }
}


protocol Factory {
    func produceBus() -> Bus
    func produceCar() -> Car
}


class LittleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Little bus is created")
        return LittleSizeBus()
    }
    
    func produceCar() -> Car {
        print("Little car is created")
        return LittleSizeCar()
    }
}

class MiddleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Middle bus is created")
        return MiddleSizeBus()
    }
    
    func produceCar() -> Car {
        print("Middle car is created")
        return MiddleSizeCar()
    }
}

let littleFactory = LittleSizeFactory()
littleFactory.produceCar()


let middleFactory = MiddleSizeFactory()
middleFactory.produceBus()
