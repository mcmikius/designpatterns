

protocol SwimBehavior {
    func swin()
}
class ProfessionalSwimmer: SwimBehavior {
    func swin() {
        print("professional swimming")
    }
}
class NonSwimmer: SwimBehavior {
    func swin() {
        print("non-swimming")
    }
}


protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("professional diving")
    }
}
class NewbieDiver: DiveBehavior {
    func dive() {
        print("newbie diving")
    }
}

class NonDiver: DiveBehavior {
    func dive() {
        print("non-diving")
    }
}

class Human {
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    func performSwin() {
        swimBehavior.swin()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(swimBehavior: SwimBehavior) {
        self.swimBehavior = swimBehavior
    }
    
    func setDiveBehavior(diveBehavior: DiveBehavior) {
        self.diveBehavior = diveBehavior
    }
    
    func run() {
        print("running")
    }
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
}

let human = Human(swimBehavior: ProfessionalSwimmer(), diveBehavior: ProfessionalDiver())
human.setSwimBehavior(swimBehavior: NonSwimmer())
human.performDive()
human.performSwin()
