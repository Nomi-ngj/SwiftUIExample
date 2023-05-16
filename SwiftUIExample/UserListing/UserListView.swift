//
//  UserListView.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 12/05/2023.
//

import SwiftUI

struct UserListView: View {
    @StateObject var viewModel = UserViewModel()
    @State private var currentPage = 1
    @State private var isRefreshing = false
    @State private var searchQuery = ""
    
    var filteredUsers: [User] {
        if searchQuery.isEmpty {
            return viewModel.users
        } else {
            return viewModel.users.filter({$0.contains(query: searchQuery)})
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(2)
                }
                
                HStack{
                    Spacer(minLength: 20)
                    SearchBar(text: $searchQuery, placeholder: UserConstants.localized.searchUser)
                    Spacer(minLength: 20)
                }
                
                List(filteredUsers) { user in
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
                .navigationTitle(UserConstants.localized.userTitle)
                
                Link(UserConstants.localized.allRightsReserved, destination: URL(string: UserConstants.localized.urlLinkedin)!)
                    .foregroundColor(.gray)
            }
        }
    }
}

#if DEBUG
struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
#endif
