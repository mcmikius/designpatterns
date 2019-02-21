protocol Coworker {
    func hire(coworker: Coworker)
    func getInfo()
    var level: Int { get }
}

class Manager: Coworker {
    private var coworkers = [Coworker]()
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        self.coworkers.append(coworker)
    }
    func getInfo() {
        print(self.level.description + " level manager")
        for coworker in coworkers {
            coworker.getInfo()
        }
    }
}
class LowLevelManager: Coworker {
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        print("can't hire")
    }
    func getInfo() {
        print(self.level.description + " level manager")
        
    }
}

let topManager = Manager(level: 1)
let managerLevelTwo = Manager(level: 2)
let managerLevelThreeOne = Manager(level: 3)
let managerLevelThreeTwo = Manager(level: 3)
let managerLevelTen = Manager(level: 10)
topManager.hire(coworker: managerLevelTwo)
managerLevelTwo.hire(coworker: managerLevelThreeOne)
managerLevelTwo.hire(coworker: managerLevelThreeTwo)
managerLevelThreeOne.hire(coworker: managerLevelTen)
topManager.getInfo()
