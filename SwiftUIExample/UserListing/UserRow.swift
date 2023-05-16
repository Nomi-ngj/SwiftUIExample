//
//  UserRow.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 13/05/2023.
//

import SwiftUI

struct UserRow: View {
    let user: User
    
    var body: some View {
        HStack(spacing: 8) {
            UserImageView(heightAndWidth: 80, urlString: user.avatar)
            
            VStack(alignment: .leading) {
                Text("\(user.firstName) \(user.lastName)")
                    .font(.headline)
                Text(user.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#if DEBUG
struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: UserConstants.mocks.user)
    }
}
#endif
