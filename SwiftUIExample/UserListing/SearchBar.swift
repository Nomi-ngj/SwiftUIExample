//
//  SearchBar.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 16/05/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField(placeholder, text: $text)
                .foregroundColor(.black)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}
