//
//  ContentView.swift
//  practicingApi
//
//  Created by Joao Leal on 27/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var businesses = [Business]()
    var service = DataService()
    @State var query: String = ""
    
    var body: some View {
        VStack {
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
                
            }
            
            List(businesses) { b in
                Text(b.name ?? "Nil")
            }
            
        }
        .padding()
        .task {
        businesses = await service.businessSearch()
        }
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
