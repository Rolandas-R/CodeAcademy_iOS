import UIKit


/*var draugai: [String] = ["Pranas", "Kazys", "Domas"]

var indeksas = 0
while indeksas < draugai.count {
    print("Sveikas \(draugai[indeksas])")
    indeksas = indeksas + 1
}
 */


//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//

/*var skaiciai: Int

skaiciai = 0

while skaiciai <= 10 {
    print(skaiciai)
    skaiciai = skaiciai + 1
}
*/

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//

/*var vardas: [String] = ["Antanas", "Juozas", "Maryte"]

for i in 0..<vardas.count {
    print("index: \(i), varrdas: \(vardas[i])")
}

//for i in 0...10 {
//    print(i)
//}


var draugaiMetai: [String: Int] = ["Petras": 25, "Monika": 27, "Juozas": 30]

for draugas in draugaiMetai {
   print("My friend \(draugas.key), age is \(draugas.value)")
}

for(name, age) in draugaiMetai {
    print("My friend \(name), age is \(age)")
}
 */

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//


//var miestas: [String] = ["Kaunas", "Vilnius", "Roma", "Londonas"]
//
//for miestas in miestas {
//        print(miestas)
//    if miestas == "Kaunas"{
//    print("\(miestas) yra kulturos sostine")
//}
//}


//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//

//var reiksme = 5
//
//switch reiksme {
//case 5:
//    print("skaicius 5 arba maziau \(reiksme)")
//    fallthrough
//case 6:
//    print("6 skaicius arba maziau \(reiksme)")
//default:
//    break
//}


// nekazka
//var testColor: UIColor = .darkGray
//var pasirnktaSpalva = testColor
//
//switch testColor {
//case .blue:
//    print(pasirnktaSpalva.accessibilityName)
//    print("ne")
//    testColor = .darkGray
//case .red:
//    print(pasirnktaSpalva.accessibilityName)
//    print("NE")
//    testColor = .darkGray
//case .green:
//    print(pasirnktaSpalva.accessibilityName)
//    testColor = .darkGray
//default:
//    print(pasirnktaSpalva.accessibilityName)
//}
//




//func ipilkAlaus(zmogausVardas: String, zmogausAmzius: Int) {
//    guard zmogausAmzius >= 20 else {
//        print("\(zmogausVardas) negali gerti alaus")
//        return
//    }
//print("pilu alu")
//}
//
//ipilkAlaus(zmogausVardas: "petras", zmogausAmzius: 40)


//
//func autoTikrinimas(auto: String?) {
//    guard auto != "Opel Astra" else {
//        print("Opelis rudyja")
//        return
//    }
//    switch auto {
//    case "Ford F150":
//       print("Popular American car")
//    case "VW Passat":
//        print("LT tautos megiamiausias automobilis")
//    default:
//        break
//    }
//}
//
//autoTikrinimas(auto: "Opel Astra")


//funkcija i kuria paduodant skaiciu grazinamas bool (reikes modulo [%]) ar skaicius yra pirminis (dalinasi is saves ir 1) ar ne. Ir pagal tai atprintinti. pabandyti be googlinimo
//
//
//SUkuriami skaiciu masyvai

//var pirminiaiSkaiciai = [1, 2, 3]
//
//var baze: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//
//var tikrinimui: [Int] = []
//
//var remainderis: [Int] = []
//

// Funkcija ptirminiu skaiciu sukurimui ir masyvo uzpildymui
// Kiekvienas pirminis skaicius atitinka formule - arba x = 6n + 1, arba x = 6n - 1

//for baze in baze {
//
//    tikrinimui.append(6 * baze - 1)
//    tikrinimui.append(6 * baze + 1)
//
//}
//
//print("pirminiai skaiciai: \(pirminiaiSkaiciai)")
//print("Tikrinsiu siuos skaicius: \(tikrinimui)")

//

//var daliklis = [2, 3, 4, 5, 6, 7, 8, 9]
//
//var skaicius = 11

//func arPirminis(){
//    if skaicius == 2 {
//        print("skaicius 2 yra pirminis") }
//    else if skaicius == 1 {
//            print("skaicius 1 nera pirminis")
//        }
//    else if skaicius <= 0 {
//        print("sis skaicius tikrai nera pirminis")
//    }
//    else if skaicius % 2 == 0 {
//        print("lyginiai skaiciai nera pirminiai")
//    }
//    else{ print("pirminis") }
//}
//
//arPirminis()
//
//var daliklis = [2, 3, 4, 5, 6, 7, 8, 9]
//
//var skaicius = 973
//
//
//var modulis: [Bool] = []
//
//for i in daliklis{
//    if skaicius == 2 {
//        modulis.append(true)
//        print("skaicius 2 yra pirminis")
//    } else if skaicius <= 0 {
//        modulis.append(false)
//        print("skaicius nera pirminis")
//    } else if skaicius % i == 0 {
//        modulis.append(false)
//        print("DALINASI is \(i) ir nera pirminis")
//    } else {
//        modulis.append(true)
//        print("nesidalina is \(i) ir pirminis")
//    }
//}
//print(modulis)


//switch modulis {
//case true:
//    print("pirminis")
//default:
//    print("ne pirminis")
//}

