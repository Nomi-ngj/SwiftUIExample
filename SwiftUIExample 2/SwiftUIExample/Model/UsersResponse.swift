//
//  UsersResponse.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 12/05/2023.
//

import Foundation

struct UsersResponse: Decodable {
    let data: [User]
    let page: Int
    let totalPages: Int
}
