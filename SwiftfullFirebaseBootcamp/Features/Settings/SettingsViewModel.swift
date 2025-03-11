//
//  SettingsViewModel.swift
//  SwftfullFirebaseBootcamp
//
//  Created by Bruna Isabela Moreira Lanna on 11/03/25.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    private let auth: AuthenticationManager
    
    init(auth: AuthenticationManager = AuthenticationManager()) {
        self.auth = auth
    }
    
    func logOut() throws {
       try auth.signOut()
    }
}
