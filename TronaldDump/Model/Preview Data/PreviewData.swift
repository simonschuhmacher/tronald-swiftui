//
//  PreviewData.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

// swiftlint:disable line_length
// swiftformat:disable numberFormatting
import Foundation

enum PreviewData {
    static let emptyNavigationPath = [NavigationRoute]()
    static let sampleQuote = Quote(
        appearedAt: Date(timeIntervalSince1970: 1463187782),
        createdAt: Date(timeIntervalSince1970: 1479605563),
        quoteID: "UlR_oXAWQqafFQneMZq9vg",
        tags: ["Hillary Clinton"],
        updatedAt: Date(timeIntervalSince1970: 1479605563),
        value: "If Crooked Hillary Clinton can't close the deal on Crazy Bernie, how is she going to take on China, Russia, ISIS and all of the others?",
        embedded: Quote.Embedded(
            author: [
                Author(
                    authorID: "wVE8Y7BoRKCBkxs1JkqAvw",
                    createdAt: Date(timeIntervalSince1970: 1479086042),
                    name: "Donald Trump",
                    slug: "donald-trump",
                    updatedAt: Date(timeIntervalSince1970: 1479086042),
                    links: PaginationLinks(
                        self: Link(href: URL(string: "http://api.tronalddump.io/author/wVE8Y7BoRKCBkxs1JkqAvw")!),
                        first: nil,
                        prev: nil,
                        next: nil,
                        last: nil
                    )
                ),
            ],
            source: [
                Source(
                    createdAt: Date(timeIntervalSince1970: 1479605562),
                    quoteSourceID: "0a9NqPNXTgOwVO14ylN2gg",
                    updatedAt: Date(timeIntervalSince1970: 1479605562),
                    url: URL(string: "https://twitter.com/realDonaldTrump/status/731288678451019776")!,
                    links: PaginationLinks(
                        self: Link(href: URL(string: "http://api.tronalddump.io/quote-source/0a9NqPNXTgOwVO14ylN2gg")!),
                        first: nil,
                        prev: nil,
                        next: nil,
                        last: nil
                    )
                ),
            ]
        ),
        links: PaginationLinks(
            self: Link(href: URL(string: "http://api.tronalddump.io/quote/UlR_oXAWQqafFQneMZq9vg")!),
            first: nil,
            prev: nil,
            next: nil,
            last: nil
        )
    )
    static let sampleQuoteResponse = QuoteResponse(
        count: 2,
        total: 2,
        embedded: QuoteResponse.Embedded(quotes: [
            Self.sampleQuote,
            Self.sampleQuote,
        ]),
        links: PaginationLinks(
            self: Link(href: URL(string: "http://api.tronalddump.io/search/quote?query=china&page=0")!),
            first: Link(href: URL(string: "http://api.tronalddump.io/search/quote?query=china&page=0")!),
            prev: Link(href: URL(string: "http://api.tronalddump.io/search/quote?query=china&page=0")!),
            next: Link(href: URL(string: "http://api.tronalddump.io/search/quote?query=china&page=1")!),
            last: Link(href: URL(string: "http://api.tronalddump.io/search/quote?query=china&page=1")!)
        )
    )
}
