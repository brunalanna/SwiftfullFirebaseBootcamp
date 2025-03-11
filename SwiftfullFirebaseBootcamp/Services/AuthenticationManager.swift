//
//  AuthenticationManager.swift
//  SwftfullFirebaseBootcamp
//
//  Created by Bruna Isabela Moreira Lanna on 11/03/25.
//

import Foundation
import FirebaseAuth

final class AuthenticationManager {
    private let auth: Auth
    
    init(auth: Auth = Auth.auth()) {
        self.auth = auth
    }
    
    func getAuthenticatedUser() throws -> UserData {
        guard let user = auth.currentUser else {
            throw URLError(.badServerResponse)
        }
        
        return UserData(user: user)
    }
    
    func createUser(email: String, password: String) async throws -> UserData {
       let userData = try await auth.createUser(withEmail: email, password: password)
       return UserData(user: userData.user)
    }
    
    func signOut() throws {
       try auth.signOut()
    }
}
