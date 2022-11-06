import UIKit

// MARK: Namu darbas su klasemis 20221027

class Human {
    var hitpointas: Double
    var greitis: Int
    var stiprybe: Int
    
    init(hitpointParametrai: Double, greitisPrametras: Int, stiprybeParametras: Int) {
        hitpointas   = hitpointParametrai
        greitis      = greitisPrametras
        stiprybe     = stiprybeParametras
    }
    
// funkcija nubegamo atstumo laikui apskaiciuoti. INT konvertuojamas i DOUBLE siuo budu per Double(Int)
    func begimas(atstumas: Int) -> Double {
        return Double(atstumas) / Double(greitis)
    }
    
// funkcija poilsis su hitpointu pridejimu
    func poilsis(){
        hitpointas += 5
        
        if hitpointas > 100 {
        hitpointas = 100
        }
    }
    
// kito humano puolimo f-jos meleeHit ir ataka
    func smugis(otherHuman: Human) {
        otherHuman.hitpointas -= Double(stiprybe)
        
        if otherHuman.hitpointas < 0 {
            otherHuman.hitpointas = 0
        }
    }
    
// reikia overridinti pries kvieciant metoda child klasese (sita Parent class neimplementuoja sios f-jos. jei nebus oveeridinta - mes fatal errora
    func ataka(otherHuman: Human) {
        fatalError("Please override attack")
    }
}

// Child class Marine, kuri paveldi Human klase, tik keiciasi parametrai, kurie nurodomi per super.init initializeri
class Marine: Human {
    init(){
        super.init(hitpointParametrai: 100, greitisPrametras: 20, stiprybeParametras: 10)
    }
    
// atakavimo f-jos is tevines klases overridinimas
    override func ataka(otherHuman: Human) {
        otherHuman.hitpointas -= Double(stiprybe) * 3
        
        if otherHuman.hitpointas < 0 {
            otherHuman.hitpointas = 0
        }
    }

}


// child klase Scout su jos parametrais ir f-jos ataka overridinimu
class Scout: Human{
    init(){
        super.init(hitpointParametrai: 100, greitisPrametras: 70, stiprybeParametras: 7)
    }
    override func ataka(otherHuman: Human) {
        otherHuman.hitpointas -= Double(stiprybe) * 1.5
        
        if otherHuman.hitpointas < 0 {
            otherHuman.hitpointas = 0
        }
    }
}

// child subclass Medic
class Medic: Human {
    init(){
        super.init(hitpointParametrai: 100, greitisPrametras: 35, stiprybeParametras: 3)
    }
    override func ataka(otherHuman: Human) {
        smugis(otherHuman: otherHuman)
        }
// sita Medic'o subclass'e turi nauja gydymo f-ja kuri prideda kitos subklases objektui jegu
    func gydyti(otherHuman: Human) {
        otherHuman.hitpointas += 25
        
        if otherHuman.hitpointas > 100 {
            otherHuman.hitpointas = 100
        }
    }
}

// objektas testinisZmogus
var testinisZmogus: Human = Human(
    hitpointParametrai: 100,
    greitisPrametras: 91,
    stiprybeParametras: 79)
print("stiprybe: \(testinisZmogus.stiprybe), greitis: \(testinisZmogus.greitis) ir hitpointas: \(testinisZmogus.hitpointas)")

// begimo funkcijos aktyvavimas ir printinimas
testinisZmogus.begimas(atstumas: 1500)
print("testinis zmogus su greiciu \(testinisZmogus.greitis) atstuma 1500 iveiks per \(testinisZmogus.begimas(atstumas: 1500))")

// poilsio funkcija ir jos atprintinimas su ivairiais parametrais
print("pries poilsio f-jos aktyvavima hitpointu buvo: \(testinisZmogus.hitpointas)")
testinisZmogus.poilsis()
print("po poilsio f-jos aktyvavima hitpointu buvo: \(testinisZmogus.hitpointas)")

// objektas marine kuris perima Marine class nurodytus parametrus
var marine: Marine = Marine()
// marine atakuoja testinisZmogus, kuriam po f-jos vietoj 100 lieka 70 hitpointu
marine.ataka(otherHuman: testinisZmogus)
print(testinisZmogus.hitpointas)
print(marine.hitpointas)

// kuriami objektai scout ir medic
var scout: Scout = Scout()
var medic: Medic = Medic()

print("scout hitpointas ir stiprybe:  \(scout.hitpointas), \(scout.stiprybe)")
print("marine hitpointas ir stiprybe: ", marine.hitpointas, marine.stiprybe)

