//
//  TronaldAPI.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

struct TronaldAPI {
    private static let baseURL = URL(string: "https://api.tronalddump.io")!
    private let sessionClient = URLSessionClient()

    func searchQuote(query: String) async throws -> QuoteResponse {
        let url = Self.baseURL
            .appending(path: "/search/quote")
            .appending(queryItems: [URLQueryItem(name: "query", value: query)])

        return try await sessionClient.getJSON(from: url, of: QuoteResponse.self)
    }
}
