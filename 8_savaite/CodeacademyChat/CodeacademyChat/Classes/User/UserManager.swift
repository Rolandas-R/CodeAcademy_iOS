//
//  UserManager.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import Foundation

/* Structas reikalingas suhandlinti registravimo f-jos rezultatus, atsizvelgiant i pastaruosius Useris yra sukuriamas arba ne. Taip pat UserResult structe yra erroro zinutes konstanta, kuri perduodama i kitus VC atvaizdavimui, jei switchai pereje per userLista randa neatikimu loginantis ir ivedant netinkama username, passw, ar neconfirminant passwordo
 */
struct UserResult {
    let user: User?
    let errorTitle: String?
    let errorMessage: String?
}

// vartotoju managinimo klase, kurioje saugomas userListas
class UserManager {
    var userList: [User] = []
    
    
// vartotojo registravimo f- ja. grazina UserResult struct'a
    func register(username: String, password: String, confirmPassword: String) -> UserResult {
        let registerErrorTitle = "Error while creating user"
        
        // guardas padeda patikrinti ar ivestas slaptazodis ir passwordas i tekstini lauka
        guard !username.isEmpty, !password.isEmpty
        // tikrinimo logika: jei kazkas neivesta ar nesutampa - useris nesukuriamas ir isvedamas klaidos pranesimas
        else {
            return UserResult(user: nil, errorTitle: registerErrorTitle, errorMessage: "Fill username and/or password")
        }
        if password != confirmPassword {
            return UserResult(user: nil, errorTitle: registerErrorTitle, errorMessage: "Your password didn't match")
        }
        
        // pereinama ir patikrinamas userListas
        for user in userList {
            if username == user.username {
                return UserResult(user: nil, errorTitle: registerErrorTitle, errorMessage: "User with same username already exists")
            }
        }
        
        // jei viskas tvarkoje sukuriamas naujas objektas user ir pridedamas prie userListo
        let user = User(username: username, password: password, isOnline: true)
        
        userList.append(user)
        // perduodama UserResult structui
        return UserResult(user: user, errorTitle: registerErrorTitle, errorMessage: nil)
    }
    
// vartotojo loginimo f-ja kur tikrinama ar toks vartotojas yra ir ar pateikti visi duomenys sutampa
// tikrinimas su closure
    func login(username: String, password: String) -> UserResult {
        let loginErrorTitle = "Error while loging in"
        /*
         //vienas is variantu su closure:
         let userOptional = userList.first { user in
                     user.username == username
                 }
         // dar variantas kaip paduodam funkcija vietoj closure:
        //        let userOptional = userList.first(where: arPetras)
         
         //MARK: cia panaudotas antras variantas (CLOSURE) */
        let userOptional = userList.first(where: { $0.username == username })

        // guardas patikrina ir toliau praleidzia (arba ne), atsizvelgiant ar sutampa pateikti userio duomenys
        guard let user = userOptional else {
            return UserResult(user: nil, errorTitle: loginErrorTitle, errorMessage: "No such user with this username")
        }
        
        if user.password != password {
            return UserResult(user: nil, errorTitle: loginErrorTitle, errorMessage: "Wrong password")
        }
        return UserResult(user: user, errorTitle: loginErrorTitle, errorMessage: nil)
    }
    
}

