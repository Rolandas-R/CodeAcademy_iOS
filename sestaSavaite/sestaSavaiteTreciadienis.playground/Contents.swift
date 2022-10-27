import UIKit

//    -------  Pirmas PVZ ----------
class Person {
    let name: String
    let nationality: String
    var age: Int

    init(name: String, nationality: String, age: Int) {
        self.name = name
        self.nationality = nationality
        self.age = age
    }

/* sioje vietoje galimas variantas dar ir toks (PATIKSLINTI PERZIURINT PASKAITU IRASA):
init(name: String, nationality: String, age: Int) {
    self.name = "vardas"
    self.nationality = nationality
    self.age = age

//  tik kai kursime personClass reikes daryti taip:
let personClass = Person()
let vardasClass = Person()
personClass.age = 2
print(personClass.name)
print(vardasClass.name)
*/

    func sayHi(){
        print("Hi, my name is \(name), I am from \(nationality) and I am \(age)")
    }

    func isAdult() -> Bool {
        return age > 18
    }
}

let personClass = Person(name: "Juozas", nationality: "LT", age: 22)
let vardasClass = Person(name: "Varle", nationality: "EN", age: 16)
print(personClass.name)
print(vardasClass.name)

personClass.sayHi()
print("Student name \(vardasClass.name), is an adult - \(vardasClass.isAdult())")



//    -------  Antras PVZ ----------

//susijes su pvz 3 esanciu zemiau

class Item {
    let name: String
    let description: String
    let price: Double

    init(itemName: String, itemDescription: String, itemPrice: Double) {
        name = itemName
        description = itemDescription
        price = itemPrice
    }

    func viewFullDescription(withNotes notes: String) {
        print("Description \(description); Notes: \(notes)")
    }
}

let playStation = Item(itemName: "Playstation 5", itemDescription: "Game console", itemPrice: 850)
playStation.viewFullDescription(withNotes: "No aditional notes")

//    -------  Trecias PVZ ----------
// sis pavyzdys susijes su auksciau esancio Antru PVZ. Jame yra paimami playstation duomenys ir appendinami du nauji Itemai.
// Cart class'eje aprasomas prekiu krepselis i kuri papuola Itemai ir tai leidzia toliai atlikti kai kuriuos veiksmus su jais

let bicycle = Item(itemName: "Rock Machine", itemDescription: "E-bike", itemPrice: 1500)
let laptop = Item(itemName: "Mac mini", itemDescription: "Apple desktop", itemPrice: 800)

class Cart {
    var items = [Item]()
//    var exampleItems = Array<Item>()
    func calculateTotalPrice() -> Double {
        var sum: Double = 0
        items.forEach { item in
            sum = sum + item.price
        }
        return sum
    }

    func mostExpensiveItem() -> Item {
        return items.max { firstItem, secondItem in
            firstItem.price < secondItem.price
        }!
    }

    func cheapestItem() -> Item {
        return items.min { firstItem, secondItem in
            secondItem.price > firstItem.price
        }! //reikia unwrappinti Optional type Item?, todel cia, iskart uz skliaustu dedamas sauktukas (!)
    }
}

let cart = Cart()
cart.items.append(playStation)
cart.items.append(bicycle)
cart.items.append(laptop)

print(cart.calculateTotalPrice())

let mostExpensiveItem = cart.mostExpensiveItem()
print(mostExpensiveItem.name)
print(cart.mostExpensiveItem().name)

let cheapestItem = cart.cheapestItem()
print(cart.cheapestItem().name)
print("Cheapest Item - \(cheapestItem.name), Item description: \(cheapestItem.description), cost \(cheapestItem.price)")


//    -------  Ketvirtas PVZ ----------//

class Car {
    let manufacturer: String
    let year: Int

    init(carManufacturer: String, carYear: Int) {
        manufacturer = carManufacturer
        year = carYear
    }
}

class Driver {
    var name: String
    var age: Int
    var ownedAuto: Car

    init(driverName: String, driverAge: Int, driverAuto: Car) {
        name = driverName
        age = driverAge
        ownedAuto = driverAuto
    }

    func isAdult() -> Bool {
        age > 18
    }
}

