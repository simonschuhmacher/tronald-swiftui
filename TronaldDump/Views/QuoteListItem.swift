//
//  QuoteListItem.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import SwiftUI

struct QuoteListItem: View {
    let quote: Quote

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Spacer(minLength: 12)
            Text("“ ").bold().foregroundColor(Color(.tertiaryLabel)) +
                Text(quote.value).foregroundColor(Color(.label)) +
                Text(" ”").bold().foregroundColor(Color(.tertiaryLabel))
            Text("— \(quote.appearedAt.defaultDateString())")
                .bold()
                .foregroundColor(Color(.secondaryLabel))
            Spacer(minLength: 12)
        }
        .multilineTextAlignment(.leading)
    }
}

struct QuoteListItem_Previews: PreviewProvider {
    private static let quote = PreviewData.sampleQuote

    static var previews: some View {
        QuoteListItem(quote: quote)
    }
}
