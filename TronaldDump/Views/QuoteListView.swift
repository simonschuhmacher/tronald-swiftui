//
//  QuoteListView.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import SwiftUI

struct QuoteListView: View {
    let quotes: [Quote]

    var body: some View {
        List {
            ForEach(quotes, id: \.quoteID) { quote in
                NavigationLink(value: NavigationRoute.detail(quote)) {
                    Text(quote.value)
                }
            }
        }
    }
}

struct QuoteListView_Previews: PreviewProvider {
    private static let quotes = [PreviewData.sampleQuote]

    static var previews: some View {
        QuoteListView(quotes: quotes)
    }
}
