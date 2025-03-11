//
//  SignInViewModel.swift
//  SwftfullFirebaseBootcamp
//
//  Created by Bruna Isabela Moreira Lanna on 09/03/25.
//

import SwiftUI

@MainActor
final class SignInViewModel: ObservableObject {
    
    private let auth: AuthenticationManager
    
    @Published var email = ""
    @Published var password = ""
    
    init(auth: AuthenticationManager = AuthenticationManager()) {
        self.auth = auth
    }
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        Task {
            do {
                let userData = try await auth.createUser(email: email, password: password)
                print("Sucess: \(userData)")
            } catch {
                print("Error: \(error)")
            }
        }
    }
}
