//
//  QuoteDetailView.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import SwiftUI

struct QuoteDetailView: View {
    let quote: Quote

    var body: some View {
        VStack {
            Text(quote.value)
            Text(quote.embedded.author.first?.name ?? "Unknown")
        }
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    private static let quote = PreviewData.sampleQuote
    static var previews: some View {
        QuoteDetailView(quote: quote)
    }
}
