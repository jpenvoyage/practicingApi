//
//  DataService.swift
//  practicingApi
//
//  Created by Joao Leal on 28/01/2024.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func businessSearch() async {
        
        // check if api key exists
        guard apiKey != nil else {
            return
        }
        
        
        // 1. create url
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=52.119739&longitude=-0.832996&categories=restaurants&limit=10") {
            // 2. create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            // 3. send request
            do{
               let(data, response) = try await URLSession.shared.data(for: request)
                print(data)
                print(response)
            }
            catch {
                print(error)
            }
        }
    }
}