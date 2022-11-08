//
//  UserManager.swift
//  CodeacademyChat
//
//  Created by reromac on 2022-11-08.
//

import Foundation

struct UserResult {
    let user: User?
    let errorMessage: String?
}

class UserManager {
    var userList: [User] = []
    
// vartotojo registravimo f- ja. grazina UserResult struct'a
    func register(username: String, password: String, confirmPassword: String) -> UserResult {
        
// guardas padeda patikrinti ar ivestas slaptazodis ir passwordas i tekstini lauka
        guard !username.isEmpty, !password.isEmpty
                
// tikrinimo logika: jei kazkas neivesta ar nesutampa - useris nesukuriamas ir isvedamas klaidos pranesimas
        else {
            return UserResult(user: nil, errorMessage: "Fill username and/or password")
        }
        if password != confirmPassword {
            return UserResult(user: nil, errorMessage: "Your password didn't match")
        }
        
// pereinama ir patikrinamas userListas
        for user in userList {
            if username == user.username {
                return UserResult(user: nil, errorMessage: "User with same username already exists")
            }
        }
        
// jei viskas tvarkoje sukuriamas naujas objektas user ir pridedamas prie userListo
        let user = User(username: username, password: password, isOnline: true)
        userList.append(user)
        
// perduodama UserResult structui
        return UserResult(user: user, errorMessage: nil)
    }
    
// vartotojo loginimo f-ja kur tikrinama ar toks vartotojas yra ir ar pateikti visi duomenys sutampa
// tikrinimas su closure
    func login(username: String, password: String) -> UserResult {
        /* antras variantas (CLOSURE) */
        let userOptional = userList.first(where: { $0.username == username })

// guardas patikrina ir toliau praleidzia (arba ne), atsizvelgiant ar sutampa pateikti userio duomenys
        guard let user = userOptional else {
            return UserResult(user: nil, errorMessage: "No such user with this username")
        }
        if user.password != password {
            return UserResult(user: nil, errorMessage: "Wrong password")
        }
        return UserResult(user: user, errorMessage: nil)
    }
}

