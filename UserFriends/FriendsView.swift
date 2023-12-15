//
//  FriendView.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import SwiftUI

struct FriendsView: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text(user.name)
            
            Text(String(user.age))
            
            Text(user.email)
            
            Text(user.company)
            
            VStack(alignment: .leading) {
                Text("My Friends")
                    .font(.title.bold())
                
                ForEach(user.friends, id: \.id) { friend in
                                    Text(friend.name)
                                }
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    FriendsView(user: User(isActive: true, name: "Leo", age: 35, company: "Company", email: "email", address: "address", about: "description", registered: "register date", tags: ["ja", "nein"]))
}
