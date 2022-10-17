import UIKit

var greeting = "Hello"

func compareTwoStr(_ isFirst: String, _ second: String) -> Bool {
    return isFirst < second
}

var compareClosure: (String, String) -> (Bool) = compareTwoStr

var vardai: [String] = ["Antanas", "Pranas", "Juozas", "Algis"]

print(compareClosure("nn", "aa"))

//vardai.sort(by: compareTwoStr)


//for i in 0..<vardai.count - 1 {
//    for j in 0..<vardai.count - 1 {
//        if vardai[j] > vardai[j + 1]{
//            let temp = vardai[j]
//            vardai[j] = vardai[j + 1]
//            vardai[j + 1] = temp
//        }
//    }
//}
//print(vardai)


//vardai.manoSort(by: compareTwoStr)
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


////-------------
////ND sprendimas closure
//
////pirmas VC su tableview
//
//func prideti (_ vardas: String, _ telefonas: String){
//    vardai.append(vardas)
////    reload TableView
//}
////--------------
//// antras VC su ivedimu
//
//
//var pridejimoClosure: (String, String) -> () = prideti
//
//func didTapAdd() {
//    pridejimoClosure("vardas", "telefonas")
//}

//-----





// ANONIMINE FUNKCIJA ARBA LAMBDA

//vardai.sort(by: compareTwoStr)

vardai.manoSort(by: {
    return $0.count < $1.count
})

//gali buti ir taip
//vardai.manoSort {
//    return $0.count < $1.count
//}
// arba

//vardai.manoSort { isFirst, second in
//    return isFirst.count < second.count
//}

print(vardai)

extension Array where Element == String {
    mutating func manoSort(by compareClosure: (String, String) -> (Bool)) {
        for _ in 0..<self.count - 1 {
            for j in 0..<self.count - 1 {
                if compareTwoStr(self[j], self[j + 1]){
                    let temp = self[j]
                    self[j] = self[j + 1]
                    self[j + 1] = temp
                }
            }
        }
    }
}


//
