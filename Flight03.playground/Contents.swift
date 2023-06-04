import UIKit

struct Developer {
    var name: String
    var jobTitle: String
    var yearsExp: Int
}

var chloe = Developer(name: "Chloe", jobTitle: "iOS Developer", yearsExp: 1)

var sophia = chloe
sophia.name = "Sophia"
sophia.name
chloe.name


// extension
extension String {
    
    func removeWhitespace() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

let alphabet = "A B C D E F"
print(alphabet)
print(alphabet.removeWhitespace())
