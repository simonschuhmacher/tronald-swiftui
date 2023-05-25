//
//  QuoteDetailScreen.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 24.05.23.
//

import SwiftUI

struct QuoteDetailScreen: View {
    @Binding var navigationPath: [NavigationRoute]
    let quote: Quote

    var body: some View {
        ScrollView {
            VStack {
                QuoteDetailView(quote: quote)
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Quote")
    }
}

struct QuoteDetailScreen_Previews: PreviewProvider {
    @State private static var navigationPath = PreviewData.emptyNavigationPath
    private static var quote = PreviewData.sampleQuote

    static var previews: some View {
        QuoteDetailScreen(navigationPath: $navigationPath, quote: quote)
    }
}
