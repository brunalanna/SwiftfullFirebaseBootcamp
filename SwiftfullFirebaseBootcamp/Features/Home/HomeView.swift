//
//  HomeView.swift
//  SwftfullFirebaseBootcamp
//
//  Created by Bruna Isabela Moreira Lanna on 11/03/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsView(showSignInView: $viewModel.showSignInView)
            }
        }
        .onAppear {
            viewModel.isUserAuthenticated()
        }
        .fullScreenCover(isPresented: $viewModel.showSignInView) {
            NavigationStack {
                AuthenticationView()
            }
        }
    }
}
