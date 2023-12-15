//
//  UserFriendsApp.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import SwiftData
import SwiftUI

@main
struct UserFriendsApp: App {
    @State private var users: [User] = []  // Assuming you have a state property to hold users
    
    var body: some Scene {
        WindowGroup {
            ContentView(users: $users)
                .modelContainer(for: User.self)
        }
    }
}
