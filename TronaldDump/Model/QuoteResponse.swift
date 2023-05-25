//
//  QuoteResponse.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

struct QuoteResponse {
    let count: Int
    let total: Int
    let embedded: Embedded
    let links: PaginationLinks
}

extension QuoteResponse {
    struct Embedded {
        let quotes: [Quote]
    }
}

extension QuoteResponse: Codable {
    private enum CodingKeys: String, CodingKey {
        case count = "count"
        case total = "total"
        case embedded = "_embedded"
        case links = "_links"
    }
}

extension QuoteResponse.Embedded: Codable {
    private enum CodingKeys: String, CodingKey {
        case quotes = "quotes"
    }
}

extension QuoteResponse: Hashable {}

extension QuoteResponse.Embedded: Hashable {}
