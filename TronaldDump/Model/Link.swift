//
//  Link.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

struct Link {
    let href: URL
}

extension Link: Codable {
    private enum CodingKeys: String, CodingKey {
        case href = "href"
    }
}

extension Link: Hashable {}
