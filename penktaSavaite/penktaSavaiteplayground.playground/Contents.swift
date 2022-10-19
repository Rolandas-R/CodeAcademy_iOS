import UIKit



//func compareTwoStr(_ isFirst: String, _ second: String) -> Bool {
//    return isFirst < second
//}
//
//var compareClosure: (String, String) -> (Bool) = compareTwoStr
//
//var vardai: [String] = ["Antanas", "Pranas", "Juozas", "Algis"]
//
//print(compareClosure("nn", "aa"))
//
////vardai.sort(by: compareTwoStr)
//
//
////for i in 0..<vardai.count - 1 {
////    for j in 0..<vardai.count - 1 {
////        if vardai[j] > vardai[j + 1]{
////            let temp = vardai[j]
////            vardai[j] = vardai[j + 1]
////            vardai[j + 1] = temp
////        }
////    }
////}
////print(vardai)
//
//
////vardai.manoSort(by: compareTwoStr)
////print(vardai)
////
////extension Array where Element == String {
////    mutating func manoSort(by compareClosure: (String, String) -> (Bool)) {
////        for _ in 0..<self.count - 1 {
////            for j in 0..<self.count - 1 {
////                if compareTwoStr(self[j], self[j + 1]){
////                    let temp = self[j]
////                    self[j] = self[j + 1]
////                    self[j + 1] = temp
////                }
////            }
////        }
////    }
////}
//
//
//////-------------
//////ND sprendimas closure
////
//////pirmas VC su tableview
////
////func prideti (_ vardas: String, _ telefonas: String){
////    vardai.append(vardas)
//////    reload TableView
////}
//////--------------
////// antras VC su ivedimu
////
////
////var pridejimoClosure: (String, String) -> () = prideti
////
////func didTapAdd() {
////    pridejimoClosure("vardas", "telefonas")
////}
//
////-----
//
//
//
//
//
//// ANONIMINE FUNKCIJA ARBA LAMBDA
//
////vardai.sort(by: compareTwoStr)
//
//vardai.manoSort(by: {
//    return $0.count < $1.count
//})
//
////gali buti ir taip
////vardai.manoSort {
////    return $0.count < $1.count
////}
//// arba
//
////vardai.manoSort { isFirst, second in
////    return isFirst.count < second.count
////}
//
//print(vardai)
//
//extension Array where Element == String {
//    mutating func manoSort(by compareClosure: (String, String) -> (Bool)) {
//        for _ in 0..<self.count - 1 {
//            for j in 0..<self.count - 1 {
//                if compareTwoStr(self[j], self[j + 1]){
//                    let temp = self[j]
//                    self[j] = self[j + 1]
//                    self[j + 1] = temp
//                }
//            }
//        }
//    }
//}
//
//
////



// (treciadienis) ENUM'AI

//class MyFirstClass {
//
//}
//
//struct MyFirstStruct {
//
//}
//enum MyFirstEnum {
//    case north, westEast, eastWest
//    case south(Int)
//    case east
//    case west
//}
//var compassPoint: [String] = ["N", "E", "S", "W"]
//
//compassPoint.append("NE")
//
//let southEnumValue = MyFirstEnum.south(1)
//
//func checkValue(value: MyFirstEnum) {
//    switch value {
//    case .south(let value):
//        print(value)
//    case .east:
//        print("3")
//    default: return
//    }
//}


// KLASES
//class yra perduodamas kaip referencas - nuoroda i vieta memoryje. jos gali paveldeti, viena kitos klasaes avybes .self ir .super
//-------inheretence concept -----------//

class ParentClass {
    
    func printname() {
        print("k")
    }
    
}
class ChildClass: ParentClass{
    
    var defaultName: String = "default"
    
    override func printname() {
        super.printname()
        print("O")
    }
    
}

let childClass = ChildClass()
childClass.printname()

// reference type concept

print(childClass.defaultName)

let anotherParent = childClass //ChildClass()
anotherParent.defaultName = "SSSSS"
print(childClass.defaultName)
print(anotherParent.defaultName)


// value type concept

struct MyStruct {
    var defaultName: String = "ooooo"
}

var firstStruct = MyStruct()
let secondStruct = firstStruct   //MyStruct()

firstStruct.defaultName = "hghagsdhgas"

print(firstStruct.defaultName)
print(secondStruct.defaultName)

