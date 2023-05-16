//
//  UserViewModel.swift
//  SwiftUIExample
//
//  Created by Nouman Gul Junejo on 12/05/2023.
//

import Foundation

class UserViewModel: ObservableObject {
   
    @Published var users = [User]()
    @Published var isLoading = false
    
    private var userResponse:UsersResponse?
    
    func shouldShowNextPage(currentPage:Int) -> Bool{
        if userResponse?.totalPages == currentPage {
            return false
        }else if userResponse?.totalPages ?? 0 > currentPage {
            return true
        }
        return false
    }
    
    func fetchUsers(page: Int) {
        
        guard !isLoading else {
            return
        }
        
        guard let url = URL(string: "https://reqres.in/api/users?page=\(page)") else { return }
        
        isLoading = true
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let usersResponse = try decoder.decode(UsersResponse.self, from: data)
                DispatchQueue.main.async {
                    self.userResponse = usersResponse
                    if page == 1 {
                        self.users = usersResponse.data
                    }else{
                        self.users.append(contentsOf: usersResponse.data)
                    }
                    
                    self.isLoading = false
                }
            } catch {
                print(error.localizedDescription)
                self.isLoading = false
            }
        }.resume()
    }
}
