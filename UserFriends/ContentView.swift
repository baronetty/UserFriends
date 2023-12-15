//
//  ContentView.swift
//  UserFriends
//
//  Created by Leo  on 14.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var users = [User]()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    NavigationLink {
                        FriendsView(user: user)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.headline)
                            
                            Text("User is active: \(String(user.isActive))")
                                .font(.footnote)
                        }
                    }
                }
            }
        }
        .navigationTitle("User")
        .task {
            await loadData()
        }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            let decodedData = try JSONDecoder().decode([User].self, from: data)
            users = decodedData
        } catch {
            print("Error decoding data: \(error)")
        }
    }
}



#Preview {
    ContentView()
}
