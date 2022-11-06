import UIKit

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

// begimas funkcijos aktyvavimas ir printinimas
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

scout.ataka(otherHuman: marine)
print(scout.hitpointas)
print(marine.hitpointas)
print(marine.stiprybe)
medic.ataka(otherHuman: marine)
print(marine.stiprybe)
medic.gydyti(otherHuman: testinisZmogus)
