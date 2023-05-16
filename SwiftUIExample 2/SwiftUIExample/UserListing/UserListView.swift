//
//  UserListView.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 12/05/2023.
//

import Foundation
import SwiftUI

struct UserListView: View {
    @StateObject var viewModel = UserViewModel()
    @State private var currentPage = 1
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                }
                
                List(viewModel.users) { user in
                    NavigationLink(destination: UserDetailView(user: user)) {
                        UserRow(user: user)
                    }
                    .onAppear {
                        if viewModel.users.last == user, viewModel.shouldShowNextPage(currentPage: currentPage) {
                            currentPage += 1
                            viewModel.fetchUsers(page: currentPage)
                        }
                    }
                }
                .onAppear {
                    if viewModel.users.isEmpty {
                        viewModel.fetchUsers(page: currentPage)
                    }
                }
                .navigationTitle("Users")
            }
        }
    }
}

#if DEBUG
struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        
        UserListView(viewModel: .init())
    }
}
#endif
