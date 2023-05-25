//
//  Author.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

struct Author {
    let authorID: String
    let createdAt: Date
    let name: String
    let slug: String
    let updatedAt: Date
    let links: PaginationLinks
}

extension Author: Codable {
    private enum CodingKeys: String, CodingKey {
        case authorID = "author_id"
        case createdAt = "created_at"
        case name = "name"
        case slug = "slug"
        case updatedAt = "updated_at"
        case links = "_links"
    }
}

extension Author: Hashable {}
