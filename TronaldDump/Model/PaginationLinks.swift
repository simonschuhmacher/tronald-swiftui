//
//  PaginationLinks.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

struct PaginationLinks {
    let `self`: Link
    let first: Link?
    let prev: Link?
    let next: Link?
    let last: Link?
}

extension PaginationLinks: Codable {
    private enum CodingKeys: String, CodingKey {
        case `self` = "self"
        case first = "first"
        case prev = "prev"
        case next = "next"
        case last = "last"
    }
}

extension PaginationLinks: Hashable {}
