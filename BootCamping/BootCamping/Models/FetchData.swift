//
//  FetchData.swift
//  BootCamping
//
//  Created by Donghoon Bae on 2022/11/29.
//

import Foundation

class FetchData {
    func fetchData(page: Int) async throws -> [Item] {
        
//        guard let url = URL(string: "https://apis.data.go.kr/B551011/GoCamping/basedList?numOfRows=15&pageNo=\(page)&MobileOS=IOS&MobileApp=BootCamping&serviceKey=1L%2BOYunfglS6UkMxXuvlyqHspdv1jlOG1y6KHTwm2iYU6PGtKGH1jv6bORueQEwQBwzbUXzaukBp2mGzabnQ%2Bw%3D%3D&_type=json") else { return [] }
        guard let url = URL(string: "http://127.0.0.1:8080/bootcamping/\(page)") else { return [] }
        let (data, _) = try await URLSession.shared.data(from: url)
        let showingData = String(data: data, encoding: .utf8)!
        print(showingData)

        do {
            let places = try JSONDecoder().decode([Item].self, from: data)
            return places
        }
        catch {
            print(error)
        }
        return []
    }

}



