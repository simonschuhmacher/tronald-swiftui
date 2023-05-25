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
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 4) {
                Text("“ ").bold().foregroundColor(Color(.tertiaryLabel)) +
                    Text(quote.value) +
                    Text(" ”").bold().foregroundColor(Color(.tertiaryLabel))
            }
            .font(.system(size: 28))
            .multilineTextAlignment(.leading)

            Spacer(minLength: 16)
            Rectangle()
                .fill(Color(.systemFill))
                .frame(idealWidth: 160, maxWidth: 160, idealHeight: 2, maxHeight: 2)
            Spacer(minLength: 16)

            VStack(alignment: .leading, spacing: 4) {
                if let author = quote.embedded.author.first?.name {
                    Text("Author: ").bold() + Text(author)
                }
                Text("Date: ").bold() + Text(quote.appearedAt.defaultDateString())
                if let sourceURL = quote.embedded.source.first?.url {
                    Text("Source: ").bold() + Text(.init("[\(sourceURL)](\(sourceURL))"))
                }
            }
            .multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    private static let quote = PreviewData.sampleQuote
    static var previews: some View {
        QuoteDetailView(quote: quote)
    }
}
