//
//  Source.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

struct Source {
    let createdAt: Date
    let quoteSourceID: String
    let updatedAt: Date
    let url: URL
    let links: PaginationLinks
}

extension Source: Codable {
    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case quoteSourceID = "quote_source_id"
        case updatedAt = "updated_at"
        case url = "url"
        case links = "_links"
    }
}

extension Source: Hashable {}
