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
}


