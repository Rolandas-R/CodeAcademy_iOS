import UIKit


//OK
//var pirmasSkaicius = 5
//var antrasSkaicius: Int = 10
//
//pirmasSkaicius = pirmasSkaicius * 2
//print(pirmasSkaicius)
//
//antrasSkaicius = antrasSkaicius * 2
//print(antrasSkaicius)
////
//
//var nepilnasVienas = 5.5
//var nepilnasAntras: Double = 10.0222
//
//nepilnasVienas = nepilnasVienas * 2
//print(nepilnasVienas)
//
//nepilnasAntras = nepilnasAntras * 2
//print(nepilnasAntras)
//
//


//NESIGAVO
//var obuoliuSultysSaldzios = true
//
//var obuoliuSultysSaldzios = !obuoliuSultysSaldzios
//print(obuoliuSultysSaldzios)
//
//var code = "Code"
//var akademija = "Academy"
//
//
//if code.count + akademija.count > 10 {
//    var temporary = code
//    code = akademija
//    akademija = temporary
//}
//
//print(code)
//print(akademija)
//


//NESIGAVO
//let sultysSaldzios = true
//var obuolysSaldus = true
//var kriauseSaldi = false
//
//if sultysSaldzios == true {
//    let obuolysSaldus = false
//    let kriauseSaldi = true
//}
//
//print(obuolysSaldus)
//print(kriauseSaldi)
//

//NEVISAI GERAI
//var fizika: Double = 95
//var chemija: Double = 95
//var biologija: Double = 97
//var matematika: Double = 98
//var informatika: Double = 90
//
//var pazymiuVidurkis = (fizika + chemija + biologija + matematika + informatika) / 5
//
//var pazymys: [String] = []
//
//if pazymiuVidurkis >= 90 {
//    var pazymys = "A"
//} else if pazymiuVidurkis >= 80 {
//    var pazymys = "B"
//} else if pazymiuVidurkis >= 70 {
//    var pazymys = "C"
//} else { var pazymys = "E"
//    }
//
//print("\(pazymys)")



// OK
//func profit(savikaina: Double, pardavimoKaina: Double) {
//    let arPelninga = pardavimoKaina - savikaina
//    if arPelninga > 0 {
//        print("pelningas verslas, pelnas yra \(arPelninga)")
//    } else if arPelninga == 0 {
//        print("pajamos padengia kastus, o pelno nera - \(arPelninga)")
//    } else {
//        print("nepelningas verslas, nuostolis yra \(arPelninga)")
//    }
//}
//
//profit(savikaina: 50, pardavimoKaina: 88)


// OK
//(daugmaz- nebuvo butina rasyti antra ifa uzteko
// if ugis>195{
// return "..."
//}
//if ugis>175{
//return"....}
//.....

//
//func ugis(asmensUgis: Int) -> String {
//    if asmensUgis >= 195 {
//        return "labai aukstas zmogus"
//    }
//    if asmensUgis < 195 && asmensUgis >= 180 {
//        return "aukstas zmogus"
//    }
//    if asmensUgis < 180  && asmensUgis >= 165 {
//        return "vidutinio ugio zmogus"
//    }
//    if asmensUgis < 160 && asmensUgis > 140 {
//        return "zemas zmogus"
//    }
//    return "labai zemas zmogus"
//}
//
//print(ugis(asmensUgis: 197))

//OK
//func pasisveikinimas() {
//    print("Hello CodeAcademy")
//}
//pasisveikinimas()
//
//
//
//func skaiciai(skaicius: Int) {
//    if skaicius.% 2 == 0{
//        print("skaicius lyginis")
//    } else {
//        print("skaicius nelyginis")
//    }
//}
//skaiciai(skaicius: 21)

//OK
//let vardas = "Petras"
//var diena = "Pirmadienis"
//
//func sveikinimas() {
//    print("Sveikas \(vardas)")
//    dienos()
//}
//func dienos() {
//    print("siandien yra \(diena)")
//}
//sveikinimas()
//sveikinimas()



//OK
//var pradinisSkaicius = 0
//
//func skaiciausDidinimas() {
//    pradinisSkaicius += 1
//    if pradinisSkaicius < 10 {
//        skaiciausDidinimas()
//    }
//
//}
//skaiciausDidinimas()
//print(pradinisSkaicius)



//kitas variantas su rekursija OK
//func neSavanoris(_ skaicius: Int) -> Int {
//    var num = skaicius
//    num += 1
//    if num < 10 {
//        return neSavanoris(num)
//    }
//        return num
//}
//print(neSavanoris(1))


// OK
//func narioMokestis(hours: Double, isMember: Bool, memberHourlyRate: Double, nonMemberHourlyRate: Double, memberTax: Double, nonMemberTax: Double) {
//
//    if isMember {
//        let nariuiMoketi = hours * memberHourlyRate * memberTax
//        print("Narys moka \(nariuiMoketi)")
//    } else {
//        let nenarysMoka = hours * nonMemberHourlyRate * nonMemberTax
//        print("Ne narys moka daugiau: \(nenarysMoka)")
//    }
//}
//narioMokestis(hours: 2, isMember: false, memberHourlyRate: 10, nonMemberHourlyRate: 20, memberTax: 0.20, nonMemberTax: 0.5)


var penkiElementai = [5, 7, 25, 32, 55]

print("pradinis elementu kiekis \(penkiElementai.count)")

penkiElementai.removeAll()

if penkiElementai.isEmpty {
    penkiElementai.append(contentsOf: [22, 28, 30])
}
 print("antra salyga \(penkiElementai)")

penkiElementai.remove(at: 1)
print("trecia salyga \(penkiElementai)")

penkiElementai.insert(16, at: 1)
print("ketvirta salyga \(penkiElementai)")

