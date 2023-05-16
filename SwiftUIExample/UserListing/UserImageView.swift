//
//  UserImageView.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 13/05/2023.
//

import SwiftUI

struct UserImageView: View {
    @State private var image: UIImage?
    let heightAndWidth: CGFloat
    let urlString:String
    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: heightAndWidth, height: heightAndWidth)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: heightAndWidth, height: heightAndWidth)
                    .clipShape(Circle())
            }
        }
        .onAppear {
            fetchImage()
        }
    }
    
    private func fetchImage() {
        loadImageFromURL(urlString) { image in
            self.image = image
        }
    }
}
