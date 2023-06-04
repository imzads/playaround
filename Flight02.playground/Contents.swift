import UIKit

class Developer {
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name       = name
        self.jobTitle   = jobTitle
        self.yearsExp   = yearsExp
    }
    
    func speakName() {
        print(name!)
    }
}

class iOSDeveloper: Developer {
    var favoriteFramework: String?
    
    func speakFavoriteFramework() {
        if let favoriteFramework = favoriteFramework {
            print(favoriteFramework)
        } else {
            print("We don't have favorite framework")
        }
    }
    
    override func speakName() {
        print("\(name!) - \(jobTitle!)")
    }
}

let zoe = iOSDeveloper(name: "Zoe", jobTitle: "iOS Engineer", yearsExp: 2)

zoe.speakFavoriteFramework()
zoe.favoriteFramework = "ARKit"
zoe.speakFavoriteFramework()
zoe.speakName()
