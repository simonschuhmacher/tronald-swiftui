//
//  Extensions+JSON.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

extension JSONDecoder.DateDecodingStrategy {
    static let iso8601WithFractionalSeconds: JSONDecoder.DateDecodingStrategy = .custom { decoder in
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFractionalSeconds]

        let container = try decoder.singleValueContainer()
        let dateString = try container.decode(String.self)

        if let date = formatter.date(from: dateString) {
            return date
        }

        throw DecodingError.dataCorruptedError(
            in: container,
            debugDescription: "Cannot decode date string \(dateString)"
        )
    }
}
