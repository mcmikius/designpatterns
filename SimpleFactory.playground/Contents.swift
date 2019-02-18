import UIKit
import Foundation

enum CarType {
    case huge, fast, minivan
}

protocol Car {
    func drive()
}


class HugeCar: Car {
    func drive() {
        print("you drive huge car")
    }
}

class FastCar: Car {
    func drive() {
        print("you drive fast car")
    }
}

class MinivanCar: Car {
    func drive() {
        print("you drive minivan car")
    }
    
    
}

class CarFactory {
    
    static func produceCar(type: CarType) -> Car {
        var car: Car
        
        switch type {
        case .fast: car = FastCar()
        case .huge: car = HugeCar()
        case .minivan: car = MinivanCar()
        }
        
        return car
    }
}


let hugeCar1 = CarFactory.produceCar(type: .huge)
let fastCar1 = CarFactory.produceCar(type: .fast)
let minivanCar = CarFactory.produceCar(type: .minivan)
