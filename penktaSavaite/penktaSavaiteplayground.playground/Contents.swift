import UIKit

var greeting = "Hello"

func compareTwoStr(isFirst: String, second: String) -> Bool {
    return isFirst < second
}
var vardai: [String] = ["Antanas", "Pranas", "Juozas", "Algis"]

vardai.sort(by: compareTwoStr)
print(vardai)

for 
