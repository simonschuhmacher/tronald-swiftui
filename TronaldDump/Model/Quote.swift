//
//  Quote.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

struct Quote {
    let appearedAt: Date
    let createdAt: Date
    let quoteID: String
    let tags: [String]
    let updatedAt: Date
    let value: String
    let embedded: Embedded
    let links: PaginationLinks
}

extension Quote {
    struct Embedded {
        let author: [Author]
        let source: [Source]
    }
}

extension Quote: Codable {
    private enum CodingKeys: String, CodingKey {
        case appearedAt = "appeared_at"
        case createdAt = "created_at"
        case quoteID = "quote_id"
        case tags = "tags"
        case updatedAt = "updated_at"
        case value = "value"
        case embedded = "_embedded"
        case links = "_links"
    }
}

extension Quote.Embedded: Codable {
    private enum CodingKeys: String, CodingKey {
        case author = "author"
        case source = "source"
    }
}

extension Quote: Hashable {}

extension Quote.Embedded: Hashable {}
