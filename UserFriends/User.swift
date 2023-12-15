//
//  User.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import Foundation
import SwiftData


@Model
class User: Codable, Identifiable {
    
    var friends = [Friend]()
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
    
    private enum CodingKeys: String, CodingKey {
        case friends, id, isActive, name, age, company, email, address, about, registered, tags
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        friends = try container.decode([Friend].self, forKey: .friends)
        id = try container.decode(UUID.self, forKey: .id)
        isActive = try container.decode(Bool.self, forKey: .isActive)
        name = try container.decode(String.self, forKey: .name)
        age = try container.decode(Int.self, forKey: .age)
        company = try container.decode(String.self, forKey: .company)
        email = try container.decode(String.self, forKey: .email)
        address = try container.decode(String.self, forKey: .address)
        about = try container.decode(String.self, forKey: .about)
        registered = try container.decode(String.self, forKey: .registered)
        tags = try container.decode([String].self, forKey: .tags)
    }
    
    
    
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(friends, forKey: .friends)
        try container.encode(id, forKey: .id)
        try container.encode(isActive, forKey: .isActive)
        try container.encode(name, forKey: .name)
        try container.encode(age, forKey: .age)
        try container.encode(company, forKey: .company)
        try container.encode(email, forKey: .email)
        try container.encode(address, forKey: .address)
        try container.encode(about, forKey: .about)
        try container.encode(registered, forKey: .registered)
        try container.encode(tags, forKey: .tags)
    }
    
}








