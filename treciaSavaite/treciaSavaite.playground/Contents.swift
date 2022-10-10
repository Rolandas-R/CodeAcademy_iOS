//import UIKit

//var vardas: String!
//var amzius: Int?


func asmuo(_ vardas: String, amzius: Int?){
    if amzius != nil {
        print("Sveiki \(vardas), jusu amzius yra \(amzius!)")
    } else{
        print("\(vardas) nezinau kiek metu")
    }
}

asmuo("Petras", amzius: 20)