scout.ataka(otherHuman: marine)
print("po scout atakos scout parametrai", scout.hitpointas, scout.stiprybe)
print("po scout atakos marine hitpointas ir stiprybe:", marine.hitpointas, marine.stiprybe)

medic.ataka(otherHuman: marine)
print("po mediko atakos marine parametrai:", marine.hitpointas, marine.stiprybe)

scout.ataka(otherHuman: testinisZmogus)
print("poscout atakos testinisZmogus parametrai:", testinisZmogus.hitpointas)
medic.gydyti(otherHuman: testinisZmogus)
print("zmogus pagydytas ir jo hitpointas yra:", testinisZmogus.hitpointas)


// EXTENSIONS // ----------

extension String {
    func trimSpaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
    
    func separatedByDoubleDashes() -> String {
        return components(separatedBy: .whitespaces).joined(separator: "--")
    }
}

print("extensiono bandymas printinti be whitespaces".trimSpaces())
print("extensiono bandymas printinti be whitespaces".separatedByDoubleDashes())

// my idea half of Double
extension Double {
    func halved() -> Double {
        return self / 2
    }
// Double extension kuris apvalina i atitinkama skaiciu po kablelio (paimta is StackOverflow)
    func rounded(to places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
print(10.0.halved())
print(52.13215878.halved().rounded(to: 2))


// MARK: COMPUTED VALUES / PROPERTIES

class Rectangle {
    let width:  Double
    let height: Double
    
    init(width:  Double,
         height: Double) {
        self.width   = width
        self.height  = height
    }
// galima per f-ja gauti staciakampio perimetra:
//    func perimeter() -> Double {
//        rect.height * 2 + rect.width * 2
//    }
}
// staciakampio perimetra galima gauti ir per computed values, pridejus Rectangle extension:

extension Rectangle {
    var perimeter: Double {
        return height * 2 + width * 2
    }
}

let rect = Rectangle(width: 25.2, height: 35.5)
print("rectangle height is \(rect.height) and rectangle width is \(rect.width)")
print("rectangle perimeter is \(rect.height * 2 + rect.width * 2)")
//print("rect perimeter by function: \(rect.perimeter())")
print(rect.perimeter)


// MARK: PROTOKOLAI (Protocols)

protocol PerimeterCalculating {
    func perimeter() -> Double
}

class Circle: PerimeterCalculating {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    init(diameter: Double) {
        self.radius = diameter / 2
    }
    
    func perimeter() -> Double {
        return 2 * 3.15 * radius
    }
}

var perimeterCalculators: [PerimeterCalculating] = []

let circle = Circle(diameter: 22.22)
let circle2 = Circle(radius: 15.57)

perimeterCalculators.append(circle)
perimeterCalculators.append(circle2)

for _ in 0..<perimeterCalculators.count {
    print("perimeter: \(perimeterCalculators[0].perimeter())")
}
print("perimeter: \(perimeterCalculators[1].perimeter())")

// Assigment 3  (Namu Darbas)

protocol Describable {
    func describe()
}

extension String: Describable {
    func describe() {
        print("Tai yra String tipas, kuris dar kitaip gali buti suprantamas, kaip tekstas")
    }
}

extension Int: Describable {
    func describe() {
        print("Tai yra Integer tipas, kuris dar kitaip gali buti suprantamas, kaip sveikas skaicius")
    }
}

extension Double: Describable {
    func describe() {
        print("Tai yra Double tipas, kuris dar kitaip gali buti suprantamas, kaip realus skaicius, su kableliu")
    }
}

extension Float: Describable {
    func describe() {
        print("Tai yra Float tipas, kuris dar kitaip vadinamas skaicius su slankiuoju kableliu")
    }
}

extension Bool: Describable {
    func describe() {
        print("Tai yra Boolean tipas, kuris pateikia atsakyma TAIP arba NE")
    }
}

var descriptionable: [Describable] = []
//print(7.describe())
//print("Medikas".describe())
//print(55.25.describe())

let stringTipas: String = "medikas"
let intTipas: Int = 7
let doubleTipas: Double = 55.25
let floatTipas: Float = 25.250
let boolTipas: Bool = true


descriptionable.append(stringTipas)
descriptionable.append(intTipas)
descriptionable.append(doubleTipas)
descriptionable.append(floatTipas)
descriptionable.append(boolTipas)


for i in 0..<descriptionable.count {
    descriptionable[i].describe()
}