let car = Car(carManufacturer: "Ford F150", carYear: 2022)
let driver = Driver(driverName: "Cassidy", driverAge: 17, driverAuto: car)

print("\(driver.name), has a car \(driver.ownedAuto.manufacturer), her age is \(driver.age), can she drive? - \(driver.isAdult())")

/* destytojo pateiktas pvz.
class Vehicle {
    let manufacturer: String
    let year: Int

    init(vehicleManufacturer: String, vehicleYear: Int) {
        manufacturer = vehicleManufacturer
        year = vehicleYear
    }
}
class Person {
    var name: String
    var age: Int
    var ownedVehicle: Vehicle

    init(personName: String, personAge: Int, personVehicle: Vehicle) {
        name = personName
        age = personAge
        ownedVehicle = personVehicle
    }

 func isAdult() -> Bool {
        age > 18
    }
}
let vehicle = Vehicle(vehicleManufacturer: "Tesla", vehicleYear: 2017)
let person = Person(personName: "Arnas", personAge: 25, personVehicle: vehicle)
print(person.ownedVehicle.manufacturer)
 */


//   PADARYTI VELIAU


// #5

//class Vehicle {
//    var manufacturer: String
//    var year: Int
//
//    init(vehicleManufacturer: String, vehicleYear: Int) {
//        manufacturer = vehicleManufacturer
//        year = vehicleYear
//    }
//}
//
//class ElectricVehicle: Vehicle {
//    var electricRange: Double
//
//    init(manufacturer: String, year: Int, electricRange: Double) {
//        self.electricRange = electricRange
//        super.init(vehicleManufacturer: manufacturer, vehicleYear: year)
//    }
//
//    override init(vehicleManufacturer: String, vehicleYear: Int) {
//        electricRange = 100.0
//        super.init(vehicleManufacturer: vehicleManufacturer, vehicleYear: vehicleYear)
//    }
//
//    init() {
//        self.electricRange = 1
//        super.init(vehicleManufacturer: "", vehicleYear: 2)
//    }
//}
//
//let electricVehicle = ElectricVehicle(vehicleManufacturer: "Audi", vehicleYear: 1992)
//
//let anotherElectricVehicle = ElectricVehicle()
//
//class Bus: Vehicle {
//    var isToiletPresent = true
//    var isTrolley = false
//}
//
//let bus = Bus(vehicleManufacturer: "Scania", vehicleYear: 2005)
//
//
//class Motorcycle: Vehicle {
//    var isPaddlesForPassengerPresent = false
//}
//
//let motorcycle = Motorcycle(vehicleManufacturer: "Yamaha", vehicleYear: 2001)
//
//motorcycle.isPaddlesForPassengerPresent = true
//motorcycle.manufacturer = "Ducati"
//motorcycle.year = 2010


// #6

//class Vehicle {
//    var manufacturer: String
//    var year: Int
//
//    init(vehicleManufacturer: String, vehicleYear: Int) {
//        manufacturer = vehicleManufacturer
//        year = vehicleYear
//    }
//
//    func sayBeepBeep() {
//        print("Beep beep! I am a Vehicle!")
//    }
//}
//
//class ElectricVehicle: Vehicle {
//    var electricRange: Double
//
//    init(manufacturer: String, year: Int, electricRange: Double) {
//        self.electricRange = electricRange
//        super.init(vehicleManufacturer: manufacturer, vehicleYear: year)
//    }
//
//    func charge(hours: Int) {
//        electricRange += 100 * Double(hours)
////        electricRange = electricRange + 100 * Double(hours)
//    }
//
//    override func sayBeepBeep() {
//        super.sayBeepBeep()
//        print("Beep beep! I am an electric vehicle!")
//    }
//}
//
//let electricVehicle = ElectricVehicle(manufacturer: "Tesla", year: 2017, electricRange: 350)
//electricVehicle.sayBeepBeep()
//
//print(electricVehicle.electricRange)
//electricVehicle.charge(hours: 2)
//print(electricVehicle.electricRange)

    //#Uzduotis
class Vehicle {
    private let name: String
    private let purchaseCost: Double
    private let costToRun: Double
    private let fuelType: String
    private var currentSpeed: Duoble
    private var currentGear: Int
}
