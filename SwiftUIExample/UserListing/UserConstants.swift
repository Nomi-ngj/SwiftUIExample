//
//  UserConstants.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 16/05/2023.
//

import Foundation

struct UserConstants{
    static let localized = UserLocalized()
    static let mocks = UserMocks()
}

struct UserMocks{
    let user = User(id: 001,
                    firstName: "Nouman",
                    lastName: "Junejo",
                    email: "noumanguljunejo@gmail.com",
                    avatar: "https://media.licdn.com/dms/image/C4D03AQEnfsf0TRoI2g/profile-displayphoto-shrink_800_800/0/1618219906818?e=2147483647&v=beta&t=oaxMtMd29k5Qqd09vEf4dPX9W93fGqmPoRUzO_1hJ1o")
}

struct UserLocalized{
    let urlLinkedin = "https://www.linkedin.com/in/noumanguljunejo/"
    let allRightsReserved = "All rights reserved © 2023 Nouman Gul"
    let userTitle = "Users"
    let searchUser = "Search users"
    
}
