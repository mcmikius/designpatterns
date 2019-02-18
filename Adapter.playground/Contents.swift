import UIKit
import Foundation

class SimpleCar {
    func sound() -> String {
        return "tr-tr-tr-tr"
    }
}

protocol SupercarProtocol {
    func makeNoise() -> String
}

class SuperCar: SupercarProtocol {
    func makeNoise() -> String {
        return "wroom-wroom"
    }
}


class SuperCarAdapter: SupercarProtocol {
    var simpleCar: SimpleCar
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}

