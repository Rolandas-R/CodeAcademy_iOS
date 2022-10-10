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
func ugis(asmensUgis: Int) -> String {
    if asmensUgis >= 195 {
        return "labai aukstas zmogus"
    }
    if asmensUgis < 195 && asmensUgis >= 180 {
        return "aukstas zmogus"
    }
    if asmensUgis < 180  && asmensUgis >= 165 {
        return "vidutinio ugio zmogus"
    }
    if asmensUgis < 160 && asmensUgis > 140 {
        return "zemas zmogus"
    }
    return "labai zemas zmogus"
}

ugis(asmensUgis: 158)
