//
//  UserData.swift
//  SwftfullFirebaseBootcamp
//
//  Created by Bruna Isabela Moreira Lanna on 11/03/25.
//

import FirebaseAuth

struct UserData {
    let id: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.id = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}
