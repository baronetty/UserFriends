//
//  FriendView.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import SwiftUI

struct FriendView: View {
    @State private var friends = [Friend]()
    let friend: Friend
    @State private var users = [User]()
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
                
                Text(friend.name)
            }
            .padding()
        }
        .padding()
        .task {
            await loadFriend()
        }
        
    }
    
    func loadFriend() async {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decodedData = try JSONDecoder().decode([Friend].self, from: data)
            friends = decodedData
        } catch {
            print("Error decoding data: \(error)")
        }
    }
}

#Preview {
    FriendView(friend: Friend(id: UUID(), name: "John Doe"), user: User(friends: [Friend(id: UUID(), name: "John"), Friend(id: UUID(), name: "Paul")], isActive: true, name: "Leo", age: 35, company: "Company", email: "email", address: "address", about: "description", registered: "register date", tags: ["ja", "nein"]))
}
