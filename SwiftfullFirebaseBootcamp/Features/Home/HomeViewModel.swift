//
//  HomeViewModel.swift
//  SwftfullFirebaseBootcamp
//
//  Created by Bruna Isabela Moreira Lanna on 11/03/25.
//

import SwiftUI

@MainActor
final class HomeViewModel: ObservableObject {
    private let auth: AuthenticationManager
    
    @Published var showSignInView: Bool = false
    
    init(auth: AuthenticationManager = AuthenticationManager()) {
        self.auth = auth
    }
    
    func isUserAuthenticated() {
        let isAuthenticated = try? auth.getAuthenticatedUser()
        showSignInView = isAuthenticated == nil
    }
}
