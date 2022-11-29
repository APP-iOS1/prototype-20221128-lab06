//
//  FetchData.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/29.
//

import Foundation

class FetchData {
    func fetchData(url: String) async throws -> [Item] {
        
        print(url)
        guard let url = URL(string: url) else { return [] }
        let (data, _) = try await URLSession.shared.data(from: url)
        let showingData = String(data: data, encoding: .utf8)!
        print(showingData)

        do {
            let places = try JSONDecoder().decode(Places.self, from: data)
            
            print(places)
            return places.response.body.items.item
        }
        catch {
            print(error)
        }
        return []
    }

}
