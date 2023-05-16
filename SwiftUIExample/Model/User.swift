//
//  User.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 13/05/2023.
//

import Foundation

struct User: Decodable, Identifiable, Equatable {
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
    let avatar: String
    
    func contains(query:String) -> Bool{
        return firstName.lowercased().contains(query.lowercased()) || lastName.lowercased().contains(query.lowercased()) || email.lowercased().contains(query.lowercased())
           
    }
}


