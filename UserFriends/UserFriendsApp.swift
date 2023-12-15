//
//  UserFriendsApp.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import SwiftUI

@main
struct UserFriendsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(friend: Friend(id: UUID(), name: "John Doe"))
        }
    }
}
