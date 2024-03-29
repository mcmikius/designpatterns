import UIKit
import Foundation

protocol Vehicle {
    func drive()
}

class Car: Vehicle {
    func drive() {
        print("drive a car")
    }
}

class Truck: Vehicle {
    func drive() {
        print("drive a truck")
    }
}
class Bus: Vehicle {
    func drive() {
        print("drive a bus")
    }
}

protocol VehicalFactory {
    func produce() -> Vehicle
}

class CarFactory: VehicalFactory {
    func produce() -> Vehicle {
        print("car is created")
        return Car()
    }
}
class TruckFactory: VehicalFactory {
    func produce() -> Vehicle {
        print("truck is created")
        return Truck()
    }
}
class BusFactory: VehicalFactory {
    func produce() -> Vehicle {
        print("bus is created")
        return Bus()
    }
}

let carFactory = CarFactory()
let car = carFactory.produce()

let truckFactory = TruckFactory()
let truck = truckFactory.produce()
truck.drive()
