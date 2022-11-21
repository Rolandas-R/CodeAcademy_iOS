//Kontrolinis 2022-11-21

import UIKit

// 1.0
var kintamasis: Int = 4

// 1.1
kintamasis += kintamasis
print(kintamasis)

// 1.2
if kintamasis > 7 {
    print("Reiksme didesne nei 7")
}

// 2.0
private func printHello() {
    print("Sveiki visi")
}
printHello()

// 2.1
private func printHi(name: String) {
    var vardas = name
    print("Sveikas \(vardas)")
}
printHi(name: "Petras")

// 2.2
func multiplyTwoDigits(a: Int, b: Int) -> Int {
    return  a * b
}
print(multiplyTwoDigits(a: 5, b: 7))

// 3.0
var vardai: [String] = []

// 3.1
vardai.append(contentsOf: ["Jonukas", "Grytute", "Petriukas", "Maryte"])

// 3.2
for vardai in vardai {
    print("\(vardai)")
}

// 4.0
class Restangle {
    let lenght: Double
    let width: Double
    
    init(lenght: Double, width: Double) {
        self.lenght = lenght
        self.width = width
    }
    
    
// 4.1
    func getArea() -> Double {
        let area = lenght * width
        return area
    }
    
    func getPerimeter() -> Double {
        let perimeter = 2 * (lenght + width)
        return perimeter
    }
}

// 4.2
var staciakampis: Restangle = Restangle(lenght: 22.2, width: 33.3)
staciakampis.getArea()
staciakampis.getPerimeter()
print("\(staciakampis.getArea())")
print("\(staciakampis.getPerimeter())")

// Papildoma uzduotis:

//class Circle: Restangle {
//    let radius: Double
//    
//init() {
//    override.init(radius: Double) {
//        radius = radius
//    }
//    }
//  
//}
