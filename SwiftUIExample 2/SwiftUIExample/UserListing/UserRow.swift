//
//  UserRow.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 13/05/2023.
//

import Foundation
import SwiftUI

struct UserRow: View {
    let user: User
    
    @State private var image: UIImage?
    
    var body: some View {
        HStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
            }
            
            VStack(alignment: .leading) {
                Text("\(user.firstName) \(user.lastName)")
                    .font(.headline)
                
                Text(user.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .onAppear {
            loadImage()
        }
    }
    
    func loadImage() {
        getImageFromURL(user.avatar) { image in
            self.image = image
        }
    }
}

#if DEBUG
struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: .init(id: 001, firstName: "Nouman", lastName: "Junejo", email: "noumanguljunejo@gmail.com", avatar: "https://media.licdn.com/dms/image/C4D03AQEnfsf0TRoI2g/profile-displayphoto-shrink_800_800/0/1618219906818?e=2147483647&v=beta&t=oaxMtMd29k5Qqd09vEf4dPX9W93fGqmPoRUzO_1hJ1o"))
    }
}
#endif
