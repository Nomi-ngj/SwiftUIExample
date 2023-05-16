//
//  UserDetailView.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 13/05/2023.
//

import Foundation
import SwiftUI

struct UserDetailView: View {
    let user: User
    
    @State private var image: UIImage?
    
    var body: some View {
        VStack(spacing: 16) {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
            }
            
            Text(user.firstName + " " + user.lastName)
                .font(.title)
            
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .navigationBarTitle(Text(user.firstName + " " + user.lastName), displayMode: .inline)
        
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
struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: .init(id: 001, firstName: "Nouman", lastName: "Junejo", email: "noumanguljunejo@gmail.com", avatar: "https://media.licdn.com/dms/image/C4D03AQEnfsf0TRoI2g/profile-displayphoto-shrink_800_800/0/1618219906818?e=2147483647&v=beta&t=oaxMtMd29k5Qqd09vEf4dPX9W93fGqmPoRUzO_1hJ1o"))
    }
}
#endif
