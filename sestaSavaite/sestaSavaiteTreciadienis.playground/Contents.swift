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


//    -------  Penktas PVZ ----------//

// Sitas pavyzdys su parent - child

class Auto {
    var manufacturer: String
    var year: Int
    var fuel: String

    init(autoManufacturer: String, autoYear: Int, fuelType: String) {
        manufacturer = autoManufacturer
        year = autoYear
        fuel = fuelType
    }
}

class ElectricCar: Auto {
    var electricRange: Double

    init(manufacturer: String, year: Int, fuel: String, electricRange: Double) {
        self.electricRange = electricRange
        super.init(autoManufacturer: manufacturer, autoYear: year, fuelType: fuel)
    }

    override init(autoManufacturer: String, autoYear: Int, fuelType: String) {
        electricRange = 100.0
        super.init(autoManufacturer: autoManufacturer, autoYear: autoYear, fuelType: fuelType)
    }

    // dar vienas galimas init'as. Ju gali buti net keletas clas'eje
//    init() {
//        self.electricRange = 200
//        super.init(autoManufacturer: "Tesla", autoYear: 2022, fuelType: "Electric")
//    }
}

let electricCar = ElectricCar(autoManufacturer: "Volvo", autoYear: 2022, fuelType: "Electric")
print(electricCar.manufacturer)
//let anotherElectricCar = ElectricCar()
//print(anotherElectricCar.electricRange)

// gali buti ir tokios kombinacijos be init'o
class Bus: Auto {
    var isToiletPresent = true
    var isTrolley = false
}

let bus = Bus(autoManufacturer: "Mercedes", autoYear: 2015, fuelType: "Diesel")
print(bus.isToiletPresent)
print(bus.manufacturer)
print(bus.fuel)

class Motorcycle: Auto {
    var isPaddlesForPassengerPresent = false
}

let motorcycle = Motorcycle(autoManufacturer: "Kawasaki", autoYear: 2020, fuelType: "Gasoline")
print(motorcycle.manufacturer)
print(motorcycle.year)

motorcycle.isPaddlesForPassengerPresent = true
motorcycle.manufacturer = "Yamaha"
motorcycle.year = 2019

print(motorcycle.year)
print(motorcycle.manufacturer)

print(electricCar.manufacturer)
print(electricCar.electricRange)
print(bus.fuel)
//print(anotherElectricCar.manufacturer)
//print(anotherElectricCar.electricRange)


//    -------  Sestas PVZ ----------//

// nekoregavau, destytojo variantas

class Vehicle {
    var manufacturer: String
    var year: Int

    init(vehicleManufacturer: String, vehicleYear: Int) {
        manufacturer = vehicleManufacturer
        year = vehicleYear
    }

    func sayBeepBeep() {
        print("Beep beep! I am a Vehicle!")
    }
}

class ElectricVehicle: Vehicle {
    var electricRange: Double

    init(manufacturer: String, year: Int, electricRange: Double) {
        self.electricRange = electricRange
        super.init(vehicleManufacturer: manufacturer, vehicleYear: year)
    }

    func charge(hours: Int) {
        electricRange += 100 * Double(hours)
//        electricRange = electricRange + 100 * Double(hours)
    }

    override func sayBeepBeep() {
        super.sayBeepBeep()
        print("Beep beep! I am an electric vehicle!")
    }
}

let electricVehicle = ElectricVehicle(manufacturer: "Tesla", year: 2017, electricRange: 350)
electricVehicle.sayBeepBeep()

print(electricVehicle.electricRange)
electricVehicle.charge(hours: 2)
print(electricVehicle.electricRange)

    //#Uzduotis

//enum fuels: String{
//    case electric = "electric"
//    case diesel = "diesel"
//    case petrol = "petrol"
//}


class MyCar {
    private let name: String
    private let purchaseCost: Double
    private let costToRun: Double
    private let fuelType: String
    private var currentSpeed: Double
    private var currentGear: Int
    
// mano bandymas

    init(myCarName: String, myCarPurchaseCost: Double, myCarRunningCost: Double, myCarFuel: String, myCarSpeed: Double, myCarGear: Int) {
        self.name = myCarName
        self.purchaseCost = myCarPurchaseCost
        self.costToRun = myCarRunningCost
        self.fuelType = myCarFuel
        self.currentSpeed = myCarSpeed
        self.currentGear = myCarGear
        
        print("New object: \(myCarName)")
    }
                            
    func needForSpeed(to limit: Double) {                 // destytojo variantas
        print("Now my speed is \(currentSpeed) but I'll increase it by \(limit), so my speed will be \(currentSpeed + limit)")
        currentSpeed = currentSpeed + limit
    }
    
    func braking(to speed: Double) {                      // destytojo variantas
        currentSpeed = currentSpeed - speed
        print("Now my speed is \(currentSpeed) but I'll decrease it by \(speed), so my speed will be \(currentSpeed - speed)")
    }
    
    func gearChange(to gear: Int) {                       // destytojo variantas
        if fuelType.lowercased() == "Electric" && (gear > 2 || gear < -1) {
            print("Can't change gear")
            return
        }
        print("My current gear is: \(currentGear), I am gonna change gear to \(gear)")
        currentGear = gear
    }
}
  
/* dar variantas kaip su sia funkcija galima pasitikrint ar teisingas begis ijungtas ir po to implementuoti auksciau esancia gearchange f-ja

    func changeGear(gear: Int) {
        if validateGear(gear: gear, fuelType: fuelType) {
            print("My current gear is: \(currentGear), it will become: \(gear)")
            currentGear = gear
        } else {
            return
        }
    }
    func validateGear(gear: Int, fuelType: String) -> Bool {
        if fuelType.lowercased() == "Electric" && (gear > 2 || gear < -1) {
            print("Can't change gear")
            return false
        }
        return true
    }
*/

let automobilis = MyCar(myCarName: "Suzuki", myCarPurchaseCost: 1000.0, myCarRunningCost: 25.25, myCarFuel: "Petrol", myCarSpeed: 25.25, myCarGear: 4)

let elektrinis = MyCar(myCarName: "Chevy Volta", myCarPurchaseCost: 1500.0, myCarRunningCost: 12.12, myCarFuel: "electric", myCarSpeed: 55.00, myCarGear: 1)

let dyzelinis = MyCar(myCarName: "MB", myCarPurchaseCost: 3000, myCarRunningCost: 150, myCarFuel: "Diesel", myCarSpeed: 120, myCarGear: 4)

//automobilis.needForSpeed(to: 100)
//automobilis.braking(to: 25.0)
//automobilis.gearChange(to: 5)

elektrinis.needForSpeed(to: 20)
elektrinis.braking(to: 25.0)
elektrinis.gearChange(to: 2)

// ================     kita uzduotis   ===================== //









