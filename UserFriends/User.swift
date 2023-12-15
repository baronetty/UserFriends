//
//  User.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import Foundation

struct Data: Codable {
    var users: [User]
}

struct User: Codable, Identifiable {
    var friends: [Friend]
    
    var id = UUID()
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: String
    let tags: [String]
}

struct Friend: Codable {
    var id = UUID()
    let name: String
}






