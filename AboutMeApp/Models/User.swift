//
//  User.swift
//  AboutMeApp
//
//  Created by Alexander Fedotov on 17.01.2025.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Alexander",
            surname: "Fedotov",
            photo: "me",
            bio: "Меня зовут Александр. Я родился и выросл в Тамбовской оласти. Я люблю спорт. Это мой образ жизни. Сейчас я живу в Москве и работаю фитнес тренером в Gold's Gym. Люблю менять людей к их лучшей версии себя.",
            job: Company.getCompany()
            
        )
    }
}

struct Company {
    let title: String
    let deportament: String
    let position: String
    
    static func getCompany() -> Company {
        Company(
            title: "Gold's Gym.",
            deportament: "Fitness",
            position: "Fitness trainer"
        )
    }
}
