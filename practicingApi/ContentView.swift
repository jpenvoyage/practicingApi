//
//  ContentView.swift
//  practicingApi
//
//  Created by Joao Leal on 27/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var service = DataService()
    
    @State var query = ""
    
    var body: some View {
        HStack {
            TextField("Write here, here si where", text: $query)
                .foregroundStyle(.secondary)
                .bold()
                .font(.title3)
            
            Button {
                // still to come
            }label: {
                Text("Search")
                    .frame(width: 80, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
                
                    .clipShape(Capsule())
                
            }
                .padding()
                .task {
                    let businesses = await service.businessSearch()
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct GitHubUser: Codable {
    let login: String
    let avatarUrl: String
    let bio: String
}
