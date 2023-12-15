//
//  FriendView.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import SwiftData
import SwiftUI

struct FriendsView: View {
    @Environment(\.modelContext) var modelContext
    let user: User
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("More about \(user.name):")
                .font(.title)
                .padding()
            
            Text("My age: \(String(user.age))")
            
            Text("My email: \(user.email)")
            
            Text("The company I work for: \(user.company)")
            
            VStack(alignment: .leading) {
                Text("My Friends")
                    .font(.title3.bold())
                    .padding()
                
                ForEach(user.friends, id: \.id) { friend in
                    Text(friend.name)
                }
            }
            .padding()
        }
        .padding()
    }
}



//#Preview {
//    FriendsView(user: User(id: UUID(), isActive: true, name: "Leo", age: 35, company: "Company", email: "email", address: "address", about: "description", registered: .now, tags: ["ja", "nein"], friends: Friend))
//        .modelContainer(for: User.self)
//}
