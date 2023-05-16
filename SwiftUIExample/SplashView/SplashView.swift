//
//  SplashView.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 16/05/2023.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                UserListView()
            } else {
                Color("splashBg")
                Image("Nouman Gul")
                    .resizable()
                    .frame(width: 295, height: 300)
                    .scaledToFit()
                    .cornerRadius(12)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
